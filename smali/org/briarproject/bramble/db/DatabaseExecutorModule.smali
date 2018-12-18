.class public Lorg/briarproject/bramble/db/DatabaseExecutorModule;
.super Ljava/lang/Object;
.source "DatabaseExecutorModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/db/DatabaseExecutorModule$EagerSingletons;
    }
.end annotation


# instance fields
.field private final databaseExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 37
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 40
    new-instance v9, Lorg/briarproject/bramble/TimeLoggingExecutor;

    const-string v1, "DatabaseExecutor"

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/bramble/TimeLoggingExecutor;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lorg/briarproject/bramble/db/DatabaseExecutorModule;->databaseExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method provideDatabaseExecutor(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Executor;
    .locals 0
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    return-object p1
.end method

.method provideDatabaseExecutorService(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseExecutorModule;->databaseExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerForShutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 50
    iget-object p1, p0, Lorg/briarproject/bramble/db/DatabaseExecutorModule;->databaseExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method
