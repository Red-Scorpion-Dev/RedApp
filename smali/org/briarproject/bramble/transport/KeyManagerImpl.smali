.class Lorg/briarproject/bramble/transport/KeyManagerImpl;
.super Ljava/lang/Object;
.source "KeyManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/bramble/api/lifecycle/Service;
.implements Lorg/briarproject/bramble/api/transport/KeyManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final activeContacts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final dbExecutor:Ljava/util/concurrent/Executor;

.field private final managers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/transport/TransportKeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginConfig:Lorg/briarproject/bramble/api/plugin/PluginConfig;

.field private final transportKeyManagerFactory:Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;

.field private final used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/briarproject/bramble/transport/KeyManagerImpl;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/PluginConfig;Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;)V
    .locals 2
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    iput-object p1, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 58
    iput-object p2, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 59
    iput-object p3, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->pluginConfig:Lorg/briarproject/bramble/api/plugin/PluginConfig;

    .line 60
    iput-object p4, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->transportKeyManagerFactory:Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;

    .line 62
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->activeContacts:Ljava/util/Map;

    .line 63
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic lambda$getStreamContext$1(Lorg/briarproject/bramble/transport/TransportKeyManager;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/transport/StreamContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 141
    invoke-interface {p0, p2, p1}, Lorg/briarproject/bramble/transport/TransportKeyManager;->getStreamContext(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/transport/StreamContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getStreamContext$2(Lorg/briarproject/bramble/transport/TransportKeyManager;[BLorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/transport/StreamContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 153
    invoke-interface {p0, p2, p1}, Lorg/briarproject/bramble/transport/TransportKeyManager;->getStreamContext(Lorg/briarproject/bramble/api/db/Transaction;[B)Lorg/briarproject/bramble/api/transport/StreamContext;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$removeContact$3(Lorg/briarproject/bramble/transport/KeyManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/transport/TransportKeyManager;

    invoke-interface {v1, p1}, Lorg/briarproject/bramble/transport/TransportKeyManager;->removeContact(Lorg/briarproject/bramble/api/contact/ContactId;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$startService$0(Lorg/briarproject/bramble/transport/KeyManagerImpl;Ljava/util/Map;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContacts(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/contact/Contact;

    .line 77
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/contact/Contact;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->activeContacts:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    iget-object v2, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, p2, v3, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addTransport(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/plugin/TransportId;I)V

    goto :goto_1

    .line 80
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    iget-object v1, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->transportKeyManagerFactory:Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 82
    invoke-interface {v1, v2, v3, v4}, Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;->createTransportKeyManager(Lorg/briarproject/bramble/api/plugin/TransportId;J)Lorg/briarproject/bramble/transport/TransportKeyManager;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {v1, p2}, Lorg/briarproject/bramble/transport/TransportKeyManager;->start(Lorg/briarproject/bramble/api/db/Transaction;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private removeContact(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->activeContacts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$xR2ywyAdQRyCr4doSG93WCVIrjE;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$xR2ywyAdQRyCr4doSG93WCVIrjE;-><init>(Lorg/briarproject/bramble/transport/KeyManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public activateKeys(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 113
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 115
    iget-object v2, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/transport/TransportKeyManager;

    if-nez v2, :cond_1

    .line 117
    sget-object v0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No key manager for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/transport/KeySetId;

    invoke-interface {v2, p1, v0}, Lorg/briarproject/bramble/transport/TransportKeyManager;->activateKeys(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/transport/KeySetId;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZ)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/crypto/SecretKey;",
            "JZZ)",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, p0

    .line 102
    iget-object v2, v1, Lorg/briarproject/bramble/transport/KeyManagerImpl;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 104
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/briarproject/bramble/transport/TransportKeyManager;

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    move/from16 v11, p6

    move/from16 v12, p7

    .line 105
    invoke-interface/range {v5 .. v12}, Lorg/briarproject/bramble/transport/TransportKeyManager;->addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZ)Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public canSendOutgoingStreams(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/transport/TransportKeyManager;

    if-eqz p2, :cond_0

    .line 127
    invoke-interface {p2, p1}, Lorg/briarproject/bramble/transport/TransportKeyManager;->canSendOutgoingStreams(Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 158
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    if-eqz v0, :cond_0

    .line 159
    check-cast p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/transport/KeyManagerImpl;->removeContact(Lorg/briarproject/bramble/api/contact/ContactId;)V

    goto :goto_0

    .line 160
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;

    if-eqz v0, :cond_2

    .line 161
    check-cast p1, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;

    .line 162
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->activeContacts:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->activeContacts:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public getStreamContext(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/transport/StreamContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->activeContacts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/transport/TransportKeyManager;

    if-nez v0, :cond_2

    .line 137
    sget-object p1, Lorg/briarproject/bramble/transport/KeyManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/briarproject/bramble/transport/KeyManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No key manager for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    return-object v1

    .line 140
    :cond_2
    iget-object p2, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    new-instance v2, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$EgmjW5Y1PEkQKFoZhjQTH5kDQGs;

    invoke-direct {v2, v0, p1}, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$EgmjW5Y1PEkQKFoZhjQTH5kDQGs;-><init>(Lorg/briarproject/bramble/transport/TransportKeyManager;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {p2, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithNullableResult(ZLorg/briarproject/bramble/api/db/NullableDbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/transport/StreamContext;

    return-object p1
.end method

.method public getStreamContext(Lorg/briarproject/bramble/api/plugin/TransportId;[B)Lorg/briarproject/bramble/api/transport/StreamContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/transport/TransportKeyManager;

    if-nez v0, :cond_1

    .line 149
    sget-object p2, Lorg/briarproject/bramble/transport/KeyManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lorg/briarproject/bramble/transport/KeyManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No key manager for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 152
    :cond_1
    iget-object p1, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    new-instance v2, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$ZOX-mNqdgQsZ8PvKKhpIjwdfJYQ;

    invoke-direct {v2, v0, p2}, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$ZOX-mNqdgQsZ8PvKKhpIjwdfJYQ;-><init>(Lorg/briarproject/bramble/transport/TransportKeyManager;[B)V

    invoke-interface {p1, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithNullableResult(ZLorg/briarproject/bramble/api/db/NullableDbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/transport/StreamContext;

    return-object p1
.end method

.method public startService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/lifecycle/ServiceException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    iget-object v1, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->pluginConfig:Lorg/briarproject/bramble/api/plugin/PluginConfig;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/PluginConfig;->getSimplexFactories()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginFactory;

    .line 71
    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginFactory;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v3

    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginFactory;->getMaxLatency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->pluginConfig:Lorg/briarproject/bramble/api/plugin/PluginConfig;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/PluginConfig;->getDuplexFactories()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;

    .line 73
    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v3

    invoke-interface {v2}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;->getMaxLatency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 75
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/transport/KeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x0

    new-instance v3, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$icUrD4eCUL-tYCA3fMwGC31F2Ik;

    invoke-direct {v3, p0, v0}, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$icUrD4eCUL-tYCA3fMwGC31F2Ik;-><init>(Lorg/briarproject/bramble/transport/KeyManagerImpl;Ljava/util/Map;)V

    invoke-interface {v1, v2, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Lorg/briarproject/bramble/api/lifecycle/ServiceException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/lifecycle/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stopService()V
    .locals 0

    return-void
.end method
