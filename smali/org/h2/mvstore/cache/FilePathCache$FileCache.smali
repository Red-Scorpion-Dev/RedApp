.class public Lorg/h2/mvstore/cache/FilePathCache$FileCache;
.super Lorg/h2/store/fs/FileBase;
.source "FilePathCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/cache/FilePathCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileCache"
.end annotation


# static fields
.field private static final CACHE_BLOCK_SIZE:I = 0x1000


# instance fields
.field private final base:Ljava/nio/channels/FileChannel;

.field private final cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    .line 45
    new-instance v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;

    invoke-direct {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;-><init>()V

    const-wide/32 v1, 0x100000

    .line 47
    iput-wide v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->maxMemory:J

    .line 48
    new-instance v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-direct {v1, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;-><init>(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;)V

    iput-object v1, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    .line 52
    iput-object p1, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private clearCache(Ljava/nio/ByteBuffer;J)V
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    .line 141
    invoke-static {p2, p3}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->getCachePos(J)J

    move-result-wide p2

    :goto_0
    if-lez p1, :cond_0

    .line 143
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v0, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->remove(J)Ljava/lang/Object;

    const-wide/16 v0, 0x1000

    add-long/2addr p2, v0

    add-int/lit16 p1, p1, -0x1000

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getCachePos(J)J
    .locals 2

    const-wide/16 v0, 0x1000

    .line 111
    div-long/2addr p0, v0

    mul-long p0, p0, v0

    return-wide p0
.end method


# virtual methods
.method public force(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method protected implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-static {p2, p3}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->getCachePos(J)J

    move-result-wide v0

    sub-long/2addr p2, v0

    long-to-int p2, p2

    const/16 p3, 0x1000

    rsub-int v2, p2, 0x1000

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 82
    iget-object v3, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v3, v0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    const/4 v4, -0x1

    if-nez v3, :cond_4

    .line 84
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-wide v6, v0

    .line 87
    :goto_0
    iget-object v3, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v5, v6, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-nez v8, :cond_3

    .line 96
    :goto_1
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v3, p3, :cond_1

    .line 98
    iget-object v3, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v3, v0, v1, v5, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->put(JLjava/lang/Object;I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    if-gtz v3, :cond_2

    return v4

    :cond_2
    sub-int/2addr v3, p2

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_3
    int-to-long v8, v3

    add-long/2addr v6, v8

    goto :goto_0

    :cond_4
    move-object v5, v3

    .line 106
    :goto_2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-virtual {p1, p3, p2, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    if-nez v2, :cond_5

    const/4 v2, -0x1

    :cond_5
    return v2
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->clear()V

    .line 122
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    return-object p0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->position()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->clearCache(Ljava/nio/ByteBuffer;J)V

    .line 135
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->clearCache(Ljava/nio/ByteBuffer;J)V

    .line 129
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1
.end method
