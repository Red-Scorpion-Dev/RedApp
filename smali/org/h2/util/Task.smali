.class public abstract Lorg/h2/util/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static counter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private ex:Ljava/lang/Exception;

.field private volatile finished:Z

.field protected result:Ljava/lang/Object;

.field public volatile stop:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/h2/util/Task;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract call()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public execute()Lorg/h2/util/Task;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/h2/util/Task;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/util/Task;->execute(Ljava/lang/String;)Lorg/h2/util/Task;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/lang/String;)Lorg/h2/util/Task;
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/util/Task;->thread:Ljava/lang/Thread;

    .line 68
    iget-object p1, p0, Lorg/h2/util/Task;->thread:Ljava/lang/Thread;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 69
    iget-object p1, p0, Lorg/h2/util/Task;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 81
    invoke-virtual {p0}, Lorg/h2/util/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/h2/util/Task;->result:Ljava/lang/Object;

    return-object v0

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lorg/h2/util/Task;->join()V

    .line 114
    iget-object v0, p0, Lorg/h2/util/Task;->ex:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/h2/util/Task;->ex:Ljava/lang/Exception;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public interruptThread()V
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/h2/util/Task;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/h2/util/Task;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isFinished()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/h2/util/Task;->finished:Z

    return v0
.end method

.method public join()V
    .locals 2

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lorg/h2/util/Task;->stop:Z

    .line 126
    iget-object v0, p0, Lorg/h2/util/Task;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/h2/util/Task;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 1

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/util/Task;->call()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    iput-object v0, p0, Lorg/h2/util/Task;->ex:Ljava/lang/Exception;

    :goto_0
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lorg/h2/util/Task;->finished:Z

    return-void
.end method
