.class Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;
.super Ljava/lang/Object;
.source "ConnectionRegistryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/Multiset<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;>;"
        }
    .end annotation
.end field

.field private final contactCounts:Lorg/briarproject/bramble/api/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/bramble/api/Multiset<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    .line 45
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->connections:Ljava/util/Map;

    .line 47
    new-instance p1, Lorg/briarproject/bramble/api/Multiset;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/Multiset;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->contactCounts:Lorg/briarproject/bramble/api/Multiset;

    return-void
.end method


# virtual methods
.method public getConnectedContacts(Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/Multiset;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 107
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Multiset;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    sget-object v0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " contacts connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :cond_1
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 113
    throw p1
.end method

.method public isConnected(Lorg/briarproject/bramble/api/contact/ContactId;)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->contactCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/Multiset;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 134
    throw p1
.end method

.method public isConnected(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)Z
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->connections:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/Multiset;

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p2, p1}, Lorg/briarproject/bramble/api/Multiset;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 123
    :goto_0
    iget-object p2, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 124
    throw p1
.end method

.method public registerConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 3

    .line 53
    sget-object v0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 54
    sget-object v0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming connection registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outgoing connection registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 60
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->connections:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/Multiset;

    if-nez v1, :cond_2

    .line 62
    new-instance v1, Lorg/briarproject/bramble/api/Multiset;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/Multiset;-><init>()V

    .line 63
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->connections:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    invoke-virtual {v1, p1}, Lorg/briarproject/bramble/api/Multiset;->add(Ljava/lang/Object;)I

    .line 66
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->contactCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v1, p1}, Lorg/briarproject/bramble/api/Multiset;->add(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 68
    :cond_3
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v2, Lorg/briarproject/bramble/api/plugin/event/ConnectionOpenedEvent;

    invoke-direct {v2, p1, p2, p3}, Lorg/briarproject/bramble/api/plugin/event/ConnectionOpenedEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    if-eqz v0, :cond_4

    .line 72
    sget-object p2, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->LOG:Ljava/util/logging/Logger;

    const-string p3, "Contact connected"

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance p3, Lorg/briarproject/bramble/api/plugin/event/ContactConnectedEvent;

    invoke-direct {p3, p1}, Lorg/briarproject/bramble/api/plugin/event/ContactConnectedEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {p2, p3}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 68
    iget-object p2, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    throw p1
.end method

.method public unregisterConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 3

    .line 80
    sget-object v0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 81
    sget-object v0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming connection unregistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outgoing connection unregistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 87
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->connections:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/Multiset;

    if-eqz v1, :cond_4

    .line 89
    invoke-virtual {v1, p1}, Lorg/briarproject/bramble/api/Multiset;->remove(Ljava/lang/Object;)I

    .line 90
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->contactCounts:Lorg/briarproject/bramble/api/Multiset;

    invoke-virtual {v1, p1}, Lorg/briarproject/bramble/api/Multiset;->remove(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 92
    :cond_2
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 94
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v2, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;

    invoke-direct {v2, p1, p2, p3}, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    if-eqz v0, :cond_3

    .line 96
    sget-object p2, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->LOG:Ljava/util/logging/Logger;

    const-string p3, "Contact disconnected"

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance p3, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;

    invoke-direct {p3, p1}, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {p2, p3}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_3
    return-void

    .line 88
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 92
    iget-object p2, p0, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    throw p1
.end method
