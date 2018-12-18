.class Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;
.super Ljava/lang/Object;
.source "TransportKeyManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/transport/TransportKeyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;,
        Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final dbExecutor:Ljava/util/concurrent/Executor;

.field private final inContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/Bytes;",
            "Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;",
            ">;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            "Lorg/briarproject/bramble/transport/MutableKeySet;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final outContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/transport/MutableKeySet;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationPeriodLength:J

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

.field private final transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

.field private final used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/plugin/TransportId;J)V
    .locals 2
    .param p4    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Lorg/briarproject/bramble/api/system/Scheduler;
        .end annotation
    .end param

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->keys:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->inContexts:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->outContexts:Ljava/util/Map;

    .line 67
    iput-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 68
    iput-object p2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    .line 69
    iput-object p3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 70
    iput-object p4, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 71
    iput-object p5, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 72
    iput-object p6, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    const-wide/32 p1, 0x5265c00

    add-long/2addr p7, p1

    .line 73
    iput-wide p7, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->rotationPeriodLength:J

    return-void
.end method

.method private addKeys(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/transport/KeySet;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/transport/KeySet;

    .line 116
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/KeySet;->getKeySetId()Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v1

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/KeySet;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    new-instance v3, Lorg/briarproject/bramble/transport/MutableTransportKeys;

    .line 117
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/KeySet;->getTransportKeys()Lorg/briarproject/bramble/api/transport/TransportKeys;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/briarproject/bramble/transport/MutableTransportKeys;-><init>(Lorg/briarproject/bramble/api/transport/TransportKeys;)V

    .line 116
    invoke-direct {p0, v1, v2, v3}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->addKeys(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableTransportKeys;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addKeys(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableTransportKeys;)V
    .locals 2

    .line 124
    new-instance v0, Lorg/briarproject/bramble/transport/MutableKeySet;

    invoke-direct {v0, p1, p2, p3}, Lorg/briarproject/bramble/transport/MutableKeySet;-><init>(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableTransportKeys;)V

    .line 125
    iget-object v1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->keys:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p3}, Lorg/briarproject/bramble/transport/MutableTransportKeys;->getPreviousIncomingKeys()Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->encodeTags(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableIncomingKeys;)V

    .line 127
    invoke-virtual {p3}, Lorg/briarproject/bramble/transport/MutableTransportKeys;->getCurrentIncomingKeys()Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->encodeTags(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableIncomingKeys;)V

    .line 128
    invoke-virtual {p3}, Lorg/briarproject/bramble/transport/MutableTransportKeys;->getNextIncomingKeys()Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->encodeTags(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableIncomingKeys;)V

    .line 129
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->considerReplacingOutgoingKeys(Lorg/briarproject/bramble/transport/MutableKeySet;)V

    return-void
.end method

.method private considerReplacingOutgoingKeys(Lorg/briarproject/bramble/transport/MutableKeySet;)V
    .locals 2

    .line 148
    invoke-virtual {p1}, Lorg/briarproject/bramble/transport/MutableKeySet;->getTransportKeys()Lorg/briarproject/bramble/transport/MutableTransportKeys;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/MutableTransportKeys;->getCurrentOutgoingKeys()Lorg/briarproject/bramble/transport/MutableOutgoingKeys;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->outContexts:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/briarproject/bramble/transport/MutableKeySet;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/transport/MutableKeySet;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/MutableKeySet;->getKeySetId()Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/KeySetId;->getInt()I

    move-result v0

    invoke-virtual {p1}, Lorg/briarproject/bramble/transport/MutableKeySet;->getKeySetId()Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/transport/KeySetId;->getInt()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->outContexts:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/briarproject/bramble/transport/MutableKeySet;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private encodeTags(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableIncomingKeys;)V
    .locals 11

    .line 135
    invoke-virtual {p3}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->getWindow()Lorg/briarproject/bramble/transport/ReorderingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/ReorderingWindow;->getUnseen()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 136
    new-instance v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, v9

    invoke-direct/range {v2 .. v8}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;-><init>(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableIncomingKeys;JLorg/briarproject/bramble/transport/TransportKeyManagerImpl$1;)V

    const/16 v2, 0x10

    .line 138
    new-array v8, v2, [B

    .line 139
    iget-object v2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    invoke-virtual {p3}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v4

    const/4 v5, 0x4

    move-object v3, v8

    invoke-interface/range {v2 .. v7}, Lorg/briarproject/bramble/api/crypto/TransportCrypto;->encodeTag([BLorg/briarproject/bramble/api/crypto/SecretKey;IJ)V

    .line 141
    iget-object v2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->inContexts:Ljava/util/Map;

    new-instance v3, Lorg/briarproject/bramble/api/Bytes;

    invoke-direct {v3, v8}, Lorg/briarproject/bramble/api/Bytes;-><init>([B)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$9Q20DNoo5DkYcw608pXkzRI2JuM(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->rotateKeys()V

    return-void
.end method

.method public static synthetic lambda$kvWKNDUgp64P-21hG_2RMo490TY(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->rotateKeys(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method

.method public static synthetic lambda$rotateKeys$0(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;)V
    .locals 3

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    new-instance v2, Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$kvWKNDUgp64P-21hG_2RMo490TY;

    invoke-direct {v2, p0}, Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$kvWKNDUgp64P-21hG_2RMo490TY;-><init>(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    sget-object v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private rotateKeys(Ljava/util/Collection;J)Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/transport/KeySet;",
            ">;J)",
            "Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;"
        }
    .end annotation

    .line 99
    new-instance v0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;-><init>(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$1;)V

    .line 100
    iget-wide v1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->rotationPeriodLength:J

    div-long/2addr p2, v1

    .line 101
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/transport/KeySet;

    .line 102
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/transport/KeySet;->getTransportKeys()Lorg/briarproject/bramble/api/transport/TransportKeys;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    .line 104
    invoke-interface {v3, v2, p2, p3}, Lorg/briarproject/bramble/api/crypto/TransportCrypto;->rotateTransportKeys(Lorg/briarproject/bramble/api/transport/TransportKeys;J)Lorg/briarproject/bramble/api/transport/TransportKeys;

    move-result-object v3

    .line 105
    new-instance v4, Lorg/briarproject/bramble/api/transport/KeySet;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/transport/KeySet;->getKeySetId()Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v5

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/transport/KeySet;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    invoke-direct {v4, v5, v1, v3}, Lorg/briarproject/bramble/api/transport/KeySet;-><init>(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/transport/TransportKeys;)V

    .line 106
    invoke-virtual {v3}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getRotationPeriod()J

    move-result-wide v5

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getRotationPeriod()J

    move-result-wide v1

    cmp-long v3, v5, v1

    if-lez v3, :cond_0

    .line 107
    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->access$100(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->access$000(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private rotateKeys()V
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$_VrUhVzU_zM3bv7Qgdb0Jjnjugg;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$_VrUhVzU_zM3bv7Qgdb0Jjnjugg;-><init>(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rotateKeys(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 323
    iget-object v2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 326
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->keys:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    iget-object v3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->keys:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/transport/MutableKeySet;

    .line 328
    new-instance v5, Lorg/briarproject/bramble/api/transport/KeySet;

    invoke-virtual {v4}, Lorg/briarproject/bramble/transport/MutableKeySet;->getKeySetId()Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v6

    invoke-virtual {v4}, Lorg/briarproject/bramble/transport/MutableKeySet;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v7

    .line 329
    invoke-virtual {v4}, Lorg/briarproject/bramble/transport/MutableKeySet;->getTransportKeys()Lorg/briarproject/bramble/transport/MutableTransportKeys;

    move-result-object v4

    invoke-virtual {v4}, Lorg/briarproject/bramble/transport/MutableTransportKeys;->snapshot()Lorg/briarproject/bramble/api/transport/TransportKeys;

    move-result-object v4

    invoke-direct {v5, v6, v7, v4}, Lorg/briarproject/bramble/api/transport/KeySet;-><init>(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/transport/TransportKeys;)V

    .line 328
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_0
    invoke-direct {p0, v2, v0, v1}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->rotateKeys(Ljava/util/Collection;J)Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;

    move-result-object v2

    .line 333
    iget-object v3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->inContexts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 334
    iget-object v3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->outContexts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 335
    iget-object v3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->keys:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 336
    invoke-static {v2}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->access$000(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->addKeys(Ljava/util/Collection;)V

    .line 338
    invoke-static {v2}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->access$100(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 339
    iget-object v3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v2}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->access$100(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->updateTransportKeys(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_1
    iget-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 344
    invoke-direct {p0, v0, v1}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->scheduleKeyRotation(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 341
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 342
    throw p1
.end method

.method private scheduleKeyRotation(J)V
    .locals 4

    .line 158
    iget-wide v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->rotationPeriodLength:J

    iget-wide v2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->rotationPeriodLength:J

    rem-long/2addr p1, v2

    sub-long/2addr v0, p1

    .line 159
    iget-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$9Q20DNoo5DkYcw608pXkzRI2JuM;

    invoke-direct {p2, p0}, Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$9Q20DNoo5DkYcw608pXkzRI2JuM;-><init>(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public activateKeys(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 199
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->keys:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/transport/MutableKeySet;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/MutableKeySet;->getTransportKeys()Lorg/briarproject/bramble/transport/MutableTransportKeys;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lorg/briarproject/bramble/transport/MutableTransportKeys;->getCurrentOutgoingKeys()Lorg/briarproject/bramble/transport/MutableOutgoingKeys;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->activate()V

    .line 203
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->considerReplacingOutgoingKeys(Lorg/briarproject/bramble/transport/MutableKeySet;)V

    .line 204
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v1}, Lorg/briarproject/bramble/transport/MutableTransportKeys;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setTransportKeysActive(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 200
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 206
    iget-object p2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 207
    throw p1
.end method

.method public addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZ)Lorg/briarproject/bramble/api/transport/KeySetId;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v1, p0

    move-object v0, p2

    .line 175
    iget-object v2, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 178
    :try_start_0
    iget-wide v2, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->rotationPeriodLength:J

    div-long v7, p4, v2

    .line 180
    iget-object v4, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    iget-object v5, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    move-object v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v4 .. v10}, Lorg/briarproject/bramble/api/crypto/TransportCrypto;->deriveTransportKeys(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZ)Lorg/briarproject/bramble/api/transport/TransportKeys;

    move-result-object v2

    .line 183
    iget-object v3, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v3}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->rotationPeriodLength:J

    div-long/2addr v3, v5

    .line 184
    iget-object v5, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    invoke-interface {v5, v2, v3, v4}, Lorg/briarproject/bramble/api/crypto/TransportCrypto;->rotateTransportKeys(Lorg/briarproject/bramble/api/transport/TransportKeys;J)Lorg/briarproject/bramble/api/transport/TransportKeys;

    move-result-object v2

    .line 186
    iget-object v3, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-object v4, p1

    invoke-interface {v3, p1, p2, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addTransportKeys(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/transport/TransportKeys;)Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v3

    .line 188
    new-instance v4, Lorg/briarproject/bramble/transport/MutableTransportKeys;

    invoke-direct {v4, v2}, Lorg/briarproject/bramble/transport/MutableTransportKeys;-><init>(Lorg/briarproject/bramble/api/transport/TransportKeys;)V

    invoke-direct {p0, v3, p2, v4}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->addKeys(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableTransportKeys;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v0, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 192
    throw v0
.end method

.method public canSendOutgoingStreams(Lorg/briarproject/bramble/api/contact/ContactId;)Z
    .locals 5

    .line 230
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 232
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->outContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/transport/MutableKeySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 239
    iget-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 235
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/briarproject/bramble/transport/MutableKeySet;->getTransportKeys()Lorg/briarproject/bramble/transport/MutableTransportKeys;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/transport/MutableTransportKeys;->getCurrentOutgoingKeys()Lorg/briarproject/bramble/transport/MutableOutgoingKeys;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {p1}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->getStreamCounter()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v3, 0xffffffffL

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    const/4 v0, 0x1

    .line 239
    :cond_1
    iget-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 236
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 239
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 240
    throw p1
.end method

.method public getStreamContext(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/transport/StreamContext;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 249
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->outContexts:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/transport/MutableKeySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    iget-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 252
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/MutableKeySet;->getTransportKeys()Lorg/briarproject/bramble/transport/MutableTransportKeys;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableTransportKeys;->getCurrentOutgoingKeys()Lorg/briarproject/bramble/transport/MutableOutgoingKeys;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->getStreamCounter()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v5, 0xffffffffL

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 264
    iget-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 256
    :cond_1
    :try_start_2
    new-instance v1, Lorg/briarproject/bramble/api/transport/StreamContext;

    iget-object v5, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 257
    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v6

    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v7

    .line 258
    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->getStreamCounter()J

    move-result-wide v8

    move-object v3, v1

    move-object v4, p2

    invoke-direct/range {v3 .. v9}, Lorg/briarproject/bramble/api/transport/StreamContext;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;J)V

    .line 260
    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->incrementStreamCounter()V

    .line 261
    iget-object p2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/MutableKeySet;->getKeySetId()Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v0

    invoke-interface {p2, p1, v2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->incrementStreamCounter(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    iget-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 253
    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 264
    iget-object p2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 265
    throw p1
.end method

.method public getStreamContext(Lorg/briarproject/bramble/api/db/Transaction;[B)Lorg/briarproject/bramble/api/transport/StreamContext;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 271
    iget-object v0, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 274
    :try_start_0
    iget-object v0, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->inContexts:Ljava/util/Map;

    new-instance v2, Lorg/briarproject/bramble/api/Bytes;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lorg/briarproject/bramble/api/Bytes;-><init>([B)V

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 317
    iget-object v2, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 276
    :cond_0
    :try_start_1
    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->access$500(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    move-result-object v2

    .line 278
    new-instance v10, Lorg/briarproject/bramble/api/transport/StreamContext;

    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->access$400(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v4

    iget-object v5, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 279
    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v6

    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v7

    .line 280
    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->access$600(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)J

    move-result-wide v8

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lorg/briarproject/bramble/api/transport/StreamContext;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;J)V

    .line 282
    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->getWindow()Lorg/briarproject/bramble/transport/ReorderingWindow;

    move-result-object v11

    .line 283
    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->access$600(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Lorg/briarproject/bramble/transport/ReorderingWindow;->setSeen(J)Lorg/briarproject/bramble/transport/ReorderingWindow$Change;

    move-result-object v12

    .line 285
    invoke-virtual {v12}, Lorg/briarproject/bramble/transport/ReorderingWindow$Change;->getAdded()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 286
    new-array v9, v4, [B

    .line 287
    iget-object v14, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v16

    const/16 v17, 0x4

    move-object v15, v9

    move-wide/from16 v18, v7

    invoke-interface/range {v14 .. v19}, Lorg/briarproject/bramble/api/crypto/TransportCrypto;->encodeTag([BLorg/briarproject/bramble/api/crypto/SecretKey;IJ)V

    .line 289
    new-instance v14, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;

    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->access$700(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v4

    .line 290
    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->access$400(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v5

    const/4 v15, 0x0

    move-object v3, v14

    move-object v6, v2

    move-object/from16 v20, v13

    move-object v13, v9

    move-object v9, v15

    invoke-direct/range {v3 .. v9}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;-><init>(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableIncomingKeys;JLorg/briarproject/bramble/transport/TransportKeyManagerImpl$1;)V

    .line 291
    iget-object v3, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->inContexts:Ljava/util/Map;

    new-instance v4, Lorg/briarproject/bramble/api/Bytes;

    invoke-direct {v4, v13}, Lorg/briarproject/bramble/api/Bytes;-><init>([B)V

    invoke-interface {v3, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v20

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v12}, Lorg/briarproject/bramble/transport/ReorderingWindow$Change;->getRemoved()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 295
    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->access$600(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)J

    move-result-wide v5

    cmp-long v7, v16, v5

    if-nez v7, :cond_2

    goto :goto_1

    .line 296
    :cond_2
    new-array v5, v4, [B

    .line 297
    iget-object v12, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v14

    const/4 v15, 0x4

    move-object v13, v5

    invoke-interface/range {v12 .. v17}, Lorg/briarproject/bramble/api/crypto/TransportCrypto;->encodeTag([BLorg/briarproject/bramble/api/crypto/SecretKey;IJ)V

    .line 299
    iget-object v6, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->inContexts:Ljava/util/Map;

    new-instance v7, Lorg/briarproject/bramble/api/Bytes;

    invoke-direct {v7, v5}, Lorg/briarproject/bramble/api/Bytes;-><init>([B)V

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 302
    :cond_3
    iget-object v12, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->access$700(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v14

    iget-object v15, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 303
    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->getRotationPeriod()J

    move-result-wide v16

    invoke-virtual {v11}, Lorg/briarproject/bramble/transport/ReorderingWindow;->getBase()J

    move-result-wide v18

    .line 304
    invoke-virtual {v11}, Lorg/briarproject/bramble/transport/ReorderingWindow;->getBitmap()[B

    move-result-object v20

    move-object/from16 v13, p1

    .line 302
    invoke-interface/range {v12 .. v20}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setReorderingWindow(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/plugin/TransportId;JJ[B)V

    .line 306
    iget-object v2, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->keys:Ljava/util/Map;

    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->access$700(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/transport/MutableKeySet;

    .line 308
    invoke-virtual {v2}, Lorg/briarproject/bramble/transport/MutableKeySet;->getTransportKeys()Lorg/briarproject/bramble/transport/MutableTransportKeys;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/transport/MutableTransportKeys;->getCurrentOutgoingKeys()Lorg/briarproject/bramble/transport/MutableOutgoingKeys;

    move-result-object v3

    .line 309
    invoke-virtual {v3}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->isActive()Z

    move-result v4

    if-nez v4, :cond_4

    .line 310
    sget-object v4, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v5, "Activating outgoing keys"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v3}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->activate()V

    .line 312
    invoke-direct {v1, v2}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->considerReplacingOutgoingKeys(Lorg/briarproject/bramble/transport/MutableKeySet;)V

    .line 313
    iget-object v2, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v3, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->access$700(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v0

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v3, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setTransportKeysActive(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :cond_4
    iget-object v0, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v10

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 318
    throw v0
.end method

.method public removeContact(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 215
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->inContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 216
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;

    invoke-static {v1}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->access$400(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->outContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->keys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 219
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/transport/MutableKeySet;

    invoke-virtual {v1}, Lorg/briarproject/bramble/transport/MutableKeySet;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {v1, p1}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 224
    :cond_3
    iget-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 225
    throw p1
.end method

.method public start(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    iget-object v2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 83
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v2, p1, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getTransportKeys(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Collection;

    move-result-object v2

    .line 85
    invoke-direct {p0, v2, v0, v1}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->rotateKeys(Ljava/util/Collection;J)Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;

    move-result-object v2

    .line 87
    invoke-static {v2}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->access$000(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->addKeys(Ljava/util/Collection;)V

    .line 89
    invoke-static {v2}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->access$100(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    iget-object v3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v2}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->access$100(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->updateTransportKeys(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    iget-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    invoke-direct {p0, v0, v1}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->scheduleKeyRotation(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 92
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 93
    throw p1

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
