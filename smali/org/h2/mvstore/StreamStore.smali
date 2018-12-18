.class public Lorg/h2/mvstore/StreamStore;
.super Ljava/lang/Object;
.source "StreamStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/StreamStore$Stream;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private maxBlockSize:I

.field private minBlockSize:I

.field private final nextBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private final nextKey:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[B>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 40
    iput v0, p0, Lorg/h2/mvstore/StreamStore;->minBlockSize:I

    const/high16 v0, 0x40000

    .line 41
    iput v0, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/StreamStore;->nextKey:Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/StreamStore;->nextBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    iput-object p1, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    return-void
.end method

.method private getAndIncrementNextKey()J
    .locals 10

    .line 219
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore;->nextKey:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 220
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    .line 224
    :cond_0
    monitor-enter p0

    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    add-long v6, v0, v2

    const/4 v8, 0x1

    ushr-long/2addr v6, v8

    .line 228
    :try_start_0
    iget-object v8, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-long/2addr v6, v4

    move-wide v0, v6

    goto :goto_0

    :cond_1
    move-wide v2, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 235
    :cond_2
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore;->nextKey:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v3, 0x0

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 236
    monitor-exit p0

    return-wide v0

    .line 237
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private put(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lez p3, :cond_2

    .line 125
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    add-int/lit8 v2, p3, -0x1

    .line 127
    invoke-direct {p0, v1, p2, v2}, Lorg/h2/mvstore/StreamStore;->put(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;I)Z

    move-result v2

    .line 128
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget v4, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    .line 129
    invoke-direct {p0, v1}, Lorg/h2/mvstore/StreamStore;->putIndirectId(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    .line 130
    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return v2

    :cond_1
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return v0

    .line 138
    :cond_2
    iget-object p3, p0, Lorg/h2/mvstore/StreamStore;->nextBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    if-nez p3, :cond_3

    .line 140
    iget p3, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    new-array p3, p3, [B

    .line 142
    :cond_3
    invoke-static {p2, p3}, Lorg/h2/mvstore/StreamStore;->read(Ljava/io/InputStream;[B)[B

    move-result-object p2

    if-eq p2, p3, :cond_4

    .line 145
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore;->nextBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 147
    :cond_4
    array-length p3, p2

    if-nez p3, :cond_5

    return v0

    .line 151
    :cond_5
    iget v1, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    const/4 v2, 0x0

    if-ge p3, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 152
    :goto_0
    iget v3, p0, Lorg/h2/mvstore/StreamStore;->minBlockSize:I

    if-ge p3, v3, :cond_7

    .line 154
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 155
    invoke-static {p1, p3}, Lorg/h2/mvstore/DataUtils;->writeVarInt(Ljava/io/OutputStream;I)V

    .line 156
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 159
    :cond_7
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 160
    invoke-static {p1, p3}, Lorg/h2/mvstore/DataUtils;->writeVarInt(Ljava/io/OutputStream;I)V

    .line 161
    invoke-direct {p0, p2}, Lorg/h2/mvstore/StreamStore;->writeBlock([B)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/h2/mvstore/DataUtils;->writeVarLong(Ljava/io/OutputStream;J)V

    :goto_1
    return v1
.end method

.method private putIndirectId(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 188
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x2

    .line 190
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 191
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/StreamStore;->length([B)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->writeVarLong(Ljava/io/OutputStream;J)V

    .line 192
    invoke-direct {p0, p1}, Lorg/h2/mvstore/StreamStore;->writeBlock([B)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->writeVarLong(Ljava/io/OutputStream;J)V

    return-object v0
.end method

.method private static read(Ljava/io/InputStream;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 172
    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    .line 174
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 179
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-object p1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 7

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 328
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "error"

    .line 354
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 348
    :pswitch_0
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 349
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 350
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    const-string v6, "indirect block "

    .line 351
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " len="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 341
    :pswitch_1
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 343
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    const-string v6, "block "

    .line 344
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " len="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 334
    :pswitch_2
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 335
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v4, "data len="

    .line 336
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_1
    const-string v3, ", "

    .line 356
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "length="

    .line 358
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeBlock([B)J
    .locals 4

    .line 197
    invoke-direct {p0}, Lorg/h2/mvstore/StreamStore;->getAndIncrementNextKey()J

    move-result-wide v0

    .line 198
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    array-length p1, p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/StreamStore;->onStore(I)V

    return-wide v0
.end method


# virtual methods
.method public get([B)Ljava/io/InputStream;
    .locals 1

    .line 424
    new-instance v0, Lorg/h2/mvstore/StreamStore$Stream;

    invoke-direct {v0, p0, p1}, Lorg/h2/mvstore/StreamStore$Stream;-><init>(Lorg/h2/mvstore/StreamStore;[B)V

    return-object v0
.end method

.method getBlock(J)[B
    .locals 3

    .line 434
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x32

    const/4 v1, 0x1

    .line 436
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Block {0} not found"

    invoke-static {v0, p1, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxBlockKey([B)J
    .locals 8

    .line 249
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 250
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x1

    .line 276
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Unsupported id {0}"

    invoke-static {p1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 265
    :pswitch_0
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 266
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 268
    iget-object v3, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 270
    invoke-virtual {p0, v3}, Lorg/h2/mvstore/StreamStore;->getMaxBlockKey([B)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 272
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    .line 259
    :pswitch_1
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    .line 260
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    .line 261
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 255
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    return-wide v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaxBlockSize()J
    .locals 2

    .line 90
    iget v0, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinBlockSize()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/h2/mvstore/StreamStore;->minBlockSize:I

    return v0
.end method

.method public getNextKey()J
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore;->nextKey:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public isInPlace([B)Z
    .locals 2

    .line 406
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 407
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 411
    :cond_0
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 412
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public length([B)J
    .locals 5

    .line 370
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 372
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x1

    .line 391
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Unsupported id {0}"

    invoke-static {p1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 387
    :pswitch_0
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 388
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    goto :goto_0

    .line 382
    :pswitch_1
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 383
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    goto :goto_0

    .line 376
    :pswitch_2
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 377
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStore(I)V
    .locals 0

    return-void
.end method

.method public put(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 104
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0, v0, p1, v1}, Lorg/h2/mvstore/StreamStore;->put(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget v1, p0, Lorg/h2/mvstore/StreamStore;->minBlockSize:I

    mul-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_1

    .line 117
    invoke-direct {p0, v0}, Lorg/h2/mvstore/StreamStore;->putIndirectId(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 107
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget v3, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_0

    .line 108
    invoke-direct {p0, v0}, Lorg/h2/mvstore/StreamStore;->putIndirectId(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/mvstore/StreamStore;->remove([B)V

    .line 114
    throw p1
.end method

.method public remove([B)V
    .locals 5

    .line 289
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 290
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x1

    .line 312
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Unsupported id {0}"

    invoke-static {p1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 305
    :pswitch_0
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 306
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 308
    iget-object v3, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p0, v3}, Lorg/h2/mvstore/StreamStore;->remove([B)V

    .line 309
    iget-object v3, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 299
    :pswitch_1
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    .line 300
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 301
    iget-object v3, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 294
    :pswitch_2
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 295
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxBlockSize(I)V
    .locals 0

    .line 86
    iput p1, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    return-void
.end method

.method public setMinBlockSize(I)V
    .locals 0

    .line 73
    iput p1, p0, Lorg/h2/mvstore/StreamStore;->minBlockSize:I

    return-void
.end method

.method public setNextKey(J)V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore;->nextKey:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
