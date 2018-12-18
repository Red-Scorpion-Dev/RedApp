.class public Lorg/briarproject/briar/android/logging/CachingLogHandler;
.super Ljava/util/logging/Handler;
.source "CachingLogHandler.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final MAX_RECENT_RECORDS:I = 0x64


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final recent:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/logging/CachingLogHandler;->lock:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/logging/CachingLogHandler;->recent:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/android/logging/CachingLogHandler;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/android/logging/CachingLogHandler;->recent:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getRecentLogRecords()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/briarproject/briar/android/logging/CachingLogHandler;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/briarproject/briar/android/logging/CachingLogHandler;->recent:Ljava/util/Queue;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/android/logging/CachingLogHandler;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/android/logging/CachingLogHandler;->recent:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p1, p0, Lorg/briarproject/briar/android/logging/CachingLogHandler;->recent:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/logging/CachingLogHandler;->recent:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 29
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
