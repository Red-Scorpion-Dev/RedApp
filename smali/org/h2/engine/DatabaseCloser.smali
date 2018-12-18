.class Lorg/h2/engine/DatabaseCloser;
.super Ljava/lang/Thread;
.source "DatabaseCloser.java"


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

.field private delayInMillis:I

.field private final shutdownHook:Z

.field private final trace:Lorg/h2/message/Trace;


# direct methods
.method constructor <init>(Lorg/h2/engine/Database;IZ)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/h2/engine/DatabaseCloser;->databaseRef:Ljava/lang/ref/WeakReference;

    .line 26
    iput p2, p0, Lorg/h2/engine/DatabaseCloser;->delayInMillis:I

    .line 27
    iput-boolean p3, p0, Lorg/h2/engine/DatabaseCloser;->shutdownHook:Z

    const/4 p2, 0x2

    .line 28
    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/DatabaseCloser;->trace:Lorg/h2/message/Trace;

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .line 36
    monitor-enter p0

    const/4 v0, 0x0

    .line 37
    :try_start_0
    iput-object v0, p0, Lorg/h2/engine/DatabaseCloser;->databaseRef:Ljava/lang/ref/WeakReference;

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .line 43
    :cond_0
    iget v0, p0, Lorg/h2/engine/DatabaseCloser;->delayInMillis:I

    if-lez v0, :cond_1

    const/16 v0, 0x64

    int-to-long v1, v0

    .line 46
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 47
    iget v1, p0, Lorg/h2/engine/DatabaseCloser;->delayInMillis:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/h2/engine/DatabaseCloser;->delayInMillis:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    iget-object v0, p0, Lorg/h2/engine/DatabaseCloser;->databaseRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v1, p0, Lorg/h2/engine/DatabaseCloser;->databaseRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 58
    iget-object v0, p0, Lorg/h2/engine/DatabaseCloser;->databaseRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Database;

    .line 60
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 63
    :try_start_2
    iget-boolean v1, p0, Lorg/h2/engine/DatabaseCloser;->shutdownHook:Z

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->close(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 69
    :try_start_3
    iget-object v1, p0, Lorg/h2/engine/DatabaseCloser;->trace:Lorg/h2/message/Trace;

    const-string v2, "could not close the database"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 73
    :catch_2
    throw v0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 60
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
