.class Lorg/h2/store/fs/FileRetryOnInterrupt;
.super Lorg/h2/store/fs/FileBase;
.source "FilePathRetryOnInterrupt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;
    }
.end annotation


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private final fileName:Ljava/lang/String;

.field private lock:Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;

.field private final mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->fileName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->mode:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lorg/h2/store/fs/FileRetryOnInterrupt;->open()V

    return-void
.end method

.method private open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->fileName:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->mode:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/store/fs/FileUtils;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private reLock()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->lock:Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->lock:Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;

    iget-object v0, v0, Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;->base:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    iget-object v1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->lock:Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;

    invoke-virtual {v0}, Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;->position()J

    move-result-wide v2

    iget-object v0, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->lock:Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;

    invoke-virtual {v0}, Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;->size()J

    move-result-wide v4

    iget-object v0, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->lock:Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;

    invoke-virtual {v0}, Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;->isShared()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->lock:Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;

    iput-object v0, v1, Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;->base:Ljava/nio/channels/FileLock;

    return-void

    .line 93
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Re-locking failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reopen(ILjava/io/IOException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    if-gt p1, v0, :cond_3

    .line 64
    instance-of p1, p2, Ljava/nio/channels/ClosedByInterruptException;

    if-nez p1, :cond_1

    instance-of p1, p2, Ljava/nio/channels/ClosedChannelException;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    throw p2

    .line 69
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 70
    iget-object p1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object p2, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    if-ne p1, p2, :cond_2

    .line 76
    invoke-direct {p0}, Lorg/h2/store/fs/FileRetryOnInterrupt;->open()V

    .line 77
    invoke-direct {p0}, Lorg/h2/store/fs/FileRetryOnInterrupt;->reLock()V

    .line 79
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 62
    :cond_3
    throw p2
.end method


# virtual methods
.method public force(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 183
    invoke-direct {p0, v0, v1}, Lorg/h2/store/fs/FileRetryOnInterrupt;->reopen(ILjava/io/IOException;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public position()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    .line 113
    invoke-direct {p0, v0, v1}, Lorg/h2/store/fs/FileRetryOnInterrupt;->reopen(ILjava/io/IOException;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 157
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 160
    invoke-direct {p0, v0, v1}, Lorg/h2/store/fs/FileRetryOnInterrupt;->reopen(ILjava/io/IOException;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileRetryOnInterrupt;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/h2/store/fs/FileRetryOnInterrupt;->position()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 134
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    .line 136
    invoke-direct {p0, v2, v3}, Lorg/h2/store/fs/FileRetryOnInterrupt;->reopen(ILjava/io/IOException;)V

    .line 137
    invoke-virtual {p0, v0, v1}, Lorg/h2/store/fs/FileRetryOnInterrupt;->position(J)Ljava/nio/channels/FileChannel;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    .line 148
    invoke-direct {p0, v0, v1}, Lorg/h2/store/fs/FileRetryOnInterrupt;->reopen(ILjava/io/IOException;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public size()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    .line 124
    invoke-direct {p0, v0, v1}, Lorg/h2/store/fs/FileRetryOnInterrupt;->reopen(ILjava/io/IOException;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 172
    invoke-direct {p0, v0, v1}, Lorg/h2/store/fs/FileRetryOnInterrupt;->reopen(ILjava/io/IOException;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileRetryOnInterrupt;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 217
    monitor-exit p0

    return-object p1

    .line 219
    :cond_0
    :try_start_1
    new-instance p2, Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;

    invoke-direct {p2, p1, p0}, Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;-><init>(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileChannel;)V

    iput-object p2, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->lock:Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;

    .line 220
    iget-object p1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->lock:Lorg/h2/store/fs/FileRetryOnInterrupt$FileLockRetry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 214
    monitor-exit p0

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lorg/h2/store/fs/FileRetryOnInterrupt;->position()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 193
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    .line 195
    invoke-direct {p0, v2, v3}, Lorg/h2/store/fs/FileRetryOnInterrupt;->reopen(ILjava/io/IOException;)V

    .line 196
    invoke-virtual {p0, v0, v1}, Lorg/h2/store/fs/FileRetryOnInterrupt;->position(J)Ljava/nio/channels/FileChannel;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 205
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FileRetryOnInterrupt;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    .line 207
    invoke-direct {p0, v0, v1}, Lorg/h2/store/fs/FileRetryOnInterrupt;->reopen(ILjava/io/IOException;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
