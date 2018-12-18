.class public Lorg/h2/store/fs/FileChannelOutputStream;
.super Ljava/io/OutputStream;
.source "FileChannelOutputStream.java"


# instance fields
.field private final buffer:[B

.field private final channel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Lorg/h2/store/fs/FileChannelOutputStream;->buffer:[B

    .line 29
    iput-object p1, p0, Lorg/h2/store/fs/FileChannelOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 33
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 34
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :goto_0
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

    .line 56
    iget-object v0, p0, Lorg/h2/store/fs/FileChannelOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/h2/store/fs/FileChannelOutputStream;->buffer:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 41
    iget-object p1, p0, Lorg/h2/store/fs/FileChannelOutputStream;->channel:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lorg/h2/store/fs/FileChannelOutputStream;->buffer:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/store/fs/FileUtils;->writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/h2/store/fs/FileChannelOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/store/fs/FileUtils;->writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/h2/store/fs/FileChannelOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/store/fs/FileUtils;->writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method
