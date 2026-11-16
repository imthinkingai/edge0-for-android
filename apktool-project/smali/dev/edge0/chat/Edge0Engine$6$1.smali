.class Ldev/edge0/chat/Edge0Engine$6$1;
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


# direct methods
.method constructor <init>(Ldev/edge0/chat/Edge0Engine$6;)V
    .locals 0

    .line 109
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine$6$1;->this$1:Ldev/edge0/chat/Edge0Engine$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 109
    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine$6$1;->this$1:Ldev/edge0/chat/Edge0Engine$6;

    invoke-static {v0}, Ldev/edge0/chat/Edge0Engine$6;->access$0(Ldev/edge0/chat/Edge0Engine$6;)Ldev/edge0/chat/Edge0Engine;

    move-result-object v0

    invoke-static {v0}, Ldev/edge0/chat/Edge0Engine;->access$1(Ldev/edge0/chat/Edge0Engine;)Ldev/edge0/chat/Edge0Engine$Listener;

    move-result-object v0

    invoke-interface {v0}, Ldev/edge0/chat/Edge0Engine$Listener;->onAnswerStart()V

    return-void
.end method
