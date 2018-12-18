.class Lorg/briarproject/bramble/system/AndroidExecutorImpl;
.super Ljava/lang/Object;
.source "AndroidExecutorImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/system/AndroidExecutor;


# instance fields
.field private volatile backgroundHandler:Landroid/os/Handler;

.field private final loop:Ljava/lang/Runnable;

.field private final startLatch:Ljava/util/concurrent/CountDownLatch;

.field private final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->startLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->backgroundHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->uiHandler:Landroid/os/Handler;

    .line 30
    new-instance p1, Lorg/briarproject/bramble/system/-$$Lambda$AndroidExecutorImpl$aeqszocPr-leC2KLe9r9-ACmYus;

    invoke-direct {p1, p0}, Lorg/briarproject/bramble/system/-$$Lambda$AndroidExecutorImpl$aeqszocPr-leC2KLe9r9-ACmYus;-><init>(Lorg/briarproject/bramble/system/AndroidExecutorImpl;)V

    iput-object p1, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->loop:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic lambda$new$0(Lorg/briarproject/bramble/system/AndroidExecutorImpl;)V
    .locals 1

    .line 31
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->backgroundHandler:Landroid/os/Handler;

    .line 33
    iget-object v0, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 34
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method private startIfNecessary()V
    .locals 4

    .line 39
    iget-object v0, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->loop:Ljava/lang/Runnable;

    const-string v3, "AndroidExecutor"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public runOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 54
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public runOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->startIfNecessary()V

    .line 61
    iget-object v0, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runOnUiThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 67
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/briarproject/bramble/system/AndroidExecutorImpl;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
