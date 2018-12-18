.class Lorg/h2/store/fs/FileSplit;
.super Lorg/h2/store/fs/FileBase;
.source "FilePathSplit.java"


# instance fields
.field private final file:Lorg/h2/store/fs/FilePathSplit;

.field private filePointer:J

.field private length:J

.field private list:[Ljava/nio/channels/FileChannel;

.field private final maxLength:J

.field private final mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/h2/store/fs/FilePathSplit;Ljava/lang/String;[Ljava/nio/channels/FileChannel;JJ)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    .line 259
    iput-object p1, p0, Lorg/h2/store/fs/FileSplit;->file:Lorg/h2/store/fs/FilePathSplit;

    .line 260
    iput-object p2, p0, Lorg/h2/store/fs/FileSplit;->mode:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    .line 262
    iput-wide p4, p0, Lorg/h2/store/fs/FileSplit;->length:J

    .line 263
    iput-wide p6, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    return-void
.end method

.method private getFileChannel()Ljava/nio/channels/FileChannel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 310
    :goto_0
    iget-object v1, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 311
    iget-object v1, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v1, v1

    add-int/lit8 v2, v1, 0x1

    .line 312
    new-array v2, v2, [Ljava/nio/channels/FileChannel;

    .line 313
    iget-object v3, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    iget-object v3, p0, Lorg/h2/store/fs/FileSplit;->file:Lorg/h2/store/fs/FilePathSplit;

    invoke-virtual {v3, v1}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    .line 315
    iget-object v4, p0, Lorg/h2/store/fs/FileSplit;->mode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    aput-object v3, v2, v1

    .line 316
    iput-object v2, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 318
    :cond_0
    iget-object v1, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    aget-object v0, v1, v0

    return-object v0
.end method


# virtual methods
.method public force(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 354
    invoke-virtual {v3, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public implCloseChannel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 269
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .line 275
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 0

    .line 304
    iput-wide p1, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileSplit;->position(J)Ljava/nio/channels/FileChannel;

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

    .line 285
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-long v0, v0

    .line 289
    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->length:J

    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    if-gtz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 293
    :cond_1
    iget-wide v1, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    iget-wide v3, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    rem-long/2addr v1, v3

    int-to-long v3, v0

    .line 294
    iget-wide v5, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 295
    invoke-direct {p0}, Lorg/h2/store/fs/FileSplit;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 297
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 298
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    return p1
.end method

.method public size()J
    .locals 2

    .line 280
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->length:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/h2/store/fs/FileSplit;->file:Lorg/h2/store/fs/FilePathSplit;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePathSplit;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->length:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    return-object p0

    .line 326
    :cond_0
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    .line 327
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    div-long v0, p1, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 328
    iget-object v1, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 330
    new-array v1, v0, [Ljava/nio/channels/FileChannel;

    .line 332
    iget-object v2, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lt v2, v0, :cond_1

    .line 334
    iget-object v3, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    aget-object v3, v3, v2

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 335
    iget-object v3, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 337
    :try_start_0
    iget-object v3, p0, Lorg/h2/store/fs/FileSplit;->file:Lorg/h2/store/fs/FilePathSplit;

    invoke-virtual {v3, v2}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->delete()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 339
    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 342
    :cond_1
    iget-object v2, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    iput-object v1, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    .line 345
    :cond_2
    iget-wide v1, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    add-int/lit8 v0, v0, -0x1

    int-to-long v3, v0

    mul-long v1, v1, v3

    sub-long v1, p1, v1

    .line 346
    iget-object v0, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 347
    iput-wide p1, p0, Lorg/h2/store/fs/FileSplit;->length:J

    return-object p0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileSplit;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

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

    .line 360
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->length:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 362
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    .line 363
    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->length:J

    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->length:J

    iget-wide v6, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    rem-long/2addr v4, v6

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    add-long/2addr v2, v4

    .line 364
    :goto_0
    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 365
    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->length:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    .line 367
    invoke-virtual {p0, v4, v5}, Lorg/h2/store/fs/FileSplit;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v4, 0x1

    .line 368
    new-array v4, v4, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/h2/store/fs/FileSplit;->write(Ljava/nio/ByteBuffer;)I

    .line 370
    :cond_0
    iput-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    .line 364
    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    add-long/2addr v2, v4

    goto :goto_0

    .line 373
    :cond_1
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    rem-long/2addr v0, v2

    .line 374
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 375
    invoke-direct {p0}, Lorg/h2/store/fs/FileSplit;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 376
    invoke-virtual {v3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    int-to-long v4, v2

    .line 377
    iget-wide v6, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    sub-long/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    if-ne v0, v2, :cond_2

    .line 379
    invoke-virtual {v3, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    goto :goto_1

    .line 381
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 382
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 383
    invoke-virtual {v3, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 384
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move p1, v0

    .line 386
    :goto_1
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    .line 387
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->length:J

    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileSplit;->length:J

    return p1
.end method
