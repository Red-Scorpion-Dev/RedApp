.class public Lorg/briarproject/briar/android/controller/DbControllerImpl;
.super Ljava/lang/Object;
.source "DbControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/DbController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected final dbExecutor:Ljava/util/concurrent/Executor;

.field private final lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lorg/briarproject/briar/android/controller/DbControllerImpl;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/controller/DbControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/briarproject/briar/android/controller/DbControllerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 27
    iput-object p2, p0, Lorg/briarproject/briar/android/controller/DbControllerImpl;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    return-void
.end method

.method public static synthetic lambda$runOnDbThread$0(Lorg/briarproject/briar/android/controller/DbControllerImpl;Ljava/lang/Runnable;)V
    .locals 1

    .line 34
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/DbControllerImpl;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->waitForDatabase()V

    .line 35
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    sget-object p1, Lorg/briarproject/briar/android/controller/DbControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Interrupted while waiting for database"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method


# virtual methods
.method public runOnDbThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/DbControllerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/controller/-$$Lambda$DbControllerImpl$SwC9ndeQwlnMM-VN8yvqCJG1ESc;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/controller/-$$Lambda$DbControllerImpl$SwC9ndeQwlnMM-VN8yvqCJG1ESc;-><init>(Lorg/briarproject/briar/android/controller/DbControllerImpl;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
