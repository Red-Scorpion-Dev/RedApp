.class Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;
.super Ljava/lang/Object;
.source "ShutdownManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field protected final hooks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field protected final lock:Ljava/util/concurrent/locks/Lock;

.field private nextHandle:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->lock:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->nextHandle:I

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->hooks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addShutdownHook(Ljava/lang/Runnable;)I
    .locals 3

    .line 29
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 31
    :try_start_0
    iget v0, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->nextHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->nextHandle:I

    .line 32
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->createThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 33
    iget-object v1, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->hooks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object p1, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 38
    throw p1
.end method

.method protected createThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ShutdownManager"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeShutdownHook(I)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 50
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->hooks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 54
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 52
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/ShutdownManagerImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 55
    throw p1
.end method
