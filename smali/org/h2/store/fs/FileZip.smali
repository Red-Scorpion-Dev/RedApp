.class Lorg/h2/store/fs/FileZip;
.super Lorg/h2/store/fs/FileBase;
.source "FilePathZip.java"


# static fields
.field private static final SKIP_BUFFER:[B


# instance fields
.field private final entry:Ljava/util/zip/ZipEntry;

.field private final file:Ljava/util/zip/ZipFile;

.field private in:Ljava/io/InputStream;

.field private inPos:J

.field private final length:J

.field private pos:J

.field private skipUsingRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    .line 273
    new-array v0, v0, [B

    sput-object v0, Lorg/h2/store/fs/FileZip;->SKIP_BUFFER:[B

    return-void
.end method

.method constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    .line 284
    iput-object p1, p0, Lorg/h2/store/fs/FileZip;->file:Ljava/util/zip/ZipFile;

    .line 285
    iput-object p2, p0, Lorg/h2/store/fs/FileZip;->entry:Ljava/util/zip/ZipEntry;

    .line 286
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/fs/FileZip;->length:J

    return-void
.end method

.method private seek()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-wide v0, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    iget-wide v2, p0, Lorg/h2/store/fs/FileZip;->pos:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 314
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    .line 319
    :cond_1
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    .line 320
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->file:Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lorg/h2/store/fs/FileZip;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    .line 321
    iput-wide v1, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    .line 323
    :cond_2
    iget-wide v3, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    iget-wide v5, p0, Lorg/h2/store/fs/FileZip;->pos:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    .line 324
    iget-wide v3, p0, Lorg/h2/store/fs/FileZip;->pos:J

    iget-wide v5, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    sub-long/2addr v3, v5

    .line 325
    iget-boolean v0, p0, Lorg/h2/store/fs/FileZip;->skipUsingRead:Z

    if-nez v0, :cond_3

    .line 327
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    invoke-static {v0, v3, v4}, Lorg/h2/util/IOUtils;->skipFully(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lorg/h2/store/fs/FileZip;->skipUsingRead:Z

    .line 333
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lorg/h2/store/fs/FileZip;->skipUsingRead:Z

    if-eqz v0, :cond_4

    :goto_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    .line 335
    sget-object v0, Lorg/h2/store/fs/FileZip;->SKIP_BUFFER:[B

    array-length v0, v0

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v0, v5

    .line 336
    iget-object v5, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    sget-object v6, Lorg/h2/store/fs/FileZip;->SKIP_BUFFER:[B

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    int-to-long v5, v0

    sub-long/2addr v3, v5

    goto :goto_1

    .line 340
    :cond_4
    iget-wide v0, p0, Lorg/h2/store/fs/FileZip;->pos:J

    iput-wide v0, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    :cond_5
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

.method protected implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->file:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method

.method public position()J
    .locals 2

    .line 291
    iget-wide v0, p0, Lorg/h2/store/fs/FileZip;->pos:J

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 0

    .line 346
    iput-wide p1, p0, Lorg/h2/store/fs/FileZip;->pos:J

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileZip;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Lorg/h2/store/fs/FileZip;->seek()V

    .line 302
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 305
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 306
    iget-wide v1, p0, Lorg/h2/store/fs/FileZip;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/store/fs/FileZip;->pos:J

    .line 307
    iget-wide v1, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    :cond_0
    return v0
.end method

.method public size()J
    .locals 2

    .line 296
    iget-wide v0, p0, Lorg/h2/store/fs/FileZip;->length:J

    return-wide v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File is read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileZip;->truncate(J)Ljava/nio/channels/FileChannel;

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

    .line 370
    :try_start_0
    new-instance v9, Lorg/h2/store/fs/FileZip$1;

    move-object v3, v0

    check-cast v3, Ljava/nio/channels/FileChannel;

    move-object v1, v9

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/h2/store/fs/FileZip$1;-><init>(Lorg/h2/store/fs/FileZip;Ljava/nio/channels/FileChannel;JJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v9

    :catchall_0
    move-exception p1

    .line 367
    monitor-exit p0

    throw p1

    .line 382
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    new-instance p1, Ljava/io/IOException;

    const-string v0, "File is read-only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
