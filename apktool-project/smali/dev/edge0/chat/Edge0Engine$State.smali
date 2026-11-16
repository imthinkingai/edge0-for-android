.class public final enum Ldev/edge0/chat/Edge0Engine$State;
.super Ljava/lang/Enum;
.source "Edge0Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/edge0/chat/Edge0Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/edge0/chat/Edge0Engine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Ldev/edge0/chat/Edge0Engine$State;

.field public static final enum GENERATING:Ldev/edge0/chat/Edge0Engine$State;

.field public static final enum IDLE:Ldev/edge0/chat/Edge0Engine$State;

.field public static final enum LOADING:Ldev/edge0/chat/Edge0Engine$State;

.field public static final enum READY:Ldev/edge0/chat/Edge0Engine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Ldev/edge0/chat/Edge0Engine$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldev/edge0/chat/Edge0Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/edge0/chat/Edge0Engine$State;->IDLE:Ldev/edge0/chat/Edge0Engine$State;

    new-instance v0, Ldev/edge0/chat/Edge0Engine$State;

    const-string v1, "LOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/edge0/chat/Edge0Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/edge0/chat/Edge0Engine$State;->LOADING:Ldev/edge0/chat/Edge0Engine$State;

    new-instance v0, Ldev/edge0/chat/Edge0Engine$State;

    const-string v1, "READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldev/edge0/chat/Edge0Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/edge0/chat/Edge0Engine$State;->READY:Ldev/edge0/chat/Edge0Engine$State;

    new-instance v0, Ldev/edge0/chat/Edge0Engine$State;

    const-string v1, "GENERATING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldev/edge0/chat/Edge0Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/edge0/chat/Edge0Engine$State;->GENERATING:Ldev/edge0/chat/Edge0Engine$State;

    sget-object v0, Ldev/edge0/chat/Edge0Engine$State;->IDLE:Ldev/edge0/chat/Edge0Engine$State;

    sget-object v1, Ldev/edge0/chat/Edge0Engine$State;->LOADING:Ldev/edge0/chat/Edge0Engine$State;

    sget-object v2, Ldev/edge0/chat/Edge0Engine$State;->READY:Ldev/edge0/chat/Edge0Engine$State;

    sget-object v3, Ldev/edge0/chat/Edge0Engine$State;->GENERATING:Ldev/edge0/chat/Edge0Engine$State;

    filled-new-array {v0, v1, v2, v3}, [Ldev/edge0/chat/Edge0Engine$State;

    move-result-object v0

    sput-object v0, Ldev/edge0/chat/Edge0Engine$State;->ENUM$VALUES:[Ldev/edge0/chat/Edge0Engine$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/edge0/chat/Edge0Engine$State;
    .locals 1

    .line 1
    const-class v0, Ldev/edge0/chat/Edge0Engine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/edge0/chat/Edge0Engine$State;

    return-object p0
.end method

.method public static values()[Ldev/edge0/chat/Edge0Engine$State;
    .locals 4

    .line 1
    sget-object v0, Ldev/edge0/chat/Edge0Engine$State;->ENUM$VALUES:[Ldev/edge0/chat/Edge0Engine$State;

    array-length v1, v0

    new-array v2, v1, [Ldev/edge0/chat/Edge0Engine$State;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
