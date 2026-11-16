.class public Ldev/edge0/chat/Edge0Engine;
.super Ljava/lang/Object;
.source "Edge0Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/edge0/chat/Edge0Engine$Listener;,
        Ldev/edge0/chat/Edge0Engine$State;
    }
.end annotation


# instance fields
.field private volatile connection:Ljava/net/HttpURLConnection;

.field private context:I

.field private directory:Ljava/lang/String;

.field private volatile epoch:I

.field private executable:Ljava/lang/String;

.field private volatile lastFailure:Ljava/lang/String;

.field public volatile lastStartWasExecutableOk:Z

.field private volatile launchCommand:Ljava/lang/String;

.field private final listener:Ldev/edge0/chat/Edge0Engine$Listener;

.field private volatile logs:Ljava/lang/String;

.field private maxTokens:I

.field private volatile port:I

.field private volatile probe:Ljava/lang/String;

.field private volatile process:Ljava/lang/Process;

.field private volatile startedAt:J

.field private volatile state:Ldev/edge0/chat/Edge0Engine$State;

.field private system:Ljava/lang/String;

.field private temperature:D

.field private volatile threads:I

.field private topK:I

.field private topP:D

.field private final ui:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ldev/edge0/chat/Edge0Engine$Listener;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/edge0/chat/Edge0Engine;->ui:Landroid/os/Handler;

    .line 19
    sget-object v0, Ldev/edge0/chat/Edge0Engine$State;->IDLE:Ldev/edge0/chat/Edge0Engine$State;

    iput-object v0, p0, Ldev/edge0/chat/Edge0Engine;->state:Ldev/edge0/chat/Edge0Engine$State;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Ldev/edge0/chat/Edge0Engine;->epoch:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ldev/edge0/chat/Edge0Engine;->logs:Ljava/lang/String;

    iput-object v0, p0, Ldev/edge0/chat/Edge0Engine;->lastFailure:Ljava/lang/String;

    const-string v1, "\u5c1a\u672a\u8fde\u63a5"

    iput-object v1, p0, Ldev/edge0/chat/Edge0Engine;->probe:Ljava/lang/String;

    iput-object v0, p0, Ldev/edge0/chat/Edge0Engine;->launchCommand:Ljava/lang/String;

    .line 24
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ldev/edge0/chat/Edge0Engine;->startedAt:J

    .line 25
    iput-object v0, p0, Ldev/edge0/chat/Edge0Engine;->system:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine;->listener:Ldev/edge0/chat/Edge0Engine$Listener;

    return-void
.end method

.method static synthetic access$0(Ldev/edge0/chat/Edge0Engine;)I
    .locals 0

    .line 22
    iget p0, p0, Ldev/edge0/chat/Edge0Engine;->epoch:I

    return p0
.end method

.method static synthetic access$1(Ldev/edge0/chat/Edge0Engine;)Ldev/edge0/chat/Edge0Engine$Listener;
    .locals 0

    .line 17
    iget-object p0, p0, Ldev/edge0/chat/Edge0Engine;->listener:Ldev/edge0/chat/Edge0Engine$Listener;

    return-object p0
.end method

.method static synthetic access$10(Ldev/edge0/chat/Edge0Engine;Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 21
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method static synthetic access$11(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/Process;
    .locals 0

    .line 20
    iget-object p0, p0, Ldev/edge0/chat/Edge0Engine;->process:Ljava/lang/Process;

    return-object p0
.end method

.method static synthetic access$12(Ldev/edge0/chat/Edge0Engine;ILjava/lang/Runnable;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Ldev/edge0/chat/Edge0Engine;->post(ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Ldev/edge0/chat/Edge0Engine;->logs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3(Ldev/edge0/chat/Edge0Engine;Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine;->logs:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Ldev/edge0/chat/Edge0Engine;Ljava/lang/Process;)V
    .locals 0

    .line 20
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine;->process:Ljava/lang/Process;

    return-void
.end method

.method static synthetic access$5(Ldev/edge0/chat/Edge0Engine;)Ldev/edge0/chat/Edge0Engine$State;
    .locals 0

    .line 19
    iget-object p0, p0, Ldev/edge0/chat/Edge0Engine;->state:Ldev/edge0/chat/Edge0Engine$State;

    return-object p0
.end method

.method static synthetic access$6(Ldev/edge0/chat/Edge0Engine;ILdev/edge0/chat/Edge0Engine$State;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Ldev/edge0/chat/Edge0Engine;->setState(ILdev/edge0/chat/Edge0Engine$State;)V

    return-void
.end method

.method static synthetic access$7(Ldev/edge0/chat/Edge0Engine;ILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Ldev/edge0/chat/Edge0Engine;->error(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Ldev/edge0/chat/Edge0Engine;)I
    .locals 0

    .line 22
    iget p0, p0, Ldev/edge0/chat/Edge0Engine;->port:I

    return p0
.end method

.method static synthetic access$9(Ldev/edge0/chat/Edge0Engine;Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine;->probe:Ljava/lang/String;

    return-void
.end method

.method private error(ILjava/lang/String;)V
    .locals 1

    .line 34
    iget v0, p0, Ldev/edge0/chat/Edge0Engine;->epoch:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Ldev/edge0/chat/Edge0Engine;->lastFailure:Ljava/lang/String;

    new-instance v0, Ldev/edge0/chat/Edge0Engine$3;

    invoke-direct {v0, p0, p2}, Ldev/edge0/chat/Edge0Engine$3;-><init>(Ldev/edge0/chat/Edge0Engine;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ldev/edge0/chat/Edge0Engine;->post(ILjava/lang/Runnable;)V

    return-void
.end method

.method private post(ILjava/lang/Runnable;)V
    .locals 2

    .line 32
    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine;->ui:Landroid/os/Handler;

    new-instance v1, Ldev/edge0/chat/Edge0Engine$1;

    invoke-direct {v1, p0, p1, p2}, Ldev/edge0/chat/Edge0Engine$1;-><init>(Ldev/edge0/chat/Edge0Engine;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setState(ILdev/edge0/chat/Edge0Engine$State;)V
    .locals 1

    .line 33
    iget v0, p0, Ldev/edge0/chat/Edge0Engine;->epoch:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Ldev/edge0/chat/Edge0Engine;->state:Ldev/edge0/chat/Edge0Engine$State;

    new-instance v0, Ldev/edge0/chat/Edge0Engine$2;

    invoke-direct {v0, p0, p2}, Ldev/edge0/chat/Edge0Engine$2;-><init>(Ldev/edge0/chat/Edge0Engine;Ldev/edge0/chat/Edge0Engine$State;)V

    invoke-direct {p0, p1, v0}, Ldev/edge0/chat/Edge0Engine;->post(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getState()Ldev/edge0/chat/Edge0Engine$State;
    .locals 1

    .line 31
    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine;->state:Ldev/edge0/chat/Edge0Engine$State;

    return-object v0
.end method

.method public newConversation()V
    .locals 0

    .line 134
    return-void
.end method

.method public declared-synchronized send(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 83
    :try_start_0
    iget v0, p0, Ldev/edge0/chat/Edge0Engine;->epoch:I

    .line 84
    iget-object v1, p0, Ldev/edge0/chat/Edge0Engine;->state:Ldev/edge0/chat/Edge0Engine$State;

    sget-object v2, Ldev/edge0/chat/Edge0Engine$State;->READY:Ldev/edge0/chat/Edge0Engine$State;

    if-eq v1, v2, :cond_0

    const-string p1, "\u5f15\u64ce\u672a\u5c31\u7eea\uff0c\u8bf7\u7a0d\u5019"

    invoke-direct {p0, v0, p1}, Ldev/edge0/chat/Edge0Engine;->error(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 88
    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine;->system:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine;->system:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "role"

    const-string v4, "system"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "content"

    iget-object v4, p0, Ldev/edge0/chat/Edge0Engine;->system:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 89
    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 94
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "model"

    const-string v3, "edge0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "messages"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "stream"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "max_tokens"

    iget v2, p0, Ldev/edge0/chat/Edge0Engine;->maxTokens:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 95
    iget-wide v1, p0, Ldev/edge0/chat/Edge0Engine;->temperature:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    const-string v1, "temperature"

    iget-wide v5, p0, Ldev/edge0/chat/Edge0Engine;->temperature:D

    invoke-virtual {p1, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 96
    :cond_2
    iget-wide v1, p0, Ldev/edge0/chat/Edge0Engine;->topP:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_3

    const-string v1, "top_p"

    iget-wide v2, p0, Ldev/edge0/chat/Edge0Engine;->topP:D

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 97
    :cond_3
    iget v1, p0, Ldev/edge0/chat/Edge0Engine;->topK:I

    if-lez v1, :cond_4

    const-string v1, "top_k"

    iget v2, p0, Ldev/edge0/chat/Edge0Engine;->topK:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    nop

    .line 99
    :cond_4
    :try_start_2
    const-string v1, ""

    iput-object v1, p0, Ldev/edge0/chat/Edge0Engine;->lastFailure:Ljava/lang/String;

    sget-object v1, Ldev/edge0/chat/Edge0Engine$State;->GENERATING:Ldev/edge0/chat/Edge0Engine$State;

    invoke-direct {p0, v0, v1}, Ldev/edge0/chat/Edge0Engine;->setState(ILdev/edge0/chat/Edge0Engine$State;)V

    .line 100
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ldev/edge0/chat/Edge0Engine$6;

    invoke-direct {v2, p0, v0, p1}, Ldev/edge0/chat/Edge0Engine$6;-><init>(Ldev/edge0/chat/Edge0Engine;ILorg/json/JSONObject;)V

    .line 132
    const-string p1, "edge0-request"

    .line 100
    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 90
    :cond_5
    :try_start_3
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "role"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "assistant"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "\u65e0\u6548\u6d88\u606f\u89d2\u8272"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_7
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "role"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "content"

    const-string v6, "content"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 98
    :catch_0
    move-exception p1

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0a\u4e0b\u6587\u683c\u5f0f\u9519\u8bef\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ldev/edge0/chat/Edge0Engine;->error(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    .line 136
    :try_start_0
    iget v0, p0, Ldev/edge0/chat/Edge0Engine;->epoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldev/edge0/chat/Edge0Engine;->epoch:I

    sget-object v0, Ldev/edge0/chat/Edge0Engine$State;->IDLE:Ldev/edge0/chat/Edge0Engine$State;

    iput-object v0, p0, Ldev/edge0/chat/Edge0Engine;->state:Ldev/edge0/chat/Edge0Engine$State;

    .line 137
    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    iput-object v1, p0, Ldev/edge0/chat/Edge0Engine;->connection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine;->process:Ljava/lang/Process;

    iput-object v1, p0, Ldev/edge0/chat/Edge0Engine;->process:Ljava/lang/Process;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 141
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 135
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;DDII)Z
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    monitor-enter p0

    .line 36
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ldev/edge0/chat/Edge0Engine;->shutdown()V

    iput-object v0, v15, Ldev/edge0/chat/Edge0Engine;->executable:Ljava/lang/String;

    iput-object v7, v15, Ldev/edge0/chat/Edge0Engine;->directory:Ljava/lang/String;

    move/from16 v5, p3

    iput v5, v15, Ldev/edge0/chat/Edge0Engine;->threads:I

    iput v8, v15, Ldev/edge0/chat/Edge0Engine;->context:I

    move-object/from16 v9, p5

    iput-object v9, v15, Ldev/edge0/chat/Edge0Engine;->system:Ljava/lang/String;

    .line 37
    move-wide/from16 v10, p6

    iput-wide v10, v15, Ldev/edge0/chat/Edge0Engine;->temperature:D

    move-wide/from16 v12, p8

    iput-wide v12, v15, Ldev/edge0/chat/Edge0Engine;->topP:D

    move/from16 v14, p10

    iput v14, v15, Ldev/edge0/chat/Edge0Engine;->topK:I

    move/from16 v6, p11

    iput v6, v15, Ldev/edge0/chat/Edge0Engine;->maxTokens:I

    const-string v1, ""

    iput-object v1, v15, Ldev/edge0/chat/Edge0Engine;->logs:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v15, Ldev/edge0/chat/Edge0Engine;->lastFailure:Ljava/lang/String;

    const-string v1, "\u7b49\u5f85\u672c\u673a\u670d\u52a1"

    iput-object v1, v15, Ldev/edge0/chat/Edge0Engine;->probe:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v15, Ldev/edge0/chat/Edge0Engine;->startedAt:J

    .line 38
    iget v4, v15, Ldev/edge0/chat/Edge0Engine;->epoch:I

    sget-object v1, Ldev/edge0/chat/Edge0Engine$State;->LOADING:Ldev/edge0/chat/Edge0Engine$State;

    invoke-direct {v15, v4, v1}, Ldev/edge0/chat/Edge0Engine;->setState(ILdev/edge0/chat/Edge0Engine$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 40
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "model.json"

    const/16 v16, 0x0

    aput-object v17, v3, v16

    const-string v17, "base.gguf"

    const/4 v2, 0x1

    aput-object v17, v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    :goto_0
    move/from16 v19, v4

    const/4 v4, 0x2

    if-lt v2, v4, :cond_3

    .line 44
    :try_start_2
    new-instance v1, Ljava/net/ServerSocket;

    const-string v2, "127.0.0.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    iput v2, v15, Ldev/edge0/chat/Edge0Engine;->port:I

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x13

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "serve"

    const/16 v16, 0x1

    aput-object v4, v2, v16

    const-string v4, "--model"

    const/16 v16, 0x2

    aput-object v4, v2, v16

    const/4 v4, 0x3

    aput-object v7, v2, v4

    const-string v4, "--device"

    const/16 v16, 0x4

    aput-object v4, v2, v16

    const-string v4, "cpu"

    const/16 v16, 0x5

    aput-object v4, v2, v16

    const-string v4, "--threads"

    const/16 v16, 0x6

    aput-object v4, v2, v16

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x7

    aput-object v4, v2, v16

    const-string v4, "--prefill-threads"

    const/16 v16, 0x8

    aput-object v4, v2, v16

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x9

    aput-object v4, v2, v16

    const-string v4, "--host"

    const/16 v16, 0xa

    aput-object v4, v2, v16

    const-string v4, "127.0.0.1"

    const/16 v16, 0xb

    aput-object v4, v2, v16

    const-string v4, "--port"

    const/16 v16, 0xc

    aput-object v4, v2, v16

    iget v4, v15, Ldev/edge0/chat/Edge0Engine;->port:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0xd

    aput-object v4, v2, v16

    const-string v4, "--alias"

    const/16 v16, 0xe

    aput-object v4, v2, v16

    const-string v4, "edge0"

    const/16 v16, 0xf

    aput-object v4, v2, v16

    const-string v4, "--max-tokens"

    const/16 v16, 0x10

    aput-object v4, v2, v16

    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x11

    aput-object v4, v2, v16

    const-string v4, "--no-warmup"

    const/16 v16, 0x12

    aput-object v4, v2, v16

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    if-lez v8, :cond_0

    const-string v2, "--context"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Ldev/edge0/chat/Edge0Engine;->launchCommand:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 49
    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    new-instance v4, Ljava/io/File;

    const-string v3, "edge0-runtime"

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v1

    const-string v3, "TMPDIR"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v1

    const-string v3, "HOME"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_2
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v1

    const-string v3, "LD_LIBRARY_PATH"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    iput-object v3, v15, Ldev/edge0/chat/Edge0Engine;->process:Ljava/lang/Process;

    const/4 v2, 0x1

    iput-boolean v2, v15, Ldev/edge0/chat/Edge0Engine;->lastStartWasExecutableOk:Z

    .line 54
    new-instance v5, Ljava/lang/Thread;

    new-instance v4, Ldev/edge0/chat/Edge0Engine$4;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v4

    move/from16 v17, v2

    move-object/from16 v2, p0

    move-object v0, v4

    move/from16 v18, v19

    move/from16 v4, v18

    move-object/from16 v20, v5

    move/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move/from16 v15, p11

    :try_start_3
    invoke-direct/range {v1 .. v15}, Ldev/edge0/chat/Edge0Engine$4;-><init>(Ldev/edge0/chat/Edge0Engine;Ljava/lang/Process;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;DDII)V

    .line 69
    const-string v1, "edge0-output"

    .line 54
    move-object/from16 v2, v20

    invoke-direct {v2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/edge0/chat/Edge0Engine$5;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v4, p0

    move/from16 v5, v18

    :try_start_4
    invoke-direct {v1, v4, v5}, Ldev/edge0/chat/Edge0Engine$5;-><init>(Ldev/edge0/chat/Edge0Engine;I)V

    .line 78
    const-string v2, "edge0-ready"

    .line 70
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    monitor-exit p0

    return v17

    .line 35
    :catchall_0
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_2

    .line 80
    :catch_0
    move-exception v0

    move-object/from16 v4, p0

    move/from16 v5, v18

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v4, v15

    move/from16 v5, v19

    goto/16 :goto_1

    .line 43
    :cond_3
    move/from16 v16, v4

    move-object v4, v15

    move/from16 v5, v19

    const/16 v17, 0x1

    :try_start_5
    aget-object v0, v3, v2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v0, v18, v20

    if-eqz v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    move/from16 v6, p11

    move-object v15, v4

    move v4, v5

    move/from16 v5, p3

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6a21\u578b\u6587\u4ef6\u7f3a\u5931\u3001\u4e3a\u7a7a\u6216\u4e0d\u53ef\u8bfb\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_5
    move v5, v4

    move-object v4, v15

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6a21\u578b\u76ee\u5f55\u4e0d\u5b58\u5728\u6216\u65e0\u6cd5\u8bbf\u95ee\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_6
    move v5, v4

    move-object v4, v15

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f15\u64ce\u6587\u4ef6\u4e0d\u5b58\u5728\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 80
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move v5, v4

    move-object v4, v15

    :goto_1
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, v4, Ldev/edge0/chat/Edge0Engine;->lastStartWasExecutableOk:Z

    sget-object v2, Ldev/edge0/chat/Edge0Engine$State;->IDLE:Ldev/edge0/chat/Edge0Engine$State;

    invoke-direct {v4, v5, v2}, Ldev/edge0/chat/Edge0Engine;->setState(ILdev/edge0/chat/Edge0Engine$State;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f15\u64ce\u542f\u52a8\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ldev/edge0/chat/Edge0Engine;->error(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return v1

    .line 35
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v15

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public statusJson()Ljava/lang/String;
    .locals 6

    .line 143
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine;->state:Ldev/edge0/chat/Edge0Engine$State;

    invoke-virtual {v2}, Ldev/edge0/chat/Edge0Engine$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error"

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine;->lastFailure:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "logs"

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine;->logs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "probe"

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine;->probe:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "modelDir"

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine;->directory:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine;->directory:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "executable"

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine;->executable:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Ldev/edge0/chat/Edge0Engine;->executable:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "command"

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine;->launchCommand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "threads"

    iget v2, p0, Ldev/edge0/chat/Edge0Engine;->threads:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "seconds"

    iget-wide v2, p0, Ldev/edge0/chat/Edge0Engine;->startedAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :goto_2
    goto :goto_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ldev/edge0/chat/Edge0Engine;->startedAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 144
    :catch_0
    move-exception v0

    const-string v0, "{}"

    return-object v0
.end method

.method public declared-synchronized stop()V
    .locals 13

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Ldev/edge0/chat/Edge0Engine;->shutdown()V

    iget v0, p0, Ldev/edge0/chat/Edge0Engine;->epoch:I

    sget-object v1, Ldev/edge0/chat/Edge0Engine$State;->IDLE:Ldev/edge0/chat/Edge0Engine$State;

    invoke-direct {p0, v0, v1}, Ldev/edge0/chat/Edge0Engine;->setState(ILdev/edge0/chat/Edge0Engine$State;)V

    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine;->executable:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine;->executable:Ljava/lang/String;

    iget-object v3, p0, Ldev/edge0/chat/Edge0Engine;->directory:Ljava/lang/String;

    iget v4, p0, Ldev/edge0/chat/Edge0Engine;->threads:I

    iget v5, p0, Ldev/edge0/chat/Edge0Engine;->context:I

    iget-object v6, p0, Ldev/edge0/chat/Edge0Engine;->system:Ljava/lang/String;

    iget-wide v7, p0, Ldev/edge0/chat/Edge0Engine;->temperature:D

    iget-wide v9, p0, Ldev/edge0/chat/Edge0Engine;->topP:D

    iget v11, p0, Ldev/edge0/chat/Edge0Engine;->topK:I

    iget v12, p0, Ldev/edge0/chat/Edge0Engine;->maxTokens:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v12}, Ldev/edge0/chat/Edge0Engine;->start(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;DDII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
