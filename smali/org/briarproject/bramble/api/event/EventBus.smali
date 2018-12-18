.class public interface abstract Lorg/briarproject/bramble/api/event/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract addListener(Lorg/briarproject/bramble/api/event/EventListener;)V
.end method

.method public abstract broadcast(Lorg/briarproject/bramble/api/event/Event;)V
.end method

.method public abstract removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V
.end method
