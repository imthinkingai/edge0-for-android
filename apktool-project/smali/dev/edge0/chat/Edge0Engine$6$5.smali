.class Ldev/edge0/chat/Edge0Engine$6$5;
.super Ljava/lang/Object;
.source "Edge0Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/edge0/chat/Edge0Engine$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldev/edge0/chat/Edge0Engine$6;

.field private final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldev/edge0/chat/Edge0Engine$6;Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine$6$5;->this$1:Ldev/edge0/chat/Edge0Engine$6;

    iput-object p2, p0, Ldev/edge0/chat/Edge0Engine$6$5;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine$6$5;->this$1:Ldev/edge0/chat/Edge0Engine$6;

    invoke-static {v0}, Ldev/edge0/chat/Edge0Engine$6;->access$0(Ldev/edge0/chat/Edge0Engine$6;)Ldev/edge0/chat/Edge0Engine;

    move-result-object v0

    invoke-static {v0}, Ldev/edge0/chat/Edge0Engine;->access$1(Ldev/edge0/chat/Edge0Engine;)Ldev/edge0/chat/Edge0Engine$Listener;

    move-result-object v0

    iget-object v1, p0, Ldev/edge0/chat/Edge0Engine$6$5;->val$content:Ljava/lang/String;

    invoke-interface {v0, v1}, Ldev/edge0/chat/Edge0Engine$Listener;->onAnswerChunk(Ljava/lang/String;)V

    return-void
.end method
