.class Lorg/h2/store/fs/FileNioMem;
.super Lorg/h2/store/fs/FileBase;
.source "FilePathNioMem.java"


# instance fields
.field final data:Lorg/h2/store/fs/FileNioMemData;

.field private pos:J

.field private final readOnly:Z


# direct methods
.method constructor <init>(Lorg/h2/store/fs/FileNioMemData;Z)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    .line 267
    iput-object p1, p0, Lorg/h2/store/fs/FileNioMem;->data:Lorg/h2/store/fs/FileNioMemData;

    .line 268
    iput-boolean p2, p0, Lorg/h2/store/fs/FileNioMem;->readOnly:Z

    return-void
.end method


# virtual methods
.method public force(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public implCloseChannel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 332
    iput-wide v0, p0, Lorg/h2/store/fs/FileNioMem;->pos:J

    return-void
.end method

.method public position()J
    .locals 2

    .line 327
    iget-wide v0, p0, Lorg/h2/store/fs/FileNioMem;->pos:J

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 0

    long-to-int p1, p1

    int-to-long p1, p1

    .line 292
    iput-wide p1, p0, Lorg/h2/store/fs/FileNioMem;->pos:J

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileNioMem;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_0

    const/4 p1, 0x0

    return p1

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMem;->data:Lorg/h2/store/fs/FileNioMemData;

    iget-wide v1, p0, Lorg/h2/store/fs/FileNioMem;->pos:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/h2/store/fs/FileNioMemData;->readWrite(JLjava/nio/ByteBuffer;IIZ)J

    move-result-wide v0

    .line 316
    iget-wide v2, p0, Lorg/h2/store/fs/FileNioMem;->pos:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    if-gtz v2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 320
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 321
    iput-wide v0, p0, Lorg/h2/store/fs/FileNioMem;->pos:J

    return v2
.end method

.method public size()J
    .locals 2

    .line 273
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMem;->data:Lorg/h2/store/fs/FileNioMemData;

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMem;->data:Lorg/h2/store/fs/FileNioMemData;

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-boolean v0, p0, Lorg/h2/store/fs/FileNioMem;->readOnly:Z

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lorg/h2/store/fs/FileNioMem;->size()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 283
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMem;->data:Lorg/h2/store/fs/FileNioMemData;

    iget-boolean v1, p0, Lorg/h2/store/fs/FileNioMem;->readOnly:Z

    invoke-virtual {v0, v1}, Lorg/h2/store/fs/FileNioMemData;->touch(Z)V

    .line 284
    iget-wide v0, p0, Lorg/h2/store/fs/FileNioMem;->pos:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileNioMem;->pos:J

    .line 285
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMem;->data:Lorg/h2/store/fs/FileNioMemData;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/fs/FileNioMemData;->truncate(J)V

    :cond_0
    return-object p0

    .line 280
    :cond_1
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileNioMem;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 344
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMem;->data:Lorg/h2/store/fs/FileNioMemData;

    invoke-virtual {v1}, Lorg/h2/store/fs/FileNioMemData;->lockShared()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 345
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 348
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMem;->data:Lorg/h2/store/fs/FileNioMemData;

    invoke-virtual {v1}, Lorg/h2/store/fs/FileNioMemData;->lockExclusive()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 349
    monitor-exit p0

    return-object v0

    .line 354
    :cond_1
    :try_start_2
    new-instance v1, Lorg/h2/store/fs/FileNioMem$1;

    move-object v4, v0

    check-cast v4, Ljava/nio/channels/FileChannel;

    move-object v2, v1

    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p3

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lorg/h2/store/fs/FileNioMem$1;-><init>(Lorg/h2/store/fs/FileNioMem;Ljava/nio/channels/FileChannel;JJZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    monitor-exit p0

    return-object v1

    .line 342
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-nez v7, :cond_0

    const/4 p1, 0x0

    return p1

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMem;->data:Lorg/h2/store/fs/FileNioMemData;

    iget-boolean v1, p0, Lorg/h2/store/fs/FileNioMem;->readOnly:Z

    invoke-virtual {v0, v1}, Lorg/h2/store/fs/FileNioMemData;->touch(Z)V

    .line 304
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMem;->data:Lorg/h2/store/fs/FileNioMemData;

    iget-wide v1, p0, Lorg/h2/store/fs/FileNioMem;->pos:J

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lorg/h2/store/fs/FileNioMemData;->readWrite(JLjava/nio/ByteBuffer;IIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileNioMem;->pos:J

    .line 305
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v7
.end method
