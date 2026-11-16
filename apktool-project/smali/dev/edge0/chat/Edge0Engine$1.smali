.class Ldev/edge0/chat/Edge0Engine$1;
.super Ljava/lang/Object;
.source "Edge0Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/edge0/chat/Edge0Engine;->post(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/edge0/chat/Edge0Engine;

.field private final synthetic val$e:I

.field private final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ldev/edge0/chat/Edge0Engine;ILjava/lang/Runnable;)V
    .locals 0

    .line 32
    iput-object p1, p0, Ldev/edge0/chat/Edge0Engine$1;->this$0:Ldev/edge0/chat/Edge0Engine;

    iput p2, p0, Ldev/edge0/chat/Edge0Engine$1;->val$e:I

    iput-object p3, p0, Ldev/edge0/chat/Edge0Engine$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 32
    iget v0, p0, Ldev/edge0/chat/Edge0Engine$1;->val$e:I

    iget-object v1, p0, Ldev/edge0/chat/Edge0Engine$1;->this$0:Ldev/edge0/chat/Edge0Engine;

    invoke-static {v1}, Ldev/edge0/chat/Edge0Engine;->access$0(Ldev/edge0/chat/Edge0Engine;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldev/edge0/chat/Edge0Engine$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
