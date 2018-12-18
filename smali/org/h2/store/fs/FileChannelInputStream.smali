.class public Lorg/h2/store/fs/FileChannelInputStream;
.super Ljava/io/InputStream;
.source "FileChannelInputStream.java"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private final channel:Ljava/nio/channels/FileChannel;

.field private final closeChannel:Z

.field private pos:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;Z)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/h2/store/fs/FileChannelInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 32
    iput-boolean p2, p0, Lorg/h2/store/fs/FileChannelInputStream;->closeChannel:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lorg/h2/store/fs/FileChannelInputStream;->closeChannel:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/h2/store/fs/FileChannelInputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/h2/store/fs/FileChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/fs/FileChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 41
    iget-object v0, p0, Lorg/h2/store/fs/FileChannelInputStream;->channel:Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Lorg/h2/store/fs/FileChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lorg/h2/store/fs/FileChannelInputStream;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/h2/store/fs/FileChannelInputStream;->pos:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/h2/store/fs/FileChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/h2/store/fs/FileChannelInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lorg/h2/store/fs/FileChannelInputStream;->channel:Ljava/nio/channels/FileChannel;

    iget-wide v0, p0, Lorg/h2/store/fs/FileChannelInputStream;->pos:J

    invoke-virtual {p2, p1, v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 60
    :cond_0
    iget-wide p2, p0, Lorg/h2/store/fs/FileChannelInputStream;->pos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/h2/store/fs/FileChannelInputStream;->pos:J

    return p1
.end method
