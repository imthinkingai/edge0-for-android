.class Ldev/edge0/chat/Edge0Engine$6;
.super Ljava/lang/Object;
.source "Edge0Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/edge0/chat/Edge0Engine;->send(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/edge0/chat/Edge0Engine;

.field private final synthetic val$body:Lorg/json/JSONObject;

.field private final synthetic val$e:I


# direct methods
.method constructor <init>(Ldev/edge0/chat/Edge0Engine;ILorg/json/JSONObject;)V
    .locals 0

    .line 100
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iput p2, p0, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    iput-object p3, p0, Ldev/edge0/chat/Edge0Engine$6;->val$body:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ldev/edge0/chat/Edge0Engine$6;)Ldev/edge0/chat/Edge0Engine;
    .locals 0

    .line 100
    iget-object p0, p0, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 101
    move-object/from16 v1, p0

    const-string v0, "content"

    const-string v2, "reasoning"

    const-string v3, "reasoning_content"

    const-string v4, "finish_reason"

    const-string v5, "error"

    const-string v6, "UTF-8"

    .line 103
    :try_start_0
    new-instance v8, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://127.0.0.1:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v10}, Ldev/edge0/chat/Edge0Engine;->access$8(Ldev/edge0/chat/Edge0Engine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/v1/chat/completions"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v8, v9}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v9, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v9, v8}, Ldev/edge0/chat/Edge0Engine;->access$10(Ldev/edge0/chat/Edge0Engine;Ljava/net/HttpURLConnection;)V

    .line 104
    const-string v9, "POST"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v10, 0x2710

    invoke-virtual {v8, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 105
    const-string v11, "Content-Type"

    const-string v12, "application/json; charset=utf-8"

    invoke-virtual {v8, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Accept"

    const-string v12, "text/event-stream"

    invoke-virtual {v8, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v11, v1, Ldev/edge0/chat/Edge0Engine$6;->val$body:Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    array-length v12, v11

    invoke-virtual {v8, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 107
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 108
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_2

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    iget-object v11, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v12, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    new-instance v13, Ldev/edge0/chat/Edge0Engine$6$1;

    invoke-direct {v13, v1}, Ldev/edge0/chat/Edge0Engine$6$1;-><init>(Ldev/edge0/chat/Edge0Engine$6;)V

    invoke-static {v11, v12, v13}, Ldev/edge0/chat/Edge0Engine;->access$12(Ldev/edge0/chat/Edge0Engine;ILjava/lang/Runnable;)V

    .line 110
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    const-string v6, ""

    move-object v14, v6

    move v12, v10

    move v13, v12

    :goto_1
    :try_start_2
    iget v15, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    iget-object v9, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v9}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v9

    if-ne v15, v9, :cond_13

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    goto/16 :goto_8

    .line 112
    :cond_3
    const-string v15, "data:"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto/16 :goto_7

    :cond_4
    const/4 v15, 0x5

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 113
    const-string v15, "[DONE]"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v9, 0x1

    goto/16 :goto_9

    .line 114
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto/16 :goto_7

    .line 115
    :cond_6
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 116
    const-string v9, "choices"

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto/16 :goto_7

    .line 117
    :cond_7
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v15, "delta"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 118
    if-eqz v15, :cond_e

    .line 119
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v17, v6

    goto :goto_3

    :cond_8
    invoke-virtual {v15, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :cond_9
    invoke-virtual {v15, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :goto_2
    move-object/from16 v17, v16

    .line 120
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_b

    if-nez v12, :cond_a

    iget-object v12, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v10, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    new-instance v7, Ldev/edge0/chat/Edge0Engine$6$2;

    invoke-direct {v7, v1}, Ldev/edge0/chat/Edge0Engine$6$2;-><init>(Ldev/edge0/chat/Edge0Engine$6;)V

    invoke-static {v12, v10, v7}, Ldev/edge0/chat/Edge0Engine;->access$12(Ldev/edge0/chat/Edge0Engine;ILjava/lang/Runnable;)V

    const/4 v12, 0x1

    :cond_a
    iget-object v7, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v10, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    move-object/from16 v18, v2

    new-instance v2, Ldev/edge0/chat/Edge0Engine$6$3;

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    invoke-direct {v2, v1, v3}, Ldev/edge0/chat/Edge0Engine$6$3;-><init>(Ldev/edge0/chat/Edge0Engine$6;Ljava/lang/String;)V

    invoke-static {v7, v10, v2}, Ldev/edge0/chat/Edge0Engine;->access$12(Ldev/edge0/chat/Edge0Engine;ILjava/lang/Runnable;)V

    goto :goto_4

    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 121
    :goto_4
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v6

    goto :goto_5

    :cond_c
    invoke-virtual {v15, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    if-eqz v12, :cond_d

    iget-object v3, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v7, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    new-instance v10, Ldev/edge0/chat/Edge0Engine$6$4;

    invoke-direct {v10, v1}, Ldev/edge0/chat/Edge0Engine$6$4;-><init>(Ldev/edge0/chat/Edge0Engine$6;)V

    invoke-static {v3, v7, v10}, Ldev/edge0/chat/Edge0Engine;->access$12(Ldev/edge0/chat/Edge0Engine;ILjava/lang/Runnable;)V

    const/4 v12, 0x0

    :cond_d
    iget-object v3, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v7, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    new-instance v10, Ldev/edge0/chat/Edge0Engine$6$5;

    invoke-direct {v10, v1, v2}, Ldev/edge0/chat/Edge0Engine$6$5;-><init>(Ldev/edge0/chat/Edge0Engine$6;Ljava/lang/String;)V

    invoke-static {v3, v7, v10}, Ldev/edge0/chat/Edge0Engine;->access$12(Ldev/edge0/chat/Edge0Engine;ILjava/lang/Runnable;)V

    goto :goto_6

    .line 118
    :cond_e
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 124
    :cond_f
    :goto_6
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v9, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_10
    move-object/from16 v2, v18

    move-object/from16 v3, v19

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    .line 116
    :cond_11
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 111
    :goto_7
    move-object/from16 v2, v18

    move-object/from16 v3, v19

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    .line 115
    :cond_12
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_13
    :goto_8
    move v9, v13

    :goto_9
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    iget v0, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    iget-object v2, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v2}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v0, v2, :cond_16

    .line 131
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    iget v0, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    iget-object v2, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v2}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v2

    if-ne v0, v2, :cond_15

    iget-object v0, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldev/edge0/chat/Edge0Engine;->access$10(Ldev/edge0/chat/Edge0Engine;Ljava/net/HttpURLConnection;)V

    iget-object v0, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v0}, Ldev/edge0/chat/Edge0Engine;->access$11(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v1, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    sget-object v2, Ldev/edge0/chat/Edge0Engine$State;->READY:Ldev/edge0/chat/Edge0Engine$State;

    invoke-static {v0, v1, v2}, Ldev/edge0/chat/Edge0Engine;->access$6(Ldev/edge0/chat/Edge0Engine;ILdev/edge0/chat/Edge0Engine$State;)V

    .line 126
    :cond_15
    return-void

    :cond_16
    if-eqz v9, :cond_1a

    .line 127
    if-eqz v12, :cond_17

    :try_start_3
    iget-object v0, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v2, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    new-instance v3, Ldev/edge0/chat/Edge0Engine$6$6;

    invoke-direct {v3, v1}, Ldev/edge0/chat/Edge0Engine$6$6;-><init>(Ldev/edge0/chat/Edge0Engine$6;)V

    invoke-static {v0, v2, v3}, Ldev/edge0/chat/Edge0Engine;->access$12(Ldev/edge0/chat/Edge0Engine;ILjava/lang/Runnable;)V

    .line 128
    :cond_17
    iget-object v0, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v2, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    new-instance v3, Ldev/edge0/chat/Edge0Engine$6$7;

    invoke-direct {v3, v1}, Ldev/edge0/chat/Edge0Engine$6$7;-><init>(Ldev/edge0/chat/Edge0Engine$6;)V

    invoke-static {v0, v2, v3}, Ldev/edge0/chat/Edge0Engine;->access$12(Ldev/edge0/chat/Edge0Engine;ILjava/lang/Runnable;)V

    .line 129
    const-string v0, "length"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v2, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    const-string v3, "\u5df2\u8fbe\u5230\u8f93\u51fa\u957f\u5ea6\u6216\u4e0a\u4e0b\u6587\u5bb9\u91cf\u9650\u5236\u3002\u53ef\u5728\u6a21\u578b\u8bbe\u7f6e\u4e2d\u8c03\u6574\u540e\u91cd\u65b0\u751f\u6210\u3002"

    invoke-static {v0, v2, v3}, Ldev/edge0/chat/Edge0Engine;->access$7(Ldev/edge0/chat/Edge0Engine;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    nop

    .line 131
    :cond_18
    if-eqz v8, :cond_19

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_19
    iget v0, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    iget-object v2, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v2}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v2

    if-ne v0, v2, :cond_1d

    iget-object v0, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldev/edge0/chat/Edge0Engine;->access$10(Ldev/edge0/chat/Edge0Engine;Ljava/net/HttpURLConnection;)V

    iget-object v0, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v0}, Ldev/edge0/chat/Edge0Engine;->access$11(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_1d

    goto :goto_b

    .line 126
    :cond_1a
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "\u8fde\u63a5\u63d0\u524d\u7ed3\u675f\uff0c\u5df2\u4fdd\u7559\u90e8\u5206\u56de\u590d\uff0c\u8bf7\u91cd\u8bd5"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    :catch_0
    move-exception v0

    goto :goto_a

    .line 131
    :catchall_0
    move-exception v0

    const/4 v8, 0x0

    goto :goto_c

    .line 130
    :catch_1
    move-exception v0

    const/4 v8, 0x0

    :goto_a
    :try_start_5
    iget v2, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    iget-object v3, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v3}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v3

    if-ne v2, v3, :cond_1b

    iget-object v2, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v3, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u751f\u6210\u5931\u8d25\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Ldev/edge0/chat/Edge0Engine;->access$7(Ldev/edge0/chat/Edge0Engine;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 131
    :cond_1b
    if-eqz v8, :cond_1c

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1c
    iget v0, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    iget-object v2, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v2}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v2

    if-ne v0, v2, :cond_1d

    iget-object v0, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldev/edge0/chat/Edge0Engine;->access$10(Ldev/edge0/chat/Edge0Engine;Ljava/net/HttpURLConnection;)V

    iget-object v0, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v0}, Ldev/edge0/chat/Edge0Engine;->access$11(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_1d

    :goto_b
    iget-object v0, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v1, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    sget-object v2, Ldev/edge0/chat/Edge0Engine$State;->READY:Ldev/edge0/chat/Edge0Engine$State;

    invoke-static {v0, v1, v2}, Ldev/edge0/chat/Edge0Engine;->access$6(Ldev/edge0/chat/Edge0Engine;ILdev/edge0/chat/Edge0Engine$State;)V

    .line 132
    :cond_1d
    return-void

    .line 131
    :catchall_1
    move-exception v0

    :goto_c
    if-eqz v8, :cond_1e

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1e
    iget v2, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    iget-object v3, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v3}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v3

    if-ne v2, v3, :cond_1f

    iget-object v2, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ldev/edge0/chat/Edge0Engine;->access$10(Ldev/edge0/chat/Edge0Engine;Ljava/net/HttpURLConnection;)V

    iget-object v2, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v2}, Ldev/edge0/chat/Edge0Engine;->access$11(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/Process;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Ldev/edge0/chat/Edge0Engine$6;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v1, v1, Ldev/edge0/chat/Edge0Engine$6;->val$e:I

    sget-object v3, Ldev/edge0/chat/Edge0Engine$State;->READY:Ldev/edge0/chat/Edge0Engine$State;

    invoke-static {v2, v1, v3}, Ldev/edge0/chat/Edge0Engine;->access$6(Ldev/edge0/chat/Edge0Engine;ILdev/edge0/chat/Edge0Engine$State;)V

    :cond_1f
    throw v0
.end method
