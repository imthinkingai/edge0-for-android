.class public interface abstract Ldev/edge0/chat/Edge0Engine$Listener;
.super Ljava/lang/Object;
.source "Edge0Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/edge0/chat/Edge0Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAnswerChunk(Ljava/lang/String;)V
.end method

.method public abstract onAnswerEnd()V
.end method

.method public abstract onAnswerStart()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onState(Ldev/edge0/chat/Edge0Engine$State;)V
.end method

.method public abstract onThinkingChunk(Ljava/lang/String;)V
.end method

.method public abstract onThinkingEnd()V
.end method

.method public abstract onThinkingStart()V
.end method
