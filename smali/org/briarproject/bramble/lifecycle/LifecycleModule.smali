.class public Lorg/briarproject/bramble/lifecycle/LifecycleModule;
.super Ljava/lang/Object;
.source "LifecycleModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/lifecycle/LifecycleModule$EagerSingletons;
    }
.end annotation


# instance fields
.field private final ioExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 37
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 40
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v8, p0, Lorg/briarproject/bramble/lifecycle/LifecycleModule;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method provideIoExecutor(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleModule;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerForShutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 62
    iget-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleModule;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method provideLifecycleManager(Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;)Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideShutdownManager()Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;

    invoke-direct {v0}, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;-><init>()V

    return-object v0
.end method
