.class Lorg/briarproject/bramble/event/EventBusImpl;
.super Ljava/lang/Object;
.source "EventBusImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventBus;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/event/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/event/EventBusImpl;->listeners:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addListener(Lorg/briarproject/bramble/api/event/EventListener;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/bramble/event/EventBusImpl;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public broadcast(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/event/EventBusImpl;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/event/EventListener;

    invoke-interface {v1, p1}, Lorg/briarproject/bramble/api/event/EventListener;->eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/event/EventBusImpl;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
