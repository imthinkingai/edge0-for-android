.class Ldev/edge0/chat/Edge0Engine$5;
.super Ljava/lang/Object;
.source "Edge0Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/edge0/chat/Edge0Engine;->start(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;DDII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/edge0/chat/Edge0Engine;

.field private final synthetic val$e:I


# direct methods
.method constructor <init>(Ldev/edge0/chat/Edge0Engine;I)V
    .locals 0

    .line 70
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine$5;->this$0:Ldev/edge0/chat/Edge0Engine;

    iput p2, p0, Ldev/edge0/chat/Edge0Engine$5;->val$e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 71
    nop

    :goto_0
    iget v0, p0, Ldev/edge0/chat/Edge0Engine$5;->val$e:I

    iget-object v1, p0, Ldev/edge0/chat/Edge0Engine$5;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v1}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine$5;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v0}, Ldev/edge0/chat/Edge0Engine;->access$5(Ldev/edge0/chat/Edge0Engine;)Ldev/edge0/chat/Edge0Engine$State;

    move-result-object v0

    sget-object v1, Ldev/edge0/chat/Edge0Engine$State;->LOADING:Ldev/edge0/chat/Edge0Engine$State;

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 72
    :cond_0
    nop

    .line 73
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://127.0.0.1:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ldev/edge0/chat/Edge0Engine$5;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v3}, Ldev/edge0/chat/Edge0Engine;->access$8(Ldev/edge0/chat/Edge0Engine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/v1/models"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x3e8

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 74
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine$5;->this$0:Ldev/edge0/chat/Edge0Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u672c\u673a\u670d\u52a1 HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldev/edge0/chat/Edge0Engine;->access$9(Ldev/edge0/chat/Edge0Engine;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine$5;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v2, p0, Ldev/edge0/chat/Edge0Engine$5;->val$e:I

    sget-object v3, Ldev/edge0/chat/Edge0Engine$State;->READY:Ldev/edge0/chat/Edge0Engine$State;

    invoke-static {v0, v2, v3}, Ldev/edge0/chat/Edge0Engine;->access$6(Ldev/edge0/chat/Edge0Engine;ILdev/edge0/chat/Edge0Engine$State;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_1
    return-void

    .line 75
    :cond_2
    if-eqz v1, :cond_4

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    :try_start_2
    iget v2, p0, Ldev/edge0/chat/Edge0Engine$5;->val$e:I

    iget-object v3, p0, Ldev/edge0/chat/Edge0Engine$5;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v3}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine$5;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldev/edge0/chat/Edge0Engine;->access$9(Ldev/edge0/chat/Edge0Engine;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    :cond_4
    const-wide/16 v0, 0x190

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    return-void

    .line 75
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    .line 78
    :cond_6
    :goto_4
    return-void
.end method
