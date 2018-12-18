.class public Lorg/h2/mvstore/WriteBuffer;
.super Ljava/lang/Object;
.source "WriteBuffer.java"


# static fields
.field private static final MAX_REUSE_CAPACITY:I = 0x400000

.field private static final MIN_GROW:I = 0x100000


# instance fields
.field private buff:Ljava/nio/ByteBuffer;

.field private reuse:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x100000

    .line 42
    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->reuse:Ljava/nio/ByteBuffer;

    .line 38
    iget-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->reuse:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private ensureCapacity(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 314
    invoke-direct {p0, p1}, Lorg/h2/mvstore/WriteBuffer;->grow(I)V

    .line 316
    :cond_0
    iget-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private grow(I)V
    .locals 5

    .line 320
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    .line 321
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int/2addr p1, v1

    const/high16 v1, 0x100000

    .line 323
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    .line 325
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 327
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v1

    const-wide/32 v1, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    if-lt v1, p1, :cond_1

    .line 332
    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 337
    iget-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/high16 p1, 0x400000

    if-gt v1, p1, :cond_0

    .line 339
    iget-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->reuse:Ljava/nio/ByteBuffer;

    :cond_0
    return-void

    .line 334
    :catch_0
    new-instance p1, Ljava/lang/OutOfMemoryError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capacity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " needed: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()Lorg/h2/mvstore/WriteBuffer;
    .locals 2

    .line 294
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/high16 v1, 0x400000

    if-le v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->reuse:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/h2/mvstore/WriteBuffer;->reuse:Ljava/nio/ByteBuffer;

    if-eq v0, v1, :cond_1

    .line 297
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->reuse:Ljava/nio/ByteBuffer;

    .line 299
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public get([B)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public limit()I
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public limit(I)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public position()I
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public put(B)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put(Ljava/nio/ByteBuffer;)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put([B)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 176
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put([BII)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 189
    invoke-direct {p0, p3}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putChar(C)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 110
    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putDouble(D)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/16 v0, 0x8

    .line 165
    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putFloat(F)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 154
    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putInt(I)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 132
    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putInt(II)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putLong(J)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/16 v0, 0x8

    .line 143
    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putShort(IS)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putShort(S)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 121
    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putStringData(Ljava/lang/String;I)Lorg/h2/mvstore/WriteBuffer;
    .locals 4

    mul-int/lit8 v0, p2, 0x3

    .line 75
    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    int-to-byte v2, v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    const/16 v3, 0x800

    if-lt v2, v3, :cond_1

    shr-int/lit8 v3, v2, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    .line 81
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    .line 82
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    .line 83
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    shr-int/lit8 v3, v2, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    .line 85
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public putVarInt(I)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/4 v0, 0x5

    .line 52
    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/h2/mvstore/DataUtils;->writeVarInt(Ljava/nio/ByteBuffer;I)V

    return-object p0
.end method

.method public putVarLong(J)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/16 v0, 0xa

    .line 63
    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/h2/mvstore/DataUtils;->writeVarLong(Ljava/nio/ByteBuffer;J)V

    return-object p0
.end method
