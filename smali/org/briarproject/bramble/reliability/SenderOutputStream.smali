.class Lorg/briarproject/bramble/reliability/SenderOutputStream;
.super Ljava/io/OutputStream;
.source "SenderOutputStream.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final buf:[B

.field private offset:I

.field private final sender:Lorg/briarproject/bramble/reliability/Sender;

.field private sequenceNumber:J


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/reliability/Sender;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x409

    .line 15
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->buf:[B

    const/4 v0, 0x5

    .line 17
    iput v0, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    const-wide/16 v0, 0x1

    .line 18
    iput-wide v0, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->sequenceNumber:J

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->sender:Lorg/briarproject/bramble/reliability/Sender;

    return-void
.end method

.method private send(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget v0, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 75
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->buf:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    new-instance v1, Lorg/briarproject/bramble/reliability/Data;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/reliability/Data;-><init>([B)V

    .line 77
    invoke-virtual {v1, p1}, Lorg/briarproject/bramble/reliability/Data;->setLastFrame(Z)V

    .line 78
    iget-wide v2, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->sequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->sequenceNumber:J

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/reliability/Data;->setSequenceNumber(J)V

    .line 79
    invoke-virtual {v1}, Lorg/briarproject/bramble/reliability/Data;->calculateChecksum()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/reliability/Data;->setChecksum(J)V

    .line 81
    :try_start_0
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->sender:Lorg/briarproject/bramble/reliability/Sender;

    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/reliability/Sender;->write(Lorg/briarproject/bramble/reliability/Data;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x5

    .line 86
    iput p1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    return-void

    .line 83
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 84
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Interrupted while writing"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/reliability/SenderOutputStream;->send(Z)V

    .line 28
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->sender:Lorg/briarproject/bramble/reliability/Sender;

    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Sender;->flush()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 30
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 31
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted while closing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget v0, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/reliability/SenderOutputStream;->send(Z)V

    .line 39
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->sender:Lorg/briarproject/bramble/reliability/Sender;

    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Sender;->flush()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 41
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 42
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted while flushing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->buf:[B

    iget v1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 49
    iget p1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    .line 50
    iget p1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    const/16 v0, 0x405

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/reliability/SenderOutputStream;->send(Z)V

    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/briarproject/bramble/reliability/SenderOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget v0, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    rsub-int v0, v0, 0x409

    add-int/lit8 v0, v0, -0x4

    :goto_0
    if-gt v0, p3, :cond_0

    .line 62
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->buf:[B

    iget v2, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget v1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/reliability/SenderOutputStream;->send(Z)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 67
    iget v0, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    rsub-int v0, v0, 0x409

    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->buf:[B

    iget v1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget p1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/briarproject/bramble/reliability/SenderOutputStream;->offset:I

    return-void
.end method
