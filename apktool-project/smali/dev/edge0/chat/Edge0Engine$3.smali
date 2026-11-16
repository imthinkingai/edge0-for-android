.class Ldev/edge0/chat/Edge0Engine$3;
.super Ljava/lang/Object;
.source "Edge0Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/edge0/chat/Edge0Engine;->error(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/edge0/chat/Edge0Engine;

.field private final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldev/edge0/chat/Edge0Engine;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine$3;->this$0:Ldev/edge0/chat/Edge0Engine;

    iput-object p2, p0, Ldev/edge0/chat/Edge0Engine$3;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 34
    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine$3;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v0}, Ldev/edge0/chat/Edge0Engine;->access$1(Ldev/edge0/chat/Edge0Engine;)Ldev/edge0/chat/Edge0Engine$Listener;

    move-result-object v0

    iget-object v1, p0, Ldev/edge0/chat/Edge0Engine$3;->val$s:Ljava/lang/String;

    invoke-interface {v0, v1}, Ldev/edge0/chat/Edge0Engine$Listener;->onError(Ljava/lang/String;)V

    return-void
.end method
