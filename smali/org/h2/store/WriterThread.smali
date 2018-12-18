.class public Lorg/h2/store/WriterThread;
.super Ljava/lang/Object;
.source "WriterThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile databaseRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/h2/engine/Database;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stop:Z

.field private thread:Ljava/lang/Thread;

.field private writeDelay:I


# direct methods
.method private constructor <init>(Lorg/h2/engine/Database;I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/h2/store/WriterThread;->databaseRef:Ljava/lang/ref/WeakReference;

    .line 40
    iput p2, p0, Lorg/h2/store/WriterThread;->writeDelay:I

    return-void
.end method

.method public static create(Lorg/h2/engine/Database;I)Lorg/h2/store/WriterThread;
    .locals 3

    .line 62
    :try_start_0
    new-instance v0, Lorg/h2/store/WriterThread;

    invoke-direct {v0, p0, p1}, Lorg/h2/store/WriterThread;-><init>(Lorg/h2/engine/Database;I)V

    .line 63
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "H2 Log Writer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, v0, Lorg/h2/store/WriterThread;->thread:Ljava/lang/Thread;

    .line 64
    iget-object p0, v0, Lorg/h2/store/WriterThread;->thread:Ljava/lang/Thread;

    invoke-static {p0}, Lorg/h2/Driver;->setThreadContextClassLoader(Ljava/lang/Thread;)V

    .line 65
    iget-object p0, v0, Lorg/h2/store/WriterThread;->thread:Ljava/lang/Thread;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 75
    :goto_0
    iget-boolean v0, p0, Lorg/h2/store/WriterThread;->stop:Z

    if-nez v0, :cond_4

    .line 76
    iget-object v0, p0, Lorg/h2/store/WriterThread;->databaseRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Database;

    if-nez v0, :cond_0

    goto :goto_4

    .line 80
    :cond_0
    iget v1, p0, Lorg/h2/store/WriterThread;->writeDelay:I

    const/4 v2, 0x5

    .line 82
    :try_start_0
    invoke-virtual {v0}, Lorg/h2/engine/Database;->isFileLockSerialized()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    .line 84
    :try_start_1
    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkpointIfRequired()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x5

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v3, v1

    const/4 v1, 0x5

    goto :goto_1

    .line 86
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lorg/h2/engine/Database;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 89
    :goto_1
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    .line 91
    invoke-virtual {v0, v4}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object v0

    const-string v4, "flush"

    invoke-virtual {v0, v3, v4}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 96
    :cond_2
    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 97
    monitor-enter p0

    .line 98
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lorg/h2/store/WriterThread;->stop:Z

    if-nez v1, :cond_3

    if-lez v0, :cond_3

    const/16 v1, 0x64

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v2, v1

    .line 102
    :try_start_4
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    sub-int/2addr v0, v1

    goto :goto_3

    .line 108
    :cond_3
    :try_start_5
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_4
    :goto_4
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lorg/h2/store/WriterThread;->databaseRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setWriteDelay(I)V
    .locals 0

    .line 49
    iput p1, p0, Lorg/h2/store/WriterThread;->writeDelay:I

    return-void
.end method

.method public startThread()V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/h2/store/WriterThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lorg/h2/store/WriterThread;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lorg/h2/store/WriterThread;->stop:Z

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
