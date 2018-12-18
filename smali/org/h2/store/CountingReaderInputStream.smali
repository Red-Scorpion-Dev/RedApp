.class public Lorg/h2/store/CountingReaderInputStream;
.super Ljava/io/InputStream;
.source "CountingReaderInputStream.java"


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final charBuffer:Ljava/nio/CharBuffer;

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private length:J

.field private final reader:Ljava/io/Reader;

.field private remaining:J


# direct methods
.method constructor <init>(Ljava/io/Reader;J)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x1000

    .line 25
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    .line 28
    sget-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 37
    iput-object p1, p0, Lorg/h2/store/CountingReaderInputStream;->reader:Ljava/io/Reader;

    .line 38
    iput-wide p2, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    return-void
.end method

.method private fetch()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lorg/h2/store/CountingReaderInputStream;->fillBuffer()V

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private fillBuffer()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    .line 70
    iget-object v1, p0, Lorg/h2/store/CountingReaderInputStream;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    iget-object v3, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-lez v0, :cond_1

    .line 73
    iget-wide v4, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    goto :goto_0

    .line 76
    :cond_1
    iput-wide v1, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    const/4 v0, 0x0

    .line 78
    :goto_0
    iget-wide v4, p0, Lorg/h2/store/CountingReaderInputStream;->length:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/h2/store/CountingReaderInputStream;->length:J

    .line 79
    iget-object v4, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    iget-object v5, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 80
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    const/16 v0, 0x1000

    .line 81
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 82
    iget-wide v4, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    cmp-long v0, v4, v1

    if-nez v0, :cond_2

    const/4 v3, 0x1

    .line 83
    :cond_2
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    if-eqz v3, :cond_3

    .line 84
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void

    .line 89
    :cond_3
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 90
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 91
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    iget-object v1, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

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

    .line 107
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public getLength()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lorg/h2/store/CountingReaderInputStream;->length:J

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lorg/h2/store/CountingReaderInputStream;->fetch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/h2/store/CountingReaderInputStream;->fetch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 47
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method
