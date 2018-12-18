.class Lorg/briarproject/bramble/reliability/ReceiverInputStream;
.super Ljava/io/InputStream;
.source "ReceiverInputStream.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private data:Lorg/briarproject/bramble/reliability/Data;

.field private length:I

.field private offset:I

.field private final receiver:Lorg/briarproject/bramble/reliability/Receiver;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/reliability/Receiver;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->data:Lorg/briarproject/bramble/reliability/Data;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->offset:I

    iput v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->receiver:Lorg/briarproject/bramble/reliability/Receiver;

    return-void
.end method

.method private receive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->data:Lorg/briarproject/bramble/reliability/Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->data:Lorg/briarproject/bramble/reliability/Data;

    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Data;->isLastFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->receiver:Lorg/briarproject/bramble/reliability/Receiver;

    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Receiver;->read()Lorg/briarproject/bramble/reliability/Data;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->data:Lorg/briarproject/bramble/reliability/Data;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x5

    .line 65
    iput v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->offset:I

    .line 66
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->data:Lorg/briarproject/bramble/reliability/Data;

    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Data;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    const/4 v0, 0x1

    return v0

    .line 62
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 63
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted while reading"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 28
    :cond_0
    iget v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->receive()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 29
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->data:Lorg/briarproject/bramble/reliability/Data;

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->data:Lorg/briarproject/bramble/reliability/Data;

    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Data;->getBuffer()[B

    move-result-object v0

    iget v1, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 31
    iget v1, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->offset:I

    .line 32
    iget v1, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    return v0

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->read([BII)I

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

    .line 43
    iget v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 44
    :cond_0
    iget v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->receive()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->data:Lorg/briarproject/bramble/reliability/Data;

    if-eqz v0, :cond_2

    .line 46
    iget v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 47
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->data:Lorg/briarproject/bramble/reliability/Data;

    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Data;->getBuffer()[B

    move-result-object v0

    iget v1, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->offset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget p1, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->offset:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->offset:I

    .line 49
    iget p1, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;->length:I

    return p3

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
