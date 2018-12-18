.class Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;
.super Ljava/lang/Object;
.source "LifecycleManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/db/MigrationListener;
.implements Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final clients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/sync/Client;",
            ">;"
        }
    .end annotation
.end field

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final dbLatch:Ljava/util/concurrent/CountDownLatch;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final executors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field private final services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/lifecycle/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final shutdownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final startStopSemaphore:Ljava/util/concurrent/Semaphore;

.field private final startupLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile state:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/identity/IdentityManager;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startStopSemaphore:Ljava/util/concurrent/Semaphore;

    .line 61
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->dbLatch:Ljava/util/concurrent/CountDownLatch;

    .line 62
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 63
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 65
    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STARTING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    iput-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->state:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    .line 70
    iput-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 71
    iput-object p2, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 72
    iput-object p3, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 73
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->services:Ljava/util/List;

    .line 74
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->clients:Ljava/util/List;

    .line 75
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->executors:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$startServices$0(Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->clients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/sync/Client;

    .line 119
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v2

    .line 120
    invoke-interface {v1, p1}, Lorg/briarproject/bramble/api/sync/Client;->createLocalState(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 121
    sget-object v4, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    sget-object v4, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v4, v1, v2, v3}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getLifecycleState()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->state:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    return-object v0
.end method

.method public onDatabaseCompaction()V
    .locals 3

    .line 165
    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->COMPACTING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    iput-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->state:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    .line 166
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v1, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    sget-object v2, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->COMPACTING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;-><init>(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    return-void
.end method

.method public onDatabaseMigration()V
    .locals 3

    .line 159
    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->MIGRATING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    iput-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->state:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    .line 160
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v1, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    sget-object v2, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->MIGRATING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;-><init>(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    return-void
.end method

.method public registerClient(Lorg/briarproject/bramble/api/sync/Client;)V
    .locals 3

    .line 87
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->clients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForShutdown(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 94
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering executor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->executors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V
    .locals 3

    .line 80
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startServices(Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;
    .locals 6

    .line 100
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startStopSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    sget-object p1, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Already starting or stopping"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 102
    sget-object p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->ALREADY_RUNNING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    return-object p1

    .line 105
    :cond_0
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Starting services"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 108
    iget-object v2, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, p1, p0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->open(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/db/MigrationListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    sget-object p1, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Reopening database"

    invoke-static {p1, v2, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    goto :goto_0

    .line 110
    :cond_1
    sget-object p1, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Creating database"

    invoke-static {p1, v2, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 111
    :goto_0
    iget-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->storeLocalAuthor()V

    .line 113
    sget-object p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STARTING_SERVICES:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    iput-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->state:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    .line 114
    iget-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->dbLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 115
    iget-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STARTING_SERVICES:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;-><init>(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;)V

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    .line 117
    iget-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v0, 0x0

    new-instance v1, Lorg/briarproject/bramble/lifecycle/-$$Lambda$LifecycleManagerImpl$rw4_Z5vrod_myZje7b3Ioxmy3UU;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/lifecycle/-$$Lambda$LifecycleManagerImpl$rw4_Z5vrod_myZje7b3Ioxmy3UU;-><init>(Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;)V

    invoke-interface {p1, v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    .line 127
    iget-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->services:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/lifecycle/Service;

    .line 128
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v1

    .line 129
    invoke-interface {v0}, Lorg/briarproject/bramble/api/lifecycle/Service;->startService()V

    .line 130
    sget-object v3, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    sget-object v3, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v3, v0, v1, v2}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    goto :goto_1

    .line 136
    :cond_3
    sget-object p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->RUNNING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    iput-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->state:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    .line 137
    iget-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 138
    iget-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->RUNNING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;-><init>(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;)V

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    .line 139
    sget-object p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->SUCCESS:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DataTooOldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/briarproject/bramble/api/db/DataTooNewException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/lifecycle/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startStopSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 150
    :try_start_1
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 151
    sget-object p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->SERVICE_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startStopSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-object p1

    :catch_1
    move-exception p1

    .line 147
    :try_start_2
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 148
    sget-object p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->DB_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startStopSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-object p1

    :catch_2
    move-exception p1

    .line 144
    :try_start_3
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 145
    sget-object p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->DATA_TOO_NEW_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startStopSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-object p1

    :catch_3
    move-exception p1

    .line 141
    :try_start_4
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 142
    sget-object p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->DATA_TOO_OLD_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startStopSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-object p1

    :goto_2
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startStopSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 154
    throw p1
.end method

.method public stopServices()V
    .locals 7

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startStopSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :try_start_1
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Stopping services"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 179
    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STOPPING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    iput-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->state:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    .line 180
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v1, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    sget-object v2, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STOPPING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;-><init>(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    .line 181
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/lifecycle/Service;

    .line 182
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v2

    .line 183
    invoke-interface {v1}, Lorg/briarproject/bramble/api/lifecycle/Service;->stopService()V

    .line 184
    sget-object v4, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    sget-object v4, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v4, v1, v2, v3}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->executors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    .line 190
    sget-object v2, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    sget-object v2, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping executor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 194
    :cond_2
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_1

    .line 196
    :cond_3
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 197
    iget-object v2, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->close()V

    .line 198
    sget-object v2, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Closing database"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 199
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/briarproject/bramble/api/lifecycle/ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 201
    :try_start_2
    sget-object v1, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :goto_2
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startStopSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :goto_3
    iget-object v1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startStopSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 204
    throw v0

    .line 174
    :catch_1
    sget-object v0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Interrupted while waiting to stop services"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public waitForDatabase()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->dbLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public waitForShutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public waitForStartup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
