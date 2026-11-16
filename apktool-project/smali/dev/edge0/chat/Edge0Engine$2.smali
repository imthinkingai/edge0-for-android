.class Ldev/edge0/chat/Edge0Engine$2;
.super Ljava/lang/Object;
.source "Edge0Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/edge0/chat/Edge0Engine;->setState(ILdev/edge0/chat/Edge0Engine$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/edge0/chat/Edge0Engine;

.field private final synthetic val$s:Ldev/edge0/chat/Edge0Engine$State;


# direct methods
.method constructor <init>(Ldev/edge0/chat/Edge0Engine;Ldev/edge0/chat/Edge0Engine$State;)V
    .locals 0

    .line 33
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine$2;->this$0:Ldev/edge0/chat/Edge0Engine;

    iput-object p2, p0, Ldev/edge0/chat/Edge0Engine$2;->val$s:Ldev/edge0/chat/Edge0Engine$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine$2;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v0}, Ldev/edge0/chat/Edge0Engine;->access$1(Ldev/edge0/chat/Edge0Engine;)Ldev/edge0/chat/Edge0Engine$Listener;

    move-result-object v0

    iget-object v1, p0, Ldev/edge0/chat/Edge0Engine$2;->val$s:Ldev/edge0/chat/Edge0Engine$State;

    invoke-interface {v0, v1}, Ldev/edge0/chat/Edge0Engine$Listener;->onState(Ldev/edge0/chat/Edge0Engine$State;)V

    return-void
.end method
