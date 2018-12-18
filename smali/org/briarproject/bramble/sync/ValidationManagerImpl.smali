.class Lorg/briarproject/bramble/sync/ValidationManagerImpl;
.super Ljava/lang/Object;
.source "ValidationManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/bramble/api/lifecycle/Service;
.implements Lorg/briarproject/bramble/api/sync/ValidationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final dbExecutor:Ljava/util/concurrent/Executor;

.field private final hooks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;",
            "Lorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;",
            ">;"
        }
    .end annotation
.end field

.field private final used:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final validationExecutor:Ljava/util/concurrent/Executor;

.field private final validators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;",
            "Lorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/sync/ValidationExecutor;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    iput-object p1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 64
    iput-object p2, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 65
    iput-object p3, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validationExecutor:Ljava/util/concurrent/Executor;

    .line 66
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validators:Ljava/util/Map;

    .line 67
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->hooks:Ljava/util/Map;

    return-void
.end method

.method private addDependentsToInvalidate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Ljava/util/Queue<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 414
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageDependents(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;

    move-result-object p1

    .line 415
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 416
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->INVALID:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addPendingDependents(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Ljava/util/Queue<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 325
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageDependents(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;

    move-result-object p1

    .line 326
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->PENDING:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private deliverMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/db/Metadata;)Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 308
    new-instance v0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-direct {v0, p3, p4}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;I)V

    .line 309
    iget-object p3, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->hooks:Ljava/util/Map;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;

    const/4 p4, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 312
    :try_start_0
    invoke-interface {p3, p1, p2, p5}, Lorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;->incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Metadata;)Z

    move-result p3
    :try_end_0
    .catch Lorg/briarproject/bramble/api/sync/InvalidMessageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->invalidateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 315
    new-instance p1, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;

    invoke-direct {p1, v0, v0, p4}, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;-><init>(ZZLorg/briarproject/bramble/sync/ValidationManagerImpl$1;)V

    return-object p1

    :cond_0
    const/4 p3, 0x0

    .line 318
    :goto_0
    iget-object p5, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    sget-object v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-interface {p5, p1, p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setMessageState(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V

    .line 319
    new-instance p1, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p3, p4}, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;-><init>(ZZLorg/briarproject/bramble/sync/ValidationManagerImpl$1;)V

    return-object p1
.end method

.method private deliverNextPendingMessage(Ljava/util/Queue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 160
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 161
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 162
    iget-object v2, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v3, 0x0

    new-instance v4, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$9HMp9km6c8bq8xuN726lwUNHn-Y;

    invoke-direct {v4, p0, p1, v1, v0}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$9HMp9km6c8bq8xuN726lwUNHn-Y;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;Ljava/util/Queue;Ljava/util/Queue;)V

    invoke-interface {v2, v3, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    .line 199
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->invalidateNextMessageAsync(Ljava/util/Queue;)V

    .line 200
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->shareNextMessageAsync(Ljava/util/Queue;)V

    .line 201
    :cond_1
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->deliverNextPendingMessageAsync(Ljava/util/Queue;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/NoSuchMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/briarproject/bramble/api/db/NoSuchGroupException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 206
    :catch_1
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Group removed before delivery"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->deliverNextPendingMessageAsync(Ljava/util/Queue;)V

    goto :goto_0

    .line 203
    :catch_2
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Message removed before delivery"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->deliverNextPendingMessageAsync(Ljava/util/Queue;)V

    :goto_0
    return-void
.end method

.method private deliverNextPendingMessageAsync(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$RRoA64TSejxLzvHqeyAu4Ps4llE;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$RRoA64TSejxLzvHqeyAu4Ps4llE;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private deliverOutstandingMessages()V
    .locals 5
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 144
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/briarproject/bramble/sync/-$$Lambda$a1oTNYKqCAIMCf_HyLDBI8FyWCM;

    invoke-direct {v4, v3}, Lorg/briarproject/bramble/sync/-$$Lambda$a1oTNYKqCAIMCf_HyLDBI8FyWCM;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;)V

    .line 145
    invoke-interface {v1, v2, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 146
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->deliverNextPendingMessageAsync(Ljava/util/Queue;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    sget-object v1, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private deliverOutstandingMessagesAsync()V
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$PNhdLHTTDTcu__CAQe1mT2ToTsY;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$PNhdLHTTDTcu__CAQe1mT2ToTsY;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private invalidateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 406
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->INVALID:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-interface {v0, p1, p2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setMessageState(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V

    .line 407
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 408
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method private invalidateNextMessage(Ljava/util/Queue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 386
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    new-instance v2, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$Xe_OoJl8DRKGhIsnuAaUdBp1t5Y;

    invoke-direct {v2, p0, p1}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$Xe_OoJl8DRKGhIsnuAaUdBp1t5Y;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    .line 394
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->invalidateNextMessageAsync(Ljava/util/Queue;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/NoSuchMessageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 399
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 396
    :catch_1
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Message removed before invalidation"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 397
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->invalidateNextMessageAsync(Ljava/util/Queue;)V

    :goto_0
    return-void
.end method

.method private invalidateNextMessageAsync(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .line 379
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$rwKQNeo0AxT8DurQPCCOnS-wMEs;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$rwKQNeo0AxT8DurQPCCOnS-wMEs;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$GY_KR9VpuG2L7JDuYLlcaFSBlzQ(Lorg/briarproject/bramble/sync/ValidationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validateOutstandingMessages()V

    return-void
.end method

.method public static synthetic lambda$OjwFbPBDcNHHGrbbPJ35RFKb30Y(Lorg/briarproject/bramble/sync/ValidationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->shareOutstandingMessages()V

    return-void
.end method

.method public static synthetic lambda$PNhdLHTTDTcu__CAQe1mT2ToTsY(Lorg/briarproject/bramble/sync/ValidationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->deliverOutstandingMessages()V

    return-void
.end method

.method public static synthetic lambda$deliverNextPendingMessage$3(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;Ljava/util/Queue;Ljava/util/Queue;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 164
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    if-eqz v0, :cond_6

    .line 167
    iget-object v1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p4, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageState(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v1

    sget-object v2, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->PENDING:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    if-ne v1, v2, :cond_5

    .line 169
    iget-object v1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 170
    invoke-interface {v1, p4, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageDependencies(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;

    move-result-object v1

    .line 171
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->INVALID:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    if-ne v8, v9, :cond_1

    const/4 v5, 0x1

    .line 173
    :cond_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    if-eq v7, v8, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    .line 176
    invoke-direct {p0, p4, v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->invalidateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 177
    invoke-direct {p0, p4, v0, p2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->addDependentsToInvalidate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;)V

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_5

    .line 179
    iget-object v2, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, p4, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v5

    .line 180
    iget-object v2, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v5}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-interface {v2, p4, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v6

    .line 182
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Group;->getMajorVersion()I

    move-result v7

    .line 183
    iget-object v2, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 184
    invoke-interface {v2, p4, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageMetadataForValidator(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object v8

    move-object v3, p0

    move-object v4, p4

    .line 186
    invoke-direct/range {v3 .. v8}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->deliverMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/db/Metadata;)Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;

    move-result-object v2

    .line 187
    invoke-static {v2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;->access$100(Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    invoke-direct {p0, p4, v0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->addPendingDependents(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;)V

    .line 189
    invoke-static {v2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;->access$200(Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 190
    iget-object p1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, p4, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setMessageShared(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 191
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 194
    :cond_4
    invoke-direct {p0, p4, v0, p2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->addDependentsToInvalidate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;)V

    :cond_5
    :goto_1
    return-void

    .line 165
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static synthetic lambda$deliverNextPendingMessageAsync$2(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->deliverNextPendingMessage(Ljava/util/Queue;)V

    return-void
.end method

.method public static synthetic lambda$invalidateNextMessage$10(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 387
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    if-eqz v0, :cond_1

    .line 389
    iget-object v1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageState(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v1

    sget-object v2, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->INVALID:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    if-eq v1, v2, :cond_0

    .line 390
    invoke-direct {p0, p2, v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->invalidateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 391
    invoke-direct {p0, p2, v0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->addDependentsToInvalidate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;)V

    :cond_0
    return-void

    .line 388
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static synthetic lambda$invalidateNextMessageAsync$9(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->invalidateNextMessage(Ljava/util/Queue;)V

    return-void
.end method

.method public static synthetic lambda$loadGroupAndValidate$12(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$loadGroupAndValidateAsync$11(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;)V
    .locals 0

    .line 431
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->loadGroupAndValidate(Lorg/briarproject/bramble/api/sync/Message;)V

    return-void
.end method

.method public static synthetic lambda$shareNextMessage$8(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 361
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    if-eqz v0, :cond_0

    .line 363
    iget-object v1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setMessageShared(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 364
    iget-object v1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageDependencies(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 362
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static synthetic lambda$shareNextMessageAsync$7(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->shareNextMessage(Ljava/util/Queue;)V

    return-void
.end method

.method public static synthetic lambda$storeMessageContext$6(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/MessageContext;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;Lorg/briarproject/bramble/api/sync/ClientId;ILjava/util/Queue;Ljava/util/Queue;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p9

    .line 255
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/MessageContext;->getDependencies()Ljava/util/Collection;

    move-result-object v10

    .line 256
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 257
    iget-object v0, v6, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-object/from16 v3, p2

    invoke-interface {v0, v9, v3, v10}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addMessageDependencies(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Ljava/util/Collection;)V

    .line 259
    iget-object v0, v6, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 260
    invoke-interface {v0, v9, v7}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageDependencies(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->INVALID:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    if-ne v12, v13, :cond_1

    const/4 v4, 0x1

    .line 263
    :cond_1
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    if-eq v11, v12, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move v2, v4

    move v1, v5

    goto :goto_1

    :cond_3
    move-object/from16 v3, p2

    :goto_1
    if-eqz v2, :cond_4

    .line 267
    iget-object v0, v6, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v9, v7}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageState(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->INVALID:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    if-eq v0, v1, :cond_7

    .line 268
    invoke-direct {p0, v9, v7}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->invalidateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 269
    invoke-direct {p0, v9, v7, v8}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->addDependentsToInvalidate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;)V

    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/MessageContext;->getMetadata()Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object v5

    .line 273
    iget-object v0, v6, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v9, v7, v5}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Metadata;)V

    if-eqz v1, :cond_6

    move-object v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    .line 276
    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->deliverMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/db/Metadata;)Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;

    move-result-object v0

    .line 277
    invoke-static {v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;->access$100(Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v1, p7

    .line 278
    invoke-direct {p0, v9, v7, v1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->addPendingDependents(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;)V

    .line 279
    invoke-static {v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;->access$200(Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 280
    iget-object v0, v6, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v9, v7}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setMessageShared(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    move-object/from16 v0, p8

    .line 281
    invoke-interface {v0, v10}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 284
    :cond_5
    invoke-direct {p0, v9, v7, v8}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->addDependentsToInvalidate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;)V

    goto :goto_2

    .line 287
    :cond_6
    iget-object v0, v6, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->PENDING:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-interface {v0, v9, v7, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setMessageState(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static synthetic lambda$storeMessageContextAsync$5(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/MessageContext;)V
    .locals 0

    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->storeMessageContext(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/MessageContext;)V

    return-void
.end method

.method public static synthetic lambda$validateMessageAsync$4(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method

.method public static synthetic lambda$validateNextMessage$1(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/sync/MessageId;

    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p2, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    .line 122
    new-instance v0, Lorg/briarproject/bramble/api/Pair;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/bramble/api/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static synthetic lambda$validateNextMessageAsync$0(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validateNextMessage(Ljava/util/Queue;)V

    return-void
.end method

.method private loadGroupAndValidate(Lorg/briarproject/bramble/api/sync/Message;)V
    .locals 3
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 437
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    new-instance v2, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$vGPMmpe9rdOz2bEVpyGs0DiAodU;

    invoke-direct {v2, p0, p1}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$vGPMmpe9rdOz2bEVpyGs0DiAodU;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/Group;

    .line 439
    invoke-direct {p0, p1, v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validateMessageAsync(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/NoSuchGroupException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 443
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 441
    :catch_1
    sget-object p1, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Group removed before validation"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private loadGroupAndValidateAsync(Lorg/briarproject/bramble/api/sync/Message;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$6bthG9eaAQiHNaUbjFEMRD7wFeM;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$6bthG9eaAQiHNaUbjFEMRD7wFeM;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shareNextMessage(Ljava/util/Queue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 360
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    new-instance v2, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$xl5LO-veR-nt6v7ozjYgOHFcnBo;

    invoke-direct {v2, p0, p1}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$xl5LO-veR-nt6v7ozjYgOHFcnBo;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    .line 366
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->shareNextMessageAsync(Ljava/util/Queue;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/NoSuchMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/briarproject/bramble/api/db/NoSuchGroupException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 371
    :catch_1
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Group removed before sharing"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->shareNextMessageAsync(Ljava/util/Queue;)V

    goto :goto_0

    .line 368
    :catch_2
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Message removed before sharing"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->shareNextMessageAsync(Ljava/util/Queue;)V

    :goto_0
    return-void
.end method

.method private shareNextMessageAsync(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .line 353
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$KoF-_zgvYOaaGEAkNH4CWD4CfUI;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$KoF-_zgvYOaaGEAkNH4CWD4CfUI;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shareOutstandingMessages()V
    .locals 5
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 338
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/briarproject/bramble/sync/-$$Lambda$LW6NmwWpUM-GihERD6gpI2DULI0;

    invoke-direct {v4, v3}, Lorg/briarproject/bramble/sync/-$$Lambda$LW6NmwWpUM-GihERD6gpI2DULI0;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;)V

    .line 339
    invoke-interface {v1, v2, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 340
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->shareNextMessageAsync(Ljava/util/Queue;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 342
    sget-object v1, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private shareOutstandingMessagesAsync()V
    .locals 2

    .line 332
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$OjwFbPBDcNHHGrbbPJ35RFKb30Y;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$OjwFbPBDcNHHGrbbPJ35RFKb30Y;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private storeMessageContext(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/MessageContext;)V
    .locals 16
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    move-object/from16 v11, p0

    .line 248
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 249
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 250
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 251
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 252
    iget-object v14, v11, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v10, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object v9, v12

    move-object v15, v10

    move-object v10, v13

    invoke-direct/range {v1 .. v10}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/MessageContext;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;Lorg/briarproject/bramble/api/sync/ClientId;ILjava/util/Queue;Ljava/util/Queue;)V

    const/4 v1, 0x0

    invoke-interface {v14, v1, v15}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    .line 291
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {v11, v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->invalidateNextMessageAsync(Ljava/util/Queue;)V

    .line 292
    :cond_0
    invoke-interface {v12}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {v11, v12}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->deliverNextPendingMessageAsync(Ljava/util/Queue;)V

    .line 293
    :cond_1
    invoke-interface {v13}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {v11, v13}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->shareNextMessageAsync(Ljava/util/Queue;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/NoSuchMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/briarproject/bramble/api/db/NoSuchGroupException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 299
    sget-object v1, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 297
    :catch_1
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Group removed during validation"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :catch_2
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Message removed during validation"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private storeMessageContextAsync(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/MessageContext;)V
    .locals 8

    .line 240
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/MessageContext;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)V
    .locals 3
    .annotation runtime Lorg/briarproject/bramble/sync/ValidationExecutor;
    .end annotation

    .line 219
    new-instance v0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    .line 220
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getMajorVersion()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;I)V

    .line 221
    iget-object v1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validators:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;

    if-nez v1, :cond_0

    .line 223
    sget-object p1, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No validator for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;->validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/bramble/api/sync/MessageContext;

    move-result-object v0

    .line 227
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v1

    .line 228
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getMajorVersion()I

    move-result p2

    .line 227
    invoke-direct {p0, p1, v1, p2, v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->storeMessageContextAsync(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/MessageContext;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/sync/InvalidMessageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 230
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v0, v1, p2}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 231
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 232
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->invalidateNextMessageAsync(Ljava/util/Queue;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private validateMessageAsync(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validationExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1G4o95JMx7a7vv3SF3NrYY2K7EU;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1G4o95JMx7a7vv3SF3NrYY2K7EU;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private validateNextMessage(Ljava/util/Queue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    new-instance v2, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$boAktVDZcP_SoEjBGJKu6Fa1Bxo;

    invoke-direct {v2, p0, p1}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$boAktVDZcP_SoEjBGJKu6Fa1Bxo;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/Pair;

    .line 124
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/sync/Message;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/Group;

    invoke-direct {p0, v1, v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validateMessageAsync(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 125
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validateNextMessageAsync(Ljava/util/Queue;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/NoSuchMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/briarproject/bramble/api/db/NoSuchGroupException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    :catch_1
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Group removed before validation"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validateNextMessageAsync(Ljava/util/Queue;)V

    goto :goto_0

    .line 127
    :catch_2
    sget-object v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Message removed before validation"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validateNextMessageAsync(Ljava/util/Queue;)V

    :goto_0
    return-void
.end method

.method private validateNextMessageAsync(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1onRg0L7Cp-XED5d54GOuZnOwwo;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1onRg0L7Cp-XED5d54GOuZnOwwo;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private validateOutstandingMessages()V
    .locals 5
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 101
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/briarproject/bramble/sync/-$$Lambda$3I0tEUWmyNFvkqidfDInZVqD0r4;

    invoke-direct {v4, v3}, Lorg/briarproject/bramble/sync/-$$Lambda$3I0tEUWmyNFvkqidfDInZVqD0r4;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;)V

    .line 102
    invoke-interface {v1, v2, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 103
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validateNextMessageAsync(Ljava/util/Queue;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    sget-object v1, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private validateOutstandingMessagesAsync()V
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$GY_KR9VpuG2L7JDuYLlcaFSBlzQ;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$GY_KR9VpuG2L7JDuYLlcaFSBlzQ;-><init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 422
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;

    if-eqz v0, :cond_0

    .line 424
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;

    .line 425
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->loadGroupAndValidateAsync(Lorg/briarproject/bramble/api/sync/Message;)V

    :cond_0
    return-void
.end method

.method public registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->hooks:Ljava/util/Map;

    new-instance v1, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-direct {v1, p1, p2}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;I)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validators:Ljava/util/Map;

    new-instance v1, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-direct {v1, p1, p2}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;I)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startService()V
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->validateOutstandingMessagesAsync()V

    .line 74
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->deliverOutstandingMessagesAsync()V

    .line 75
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->shareOutstandingMessagesAsync()V

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stopService()V
    .locals 0

    return-void
.end method
