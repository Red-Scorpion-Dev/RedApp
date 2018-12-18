.class Lorg/briarproject/bramble/transport/StreamWriterImpl;
.super Ljava/io/OutputStream;
.source "StreamWriterImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/transport/StreamWriter;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final encrypter:Lorg/briarproject/bramble/api/crypto/StreamEncrypter;

.field private length:I

.field private final payload:[B


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/crypto/StreamEncrypter;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    .line 29
    iput-object p1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->encrypter:Lorg/briarproject/bramble/api/crypto/StreamEncrypter;

    const/16 p1, 0x3dc

    .line 30
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->payload:[B

    return-void
.end method

.method private writeFrame(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->encrypter:Lorg/briarproject/bramble/api/crypto/StreamEncrypter;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->payload:[B

    iget v2, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lorg/briarproject/bramble/api/crypto/StreamEncrypter;->writeFrame([BIIZ)V

    .line 86
    iput v3, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

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

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/transport/StreamWriterImpl;->writeFrame(Z)V

    .line 47
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->encrypter:Lorg/briarproject/bramble/api/crypto/StreamEncrypter;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/StreamEncrypter;->flush()V

    .line 48
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/transport/StreamWriterImpl;->writeFrame(Z)V

    .line 54
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->encrypter:Lorg/briarproject/bramble/api/crypto/StreamEncrypter;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/StreamEncrypter;->flush()V

    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    return-object p0
.end method

.method public sendEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/transport/StreamWriterImpl;->writeFrame(Z)V

    .line 41
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->encrypter:Lorg/briarproject/bramble/api/crypto/StreamEncrypter;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/StreamEncrypter;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->payload:[B

    iget v1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 60
    iget p1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    .line 61
    iget p1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->payload:[B

    array-length v0, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/transport/StreamWriterImpl;->writeFrame(Z)V

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

    .line 66
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/briarproject/bramble/transport/StreamWriterImpl;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->payload:[B

    array-length v0, v0

    iget v1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    sub-int/2addr v0, v1

    :goto_0
    if-gt v0, p3, :cond_0

    .line 73
    iget-object v1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->payload:[B

    iget v2, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/transport/StreamWriterImpl;->writeFrame(Z)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 78
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->payload:[B

    array-length v0, v0

    iget v1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->payload:[B

    iget v1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget p1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/briarproject/bramble/transport/StreamWriterImpl;->length:I

    return-void
.end method
