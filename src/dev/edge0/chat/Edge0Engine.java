package dev.edge0.chat;
import android.os.Handler;
import android.os.Looper;
import java.io.*;
import java.net.*;
import java.util.*;
import org.json.*;

/** Complete role-separated requests to the bundled engine's loopback API. */
public class Edge0Engine {
 public enum State { IDLE, LOADING, READY, GENERATING }
 public interface Listener {
  void onState(State s); void onError(String s); void onAnswerStart();
  void onAnswerChunk(String s); void onAnswerEnd(); void onThinkingStart();
  void onThinkingChunk(String s); void onThinkingEnd();
 }
 private final Listener listener;
 private final Handler ui = new Handler(Looper.getMainLooper());
 private volatile State state=State.IDLE;
 private volatile Process process;
 private volatile HttpURLConnection connection;
 private volatile int epoch=0, port;
 private volatile String logs="", lastFailure="", probe="尚未连接", launchCommand="";
 private volatile long startedAt=0;
 private String executable, directory, system="";
 private volatile int threads;
 private int context, maxTokens, topK;
 private double temperature, topP;
 public volatile boolean lastStartWasExecutableOk;
 public Edge0Engine(Listener l) { listener=l; }
 public State getState(){ return state; }
 private void post(final int e, final Runnable r){ ui.post(new Runnable(){public void run(){if(e==epoch)r.run();}}); }
 private void setState(final int e,final State s){ if(e!=epoch)return;state=s;post(e,new Runnable(){public void run(){listener.onState(s);}}); }
 private void error(final int e,final String s){if(e!=epoch)return;lastFailure=s;post(e,new Runnable(){public void run(){listener.onError(s);}});}
 public synchronized boolean start(String exe,String dir,int t,int ctx,String sys,double temp,double p,int k,int max){
  shutdown(); executable=exe;directory=dir;threads=t;context=ctx;system=sys;
  temperature=temp;topP=p;topK=k;maxTokens=max;logs="";lastFailure="";probe="等待本机服务";startedAt=System.currentTimeMillis();
  final int e=epoch;setState(e,State.LOADING);
  try {
   File model=new File(dir);
   if(!new File(exe).isFile())throw new IOException("引擎文件不存在："+exe);
   if(!model.isDirectory())throw new IOException("模型目录不存在或无法访问："+dir);
   for(String name:new String[]{"model.json","base.gguf"}){File f=new File(model,name);if(!f.isFile()||!f.canRead()||f.length()==0)throw new IOException("模型文件缺失、为空或不可读："+f);}
   ServerSocket socket=new ServerSocket(0,1,InetAddress.getByName("127.0.0.1"));port=socket.getLocalPort();socket.close();
   ArrayList<String> args=new ArrayList<String>(Arrays.asList(exe,"serve","--model",dir,"--device","cpu","--threads",String.valueOf(t),"--prefill-threads",String.valueOf(t),"--host","127.0.0.1","--port",String.valueOf(port),"--alias","edge0","--max-tokens",String.valueOf(max),"--no-warmup"));
   if(ctx>0){args.add("--context");args.add(String.valueOf(ctx));}
   launchCommand=args.toString();
   ProcessBuilder pb=new ProcessBuilder(args);pb.redirectErrorStream(true);
   String tmp=System.getProperty("java.io.tmpdir");
   if(tmp!=null){File cache=new File(tmp,"edge0-runtime");if((cache.isDirectory()||cache.mkdirs())&&cache.canWrite()){pb.directory(cache);pb.environment().put("TMPDIR",cache.getAbsolutePath());pb.environment().put("HOME",cache.getAbsolutePath());}}

   pb.environment().put("LD_LIBRARY_PATH",new File(exe).getParent());
   final Process launched=pb.start();process=launched;lastStartWasExecutableOk=true;
   new Thread(new Runnable(){public void run(){
    try { BufferedReader r=new BufferedReader(new InputStreamReader(launched.getInputStream(),"UTF-8"));String line;
     while((line=r.readLine())!=null && e==epoch){logs=logs+line+"\n";if(logs.length()>16000)logs=logs.substring(logs.length()-16000);}
     int code=launched.waitFor();
     synchronized(Edge0Engine.this){
      if(e!=epoch)return;
      process=null;
      if(state==State.LOADING && code!=0 && t>1 && logs.contains("CPU threads require")){
       int next=t>4?4:t-1;
       start(exe,dir,next,ctx,sys,temp,p,k,max);
       return;
      }
      setState(e,State.IDLE);error(e,"引擎已退出 ("+code+")\n"+logs);
     }
    }catch(Exception x){if(e==epoch)error(e,x.toString());}
   }},"edge0-output").start();
   new Thread(new Runnable(){public void run(){
    while(e==epoch && state==State.LOADING){
     HttpURLConnection c=null;
     try {c=(HttpURLConnection)new URL("http://127.0.0.1:"+port+"/v1/models").openConnection(Proxy.NO_PROXY);c.setConnectTimeout(1000);c.setReadTimeout(1000);
      int code=c.getResponseCode();probe="本机服务 HTTP "+code;if(code==200){setState(e,State.READY);return;}
     }catch(Exception failure){if(e==epoch)probe=failure.toString();}finally{if(c!=null)c.disconnect();}
     try{Thread.sleep(400);}catch(InterruptedException ignored){return;}
    }
   }},"edge0-ready").start();
   return true;
  }catch(Exception x){lastStartWasExecutableOk=false;setState(e,State.IDLE);error(e,"引擎启动失败："+x.getMessage());return false;}
 }
 public synchronized void send(final String payload){
  final int e=epoch;
  if(state!=State.READY){error(e,"引擎未就绪，请稍候");return;}
  final JSONObject body;
  try {
   JSONArray incoming=new JSONArray(payload), messages=new JSONArray();
   if(system!=null && !system.isEmpty())messages.put(new JSONObject().put("role","system").put("content",system));
   for(int i=0;i<incoming.length();i++){
    JSONObject m=incoming.getJSONObject(i);String role=m.getString("role");
    if(!role.equals("user")&&!role.equals("assistant")&&!role.equals("system"))throw new Exception("无效消息角色");
    messages.put(new JSONObject().put("role",role).put("content",m.getString("content")));
   }
   body=new JSONObject().put("model","edge0").put("messages",messages).put("stream",true).put("max_tokens",maxTokens);
   if(temperature>=0)body.put("temperature",temperature);
   if(topP>=0)body.put("top_p",topP);
   if(topK>0)body.put("top_k",topK);
  }catch(Exception x){error(e,"上下文格式错误："+x.getMessage());return;}
  lastFailure="";setState(e,State.GENERATING);
  new Thread(new Runnable(){public void run(){
   HttpURLConnection c=null;boolean thinking=false,done=false;String finishReason="";
   try {
    c=(HttpURLConnection)new URL("http://127.0.0.1:"+port+"/v1/chat/completions").openConnection(Proxy.NO_PROXY);connection=c;
    c.setRequestMethod("POST");c.setDoOutput(true);c.setConnectTimeout(10000);c.setReadTimeout(0);
    c.setRequestProperty("Content-Type","application/json; charset=utf-8");c.setRequestProperty("Accept","text/event-stream");
    byte[] bytes=body.toString().getBytes("UTF-8");c.setFixedLengthStreamingMode(bytes.length);
    OutputStream out=c.getOutputStream();out.write(bytes);out.close();
    int code=c.getResponseCode();if(code!=200){InputStream err=c.getErrorStream();StringBuilder b=new StringBuilder();if(err!=null){BufferedReader er=new BufferedReader(new InputStreamReader(err,"UTF-8"));String line;while((line=er.readLine())!=null)b.append(line);er.close();}throw new IOException("HTTP "+code+" "+b);}
    post(e,new Runnable(){public void run(){listener.onAnswerStart();}});
    BufferedReader r=new BufferedReader(new InputStreamReader(c.getInputStream(),"UTF-8"));String line;
    while(e==epoch && (line=r.readLine())!=null){
     if(!line.startsWith("data:"))continue;String data=line.substring(5).trim();
     if(data.equals("[DONE]")){done=true;break;}
     if(data.isEmpty())continue;
     JSONObject event=new JSONObject(data);if(event.has("error"))throw new IOException(event.get("error").toString());
     JSONArray choices=event.optJSONArray("choices");if(choices==null||choices.length()==0)continue;
     JSONObject choice=choices.getJSONObject(0), delta=choice.optJSONObject("delta");
     if(delta!=null){
      final String reasoning=(delta.isNull("reasoning_content")?(delta.isNull("reasoning")?"":delta.optString("reasoning","")):delta.optString("reasoning_content",""));
      if(!reasoning.isEmpty()){if(!thinking){thinking=true;post(e,new Runnable(){public void run(){listener.onThinkingStart();}});}post(e,new Runnable(){public void run(){listener.onThinkingChunk(reasoning);}});}
      final String content=(delta.isNull("content")?"":delta.optString("content",""));
      if(!content.isEmpty()){if(thinking){thinking=false;post(e,new Runnable(){public void run(){listener.onThinkingEnd();}});}post(e,new Runnable(){public void run(){listener.onAnswerChunk(content);}});}
     }
     if(!choice.isNull("finish_reason")){done=true;finishReason=choice.optString("finish_reason","");}
    }
    r.close();if(e!=epoch)return;if(!done)throw new IOException("连接提前结束，已保留部分回复，请重试");
    if(thinking)post(e,new Runnable(){public void run(){listener.onThinkingEnd();}});
    post(e,new Runnable(){public void run(){listener.onAnswerEnd();}});
    if("length".equals(finishReason))error(e,"已达到输出长度或上下文容量限制。可在模型设置中调整后重新生成。");
   }catch(Exception x){if(e==epoch)error(e,"生成失败："+x.getMessage());}
   finally{if(c!=null)c.disconnect();if(e==epoch){connection=null;if(process!=null)setState(e,State.READY);}}
  }},"edge0-request").start();
 }
 public void newConversation(){ /* Every request supplies its complete history. */ }
 public synchronized void shutdown(){
  epoch++;state=State.IDLE;
  HttpURLConnection oldConnection=connection;connection=null;
  if(oldConnection!=null)try{oldConnection.disconnect();}catch(Exception ignored){}
  Process old=process;process=null;
  if(old!=null){try{old.destroyForcibly();}catch(Throwable unavailable){try{old.destroy();}catch(Exception ignored){}}}
 }
 public String statusJson(){
  try{return new JSONObject().put("state",state.name()).put("error",lastFailure).put("logs",logs).put("probe",probe).put("modelDir",directory==null?"":directory).put("executable",executable==null?"":executable).put("command",launchCommand).put("threads",threads).put("seconds",startedAt==0?0:(System.currentTimeMillis()-startedAt)/1000).toString();}
  catch(Exception ex){return "{}";}
 }
 public synchronized void stop(){shutdown();setState(epoch,State.IDLE);if(executable!=null)start(executable,directory,threads,context,system,temperature,topP,topK,maxTokens);}
}
