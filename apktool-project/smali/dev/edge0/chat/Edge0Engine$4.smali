.class Ldev/edge0/chat/Edge0Engine$4;
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

.field private final synthetic val$ctx:I

.field private final synthetic val$dir:Ljava/lang/String;

.field private final synthetic val$e:I

.field private final synthetic val$exe:Ljava/lang/String;

.field private final synthetic val$k:I

.field private final synthetic val$launched:Ljava/lang/Process;

.field private final synthetic val$max:I

.field private final synthetic val$p:D

.field private final synthetic val$sys:Ljava/lang/String;

.field private final synthetic val$t:I

.field private final synthetic val$temp:D


# direct methods
.method constructor <init>(Ldev/edge0/chat/Edge0Engine;Ljava/lang/Process;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;DDII)V
    .locals 0

    .line 54
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    iput-object p2, p0, Ldev/edge0/chat/Edge0Engine$4;->val$launched:Ljava/lang/Process;

    iput p3, p0, Ldev/edge0/chat/Edge0Engine$4;->val$e:I

    iput p4, p0, Ldev/edge0/chat/Edge0Engine$4;->val$t:I

    iput-object p5, p0, Ldev/edge0/chat/Edge0Engine$4;->val$exe:Ljava/lang/String;

    iput-object p6, p0, Ldev/edge0/chat/Edge0Engine$4;->val$dir:Ljava/lang/String;

    iput p7, p0, Ldev/edge0/chat/Edge0Engine$4;->val$ctx:I

    iput-object p8, p0, Ldev/edge0/chat/Edge0Engine$4;->val$sys:Ljava/lang/String;

    iput-wide p9, p0, Ldev/edge0/chat/Edge0Engine$4;->val$temp:D

    iput-wide p11, p0, Ldev/edge0/chat/Edge0Engine$4;->val$p:D

    iput p13, p0, Ldev/edge0/chat/Edge0Engine$4;->val$k:I

    iput p14, p0, Ldev/edge0/chat/Edge0Engine$4;->val$max:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 55
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine$4;->val$launched:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 56
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, p0, Ldev/edge0/chat/Edge0Engine$4;->val$e:I

    iget-object v3, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v3}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v4}, Ldev/edge0/chat/Edge0Engine;->access$2(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldev/edge0/chat/Edge0Engine;->access$3(Ldev/edge0/chat/Edge0Engine;Ljava/lang/String;)V

    iget-object v1, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v1}, Ldev/edge0/chat/Edge0Engine;->access$2(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e80

    if-le v1, v2, :cond_0

    iget-object v1, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget-object v3, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v3}, Ldev/edge0/chat/Edge0Engine;->access$2(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v4}, Ldev/edge0/chat/Edge0Engine;->access$2(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldev/edge0/chat/Edge0Engine;->access$3(Ldev/edge0/chat/Edge0Engine;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine$4;->val$launched:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 58
    iget-object v1, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    iget v2, p0, Ldev/edge0/chat/Edge0Engine$4;->val$e:I

    iget-object v3, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v3}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v3

    if-eq v2, v3, :cond_3

    monitor-exit v1

    return-void

    .line 60
    :cond_3
    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ldev/edge0/chat/Edge0Engine;->access$4(Ldev/edge0/chat/Edge0Engine;Ljava/lang/Process;)V

    .line 61
    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v2}, Ldev/edge0/chat/Edge0Engine;->access$5(Ldev/edge0/chat/Edge0Engine;)Ldev/edge0/chat/Edge0Engine$State;

    move-result-object v2

    sget-object v3, Ldev/edge0/chat/Edge0Engine$State;->LOADING:Ldev/edge0/chat/Edge0Engine$State;

    if-ne v2, v3, :cond_5

    if-eqz v0, :cond_5

    iget v2, p0, Ldev/edge0/chat/Edge0Engine$4;->val$t:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v2}, Ldev/edge0/chat/Edge0Engine;->access$2(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CPU threads require"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 62
    iget v0, p0, Ldev/edge0/chat/Edge0Engine$4;->val$t:I

    const/4 v2, 0x4

    if-le v0, v2, :cond_4

    :goto_2
    move v6, v2

    goto :goto_3

    :cond_4
    iget v0, p0, Ldev/edge0/chat/Edge0Engine$4;->val$t:I

    add-int/lit8 v2, v0, -0x1

    goto :goto_2

    .line 63
    :goto_3
    iget-object v3, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget-object v4, p0, Ldev/edge0/chat/Edge0Engine$4;->val$exe:Ljava/lang/String;

    iget-object v5, p0, Ldev/edge0/chat/Edge0Engine$4;->val$dir:Ljava/lang/String;

    iget v7, p0, Ldev/edge0/chat/Edge0Engine$4;->val$ctx:I

    iget-object v8, p0, Ldev/edge0/chat/Edge0Engine$4;->val$sys:Ljava/lang/String;

    iget-wide v9, p0, Ldev/edge0/chat/Edge0Engine$4;->val$temp:D

    iget-wide v11, p0, Ldev/edge0/chat/Edge0Engine$4;->val$p:D

    iget v13, p0, Ldev/edge0/chat/Edge0Engine$4;->val$k:I

    iget v14, p0, Ldev/edge0/chat/Edge0Engine$4;->val$max:I

    invoke-virtual/range {v3 .. v14}, Ldev/edge0/chat/Edge0Engine;->start(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;DDII)Z

    .line 64
    monitor-exit v1

    return-void

    .line 66
    :cond_5
    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v3, p0, Ldev/edge0/chat/Edge0Engine$4;->val$e:I

    sget-object v4, Ldev/edge0/chat/Edge0Engine$State;->IDLE:Ldev/edge0/chat/Edge0Engine$State;

    invoke-static {v2, v3, v4}, Ldev/edge0/chat/Edge0Engine;->access$6(Ldev/edge0/chat/Edge0Engine;ILdev/edge0/chat/Edge0Engine$State;)V

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v3, p0, Ldev/edge0/chat/Edge0Engine$4;->val$e:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f15\u64ce\u5df2\u9000\u51fa ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v4}, Ldev/edge0/chat/Edge0Engine;->access$2(Ldev/edge0/chat/Edge0Engine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Ldev/edge0/chat/Edge0Engine;->access$7(Ldev/edge0/chat/Edge0Engine;ILjava/lang/String;)V

    .line 58
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    :catch_0
    move-exception v0

    iget v1, p0, Ldev/edge0/chat/Edge0Engine$4;->val$e:I

    iget-object v2, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v2}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Ldev/edge0/chat/Edge0Engine$4;->this$0:Ldev/edge0/chat/Edge0Engine;

    iget v2, p0, Ldev/edge0/chat/Edge0Engine$4;->val$e:I

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ldev/edge0/chat/Edge0Engine;->access$7(Ldev/edge0/chat/Edge0Engine;ILjava/lang/String;)V

    .line 69
    :cond_6
    :goto_4
    return-void
.end method
