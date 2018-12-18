.class public Lorg/briarproject/bramble/PoliteExecutor;
.super Ljava/lang/Object;
.source "PoliteExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private concurrentTasks:I

.field private final delegate:Ljava/util/concurrent/Executor;

.field private final lock:Ljava/lang/Object;

.field private final log:Ljava/util/logging/Logger;

.field private final maxConcurrentTasks:I

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/PoliteExecutor;->lock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/PoliteExecutor;->queue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lorg/briarproject/bramble/PoliteExecutor;->concurrentTasks:I

    .line 43
    iput-object p2, p0, Lorg/briarproject/bramble/PoliteExecutor;->delegate:Ljava/util/concurrent/Executor;

    .line 44
    iput p3, p0, Lorg/briarproject/bramble/PoliteExecutor;->maxConcurrentTasks:I

    .line 45
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/PoliteExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public static synthetic lambda$execute$0(Lorg/briarproject/bramble/PoliteExecutor;JLjava/lang/Runnable;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lorg/briarproject/bramble/PoliteExecutor;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 54
    iget-object p1, p0, Lorg/briarproject/bramble/PoliteExecutor;->log:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue time "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 57
    :cond_0
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-direct {p0}, Lorg/briarproject/bramble/PoliteExecutor;->scheduleNext()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/briarproject/bramble/PoliteExecutor;->scheduleNext()V

    .line 60
    throw p1
.end method

.method private scheduleNext()V
    .locals 3

    .line 73
    iget-object v0, p0, Lorg/briarproject/bramble/PoliteExecutor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/PoliteExecutor;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 75
    iget v1, p0, Lorg/briarproject/bramble/PoliteExecutor;->concurrentTasks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/briarproject/bramble/PoliteExecutor;->concurrentTasks:I

    goto :goto_0

    .line 76
    :cond_0
    iget-object v2, p0, Lorg/briarproject/bramble/PoliteExecutor;->delegate:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 50
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 51
    new-instance v2, Lorg/briarproject/bramble/-$$Lambda$PoliteExecutor$Lhtp6tpdaSoSplu828CNOD0u06w;

    invoke-direct {v2, p0, v0, v1, p1}, Lorg/briarproject/bramble/-$$Lambda$PoliteExecutor$Lhtp6tpdaSoSplu828CNOD0u06w;-><init>(Lorg/briarproject/bramble/PoliteExecutor;JLjava/lang/Runnable;)V

    .line 62
    iget-object p1, p0, Lorg/briarproject/bramble/PoliteExecutor;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 63
    :try_start_0
    iget v0, p0, Lorg/briarproject/bramble/PoliteExecutor;->concurrentTasks:I

    iget v1, p0, Lorg/briarproject/bramble/PoliteExecutor;->maxConcurrentTasks:I

    if-ge v0, v1, :cond_0

    .line 64
    iget v0, p0, Lorg/briarproject/bramble/PoliteExecutor;->concurrentTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/briarproject/bramble/PoliteExecutor;->concurrentTasks:I

    .line 65
    iget-object v0, p0, Lorg/briarproject/bramble/PoliteExecutor;->delegate:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/PoliteExecutor;->queue:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
