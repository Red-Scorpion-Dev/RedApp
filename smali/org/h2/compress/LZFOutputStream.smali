.class public Lorg/h2/compress/LZFOutputStream;
.super Ljava/io/OutputStream;
.source "LZFOutputStream.java"


# static fields
.field static final MAGIC:I = 0x48324953


# instance fields
.field private final buffer:[B

.field private final compress:Lorg/h2/compress/CompressLZF;

.field private final out:Ljava/io/OutputStream;

.field private outBuffer:[B

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 24
    new-instance v0, Lorg/h2/compress/CompressLZF;

    invoke-direct {v0}, Lorg/h2/compress/CompressLZF;-><init>()V

    iput-object v0, p0, Lorg/h2/compress/LZFOutputStream;->compress:Lorg/h2/compress/CompressLZF;

    .line 30
    iput-object p1, p0, Lorg/h2/compress/LZFOutputStream;->out:Ljava/io/OutputStream;

    const/high16 p1, 0x20000

    .line 32
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/h2/compress/LZFOutputStream;->buffer:[B

    .line 33
    invoke-direct {p0, p1}, Lorg/h2/compress/LZFOutputStream;->ensureOutput(I)V

    const p1, 0x48324953

    .line 34
    invoke-direct {p0, p1}, Lorg/h2/compress/LZFOutputStream;->writeInt(I)V

    return-void
.end method

.method private compressAndWrite([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_1

    .line 56
    invoke-direct {p0, p2}, Lorg/h2/compress/LZFOutputStream;->ensureOutput(I)V

    .line 57
    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->compress:Lorg/h2/compress/CompressLZF;

    iget-object v1, p0, Lorg/h2/compress/LZFOutputStream;->outBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/h2/compress/CompressLZF;->compress([BI[BI)I

    move-result v0

    if-le v0, p2, :cond_0

    neg-int v0, p2

    .line 59
    invoke-direct {p0, v0}, Lorg/h2/compress/LZFOutputStream;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0, v0}, Lorg/h2/compress/LZFOutputStream;->writeInt(I)V

    .line 63
    invoke-direct {p0, p2}, Lorg/h2/compress/LZFOutputStream;->writeInt(I)V

    .line 64
    iget-object p1, p0, Lorg/h2/compress/LZFOutputStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lorg/h2/compress/LZFOutputStream;->outBuffer:[B

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureOutput(I)V
    .locals 1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x64

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 41
    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->outBuffer:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->outBuffer:[B

    array-length v0, v0

    if-ge v0, p1, :cond_2

    .line 42
    :cond_1
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/h2/compress/LZFOutputStream;->outBuffer:[B

    :cond_2
    return-void
.end method

.method private writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 71
    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 72
    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 73
    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->out:Ljava/io/OutputStream;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

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

    .line 98
    invoke-virtual {p0}, Lorg/h2/compress/LZFOutputStream;->flush()V

    .line 99
    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->buffer:[B

    iget v1, p0, Lorg/h2/compress/LZFOutputStream;->pos:I

    invoke-direct {p0, v0, v1}, Lorg/h2/compress/LZFOutputStream;->compressAndWrite([BI)V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lorg/h2/compress/LZFOutputStream;->pos:I

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget v0, p0, Lorg/h2/compress/LZFOutputStream;->pos:I

    iget-object v1, p0, Lorg/h2/compress/LZFOutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lorg/h2/compress/LZFOutputStream;->flush()V

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->buffer:[B

    iget v1, p0, Lorg/h2/compress/LZFOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/compress/LZFOutputStream;->pos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    .line 79
    iget-object v0, p0, Lorg/h2/compress/LZFOutputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/h2/compress/LZFOutputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 80
    iget-object v1, p0, Lorg/h2/compress/LZFOutputStream;->buffer:[B

    iget v2, p0, Lorg/h2/compress/LZFOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget v1, p0, Lorg/h2/compress/LZFOutputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/h2/compress/LZFOutputStream;->pos:I

    .line 82
    iget v1, p0, Lorg/h2/compress/LZFOutputStream;->pos:I

    iget-object v2, p0, Lorg/h2/compress/LZFOutputStream;->buffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/h2/compress/LZFOutputStream;->flush()V

    :cond_0
    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method
