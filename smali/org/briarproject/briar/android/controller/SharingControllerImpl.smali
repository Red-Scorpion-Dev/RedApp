.class public Lorg/briarproject/briar/android/controller/SharingControllerImpl;
.super Ljava/lang/Object;
.source "SharingControllerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/briar/android/controller/SharingController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

.field private final contacts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private volatile listener:Lorg/briarproject/briar/android/controller/SharingController$SharingListener;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->contacts:Ljava/util/Set;

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 34
    iput-object p2, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    return-void
.end method

.method public static synthetic lambda$setConnected$0(Lorg/briarproject/briar/android/controller/SharingControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->contacts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->getOnlineCount()I

    move-result p1

    .line 66
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->listener:Lorg/briarproject/briar/android/controller/SharingController$SharingListener;

    iget-object v1, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->contacts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lorg/briarproject/briar/android/controller/SharingController$SharingListener;->onSharingInfoUpdated(II)V

    :cond_0
    return-void
.end method

.method private setConnected(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->listener:Lorg/briarproject/briar/android/controller/SharingController$SharingListener;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->listener:Lorg/briarproject/briar/android/controller/SharingController$SharingListener;

    new-instance v1, Lorg/briarproject/briar/android/controller/-$$Lambda$SharingControllerImpl$xqRRPZJEqquw6SGCss7vVP7k6mc;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/controller/-$$Lambda$SharingControllerImpl$xqRRPZJEqquw6SGCss7vVP7k6mc;-><init>(Lorg/briarproject/briar/android/controller/SharingControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/controller/SharingController$SharingListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->contacts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->contacts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 54
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/ContactConnectedEvent;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/ContactConnectedEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/ContactConnectedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->setConnected(Lorg/briarproject/bramble/api/contact/ContactId;)V

    goto :goto_0

    .line 56
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;

    if-eqz v0, :cond_1

    .line 57
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->setConnected(Lorg/briarproject/bramble/api/contact/ContactId;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getOnlineCount()I
    .locals 4

    .line 89
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->contacts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/contact/ContactId;

    .line 90
    iget-object v3, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    invoke-interface {v3, v2}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->isConnected(Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getTotalCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->contacts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method

.method public remove(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->contacts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSharingListener(Lorg/briarproject/briar/android/controller/SharingController$SharingListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;->listener:Lorg/briarproject/briar/android/controller/SharingController$SharingListener;

    return-void
.end method
