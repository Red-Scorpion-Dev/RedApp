.class Lorg/briarproject/bramble/data/BdfReaderImpl;
.super Ljava/lang/Object;
.source "BdfReaderImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/data/BdfReader;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final EMPTY_BUFFER:[B


# instance fields
.field private buf:[B

.field private eof:Z

.field private hasLookahead:Z

.field private final in:Ljava/io/InputStream;

.field private final maxBufferSize:I

.field private final nestedLimit:I

.field private next:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [B

    sput-object v0, Lorg/briarproject/bramble/data/BdfReaderImpl;->EMPTY_BUFFER:[B

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    const/16 v0, 0x8

    .line 45
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    .line 48
    iput-object p1, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->in:Ljava/io/InputStream;

    .line 49
    iput p2, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->nestedLimit:I

    .line 50
    iput p3, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->maxBufferSize:I

    return-void
.end method

.method private hasEnd()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readLookahead()V

    .line 346
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 347
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, -0x80

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private readDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasDictionary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    iget v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->nestedLimit:I

    if-gt p1, v0, :cond_1

    .line 383
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 384
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readDictionaryStart()V

    .line 385
    :goto_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasDictionaryEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readDictionaryEnd()V

    return-object v0

    .line 382
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 381
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private readEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 356
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method private readInt16()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 190
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readIntoBuffer(I)V

    .line 191
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private readInt32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 195
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readIntoBuffer(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 197
    iget-object v3, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    rsub-int/lit8 v4, v4, 0x18

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private readInt64()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 202
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readIntoBuffer(I)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 204
    iget-object v4, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    aget-byte v4, v4, v3

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v3, 0x8

    rsub-int/lit8 v6, v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private readInt8()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 185
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readIntoBuffer(I)V

    .line 186
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method private readIntoBuffer(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    invoke-direct {p0, v0, p1}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readIntoBuffer([BI)V

    return-void
.end method

.method private readIntoBuffer([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 69
    iget-object v1, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->in:Ljava/io/InputStream;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method private readList(I)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasList()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->nestedLimit:I

    if-gt p1, v0, :cond_1

    .line 326
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfList;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfList;-><init>()V

    .line 327
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readListStart()V

    .line 328
    :goto_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasListEnd()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/data/BdfList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readListEnd()V

    return-object v0

    .line 325
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 324
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private readLookahead()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    if-nez v0, :cond_2

    .line 57
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 59
    iput-boolean v2, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    return-void

    :cond_1
    int-to-byte v0, v0

    .line 62
    iput-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    .line 63
    iput-boolean v2, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private readObject(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readNull()V

    .line 91
    sget-object p1, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    return-object p1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 94
    :cond_1
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLong()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 95
    :cond_2
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasDouble()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 96
    :cond_3
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasString()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :cond_4
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasRaw()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readRaw()[B

    move-result-object p1

    return-object p1

    .line 98
    :cond_5
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasList()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1

    .line 99
    :cond_6
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasDictionary()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1

    .line 100
    :cond_7
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private readRawLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readInt8()I

    move-result v0

    return v0

    .line 297
    :cond_0
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readInt16()S

    move-result v0

    return v0

    .line 298
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readInt32()I

    move-result v0

    return v0

    .line 299
    :cond_2
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method private readStringLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x41

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readInt8()I

    move-result v0

    return v0

    .line 262
    :cond_0
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readInt16()S

    move-result v0

    return v0

    .line 263
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x44

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readInt32()I

    move-result v0

    return v0

    .line 264
    :cond_2
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method private skip(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_1

    .line 82
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    array-length v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method private skipObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasNull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skipNull()V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skipBoolean()V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLong()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skipLong()V

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasDouble()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skipDouble()V

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasString()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skipString()V

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasRaw()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skipRaw()V

    goto :goto_0

    .line 110
    :cond_5
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasList()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skipList()V

    goto :goto_0

    .line 111
    :cond_6
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasDictionary()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skipDictionary()V

    :goto_0
    return-void

    .line 112
    :cond_7
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public eof()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readLookahead()V

    .line 118
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    return v0
.end method

.method public hasBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readLookahead()V

    .line 148
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 149
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x10

    if-eq v0, v2, :cond_2

    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x11

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public hasDictionary()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readLookahead()V

    .line 371
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 372
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x70

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hasDictionaryEnd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasEnd()Z

    move-result v0

    return v0
.end method

.method public hasDouble()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readLookahead()V

    .line 221
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 222
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x38

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hasList()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readLookahead()V

    .line 314
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 315
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x60

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hasListEnd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasEnd()Z

    move-result v0

    return v0
.end method

.method public hasLong()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readLookahead()V

    .line 169
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 170
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x21

    if-eq v0, v2, :cond_2

    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x22

    if-eq v0, v2, :cond_2

    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x24

    if-eq v0, v2, :cond_2

    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x28

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public hasNull()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readLookahead()V

    .line 129
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 130
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hasRaw()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readLookahead()V

    .line 279
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 280
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x51

    if-eq v0, v2, :cond_2

    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x52

    if-eq v0, v2, :cond_2

    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x54

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public hasString()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readLookahead()V

    .line 245
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->eof:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 246
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x41

    if-eq v0, v2, :cond_2

    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x42

    if-eq v0, v2, :cond_2

    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v2, 0x44

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    iput-boolean v2, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return v0

    .line 154
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public readDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 377
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public readDictionaryEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readEnd()V

    return-void
.end method

.method public readDictionaryStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasDictionary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 393
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public readDouble()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasDouble()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    const/16 v1, 0x8

    .line 229
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readIntoBuffer(I)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 231
    iget-object v4, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    aget-byte v4, v4, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v0, 0x8

    rsub-int/lit8 v6, v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 227
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public readList()Lorg/briarproject/bramble/api/data/BdfList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 320
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    return-object v0
.end method

.method public readListEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readEnd()V

    return-void
.end method

.method public readListStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 335
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLong()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    .line 178
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readInt8()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 179
    :cond_0
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readInt16()S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 180
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readInt32()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 181
    :cond_2
    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readInt64()J

    move-result-wide v0

    return-wide v0

    .line 176
    :cond_3
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public readNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 135
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public readRaw()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasRaw()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    .line 287
    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readRawLength()I

    move-result v0

    if-ltz v0, :cond_1

    .line 288
    iget v1, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->maxBufferSize:I

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 289
    sget-object v0, Lorg/briarproject/bramble/data/BdfReaderImpl;->EMPTY_BUFFER:[B

    return-object v0

    .line 290
    :cond_0
    new-array v1, v0, [B

    .line 291
    invoke-direct {p0, v1, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readIntoBuffer([BI)V

    return-object v1

    .line 288
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0

    .line 285
    :cond_2
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasString()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    .line 253
    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readStringLength()I

    move-result v1

    if-ltz v1, :cond_1

    .line 254
    iget v2, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->maxBufferSize:I

    if-gt v1, v2, :cond_1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 256
    :cond_0
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readIntoBuffer(I)V

    .line 257
    iget-object v2, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->buf:[B

    invoke-static {v2, v0, v1}, Lorg/briarproject/bramble/util/StringUtils;->fromUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0

    .line 251
    :cond_2
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public skipBoolean()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 162
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public skipDictionary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasDictionary()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    .line 411
    :goto_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasDictionaryEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skipString()V

    .line 413
    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skipObject()V

    goto :goto_0

    .line 415
    :cond_0
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 409
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public skipDouble()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasDouble()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 238
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skip(I)V

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 237
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public skipList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasList()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    .line 364
    :goto_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasListEnd()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skipObject()V

    goto :goto_0

    .line 365
    :cond_0
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 362
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public skipLong()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLong()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skip(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skip(I)V

    goto :goto_0

    .line 213
    :cond_1
    iget-byte v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->next:B

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skip(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 214
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skip(I)V

    :goto_0
    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 210
    :cond_3
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public skipNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 141
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public skipRaw()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasRaw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readRawLength()I

    move-result v0

    if-ltz v0, :cond_0

    .line 307
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skip(I)V

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 306
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0

    .line 304
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public skipString()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-direct {p0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->readStringLength()I

    move-result v0

    if-ltz v0, :cond_0

    .line 272
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfReaderImpl;->skip(I)V

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lorg/briarproject/bramble/data/BdfReaderImpl;->hasLookahead:Z

    return-void

    .line 271
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0

    .line 269
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method
