.class public Lorg/h2/compress/LZFInputStream;
.super Ljava/io/InputStream;
.source "LZFInputStream.java"


# instance fields
.field private buffer:[B

.field private bufferLength:I

.field private decompress:Lorg/h2/compress/CompressLZF;

.field private final in:Ljava/io/InputStream;

.field private inBuffer:[B

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 20
    new-instance v0, Lorg/h2/compress/CompressLZF;

    invoke-direct {v0}, Lorg/h2/compress/CompressLZF;-><init>()V

    iput-object v0, p0, Lorg/h2/compress/LZFInputStream;->decompress:Lorg/h2/compress/CompressLZF;

    .line 27
    iput-object p1, p0, Lorg/h2/compress/LZFInputStream;->in:Ljava/io/InputStream;

    .line 28
    invoke-direct {p0}, Lorg/h2/compress/LZFInputStream;->readInt()I

    move-result p1

    const v0, 0x48324953

    if-ne p1, v0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not an LZFInputStream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static ensureSize([BI)[B
    .locals 1

    if-eqz p0, :cond_0

    .line 34
    array-length v0, p0

    if-ge v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private fillBuffer()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/h2/compress/LZFInputStream;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/compress/LZFInputStream;->pos:I

    iget v1, p0, Lorg/h2/compress/LZFInputStream;->bufferLength:I

    if-ge v0, v1, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-direct {p0}, Lorg/h2/compress/LZFInputStream;->readInt()I

    move-result v5

    .line 42
    iget-object v0, p0, Lorg/h2/compress/LZFInputStream;->decompress:Lorg/h2/compress/CompressLZF;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 44
    iput v1, p0, Lorg/h2/compress/LZFInputStream;->bufferLength:I

    goto :goto_1

    :cond_1
    if-gez v5, :cond_2

    neg-int v0, v5

    .line 47
    iget-object v2, p0, Lorg/h2/compress/LZFInputStream;->buffer:[B

    invoke-static {v2, v0}, Lorg/h2/compress/LZFInputStream;->ensureSize([BI)[B

    move-result-object v2

    iput-object v2, p0, Lorg/h2/compress/LZFInputStream;->buffer:[B

    .line 48
    iget-object v2, p0, Lorg/h2/compress/LZFInputStream;->buffer:[B

    invoke-direct {p0, v2, v0}, Lorg/h2/compress/LZFInputStream;->readFully([BI)V

    .line 49
    iput v0, p0, Lorg/h2/compress/LZFInputStream;->bufferLength:I

    goto :goto_1

    .line 51
    :cond_2
    iget-object v0, p0, Lorg/h2/compress/LZFInputStream;->inBuffer:[B

    invoke-static {v0, v5}, Lorg/h2/compress/LZFInputStream;->ensureSize([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/compress/LZFInputStream;->inBuffer:[B

    .line 52
    invoke-direct {p0}, Lorg/h2/compress/LZFInputStream;->readInt()I

    move-result v0

    .line 53
    iget-object v2, p0, Lorg/h2/compress/LZFInputStream;->inBuffer:[B

    invoke-direct {p0, v2, v5}, Lorg/h2/compress/LZFInputStream;->readFully([BI)V

    .line 54
    iget-object v2, p0, Lorg/h2/compress/LZFInputStream;->buffer:[B

    invoke-static {v2, v0}, Lorg/h2/compress/LZFInputStream;->ensureSize([BI)[B

    move-result-object v2

    iput-object v2, p0, Lorg/h2/compress/LZFInputStream;->buffer:[B

    .line 56
    :try_start_0
    iget-object v2, p0, Lorg/h2/compress/LZFInputStream;->decompress:Lorg/h2/compress/CompressLZF;

    iget-object v3, p0, Lorg/h2/compress/LZFInputStream;->inBuffer:[B

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/h2/compress/LZFInputStream;->buffer:[B

    const/4 v7, 0x0

    move v8, v0

    invoke-virtual/range {v2 .. v8}, Lorg/h2/compress/CompressLZF;->expand([BII[BII)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 58
    invoke-static {v2}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    .line 60
    :goto_0
    iput v0, p0, Lorg/h2/compress/LZFInputStream;->bufferLength:I

    .line 62
    :goto_1
    iput v1, p0, Lorg/h2/compress/LZFInputStream;->pos:I

    return-void
.end method

.method private readBlock([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lorg/h2/compress/LZFInputStream;->fillBuffer()V

    .line 118
    iget v0, p0, Lorg/h2/compress/LZFInputStream;->pos:I

    iget v1, p0, Lorg/h2/compress/LZFInputStream;->bufferLength:I

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 121
    :cond_0
    iget v0, p0, Lorg/h2/compress/LZFInputStream;->bufferLength:I

    iget v1, p0, Lorg/h2/compress/LZFInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 122
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 123
    iget-object v0, p0, Lorg/h2/compress/LZFInputStream;->buffer:[B

    iget v1, p0, Lorg/h2/compress/LZFInputStream;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget p1, p0, Lorg/h2/compress/LZFInputStream;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/h2/compress/LZFInputStream;->pos:I

    return p3
.end method

.method private readFully([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_0

    .line 68
    iget-object v1, p0, Lorg/h2/compress/LZFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/h2/compress/LZFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lorg/h2/compress/LZFInputStream;->decompress:Lorg/h2/compress/CompressLZF;

    const/4 v0, 0x0

    return v0

    :cond_0
    shl-int/lit8 v0, v0, 0x18

    .line 80
    iget-object v1, p0, Lorg/h2/compress/LZFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/h2/compress/LZFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/h2/compress/LZFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/h2/compress/LZFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lorg/h2/compress/LZFInputStream;->fillBuffer()V

    .line 87
    iget v0, p0, Lorg/h2/compress/LZFInputStream;->pos:I

    iget v1, p0, Lorg/h2/compress/LZFInputStream;->bufferLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/h2/compress/LZFInputStream;->buffer:[B

    iget v1, p0, Lorg/h2/compress/LZFInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/compress/LZFInputStream;->pos:I

    aget-byte v0, v0, v1

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

    .line 95
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/h2/compress/LZFInputStream;->read([BII)I

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

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/compress/LZFInputStream;->readBlock([BII)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, -0x1

    :cond_3
    return v0
.end method
