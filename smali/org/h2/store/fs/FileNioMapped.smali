.class Lorg/h2/store/fs/FileNioMapped;
.super Lorg/h2/store/fs/FileBase;
.source "FilePathNioMapped.java"


# static fields
.field private static final GC_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private file:Ljava/io/RandomAccessFile;

.field private fileLength:J

.field private mapped:Ljava/nio/MappedByteBuffer;

.field private final mode:Ljava/nio/channels/FileChannel$MapMode;

.field private final name:Ljava/lang/String;

.field private pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    const-string v0, "r"

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iput-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mode:Ljava/nio/channels/FileChannel$MapMode;

    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    iput-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mode:Ljava/nio/channels/FileChannel$MapMode;

    .line 65
    :goto_0
    iput-object p1, p0, Lorg/h2/store/fs/FileNioMapped;->name:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    .line 67
    invoke-direct {p0}, Lorg/h2/store/fs/FileNioMapped;->reMap()V

    return-void
.end method

.method private static checkFileSizeLimit(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File over 2GB is not supported yet when using this file system"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private reMap()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    .line 121
    invoke-direct {p0}, Lorg/h2/store/fs/FileNioMapped;->unMap()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    .line 124
    iget-wide v1, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    invoke-static {v1, v2}, Lorg/h2/store/fs/FileNioMapped;->checkFileSizeLimit(J)V

    .line 126
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/store/fs/FileNioMapped;->mode:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    .line 127
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v1

    .line 128
    iget-object v2, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v2

    int-to-long v3, v1

    .line 129
    iget-wide v5, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    int-to-long v3, v2

    iget-wide v5, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 133
    sget-boolean v1, Lorg/h2/engine/SysProperties;->NIO_LOAD_MAPPED:Z

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    .line 136
    :cond_1
    iget-wide v1, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    return-void

    .line 130
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to map: length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " capacity="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unMap()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 81
    sget-boolean v0, Lorg/h2/engine/SysProperties;->NIO_CLEANER_HACK:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "cleaner"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 85
    iget-object v4, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "clean"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 88
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    iput-object v2, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    throw v0

    :catch_0
    iput-object v2, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 100
    iput-object v2, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 102
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x2710

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    .line 107
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 108
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 104
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Timeout (10000 ms) reached while trying to GC mapped buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
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

    .line 237
    iget-object p1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 238
    iget-object p1, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method public implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lorg/h2/store/fs/FileNioMapped;->unMap()V

    .line 150
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .line 157
    iget v0, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-static {p1, p2}, Lorg/h2/store/fs/FileNioMapped;->checkFileSizeLimit(J)V

    long-to-int p1, p1

    .line 200
    iput p1, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileNioMapped;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 173
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 175
    monitor-exit p0

    return p1

    :cond_0
    int-to-long v0, v0

    .line 177
    :try_start_1
    iget-wide v2, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    iget v4, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v0, v0

    if-gtz v0, :cond_1

    const/4 p1, -0x1

    .line 179
    monitor-exit p0

    return p1

    .line 181
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    iget v2, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    iget p1, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    :try_start_3
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p1}, Ljava/io/EOFException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 193
    throw v0

    :catch_1
    move-exception p1

    .line 187
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Ljava/io/EOFException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 189
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFileLength(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_0
    invoke-static {p1, p2}, Lorg/h2/store/fs/FileNioMapped;->checkFileSizeLimit(J)V

    .line 218
    iget v0, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    .line 219
    invoke-direct {p0}, Lorg/h2/store/fs/FileNioMapped;->unMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 222
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :try_start_2
    invoke-direct {p0}, Lorg/h2/store/fs/FileNioMapped;->reMap()V

    int-to-long v0, v0

    .line 232
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    const/16 v3, 0x10

    if-gt v1, v3, :cond_0

    .line 225
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user-mapped section open"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 229
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_0
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 216
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_0
    iget-wide v0, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nioMapped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized truncate(J)Ljava/nio/channels/FileChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mode:Ljava/nio/channels/FileChannel$MapMode;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-eq v0, v1, :cond_1

    .line 210
    invoke-virtual {p0}, Lorg/h2/store/fs/FileNioMapped;->size()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 211
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileNioMapped;->setFileLength(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    monitor-exit p0

    return-object p0

    .line 208
    :cond_1
    :try_start_1
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 206
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileNioMapped;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

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

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 243
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 245
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_0

    .line 246
    iget v1, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    add-int/2addr v1, v0

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/fs/FileNioMapped;->setFileLength(J)V

    .line 248
    :cond_0
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    iget v2, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 249
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/MappedByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 250
    iget p1, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 242
    monitor-exit p0

    throw p1
.end method
