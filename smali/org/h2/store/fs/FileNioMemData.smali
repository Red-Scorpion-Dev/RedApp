.class Lorg/h2/store/fs/FileNioMemData;
.super Ljava/lang/Object;
.source "FilePathNioMem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/fs/FileNioMemData$CompressItem;,
        Lorg/h2/store/fs/FileNioMemData$Cache;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x10000

.field private static final BLOCK_SIZE_MASK:I = 0xffff

.field private static final BLOCK_SIZE_SHIFT:I = 0x10

.field private static final BUFFER:[B

.field private static final CACHE_SIZE:I = 0x8

.field private static final COMPRESSED_EMPTY_BLOCK:Ljava/nio/ByteBuffer;

.field private static final COMPRESS_LATER:Lorg/h2/store/fs/FileNioMemData$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/store/fs/FileNioMemData$Cache<",
            "Lorg/h2/store/fs/FileNioMemData$CompressItem;",
            "Lorg/h2/store/fs/FileNioMemData$CompressItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LZF:Lorg/h2/compress/CompressLZF;


# instance fields
.field private final compress:Z

.field private data:[Ljava/nio/ByteBuffer;

.field private isLockedExclusive:Z

.field private isReadOnly:Z

.field private lastModified:J

.field private length:J

.field private name:Ljava/lang/String;

.field private sharedLockCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 387
    new-instance v0, Lorg/h2/compress/CompressLZF;

    invoke-direct {v0}, Lorg/h2/compress/CompressLZF;-><init>()V

    sput-object v0, Lorg/h2/store/fs/FileNioMemData;->LZF:Lorg/h2/compress/CompressLZF;

    const/high16 v0, 0x20000

    .line 388
    new-array v0, v0, [B

    sput-object v0, Lorg/h2/store/fs/FileNioMemData;->BUFFER:[B

    .line 391
    new-instance v0, Lorg/h2/store/fs/FileNioMemData$Cache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/h2/store/fs/FileNioMemData$Cache;-><init>(I)V

    sput-object v0, Lorg/h2/store/fs/FileNioMemData;->COMPRESS_LATER:Lorg/h2/store/fs/FileNioMemData$Cache;

    const/high16 v0, 0x10000

    .line 404
    new-array v1, v0, [B

    .line 405
    sget-object v2, Lorg/h2/store/fs/FileNioMemData;->LZF:Lorg/h2/compress/CompressLZF;

    sget-object v3, Lorg/h2/store/fs/FileNioMemData;->BUFFER:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/h2/compress/CompressLZF;->compress([BI[BI)I

    move-result v0

    .line 406
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lorg/h2/store/fs/FileNioMemData;->COMPRESSED_EMPTY_BLOCK:Ljava/nio/ByteBuffer;

    .line 407
    sget-object v1, Lorg/h2/store/fs/FileNioMemData;->COMPRESSED_EMPTY_BLOCK:Ljava/nio/ByteBuffer;

    sget-object v2, Lorg/h2/store/fs/FileNioMemData;->BUFFER:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->name:Ljava/lang/String;

    .line 412
    iput-boolean p2, p0, Lorg/h2/store/fs/FileNioMemData;->compress:Z

    const/4 p1, 0x0

    .line 413
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/fs/FileNioMemData;->lastModified:J

    return-void
.end method

.method private changeLength(J)V
    .locals 3

    .line 592
    iput-wide p1, p0, Lorg/h2/store/fs/FileNioMemData;->length:J

    const-wide/32 v0, 0x10000

    .line 593
    invoke-static {p1, p2, v0, v1}, Lorg/h2/util/MathUtils;->roundUpLong(JJ)J

    move-result-wide p1

    const/16 v0, 0x10

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    .line 595
    iget-object p2, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    array-length p2, p2

    if-eq p1, p2, :cond_1

    .line 596
    new-array p2, p1, [Ljava/nio/ByteBuffer;

    .line 597
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    array-length v1, v1

    array-length v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 599
    sget-object v1, Lorg/h2/store/fs/FileNioMemData;->COMPRESSED_EMPTY_BLOCK:Ljava/nio/ByteBuffer;

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_0
    iput-object p2, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method static compress([Ljava/nio/ByteBuffer;I)V
    .locals 5

    .line 540
    aget-object v0, p0, p1

    .line 541
    sget-object v1, Lorg/h2/store/fs/FileNioMemData;->LZF:Lorg/h2/compress/CompressLZF;

    monitor-enter v1

    .line 542
    :try_start_0
    sget-object v2, Lorg/h2/store/fs/FileNioMemData;->LZF:Lorg/h2/compress/CompressLZF;

    sget-object v3, Lorg/h2/store/fs/FileNioMemData;->BUFFER:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3, v4}, Lorg/h2/compress/CompressLZF;->compress(Ljava/nio/ByteBuffer;I[BI)I

    move-result v0

    .line 543
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 544
    sget-object v3, Lorg/h2/store/fs/FileNioMemData;->BUFFER:[B

    invoke-virtual {v2, v3, v4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 545
    aput-object v2, p0, p1

    .line 546
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static compressLater([Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 510
    new-instance v0, Lorg/h2/store/fs/FileNioMemData$CompressItem;

    invoke-direct {v0}, Lorg/h2/store/fs/FileNioMemData$CompressItem;-><init>()V

    .line 511
    iput-object p0, v0, Lorg/h2/store/fs/FileNioMemData$CompressItem;->data:[Ljava/nio/ByteBuffer;

    .line 512
    iput p1, v0, Lorg/h2/store/fs/FileNioMemData$CompressItem;->page:I

    .line 513
    sget-object p0, Lorg/h2/store/fs/FileNioMemData;->LZF:Lorg/h2/compress/CompressLZF;

    monitor-enter p0

    .line 514
    :try_start_0
    sget-object p1, Lorg/h2/store/fs/FileNioMemData;->COMPRESS_LATER:Lorg/h2/store/fs/FileNioMemData$Cache;

    invoke-virtual {p1, v0, v0}, Lorg/h2/store/fs/FileNioMemData$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static expand([Ljava/nio/ByteBuffer;I)V
    .locals 4

    .line 519
    aget-object v0, p0, p1

    .line 520
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 524
    sget-object v2, Lorg/h2/store/fs/FileNioMemData;->COMPRESSED_EMPTY_BLOCK:Ljava/nio/ByteBuffer;

    if-eq v0, v2, :cond_1

    .line 525
    sget-object v2, Lorg/h2/store/fs/FileNioMemData;->LZF:Lorg/h2/compress/CompressLZF;

    monitor-enter v2

    const/4 v3, 0x0

    .line 526
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 527
    invoke-static {v0, v1}, Lorg/h2/compress/CompressLZF;->expand(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 528
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 530
    :cond_1
    :goto_0
    aput-object v1, p0, p1

    return-void
.end method


# virtual methods
.method canWrite()Z
    .locals 1

    .line 689
    iget-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isReadOnly:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getLastModified()J
    .locals 2

    .line 680
    iget-wide v0, p0, Lorg/h2/store/fs/FileNioMemData;->lastModified:J

    return-wide v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMemData;->name:Ljava/lang/String;

    return-object v0
.end method

.method length()J
    .locals 2

    .line 567
    iget-wide v0, p0, Lorg/h2/store/fs/FileNioMemData;->length:J

    return-wide v0
.end method

.method declared-synchronized lockExclusive()Z
    .locals 1

    monitor-enter p0

    .line 423
    :try_start_0
    iget v0, p0, Lorg/h2/store/fs/FileNioMemData;->sharedLockCount:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isLockedExclusive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 426
    iput-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isLockedExclusive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 424
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 422
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized lockShared()Z
    .locals 2

    monitor-enter p0

    .line 436
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isLockedExclusive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 437
    monitor-exit p0

    return v0

    .line 439
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/h2/store/fs/FileNioMemData;->sharedLockCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/store/fs/FileNioMemData;->sharedLockCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 435
    monitor-exit p0

    throw v0
.end method

.method readWrite(JLjava/nio/ByteBuffer;IIZ)J
    .locals 6

    int-to-long v0, p5

    add-long/2addr v0, p1

    .line 617
    iget-wide v2, p0, Lorg/h2/store/fs/FileNioMemData;->length:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    if-eqz p6, :cond_0

    .line 619
    invoke-direct {p0, v0, v1}, Lorg/h2/store/fs/FileNioMemData;->changeLength(J)V

    goto :goto_0

    .line 621
    :cond_0
    iget-wide v0, p0, Lorg/h2/store/fs/FileNioMemData;->length:J

    sub-long/2addr v0, p1

    long-to-int p5, v0

    :cond_1
    :goto_0
    if-lez p5, :cond_4

    int-to-long v0, p5

    const-wide/32 v2, 0x10000

    const-wide/32 v4, 0xffff

    and-long/2addr v4, p1

    sub-long/2addr v2, v4

    .line 625
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    long-to-int v1, v1

    .line 627
    iget-object v2, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    invoke-static {v2, v1}, Lorg/h2/store/fs/FileNioMemData;->expand([Ljava/nio/ByteBuffer;I)V

    .line 628
    iget-object v2, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    long-to-int v3, v4

    if-eqz p6, :cond_2

    .line 631
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 632
    invoke-virtual {v4, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int v5, p4, v0

    .line 633
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 634
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 635
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 637
    :cond_2
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 638
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 639
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 640
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 641
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 642
    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 644
    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 646
    :goto_1
    iget-boolean v2, p0, Lorg/h2/store/fs/FileNioMemData;->compress:Z

    if-eqz v2, :cond_3

    .line 647
    iget-object v2, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    invoke-static {v2, v1}, Lorg/h2/store/fs/FileNioMemData;->compressLater([Ljava/nio/ByteBuffer;I)V

    :cond_3
    add-int/2addr p4, v0

    int-to-long v1, v0

    add-long/2addr p1, v1

    sub-int/2addr p5, v0

    goto :goto_0

    :cond_4
    return-wide p1
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->name:Ljava/lang/String;

    return-void
.end method

.method setReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    .line 698
    iput-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isReadOnly:Z

    return v0
.end method

.method touch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    iget-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isReadOnly:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileNioMemData;->lastModified:J

    return-void

    .line 556
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Read only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method truncate(J)V
    .locals 4

    .line 576
    invoke-direct {p0, p1, p2}, Lorg/h2/store/fs/FileNioMemData;->changeLength(J)V

    const-wide/32 v0, 0x10000

    .line 577
    invoke-static {p1, p2, v0, v1}, Lorg/h2/util/MathUtils;->roundUpLong(JJ)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    .line 580
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lorg/h2/store/fs/FileNioMemData;->expand([Ljava/nio/ByteBuffer;I)V

    .line 581
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    const-wide/32 v2, 0xffff

    and-long/2addr p1, v2

    long-to-int p1, p1

    :goto_0
    const/high16 p2, 0x10000

    if-ge p1, p2, :cond_0

    const/4 p2, 0x0

    .line 583
    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 585
    :cond_0
    iget-boolean p1, p0, Lorg/h2/store/fs/FileNioMemData;->compress:Z

    if-eqz p1, :cond_1

    .line 586
    iget-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->data:[Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lorg/h2/store/fs/FileNioMemData;->compressLater([Ljava/nio/ByteBuffer;I)V

    :cond_1
    return-void
.end method

.method declared-synchronized unlock()V
    .locals 2

    monitor-enter p0

    .line 447
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isLockedExclusive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 448
    iput-boolean v1, p0, Lorg/h2/store/fs/FileNioMemData;->isLockedExclusive:Z

    goto :goto_0

    .line 450
    :cond_0
    iget v0, p0, Lorg/h2/store/fs/FileNioMemData;->sharedLockCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/h2/store/fs/FileNioMemData;->sharedLockCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 446
    monitor-exit p0

    throw v0
.end method
