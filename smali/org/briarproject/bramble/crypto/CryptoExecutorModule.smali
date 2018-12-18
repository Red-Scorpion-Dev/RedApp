.class public Lorg/briarproject/bramble/crypto/CryptoExecutorModule;
.super Ljava/lang/Object;
.source "CryptoExecutorModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;
    }
.end annotation


# static fields
.field private static final MAX_EXECUTOR_THREADS:I


# instance fields
.field private final cryptoExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule;->MAX_EXECUTOR_THREADS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 46
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 49
    new-instance v9, Lorg/briarproject/bramble/TimeLoggingExecutor;

    const-string v1, "CryptoExecutor"

    sget v3, Lorg/briarproject/bramble/crypto/CryptoExecutorModule;->MAX_EXECUTOR_THREADS:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/bramble/TimeLoggingExecutor;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule;->cryptoExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method provideCryptoExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule;->cryptoExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method provideCryptoExecutorService(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule;->cryptoExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerForShutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 59
    iget-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule;->cryptoExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method
