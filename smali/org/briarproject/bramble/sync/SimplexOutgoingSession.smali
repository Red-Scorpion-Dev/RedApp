.class Lorg/briarproject/bramble/sync/SimplexOutgoingSession;
.super Ljava/lang/Object;
.source "SimplexOutgoingSession.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/bramble/api/sync/SyncSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteBatch;,
        Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateBatch;,
        Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;,
        Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final CLOSE:Lorg/briarproject/bramble/sync/ThrowingRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/bramble/sync/ThrowingRunnable<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final dbExecutor:Ljava/util/concurrent/Executor;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private volatile interrupted:Z

.field private final maxLatency:I

.field private final outstandingQueries:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final recordWriter:Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

.field private final streamWriter:Lorg/briarproject/bramble/api/transport/StreamWriter;

.field private final writerTasks:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/briarproject/bramble/sync/ThrowingRunnable<",
            "Ljava/io/IOException;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->LOG:Ljava/util/logging/Logger;

    .line 49
    sget-object v0, Lorg/briarproject/bramble/sync/-$$Lambda$SimplexOutgoingSession$alVkmwSvh_wK_JUHfoxb2PCSp3U;->INSTANCE:Lorg/briarproject/bramble/sync/-$$Lambda$SimplexOutgoingSession$alVkmwSvh_wK_JUHfoxb2PCSp3U;

    sput-object v0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->CLOSE:Lorg/briarproject/bramble/sync/ThrowingRunnable;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/contact/ContactId;ILorg/briarproject/bramble/api/transport/StreamWriter;Lorg/briarproject/bramble/api/sync/SyncRecordWriter;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->interrupted:Z

    .line 67
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 68
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 69
    iput-object p3, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 70
    iput-object p4, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 71
    iput p5, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->maxLatency:I

    .line 72
    iput-object p6, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->streamWriter:Lorg/briarproject/bramble/api/transport/StreamWriter;

    .line 73
    iput-object p7, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->recordWriter:Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    .line 74
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->outstandingQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->writerTasks:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic access$1000(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)I
    .locals 0

    .line 44
    iget p0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->maxLatency:I

    return p0
.end method

.method static synthetic access$200(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->interrupted:Z

    return p0
.end method

.method static synthetic access$300(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .locals 1

    .line 44
    sget-object v0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->decrementOutstandingQueries()V

    return-void
.end method

.method static synthetic access$700(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->writerTasks:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$800(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object p0
.end method

.method static synthetic access$900(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Lorg/briarproject/bramble/api/sync/SyncRecordWriter;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->recordWriter:Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    return-object p0
.end method

.method private decrementOutstandingQueries()V
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->outstandingQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->writerTasks:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->CLOSE:Lorg/briarproject/bramble/sync/ThrowingRunnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 115
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    .line 117
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->interrupt()V

    goto :goto_0

    .line 118
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    if-eqz v0, :cond_1

    .line 119
    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    .line 120
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;->getLifecycleState()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    move-result-object p1

    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STOPPING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public interrupt()V
    .locals 2

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->interrupted:Z

    .line 106
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->writerTasks:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->CLOSE:Lorg/briarproject/bramble/sync/ThrowingRunnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 84
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;-><init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Lorg/briarproject/bramble/sync/SimplexOutgoingSession$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 85
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateBatch;

    invoke-direct {v1, p0, v2}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateBatch;-><init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Lorg/briarproject/bramble/sync/SimplexOutgoingSession$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->interrupted:Z

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->writerTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/sync/ThrowingRunnable;

    .line 90
    sget-object v1, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->CLOSE:Lorg/briarproject/bramble/sync/ThrowingRunnable;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    invoke-interface {v0}, Lorg/briarproject/bramble/sync/ThrowingRunnable;->run()V

    goto :goto_0

    .line 93
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->streamWriter:Lorg/briarproject/bramble/api/transport/StreamWriter;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/transport/StreamWriter;->sendEndOfStream()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 95
    :catch_0
    :try_start_2
    sget-object v0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Interrupted while waiting for a record to write"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :goto_2
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v1, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 100
    throw v0
.end method
