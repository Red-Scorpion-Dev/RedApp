.class Lorg/h2/store/fs/FileMemData;
.super Ljava/lang/Object;
.source "FilePathMem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/fs/FileMemData$CompressItem;,
        Lorg/h2/store/fs/FileMemData$Cache;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x400

.field private static final BLOCK_SIZE_MASK:I = 0x3ff

.field private static final BLOCK_SIZE_SHIFT:I = 0xa

.field private static final BUFFER:[B

.field private static final CACHE_SIZE:I = 0x8

.field private static final COMPRESSED_EMPTY_BLOCK:[B

.field private static final COMPRESS_LATER:Lorg/h2/store/fs/FileMemData$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/store/fs/FileMemData$Cache<",
            "Lorg/h2/store/fs/FileMemData$CompressItem;",
            "Lorg/h2/store/fs/FileMemData$CompressItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LZF:Lorg/h2/compress/CompressLZF;


# instance fields
.field private final compress:Z

.field private data:[[B

.field private isLockedExclusive:Z

.field private isReadOnly:Z

.field private lastModified:J

.field private length:J

.field private name:Ljava/lang/String;

.field private sharedLockCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 394
    new-instance v0, Lorg/h2/compress/CompressLZF;

    invoke-direct {v0}, Lorg/h2/compress/CompressLZF;-><init>()V

    sput-object v0, Lorg/h2/store/fs/FileMemData;->LZF:Lorg/h2/compress/CompressLZF;

    const/16 v0, 0x800

    .line 395
    new-array v0, v0, [B

    sput-object v0, Lorg/h2/store/fs/FileMemData;->BUFFER:[B

    .line 398
    new-instance v0, Lorg/h2/store/fs/FileMemData$Cache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/h2/store/fs/FileMemData$Cache;-><init>(I)V

    sput-object v0, Lorg/h2/store/fs/FileMemData;->COMPRESS_LATER:Lorg/h2/store/fs/FileMemData$Cache;

    const/16 v0, 0x400

    .line 411
    new-array v1, v0, [B

    .line 412
    sget-object v2, Lorg/h2/store/fs/FileMemData;->LZF:Lorg/h2/compress/CompressLZF;

    sget-object v3, Lorg/h2/store/fs/FileMemData;->BUFFER:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/h2/compress/CompressLZF;->compress([BI[BI)I

    move-result v0

    .line 413
    new-array v1, v0, [B

    sput-object v1, Lorg/h2/store/fs/FileMemData;->COMPRESSED_EMPTY_BLOCK:[B

    .line 414
    sget-object v1, Lorg/h2/store/fs/FileMemData;->BUFFER:[B

    sget-object v2, Lorg/h2/store/fs/FileMemData;->COMPRESSED_EMPTY_BLOCK:[B

    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lorg/h2/store/fs/FileMemData;->name:Ljava/lang/String;

    .line 419
    iput-boolean p2, p0, Lorg/h2/store/fs/FileMemData;->compress:Z

    const/4 p1, 0x0

    .line 420
    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/fs/FileMemData;->lastModified:J

    return-void
.end method

.method private changeLength(J)V
    .locals 3

    .line 600
    iput-wide p1, p0, Lorg/h2/store/fs/FileMemData;->length:J

    const-wide/16 v0, 0x400

    .line 601
    invoke-static {p1, p2, v0, v1}, Lorg/h2/util/MathUtils;->roundUpLong(JJ)J

    move-result-wide p1

    const/16 v0, 0xa

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    .line 603
    iget-object p2, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    array-length p2, p2

    if-eq p1, p2, :cond_1

    .line 604
    new-array p2, p1, [[B

    .line 605
    iget-object v0, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    iget-object v1, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    array-length v1, v1

    array-length v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 606
    iget-object v0, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    array-length v0, v0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 607
    sget-object v1, Lorg/h2/store/fs/FileMemData;->COMPRESSED_EMPTY_BLOCK:[B

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :cond_0
    iput-object p2, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    :cond_1
    return-void
.end method

.method static compress([[BI)V
    .locals 6

    .line 546
    aget-object v0, p0, p1

    .line 547
    sget-object v1, Lorg/h2/store/fs/FileMemData;->LZF:Lorg/h2/compress/CompressLZF;

    monitor-enter v1

    .line 548
    :try_start_0
    sget-object v2, Lorg/h2/store/fs/FileMemData;->LZF:Lorg/h2/compress/CompressLZF;

    sget-object v3, Lorg/h2/store/fs/FileMemData;->BUFFER:[B

    const/16 v4, 0x400

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v4, v3, v5}, Lorg/h2/compress/CompressLZF;->compress([BI[BI)I

    move-result v0

    if-gt v0, v4, :cond_0

    .line 550
    new-array v2, v0, [B

    .line 551
    sget-object v3, Lorg/h2/store/fs/FileMemData;->BUFFER:[B

    invoke-static {v3, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 552
    aput-object v2, p0, p1

    .line 554
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static compressLater([[BI)V
    .locals 1

    .line 517
    new-instance v0, Lorg/h2/store/fs/FileMemData$CompressItem;

    invoke-direct {v0}, Lorg/h2/store/fs/FileMemData$CompressItem;-><init>()V

    .line 518
    iput-object p0, v0, Lorg/h2/store/fs/FileMemData$CompressItem;->data:[[B

    .line 519
    iput p1, v0, Lorg/h2/store/fs/FileMemData$CompressItem;->page:I

    .line 520
    sget-object p0, Lorg/h2/store/fs/FileMemData;->LZF:Lorg/h2/compress/CompressLZF;

    monitor-enter p0

    .line 521
    :try_start_0
    sget-object p1, Lorg/h2/store/fs/FileMemData;->COMPRESS_LATER:Lorg/h2/store/fs/FileMemData$Cache;

    invoke-virtual {p1, v0, v0}, Lorg/h2/store/fs/FileMemData$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static expand([[BI)V
    .locals 9

    .line 526
    aget-object v1, p0, p1

    .line 527
    array-length v0, v1

    const/16 v2, 0x400

    if-ne v0, v2, :cond_0

    return-void

    .line 530
    :cond_0
    new-array v7, v2, [B

    .line 531
    sget-object v0, Lorg/h2/store/fs/FileMemData;->COMPRESSED_EMPTY_BLOCK:[B

    if-eq v1, v0, :cond_1

    .line 532
    sget-object v8, Lorg/h2/store/fs/FileMemData;->LZF:Lorg/h2/compress/CompressLZF;

    monitor-enter v8

    .line 533
    :try_start_0
    sget-object v0, Lorg/h2/store/fs/FileMemData;->LZF:Lorg/h2/compress/CompressLZF;

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v5, 0x0

    const/16 v6, 0x400

    move-object v4, v7

    invoke-virtual/range {v0 .. v6}, Lorg/h2/compress/CompressLZF;->expand([BII[BII)V

    .line 534
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 536
    :cond_1
    :goto_0
    aput-object v7, p0, p1

    return-void
.end method


# virtual methods
.method canWrite()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isReadOnly:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getLastModified()J
    .locals 2

    .line 677
    iget-wide v0, p0, Lorg/h2/store/fs/FileMemData;->lastModified:J

    return-wide v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/h2/store/fs/FileMemData;->name:Ljava/lang/String;

    return-object v0
.end method

.method length()J
    .locals 2

    .line 575
    iget-wide v0, p0, Lorg/h2/store/fs/FileMemData;->length:J

    return-wide v0
.end method

.method declared-synchronized lockExclusive()Z
    .locals 1

    monitor-enter p0

    .line 430
    :try_start_0
    iget v0, p0, Lorg/h2/store/fs/FileMemData;->sharedLockCount:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isLockedExclusive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isLockedExclusive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 431
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 429
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized lockShared()Z
    .locals 2

    monitor-enter p0

    .line 443
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isLockedExclusive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 444
    monitor-exit p0

    return v0

    .line 446
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/h2/store/fs/FileMemData;->sharedLockCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/store/fs/FileMemData;->sharedLockCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 442
    monitor-exit p0

    throw v0
.end method

.method readWrite(J[BIIZ)J
    .locals 6

    int-to-long v0, p5

    add-long/2addr v0, p1

    .line 625
    iget-wide v2, p0, Lorg/h2/store/fs/FileMemData;->length:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    if-eqz p6, :cond_0

    .line 627
    invoke-direct {p0, v0, v1}, Lorg/h2/store/fs/FileMemData;->changeLength(J)V

    goto :goto_0

    .line 629
    :cond_0
    iget-wide v0, p0, Lorg/h2/store/fs/FileMemData;->length:J

    sub-long/2addr v0, p1

    long-to-int p5, v0

    :cond_1
    :goto_0
    if-lez p5, :cond_4

    int-to-long v0, p5

    const-wide/16 v2, 0x400

    const-wide/16 v4, 0x3ff

    and-long/2addr v4, p1

    sub-long/2addr v2, v4

    .line 633
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0xa

    ushr-long v1, p1, v1

    long-to-int v1, v1

    .line 635
    iget-object v2, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    invoke-static {v2, v1}, Lorg/h2/store/fs/FileMemData;->expand([[BI)V

    .line 636
    iget-object v2, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    aget-object v2, v2, v1

    long-to-int v3, v4

    if-eqz p6, :cond_2

    .line 639
    invoke-static {p3, p4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 641
    :cond_2
    invoke-static {v2, v3, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    :goto_1
    iget-boolean v2, p0, Lorg/h2/store/fs/FileMemData;->compress:Z

    if-eqz v2, :cond_3

    .line 644
    iget-object v2, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    invoke-static {v2, v1}, Lorg/h2/store/fs/FileMemData;->compressLater([[BI)V

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

    .line 659
    iput-object p1, p0, Lorg/h2/store/fs/FileMemData;->name:Ljava/lang/String;

    return-void
.end method

.method setReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    .line 695
    iput-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isReadOnly:Z

    return v0
.end method

.method touch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isReadOnly:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileMemData;->lastModified:J

    return-void

    .line 564
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Read only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method truncate(J)V
    .locals 4

    .line 584
    invoke-direct {p0, p1, p2}, Lorg/h2/store/fs/FileMemData;->changeLength(J)V

    const-wide/16 v0, 0x400

    .line 585
    invoke-static {p1, p2, v0, v1}, Lorg/h2/util/MathUtils;->roundUpLong(JJ)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    const/16 v0, 0xa

    ushr-long v0, p1, v0

    long-to-int v0, v0

    .line 588
    iget-object v1, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    invoke-static {v1, v0}, Lorg/h2/store/fs/FileMemData;->expand([[BI)V

    .line 589
    iget-object v1, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    aget-object v1, v1, v0

    const-wide/16 v2, 0x3ff

    and-long/2addr p1, v2

    long-to-int p1, p1

    :goto_0
    const/16 p2, 0x400

    if-ge p1, p2, :cond_0

    const/4 p2, 0x0

    .line 591
    aput-byte p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 593
    :cond_0
    iget-boolean p1, p0, Lorg/h2/store/fs/FileMemData;->compress:Z

    if-eqz p1, :cond_1

    .line 594
    iget-object p1, p0, Lorg/h2/store/fs/FileMemData;->data:[[B

    invoke-static {p1, v0}, Lorg/h2/store/fs/FileMemData;->compressLater([[BI)V

    :cond_1
    return-void
.end method

.method declared-synchronized unlock()V
    .locals 2

    monitor-enter p0

    .line 454
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isLockedExclusive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    iput-boolean v1, p0, Lorg/h2/store/fs/FileMemData;->isLockedExclusive:Z

    goto :goto_0

    .line 457
    :cond_0
    iget v0, p0, Lorg/h2/store/fs/FileMemData;->sharedLockCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/h2/store/fs/FileMemData;->sharedLockCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 453
    monitor-exit p0

    throw v0
.end method
