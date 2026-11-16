.class public final synthetic Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/edge0/chat/MainActivity$Bridge;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldev/edge0/chat/MainActivity$Bridge;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda2;->f$0:Ldev/edge0/chat/MainActivity$Bridge;

    iput-object p2, p0, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p3, p0, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda2;->f$0:Ldev/edge0/chat/MainActivity$Bridge;

    iget-object v1, p0, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget v2, p0, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda2;->f$2:I

    iget-object p0, p0, Ldev/edge0/chat/MainActivity$Bridge$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Ldev/edge0/chat/MainActivity$Bridge;->lambda$doImportModel$2$dev-edge0-chat-MainActivity$Bridge(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
