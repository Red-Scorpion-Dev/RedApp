.class Lorg/h2/store/fs/FileRec;
.super Lorg/h2/store/fs/FileBase;
.source "FilePathRec.java"


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

.field private final name:Ljava/lang/String;

.field private final rec:Lorg/h2/store/fs/FilePathRec;


# direct methods
.method constructor <init>(Lorg/h2/store/fs/FilePathRec;Ljava/nio/channels/FileChannel;Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    .line 132
    iput-object p1, p0, Lorg/h2/store/fs/FileRec;->rec:Lorg/h2/store/fs/FilePathRec;

    .line 133
    iput-object p2, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

    .line 134
    iput-object p3, p0, Lorg/h2/store/fs/FileRec;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public force(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method public implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

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

    .line 144
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

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

    .line 164
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

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

    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileRec;->position(J)Ljava/nio/channels/FileChannel;

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

    .line 154
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->name:Ljava/lang/String;

    return-object v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->rec:Lorg/h2/store/fs/FilePathRec;

    iget-object v2, p0, Lorg/h2/store/fs/FileRec;->name:Ljava/lang/String;

    const/4 v1, 0x7

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/h2/store/fs/FilePathRec;->log(ILjava/lang/String;[BJ)V

    .line 171
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

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

    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileRec;->truncate(J)Ljava/nio/channels/FileChannel;

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

    .line 211
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-nez v2, :cond_1

    array-length v2, v0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v0

    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    new-array v2, v1, [B

    .line 186
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v2

    .line 189
    :goto_1
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 190
    iget-object v5, p0, Lorg/h2/store/fs/FileRec;->rec:Lorg/h2/store/fs/FilePathRec;

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/h2/store/fs/FileRec;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lorg/h2/store/fs/FilePathRec;->log(ILjava/lang/String;[BJ)V

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 198
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-nez v2, :cond_1

    array-length v2, v0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v0

    goto :goto_1

    .line 199
    :cond_1
    :goto_0
    new-array v2, v1, [B

    .line 200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v2

    .line 203
    :goto_1
    iget-object v0, p0, Lorg/h2/store/fs/FileRec;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1

    .line 204
    iget-object v5, p0, Lorg/h2/store/fs/FileRec;->rec:Lorg/h2/store/fs/FilePathRec;

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/h2/store/fs/FileRec;->name:Ljava/lang/String;

    move-wide v9, p2

    invoke-virtual/range {v5 .. v10}, Lorg/h2/store/fs/FilePathRec;->log(ILjava/lang/String;[BJ)V

    return p1
.end method
