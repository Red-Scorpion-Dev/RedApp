.class Lorg/h2/mvstore/StreamStore$Stream;
.super Ljava/io/InputStream;
.source "StreamStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/StreamStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stream"
.end annotation


# instance fields
.field private buffer:Ljava/io/ByteArrayInputStream;

.field private idBuffer:Ljava/nio/ByteBuffer;

.field private final length:J

.field private oneByteBuffer:[B

.field private pos:J

.field private skip:J

.field private final store:Lorg/h2/mvstore/StreamStore;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/StreamStore;[B)V
    .locals 2

    .line 456
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 457
    iput-object p1, p0, Lorg/h2/mvstore/StreamStore$Stream;->store:Lorg/h2/mvstore/StreamStore;

    .line 458
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/StreamStore;->length([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->length:J

    .line 459
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private nextBuffer()Ljava/io/ByteArrayInputStream;
    .locals 7

    .line 530
    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    .line 573
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unsupported id {0}"

    invoke-static {v1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 557
    :pswitch_0
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 558
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 559
    iget-wide v4, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    .line 560
    iget-wide v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    goto :goto_0

    .line 563
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->store:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {v0, v2, v3}, Lorg/h2/mvstore/StreamStore;->getBlock(J)[B

    move-result-object v0

    .line 564
    array-length v1, v0

    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 566
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 567
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 568
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 569
    iput-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 570
    invoke-direct {p0}, Lorg/h2/mvstore/StreamStore$Stream;->nextBuffer()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0

    .line 545
    :pswitch_1
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 546
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 547
    iget-wide v3, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 548
    iget-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    goto/16 :goto_0

    .line 551
    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->store:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {v0, v1, v2}, Lorg/h2/mvstore/StreamStore;->getBlock(J)[B

    move-result-object v0

    .line 552
    iget-wide v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    long-to-int v1, v1

    const-wide/16 v2, 0x0

    .line 553
    iput-wide v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 554
    new-instance v2, Ljava/io/ByteArrayInputStream;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v2

    .line 533
    :pswitch_2
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 534
    iget-wide v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 535
    iget-wide v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 536
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 539
    :cond_2
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    iget-wide v5, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    add-long/2addr v0, v5

    long-to-int v0, v0

    .line 540
    iget-wide v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    sub-long/2addr v3, v1

    long-to-int v1, v3

    .line 541
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 542
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v2

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    .line 496
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 497
    iget-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->length:J

    iput-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->oneByteBuffer:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 466
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->oneByteBuffer:[B

    :cond_0
    const/4 v2, 0x0

    .line 468
    invoke-virtual {p0, v0, v2, v1}, Lorg/h2/mvstore/StreamStore$Stream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 469
    :cond_1
    aget-byte v0, v0, v2

    and-int/lit16 v3, v0, 0xff

    :goto_0
    return v3
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    .line 506
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    if-nez v1, :cond_1

    .line 508
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/StreamStore$Stream;->nextBuffer()Ljava/io/ByteArrayInputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    if-nez v1, :cond_1

    const/4 p1, -0x1

    return p1

    :catch_0
    move-exception p1

    const/16 p2, 0x32

    const/4 p3, 0x1

    .line 510
    new-array p3, p3, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "Block not found in id {0}"

    invoke-static {p2, v0, p3}, Lorg/h2/mvstore/DataUtils;->formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 514
    new-instance p3, Ljava/io/IOException;

    invoke-direct {p3, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 520
    :cond_1
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_2

    .line 522
    iget-wide p1, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    return v1

    :cond_2
    const/4 v1, 0x0

    .line 525
    iput-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    goto :goto_0
.end method

.method public skip(J)J
    .locals 5

    .line 474
    iget-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->length:J

    iget-wide v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 478
    :cond_0
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    if-eqz v2, :cond_2

    .line 479
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    move-wide p1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 483
    iput-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    .line 484
    iget-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    goto :goto_0

    .line 487
    :cond_2
    iget-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 489
    :goto_0
    iget-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    return-wide p1
.end method
