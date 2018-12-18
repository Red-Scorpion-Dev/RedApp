.class Lorg/h2/store/fs/FileMem;
.super Lorg/h2/store/fs/FileBase;
.source "FilePathMem.java"


# instance fields
.field final data:Lorg/h2/store/fs/FileMemData;

.field private pos:J

.field private final readOnly:Z


# direct methods
.method constructor <init>(Lorg/h2/store/fs/FileMemData;Z)V
    .locals 0

    .line 273
    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    .line 274
    iput-object p1, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    .line 275
    iput-boolean p2, p0, Lorg/h2/store/fs/FileMem;->readOnly:Z

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

    .line 340
    iput-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    return-void
.end method

.method public position()J
    .locals 2

    .line 335
    iget-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 0

    .line 299
    iput-wide p1, p0, Lorg/h2/store/fs/FileMem;->pos:J

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileMem;->position(J)Ljava/nio/channels/FileChannel;

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

    .line 318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_0

    const/4 p1, 0x0

    return p1

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    iget-wide v1, p0, Lorg/h2/store/fs/FileMem;->pos:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/h2/store/fs/FileMemData;->readWrite(J[BIIZ)J

    move-result-wide v0

    .line 324
    iget-wide v2, p0, Lorg/h2/store/fs/FileMem;->pos:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    if-gtz v2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 328
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 329
    iput-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    return v2
.end method

.method public size()J
    .locals 2

    .line 280
    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {v0}, Lorg/h2/store/fs/FileMemData;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {v0}, Lorg/h2/store/fs/FileMemData;->getName()Ljava/lang/String;

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

    .line 286
    iget-boolean v0, p0, Lorg/h2/store/fs/FileMem;->readOnly:Z

    if-nez v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lorg/h2/store/fs/FileMem;->size()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 290
    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    iget-boolean v1, p0, Lorg/h2/store/fs/FileMem;->readOnly:Z

    invoke-virtual {v0, v1}, Lorg/h2/store/fs/FileMemData;->touch(Z)V

    .line 291
    iget-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    .line 292
    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/fs/FileMemData;->truncate(J)V

    :cond_0
    return-object p0

    .line 287
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

    .line 263
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileMem;->truncate(J)Ljava/nio/channels/FileChannel;

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

    .line 352
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {v1}, Lorg/h2/store/fs/FileMemData;->lockShared()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 353
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 356
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {v1}, Lorg/h2/store/fs/FileMemData;->lockExclusive()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 357
    monitor-exit p0

    return-object v0

    .line 362
    :cond_1
    :try_start_2
    new-instance v1, Lorg/h2/store/fs/FileMem$1;

    move-object v4, v0

    check-cast v4, Ljava/nio/channels/FileChannel;

    move-object v2, v1

    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p3

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lorg/h2/store/fs/FileMem$1;-><init>(Lorg/h2/store/fs/FileMem;Ljava/nio/channels/FileChannel;JJZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    monitor-exit p0

    return-object v1

    .line 350
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

    .line 305
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-nez v7, :cond_0

    const/4 p1, 0x0

    return p1

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    iget-boolean v1, p0, Lorg/h2/store/fs/FileMem;->readOnly:Z

    invoke-virtual {v0, v1}, Lorg/h2/store/fs/FileMemData;->touch(Z)V

    .line 310
    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    iget-wide v1, p0, Lorg/h2/store/fs/FileMem;->pos:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v6, 0x1

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lorg/h2/store/fs/FileMemData;->readWrite(J[BIIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    .line 312
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v7
.end method
