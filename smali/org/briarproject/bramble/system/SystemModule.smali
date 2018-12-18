.class public Lorg/briarproject/bramble/system/SystemModule;
.super Ljava/lang/Object;
.source "SystemModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;
    }
.end annotation


# instance fields
.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 32
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lorg/briarproject/bramble/system/SystemModule;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method provideClock()Lorg/briarproject/bramble/api/system/Clock;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/system/SystemClock;

    invoke-direct {v0}, Lorg/briarproject/bramble/system/SystemClock;-><init>()V

    return-object v0
.end method

.method provideScheduledExecutorService(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/system/Scheduler;
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/briarproject/bramble/system/SystemModule;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerForShutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 46
    iget-object p1, p0, Lorg/briarproject/bramble/system/SystemModule;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method
