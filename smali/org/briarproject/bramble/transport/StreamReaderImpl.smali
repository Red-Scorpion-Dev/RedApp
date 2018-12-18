.class Lorg/briarproject/bramble/transport/StreamReaderImpl;
.super Ljava/io/InputStream;
.source "StreamReaderImpl.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final decrypter:Lorg/briarproject/bramble/api/crypto/StreamDecrypter;

.field private length:I

.field private offset:I

.field private final payload:[B


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/crypto/StreamDecrypter;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->offset:I

    iput v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    .line 26
    iput-object p1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->decrypter:Lorg/briarproject/bramble/api/crypto/StreamDecrypter;

    const/16 p1, 0x3dc

    .line 27
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->payload:[B

    return-void
.end method

.method private readFrame()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->offset:I

    .line 63
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->decrypter:Lorg/briarproject/bramble/api/crypto/StreamDecrypter;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->payload:[B

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/crypto/StreamDecrypter;->readFrame([B)I

    move-result v0

    iput v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

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

    .line 32
    :goto_0
    iget v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    if-gtz v0, :cond_1

    .line 33
    iget v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 34
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/bramble/transport/StreamReaderImpl;->readFrame()V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->payload:[B

    iget v1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 37
    iget v1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->offset:I

    .line 38
    iget v1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/briarproject/bramble/transport/StreamReaderImpl;->read([BII)I

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

    .line 49
    :goto_0
    iget v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    if-gtz v0, :cond_1

    .line 50
    iget v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 51
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/bramble/transport/StreamReaderImpl;->readFrame()V

    goto :goto_0

    .line 53
    :cond_1
    iget v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 54
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->payload:[B

    iget v1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->offset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget p1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->offset:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->offset:I

    .line 56
    iget p1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/briarproject/bramble/transport/StreamReaderImpl;->length:I

    return p3
.end method
