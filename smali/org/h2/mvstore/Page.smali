.class public Lorg/h2/mvstore/Page;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/Page$PageChildren;,
        Lorg/h2/mvstore/Page$PageReference;
    }
.end annotation


# static fields
.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;


# instance fields
.field private cachedCompare:I

.field private children:[Lorg/h2/mvstore/Page$PageReference;

.field private keys:[Ljava/lang/Object;

.field private final map:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "**>;"
        }
    .end annotation
.end field

.field private memory:I

.field private pos:J

.field private volatile removedInMemory:Z

.field private totalCount:J

.field private values:[Ljava/lang/Object;

.field private version:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/h2/mvstore/Page;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/h2/mvstore/MVMap;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;J)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    .line 90
    iput-wide p2, p0, Lorg/h2/mvstore/Page;->version:J

    return-void
.end method

.method private addMemory(I)V
    .locals 1

    .line 903
    iget v0, p0, Lorg/h2/mvstore/Page;->memory:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/mvstore/Page;->memory:I

    return-void
.end method

.method public static create(Lorg/h2/mvstore/MVMap;JLorg/h2/mvstore/Page;)Lorg/h2/mvstore/Page;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;J",
            "Lorg/h2/mvstore/Page;",
            ")",
            "Lorg/h2/mvstore/Page;"
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/h2/mvstore/Page;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/mvstore/Page;-><init>(Lorg/h2/mvstore/MVMap;J)V

    .line 151
    iget-object p1, p3, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    iput-object p1, v0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    .line 152
    iget-object p1, p3, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    iput-object p1, v0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    .line 153
    iget-object p1, p3, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    iput-object p1, v0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    .line 154
    iget-wide p1, p3, Lorg/h2/mvstore/Page;->totalCount:J

    iput-wide p1, v0, Lorg/h2/mvstore/Page;->totalCount:J

    .line 155
    iget p1, p3, Lorg/h2/mvstore/Page;->memory:I

    iput p1, v0, Lorg/h2/mvstore/Page;->memory:I

    .line 156
    iget-object p0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    if-eqz p0, :cond_0

    .line 158
    iget p1, v0, Lorg/h2/mvstore/Page;->memory:I

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVStore;->registerUnsavedPage(I)V

    :cond_0
    return-object v0
.end method

.method public static create(Lorg/h2/mvstore/MVMap;J[Ljava/lang/Object;[Ljava/lang/Object;[Lorg/h2/mvstore/Page$PageReference;JI)Lorg/h2/mvstore/Page;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;J[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Lorg/h2/mvstore/Page$PageReference;",
            "JI)",
            "Lorg/h2/mvstore/Page;"
        }
    .end annotation

    .line 122
    new-instance v0, Lorg/h2/mvstore/Page;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/mvstore/Page;-><init>(Lorg/h2/mvstore/MVMap;J)V

    .line 124
    iput-object p3, v0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    .line 125
    iput-object p4, v0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    .line 126
    iput-object p5, v0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    .line 127
    iput-wide p6, v0, Lorg/h2/mvstore/Page;->totalCount:J

    if-nez p8, :cond_0

    .line 129
    invoke-direct {v0}, Lorg/h2/mvstore/Page;->recalculateMemory()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {v0, p8}, Lorg/h2/mvstore/Page;->addMemory(I)V

    .line 133
    :goto_0
    iget-object p0, p0, Lorg/h2/mvstore/MVMap;->store:Lorg/h2/mvstore/MVStore;

    if-eqz p0, :cond_1

    .line 135
    iget p1, v0, Lorg/h2/mvstore/Page;->memory:I

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVStore;->registerUnsavedPage(I)V

    :cond_1
    return-object v0
.end method

.method static createEmpty(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;J)",
            "Lorg/h2/mvstore/Page;"
        }
    .end annotation

    .line 101
    sget-object v3, Lorg/h2/mvstore/Page;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    sget-object v4, Lorg/h2/mvstore/Page;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x80

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v8}, Lorg/h2/mvstore/Page;->create(Lorg/h2/mvstore/MVMap;J[Ljava/lang/Object;[Ljava/lang/Object;[Lorg/h2/mvstore/Page$PageReference;JI)Lorg/h2/mvstore/Page;

    move-result-object p0

    return-object p0
.end method

.method static read(Lorg/h2/mvstore/FileStore;JLorg/h2/mvstore/MVMap;JJ)Lorg/h2/mvstore/Page;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/FileStore;",
            "J",
            "Lorg/h2/mvstore/MVMap<",
            "**>;JJ)",
            "Lorg/h2/mvstore/Page;"
        }
    .end annotation

    .line 176
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageMaxLength(J)I

    move-result v0

    const/high16 v1, 0x200000

    if-ne v0, v1, :cond_0

    const/16 v0, 0x80

    .line 178
    invoke-virtual {p0, p4, p5, v0}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    sub-long v1, p6, p4

    int-to-long v3, v0

    .line 182
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    if-ltz v0, :cond_1

    .line 190
    invoke-virtual {p0, p4, p5, v0}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 191
    new-instance p4, Lorg/h2/mvstore/Page;

    const-wide/16 p5, 0x0

    invoke-direct {p4, p3, p5, p6}, Lorg/h2/mvstore/Page;-><init>(Lorg/h2/mvstore/MVMap;J)V

    .line 192
    iput-wide p1, p4, Lorg/h2/mvstore/Page;->pos:J

    .line 193
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result p3

    .line 194
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result p1

    .line 195
    invoke-virtual {p4, p0, p3, p1, v0}, Lorg/h2/mvstore/Page;->read(Ljava/nio/ByteBuffer;III)V

    return-object p4

    :cond_1
    const/4 p0, 0x6

    const/4 p1, 0x3

    .line 185
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "Illegal page length {0} reading at {1}; max pos {2} "

    invoke-static {p0, p2, p1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method private recalculateMemory()V
    .locals 5

    .line 908
    iget-object v0, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->getKeyType()Lorg/h2/mvstore/type/DataType;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v2, 0x0

    const/16 v3, 0x80

    .line 909
    :goto_0
    iget-object v4, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 910
    iget-object v4, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-interface {v0, v4}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 912
    :cond_0
    invoke-virtual {p0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->getValueType()Lorg/h2/mvstore/type/DataType;

    move-result-object v0

    .line 914
    :goto_1
    iget-object v2, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 915
    iget-object v2, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 918
    :cond_1
    invoke-virtual {p0}, Lorg/h2/mvstore/Page;->getRawChildPageCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v3, v0

    .line 920
    :cond_2
    iget v0, p0, Lorg/h2/mvstore/Page;->memory:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v3}, Lorg/h2/mvstore/Page;->addMemory(I)V

    return-void
.end method

.method private splitLeaf(I)Lorg/h2/mvstore/Page;
    .locals 11

    .line 375
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v0, v0

    sub-int/2addr v0, p1

    .line 376
    new-array v1, p1, [Ljava/lang/Object;

    .line 377
    new-array v5, v0, [Ljava/lang/Object;

    .line 378
    iget-object v2, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    iget-object v2, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    invoke-static {v2, p1, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iput-object v1, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    .line 381
    new-array v1, p1, [Ljava/lang/Object;

    .line 382
    new-array v2, v0, [Ljava/lang/Object;

    .line 383
    new-array v6, v0, [Ljava/lang/Object;

    .line 384
    iget-object v2, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iget-object v2, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    invoke-static {v2, p1, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    iput-object v1, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    int-to-long v0, p1

    .line 387
    iput-wide v0, p0, Lorg/h2/mvstore/Page;->totalCount:J

    .line 388
    iget-object v2, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    iget-wide v3, p0, Lorg/h2/mvstore/Page;->version:J

    array-length p1, v5

    int-to-long v8, p1

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lorg/h2/mvstore/Page;->create(Lorg/h2/mvstore/MVMap;J[Ljava/lang/Object;[Ljava/lang/Object;[Lorg/h2/mvstore/Page$PageReference;JI)Lorg/h2/mvstore/Page;

    move-result-object p1

    .line 392
    invoke-direct {p0}, Lorg/h2/mvstore/Page;->recalculateMemory()V

    .line 393
    invoke-direct {p1}, Lorg/h2/mvstore/Page;->recalculateMemory()V

    return-object p1
.end method

.method private splitNode(I)Lorg/h2/mvstore/Page;
    .locals 13

    .line 398
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v0, v0

    sub-int/2addr v0, p1

    .line 400
    new-array v1, p1, [Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    .line 401
    new-array v6, v2, [Ljava/lang/Object;

    .line 402
    iget-object v3, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    iget-object v3, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v3, p1, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iput-object v1, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    .line 406
    new-array v1, p1, [Lorg/h2/mvstore/Page$PageReference;

    .line 407
    new-array v8, v0, [Lorg/h2/mvstore/Page$PageReference;

    .line 408
    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    invoke-static {v2, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    invoke-static {v2, p1, v8, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    iput-object v1, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    .line 413
    array-length p1, v1

    const-wide/16 v2, 0x0

    move-wide v9, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v5, v1, v0

    .line 414
    iget-wide v11, v5, Lorg/h2/mvstore/Page$PageReference;->count:J

    add-long/2addr v9, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    iput-wide v9, p0, Lorg/h2/mvstore/Page;->totalCount:J

    .line 418
    array-length p1, v8

    move-wide v9, v2

    :goto_1
    if-ge v4, p1, :cond_1

    aget-object v0, v8, v4

    .line 419
    iget-wide v0, v0, Lorg/h2/mvstore/Page$PageReference;->count:J

    add-long/2addr v9, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 421
    :cond_1
    iget-object v3, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    iget-wide v4, p0, Lorg/h2/mvstore/Page;->version:J

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lorg/h2/mvstore/Page;->create(Lorg/h2/mvstore/MVMap;J[Ljava/lang/Object;[Ljava/lang/Object;[Lorg/h2/mvstore/Page$PageReference;JI)Lorg/h2/mvstore/Page;

    move-result-object p1

    .line 425
    invoke-direct {p0}, Lorg/h2/mvstore/Page;->recalculateMemory()V

    .line 426
    invoke-direct {p1}, Lorg/h2/mvstore/Page;->recalculateMemory()V

    return-object p1
.end method

.method private write(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/WriteBuffer;)I
    .locals 12

    .line 725
    invoke-virtual {p2}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v0

    .line 726
    iget-object v1, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v1, v1

    .line 727
    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 729
    :goto_0
    invoke-virtual {p2, v3}, Lorg/h2/mvstore/WriteBuffer;->putInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/h2/mvstore/WriteBuffer;->putShort(S)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v6}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    .line 733
    invoke-virtual {p2}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v5

    int-to-byte v6, v2

    .line 734
    invoke-virtual {p2, v6}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    if-ne v2, v4, :cond_1

    .line 736
    invoke-direct {p0, p2}, Lorg/h2/mvstore/Page;->writeChildren(Lorg/h2/mvstore/WriteBuffer;)V

    const/4 v6, 0x0

    :goto_1
    if-gt v6, v1, :cond_1

    .line 738
    iget-object v7, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object v7, v7, v6

    iget-wide v7, v7, Lorg/h2/mvstore/Page$PageReference;->count:J

    invoke-virtual {p2, v7, v8}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 741
    :cond_1
    invoke-virtual {p2}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v6

    .line 742
    iget-object v7, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v7}, Lorg/h2/mvstore/MVMap;->getKeyType()Lorg/h2/mvstore/type/DataType;

    move-result-object v7

    iget-object v8, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    invoke-interface {v7, p2, v8, v1, v4}, Lorg/h2/mvstore/type/DataType;->write(Lorg/h2/mvstore/WriteBuffer;[Ljava/lang/Object;IZ)V

    if-nez v2, :cond_2

    .line 744
    iget-object v7, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v7}, Lorg/h2/mvstore/MVMap;->getValueType()Lorg/h2/mvstore/type/DataType;

    move-result-object v7

    iget-object v8, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    invoke-interface {v7, p2, v8, v1, v3}, Lorg/h2/mvstore/type/DataType;->write(Lorg/h2/mvstore/WriteBuffer;[Ljava/lang/Object;IZ)V

    .line 746
    :cond_2
    iget-object v1, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v1

    .line 747
    invoke-virtual {p2}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v7

    sub-int/2addr v7, v6

    const/16 v8, 0x10

    if-le v7, v8, :cond_4

    .line 749
    invoke-virtual {v1}, Lorg/h2/mvstore/MVStore;->getCompressionLevel()I

    move-result v8

    if-lez v8, :cond_4

    if-ne v8, v4, :cond_3

    .line 754
    iget-object v8, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/mvstore/MVStore;->getCompressorFast()Lorg/h2/compress/Compressor;

    move-result-object v8

    const/4 v9, 0x2

    goto :goto_2

    .line 757
    :cond_3
    iget-object v8, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/mvstore/MVStore;->getCompressorHigh()Lorg/h2/compress/Compressor;

    move-result-object v8

    const/4 v9, 0x6

    .line 760
    :goto_2
    new-array v10, v7, [B

    .line 761
    invoke-virtual {p2, v6}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v11

    invoke-virtual {v11, v10}, Lorg/h2/mvstore/WriteBuffer;->get([B)Lorg/h2/mvstore/WriteBuffer;

    mul-int/lit8 v11, v7, 0x2

    .line 762
    new-array v11, v11, [B

    .line 763
    invoke-interface {v8, v10, v7, v11, v3}, Lorg/h2/compress/Compressor;->compress([BI[BI)I

    move-result v8

    sub-int v10, v8, v7

    .line 764
    invoke-static {v10}, Lorg/h2/mvstore/DataUtils;->getVarIntLen(I)I

    move-result v10

    add-int/2addr v10, v8

    if-ge v10, v7, :cond_4

    .line 766
    invoke-virtual {p2, v5}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v10

    add-int/2addr v9, v2

    int-to-byte v9, v9

    invoke-virtual {v10, v9}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    .line 768
    invoke-virtual {p2, v6}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v6

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v6

    invoke-virtual {v6, v11, v3, v8}, Lorg/h2/mvstore/WriteBuffer;->put([BII)Lorg/h2/mvstore/WriteBuffer;

    .line 774
    :cond_4
    invoke-virtual {p2}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v0

    .line 775
    iget v7, p1, Lorg/h2/mvstore/Chunk;->id:I

    .line 776
    invoke-static {v7}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result v8

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result v9

    xor-int/2addr v8, v9

    invoke-static {v6}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result v9

    xor-int/2addr v8, v9

    .line 779
    invoke-virtual {p2, v0, v6}, Lorg/h2/mvstore/WriteBuffer;->putInt(II)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p2

    add-int/lit8 v9, v0, 0x4

    int-to-short v8, v8

    invoke-virtual {p2, v9, v8}, Lorg/h2/mvstore/WriteBuffer;->putShort(IS)Lorg/h2/mvstore/WriteBuffer;

    .line 781
    iget-wide v8, p0, Lorg/h2/mvstore/Page;->pos:J

    const-wide/16 v10, 0x0

    cmp-long p2, v8, v10

    if-nez p2, :cond_7

    .line 785
    invoke-static {v7, v0, v6, v2}, Lorg/h2/mvstore/DataUtils;->getPagePos(IIII)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/h2/mvstore/Page;->pos:J

    .line 786
    iget-wide v6, p0, Lorg/h2/mvstore/Page;->pos:J

    invoke-virtual {p0}, Lorg/h2/mvstore/Page;->getMemory()I

    move-result p2

    invoke-virtual {v1, v6, v7, p0, p2}, Lorg/h2/mvstore/MVStore;->cachePage(JLorg/h2/mvstore/Page;I)V

    if-ne v2, v4, :cond_5

    .line 790
    iget-wide v2, p0, Lorg/h2/mvstore/Page;->pos:J

    invoke-virtual {p0}, Lorg/h2/mvstore/Page;->getMemory()I

    move-result p2

    invoke-virtual {v1, v2, v3, p0, p2}, Lorg/h2/mvstore/MVStore;->cachePage(JLorg/h2/mvstore/Page;I)V

    .line 792
    :cond_5
    iget-wide v0, p0, Lorg/h2/mvstore/Page;->pos:J

    invoke-static {v0, v1}, Lorg/h2/mvstore/DataUtils;->getPageMaxLength(J)I

    move-result p2

    int-to-long v0, p2

    .line 793
    iget-wide v2, p1, Lorg/h2/mvstore/Chunk;->maxLen:J

    add-long/2addr v2, v0

    iput-wide v2, p1, Lorg/h2/mvstore/Chunk;->maxLen:J

    .line 794
    iget-wide v2, p1, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    add-long/2addr v2, v0

    iput-wide v2, p1, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    .line 795
    iget p2, p1, Lorg/h2/mvstore/Chunk;->pageCount:I

    add-int/2addr p2, v4

    iput p2, p1, Lorg/h2/mvstore/Chunk;->pageCount:I

    .line 796
    iget p2, p1, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    add-int/2addr p2, v4

    iput p2, p1, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    .line 797
    iget-boolean p1, p0, Lorg/h2/mvstore/Page;->removedInMemory:Z

    if-eqz p1, :cond_6

    .line 801
    iget-object p1, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    iget-wide v0, p0, Lorg/h2/mvstore/Page;->pos:J

    iget p2, p0, Lorg/h2/mvstore/Page;->memory:I

    invoke-virtual {p1, v0, v1, p2}, Lorg/h2/mvstore/MVMap;->removePage(JI)V

    :cond_6
    add-int/2addr v5, v4

    return v5

    :cond_7
    const/4 p1, 0x3

    .line 782
    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "Page already stored"

    invoke-static {p1, v0, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method private writeChildren(Lorg/h2/mvstore/WriteBuffer;)V
    .locals 4

    .line 807
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 809
    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lorg/h2/mvstore/Page$PageReference;->pos:J

    invoke-virtual {p1, v2, v3}, Lorg/h2/mvstore/WriteBuffer;->putLong(J)Lorg/h2/mvstore/WriteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public binarySearch(Ljava/lang/Object;)I
    .locals 6

    .line 324
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 328
    iget v1, p0, Lorg/h2/mvstore/Page;->cachedCompare:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    if-le v1, v0, :cond_1

    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    .line 332
    :cond_1
    iget-object v2, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v0, :cond_4

    .line 334
    iget-object v4, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    aget-object v5, v2, v1

    invoke-virtual {v4, p1, v5}, Lorg/h2/mvstore/MVMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    if-gez v4, :cond_3

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    :goto_1
    add-int v1, v3, v0

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p1, v1, 0x1

    .line 340
    iput p1, p0, Lorg/h2/mvstore/Page;->cachedCompare:I

    return v1

    .line 345
    :cond_4
    iput v3, p0, Lorg/h2/mvstore/Page;->cachedCompare:I

    add-int/lit8 v3, v3, 0x1

    neg-int p1, v3

    return p1
.end method

.method public copy(J)Lorg/h2/mvstore/Page;
    .locals 9

    .line 302
    iget-object v0, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    iget-object v3, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    iget-object v5, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    iget-wide v6, p0, Lorg/h2/mvstore/Page;->totalCount:J

    invoke-virtual {p0}, Lorg/h2/mvstore/Page;->getMemory()I

    move-result v8

    move-wide v1, p1

    invoke-static/range {v0 .. v8}, Lorg/h2/mvstore/Page;->create(Lorg/h2/mvstore/MVMap;J[Ljava/lang/Object;[Ljava/lang/Object;[Lorg/h2/mvstore/Page$PageReference;JI)Lorg/h2/mvstore/Page;

    move-result-object p1

    .line 307
    invoke-virtual {p0}, Lorg/h2/mvstore/Page;->removePage()V

    .line 308
    iget p2, p0, Lorg/h2/mvstore/Page;->cachedCompare:I

    iput p2, p1, Lorg/h2/mvstore/Page;->cachedCompare:I

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 876
    :cond_0
    instance-of v1, p1, Lorg/h2/mvstore/Page;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 877
    iget-wide v3, p0, Lorg/h2/mvstore/Page;->pos:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/h2/mvstore/Page;

    iget-wide v3, v1, Lorg/h2/mvstore/Page;->pos:J

    iget-wide v5, p0, Lorg/h2/mvstore/Page;->pos:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public getChildPage(I)Lorg/h2/mvstore/Page;
    .locals 3

    .line 216
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object p1, v0, p1

    .line 217
    iget-object v0, p1, Lorg/h2/mvstore/Page$PageReference;->page:Lorg/h2/mvstore/Page;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/h2/mvstore/Page$PageReference;->page:Lorg/h2/mvstore/Page;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    iget-wide v1, p1, Lorg/h2/mvstore/Page$PageReference;->pos:J

    invoke-virtual {v0, v1, v2}, Lorg/h2/mvstore/MVMap;->readPage(J)Lorg/h2/mvstore/Page;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getChildPagePos(I)J
    .locals 2

    .line 227
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object p1, v0, p1

    iget-wide v0, p1, Lorg/h2/mvstore/Page$PageReference;->pos:J

    return-wide v0
.end method

.method getCounts(I)J
    .locals 2

    .line 461
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object p1, v0, p1

    iget-wide v0, p1, Lorg/h2/mvstore/Page$PageReference;->count:J

    return-wide v0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getKeyCount()I
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getMemory()I
    .locals 1

    .line 899
    iget v0, p0, Lorg/h2/mvstore/Page;->memory:I

    return v0
.end method

.method public getPos()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lorg/h2/mvstore/Page;->pos:J

    return-wide v0
.end method

.method public getRawChildPageCount()I
    .locals 1

    .line 868
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    array-length v0, v0

    return v0
.end method

.method public getTotalCount()J
    .locals 2

    .line 451
    iget-wide v0, p0, Lorg/h2/mvstore/Page;->totalCount:J

    return-wide v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method getVersion()J
    .locals 2

    .line 864
    iget-wide v0, p0, Lorg/h2/mvstore/Page;->version:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 887
    iget-wide v0, p0, Lorg/h2/mvstore/Page;->pos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lorg/h2/mvstore/Page;->pos:J

    iget-wide v2, p0, Lorg/h2/mvstore/Page;->pos:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public insertLeaf(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 562
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 563
    new-array v1, v0, [Ljava/lang/Object;

    .line 564
    iget-object v2, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v1, v3, p1}, Lorg/h2/mvstore/DataUtils;->copyWithGap(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 565
    iput-object v1, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    .line 566
    new-array v0, v0, [Ljava/lang/Object;

    .line 567
    iget-object v1, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    invoke-static {v1, v0, v3, p1}, Lorg/h2/mvstore/DataUtils;->copyWithGap(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 568
    iput-object v0, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    .line 569
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 570
    iget-object v0, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 571
    iget-wide v0, p0, Lorg/h2/mvstore/Page;->totalCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/mvstore/Page;->totalCount:J

    .line 572
    iget-object p1, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getKeyType()Lorg/h2/mvstore/type/DataType;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p2}, Lorg/h2/mvstore/MVMap;->getValueType()Lorg/h2/mvstore/type/DataType;

    move-result-object p2

    invoke-interface {p2, p3}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, p2

    invoke-direct {p0, p1}, Lorg/h2/mvstore/Page;->addMemory(I)V

    return-void
.end method

.method public insertNode(ILjava/lang/Object;Lorg/h2/mvstore/Page;)V
    .locals 9

    .line 585
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 586
    iget-object v1, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v0, v2, p1}, Lorg/h2/mvstore/DataUtils;->copyWithGap(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 587
    aput-object p2, v0, p1

    .line 588
    iput-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    .line 590
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    .line 591
    new-array v1, v1, [Lorg/h2/mvstore/Page$PageReference;

    .line 592
    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    invoke-static {v2, v1, v0, p1}, Lorg/h2/mvstore/DataUtils;->copyWithGap(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 593
    new-instance v0, Lorg/h2/mvstore/Page$PageReference;

    invoke-virtual {p3}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v5

    iget-wide v7, p3, Lorg/h2/mvstore/Page;->totalCount:J

    move-object v3, v0

    move-object v4, p3

    invoke-direct/range {v3 .. v8}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    aput-object v0, v1, p1

    .line 595
    iput-object v1, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    .line 597
    iget-wide v0, p0, Lorg/h2/mvstore/Page;->totalCount:J

    iget-wide v2, p3, Lorg/h2/mvstore/Page;->totalCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/mvstore/Page;->totalCount:J

    .line 598
    iget-object p1, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getKeyType()Lorg/h2/mvstore/type/DataType;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x10

    invoke-direct {p0, p1}, Lorg/h2/mvstore/Page;->addMemory(I)V

    return-void
.end method

.method public isLeaf()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method read(Ljava/nio/ByteBuffer;III)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 646
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 647
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move/from16 v9, p4

    if-gt v3, v9, :cond_a

    const/4 v10, 0x4

    if-lt v3, v10, :cond_a

    add-int/2addr v2, v3

    .line 654
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 655
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 656
    invoke-static/range {p1 .. p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 657
    iget-object v11, v0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v11}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result v11

    if-ne v10, v11, :cond_9

    .line 663
    invoke-static/range {p2 .. p2}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result v10

    invoke-static/range {p3 .. p3}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result v11

    xor-int/2addr v10, v11

    invoke-static {v3}, Lorg/h2/mvstore/DataUtils;->getCheckValue(I)S

    move-result v3

    xor-int/2addr v3, v10

    int-to-short v10, v3

    if-ne v9, v10, :cond_8

    .line 672
    invoke-static/range {p1 .. p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 673
    new-array v4, v3, [Ljava/lang/Object;

    iput-object v4, v0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    .line 674
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-ne v5, v8, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    add-int/lit8 v9, v3, 0x1

    .line 677
    new-array v10, v9, [Lorg/h2/mvstore/Page$PageReference;

    iput-object v10, v0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    .line 678
    new-array v9, v9, [J

    const/4 v10, 0x0

    :goto_1
    if-gt v10, v3, :cond_1

    .line 680
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v10, 0x0

    move-wide v11, v10

    const/4 v10, 0x0

    :goto_2
    if-gt v10, v3, :cond_2

    .line 684
    invoke-static/range {p1 .. p1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v17

    add-long v11, v11, v17

    .line 686
    iget-object v15, v0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    new-instance v19, Lorg/h2/mvstore/Page$PageReference;

    const/4 v14, 0x0

    aget-wide v20, v9, v10

    move-object/from16 v13, v19

    move-object/from16 v22, v15

    move-wide/from16 v15, v20

    invoke-direct/range {v13 .. v18}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    aput-object v19, v22, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 688
    :cond_2
    iput-wide v11, v0, Lorg/h2/mvstore/Page;->totalCount:J

    :cond_3
    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_6

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_5

    .line 695
    iget-object v4, v0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v4}, Lorg/h2/mvstore/MVMap;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/mvstore/MVStore;->getCompressorHigh()Lorg/h2/compress/Compressor;

    move-result-object v4

    :goto_4
    move-object v9, v4

    goto :goto_5

    .line 697
    :cond_5
    iget-object v4, v0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v4}, Lorg/h2/mvstore/MVMap;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/mvstore/MVStore;->getCompressorFast()Lorg/h2/compress/Compressor;

    move-result-object v4

    goto :goto_4

    .line 699
    :goto_5
    invoke-static/range {p1 .. p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 700
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int v12, v2, v6

    .line 701
    invoke-static {v12}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v10

    .line 702
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    add-int v15, v12, v4

    .line 704
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v11, 0x0

    .line 705
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    invoke-interface/range {v9 .. v15}, Lorg/h2/compress/Compressor;->expand([BII[BII)V

    .line 708
    :cond_6
    iget-object v2, v0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->getKeyType()Lorg/h2/mvstore/type/DataType;

    move-result-object v2

    iget-object v4, v0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    invoke-interface {v2, v1, v4, v3, v8}, Lorg/h2/mvstore/type/DataType;->read(Ljava/nio/ByteBuffer;[Ljava/lang/Object;IZ)V

    if-nez v5, :cond_7

    .line 710
    new-array v2, v3, [Ljava/lang/Object;

    iput-object v2, v0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    .line 711
    iget-object v2, v0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->getValueType()Lorg/h2/mvstore/type/DataType;

    move-result-object v2

    iget-object v4, v0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    invoke-interface {v2, v1, v4, v3, v7}, Lorg/h2/mvstore/type/DataType;->read(Ljava/nio/ByteBuffer;[Ljava/lang/Object;IZ)V

    int-to-long v1, v3

    .line 712
    iput-wide v1, v0, Lorg/h2/mvstore/Page;->totalCount:J

    .line 714
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/Page;->recalculateMemory()V

    return-void

    .line 667
    :cond_8
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "File corrupted in chunk {0}, expected check value {1}, got {2}"

    invoke-static {v6, v2, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1

    .line 658
    :cond_9
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, v0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "File corrupted in chunk {0}, expected map id {1}, got {2}"

    invoke-static {v6, v2, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1

    .line 649
    :cond_a
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "File corrupted in chunk {0}, expected page length 4..{1}, got {2}"

    invoke-static {v6, v2, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method public remove(I)V
    .locals 5

    .line 608
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_0
    move v1, p1

    .line 610
    :goto_0
    iget-object v2, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 611
    iget-object v3, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v3}, Lorg/h2/mvstore/MVMap;->getKeyType()Lorg/h2/mvstore/type/DataType;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result v2

    neg-int v2, v2

    invoke-direct {p0, v2}, Lorg/h2/mvstore/Page;->addMemory(I)V

    add-int/lit8 v2, v0, -0x1

    .line 612
    new-array v3, v2, [Ljava/lang/Object;

    .line 613
    iget-object v4, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    invoke-static {v4, v3, v0, v1}, Lorg/h2/mvstore/DataUtils;->copyExcept(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 614
    iput-object v3, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    .line 616
    iget-object v1, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 618
    iget-object v3, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v3}, Lorg/h2/mvstore/MVMap;->getValueType()Lorg/h2/mvstore/type/DataType;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, v1}, Lorg/h2/mvstore/Page;->addMemory(I)V

    .line 619
    new-array v1, v2, [Ljava/lang/Object;

    .line 620
    iget-object v2, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    invoke-static {v2, v1, v0, p1}, Lorg/h2/mvstore/DataUtils;->copyExcept(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 621
    iput-object v1, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    .line 622
    iget-wide v0, p0, Lorg/h2/mvstore/Page;->totalCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/mvstore/Page;->totalCount:J

    .line 624
    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    if-eqz v0, :cond_2

    const/16 v0, -0x10

    .line 625
    invoke-direct {p0, v0}, Lorg/h2/mvstore/Page;->addMemory(I)V

    .line 626
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lorg/h2/mvstore/Page$PageReference;->count:J

    .line 628
    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    array-length v2, v2

    add-int/lit8 v3, v2, -0x1

    .line 629
    new-array v3, v3, [Lorg/h2/mvstore/Page$PageReference;

    .line 630
    iget-object v4, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    invoke-static {v4, v3, v2, p1}, Lorg/h2/mvstore/DataUtils;->copyExcept(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 631
    iput-object v3, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    .line 633
    iget-wide v2, p0, Lorg/h2/mvstore/Page;->totalCount:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lorg/h2/mvstore/Page;->totalCount:J

    :cond_2
    return-void
.end method

.method removeAllRecursive()V
    .locals 6

    .line 534
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 535
    iget-object v1, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1, p0}, Lorg/h2/mvstore/MVMap;->getChildPageCount(Lorg/h2/mvstore/Page;)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 536
    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object v2, v2, v0

    .line 537
    iget-object v3, v2, Lorg/h2/mvstore/Page$PageReference;->page:Lorg/h2/mvstore/Page;

    if-eqz v3, :cond_0

    .line 538
    iget-object v2, v2, Lorg/h2/mvstore/Page$PageReference;->page:Lorg/h2/mvstore/Page;

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->removeAllRecursive()V

    goto :goto_1

    .line 540
    :cond_0
    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/h2/mvstore/Page$PageReference;->pos:J

    .line 541
    invoke-static {v2, v3}, Lorg/h2/mvstore/DataUtils;->getPageType(J)I

    move-result v4

    if-nez v4, :cond_1

    .line 543
    invoke-static {v2, v3}, Lorg/h2/mvstore/DataUtils;->getPageMaxLength(J)I

    move-result v4

    .line 544
    iget-object v5, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v5, v2, v3, v4}, Lorg/h2/mvstore/MVMap;->removePage(JI)V

    goto :goto_1

    .line 546
    :cond_1
    iget-object v4, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v4, v2, v3}, Lorg/h2/mvstore/MVMap;->readPage(J)Lorg/h2/mvstore/Page;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->removeAllRecursive()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_2
    invoke-virtual {p0}, Lorg/h2/mvstore/Page;->removePage()V

    return-void
.end method

.method public removePage()V
    .locals 5

    .line 931
    iget-wide v0, p0, Lorg/h2/mvstore/Page;->pos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x1

    .line 933
    iput-boolean v2, p0, Lorg/h2/mvstore/Page;->removedInMemory:Z

    .line 935
    :cond_0
    iget-object v2, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    iget v3, p0, Lorg/h2/mvstore/Page;->memory:I

    invoke-virtual {v2, v0, v1, v3}, Lorg/h2/mvstore/MVMap;->removePage(JI)V

    return-void
.end method

.method public setChild(ILorg/h2/mvstore/Page;)V
    .locals 9

    if-nez p2, :cond_0

    .line 472
    iget-object p2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object p2, p2, p1

    iget-wide v0, p2, Lorg/h2/mvstore/Page$PageReference;->count:J

    .line 475
    iget-object p2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    invoke-virtual {p2}, [Lorg/h2/mvstore/Page$PageReference;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/h2/mvstore/Page$PageReference;

    iput-object p2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    .line 476
    new-instance p2, Lorg/h2/mvstore/Page$PageReference;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    .line 477
    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aput-object p2, v2, p1

    .line 478
    iget-wide p1, p0, Lorg/h2/mvstore/Page;->totalCount:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/mvstore/Page;->totalCount:J

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/h2/mvstore/Page$PageReference;->page:Lorg/h2/mvstore/Page;

    if-ne p2, v0, :cond_1

    invoke-virtual {p2}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object v2, v2, p1

    iget-wide v2, v2, Lorg/h2/mvstore/Page$PageReference;->pos:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 481
    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lorg/h2/mvstore/Page$PageReference;->count:J

    .line 484
    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    invoke-virtual {v2}, [Lorg/h2/mvstore/Page$PageReference;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/h2/mvstore/Page$PageReference;

    iput-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    .line 485
    new-instance v2, Lorg/h2/mvstore/Page$PageReference;

    iget-wide v5, p2, Lorg/h2/mvstore/Page;->pos:J

    iget-wide v7, p2, Lorg/h2/mvstore/Page;->totalCount:J

    move-object v3, v2

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    .line 486
    iget-object v3, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aput-object v2, v3, p1

    .line 487
    iget-wide v2, p0, Lorg/h2/mvstore/Page;->totalCount:J

    iget-wide p1, p2, Lorg/h2/mvstore/Page;->totalCount:J

    sub-long/2addr p1, v0

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/h2/mvstore/Page;->totalCount:J

    :cond_2
    :goto_0
    return-void
.end method

.method public setKey(ILjava/lang/Object;)V
    .locals 3

    .line 500
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 502
    iget-object v1, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->getKeyType()Lorg/h2/mvstore/type/DataType;

    move-result-object v1

    .line 503
    invoke-interface {v1, p2}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result v2

    if-eqz v0, :cond_0

    .line 505
    invoke-interface {v1, v0}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v2, v0

    .line 507
    :cond_0
    invoke-direct {p0, v2}, Lorg/h2/mvstore/Page;->addMemory(I)V

    .line 508
    iget-object v0, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 519
    iget-object v0, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 522
    iget-object v1, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    .line 523
    iget-object v1, p0, Lorg/h2/mvstore/Page;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->getValueType()Lorg/h2/mvstore/type/DataType;

    move-result-object v1

    .line 524
    invoke-interface {v1, p2}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v0}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lorg/h2/mvstore/Page;->addMemory(I)V

    .line 526
    iget-object v1, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    aput-object p2, v1, p1

    return-object v0
.end method

.method setVersion(J)V
    .locals 0

    .line 924
    iput-wide p1, p0, Lorg/h2/mvstore/Page;->version:J

    return-void
.end method

.method split(I)Lorg/h2/mvstore/Page;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/mvstore/Page;->splitLeaf(I)Lorg/h2/mvstore/Page;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/mvstore/Page;->splitNode(I)Lorg/h2/mvstore/Page;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "version: "

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/mvstore/Page;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pos: "

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/mvstore/Page;->pos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-wide v1, p0, Lorg/h2/mvstore/Page;->pos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 274
    iget-wide v1, p0, Lorg/h2/mvstore/Page;->pos:J

    invoke-static {v1, v2}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v1

    const-string v2, "chunk: "

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    .line 277
    :goto_0
    iget-object v2, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_4

    if-lez v1, :cond_1

    const-string v2, " "

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_1
    iget-object v2, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    if-eqz v2, :cond_2

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object v3, v3, v1

    iget-wide v3, v3, Lorg/h2/mvstore/Page$PageReference;->pos:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_2
    iget-object v2, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 285
    iget-object v2, p0, Lorg/h2/mvstore/Page;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v2, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    if-eqz v2, :cond_3

    const/16 v2, 0x3a

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    iget-object v2, p0, Lorg/h2/mvstore/Page;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeEnd()V
    .locals 12

    .line 846
    invoke-virtual {p0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 851
    iget-object v3, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object v3, v3, v2

    .line 852
    iget-object v4, v3, Lorg/h2/mvstore/Page$PageReference;->page:Lorg/h2/mvstore/Page;

    if-eqz v4, :cond_2

    .line 853
    iget-object v4, v3, Lorg/h2/mvstore/Page$PageReference;->page:Lorg/h2/mvstore/Page;

    invoke-virtual {v4}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 857
    iget-object v4, v3, Lorg/h2/mvstore/Page$PageReference;->page:Lorg/h2/mvstore/Page;

    invoke-virtual {v4}, Lorg/h2/mvstore/Page;->writeEnd()V

    .line 858
    iget-object v4, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    new-instance v11, Lorg/h2/mvstore/Page$PageReference;

    const/4 v6, 0x0

    iget-wide v7, v3, Lorg/h2/mvstore/Page$PageReference;->pos:J

    iget-wide v9, v3, Lorg/h2/mvstore/Page$PageReference;->count:J

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    aput-object v11, v4, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    .line 854
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Page not written"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method writeUnsavedRecursive(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/WriteBuffer;)V
    .locals 11

    .line 821
    iget-wide v0, p0, Lorg/h2/mvstore/Page;->pos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 825
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/Page;->write(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/WriteBuffer;)I

    move-result v0

    .line 826
    invoke-virtual {p0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_3

    .line 827
    iget-object v1, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 829
    iget-object v3, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    aget-object v3, v3, v2

    iget-object v5, v3, Lorg/h2/mvstore/Page$PageReference;->page:Lorg/h2/mvstore/Page;

    if-eqz v5, :cond_1

    .line 831
    invoke-virtual {v5, p1, p2}, Lorg/h2/mvstore/Page;->writeUnsavedRecursive(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/WriteBuffer;)V

    .line 832
    iget-object v3, p0, Lorg/h2/mvstore/Page;->children:[Lorg/h2/mvstore/Page$PageReference;

    new-instance v10, Lorg/h2/mvstore/Page$PageReference;

    invoke-virtual {v5}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v6

    iget-wide v8, v5, Lorg/h2/mvstore/Page;->totalCount:J

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    aput-object v10, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 835
    :cond_2
    invoke-virtual {p2}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result p1

    .line 836
    invoke-virtual {p2, v0}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 837
    invoke-direct {p0, p2}, Lorg/h2/mvstore/Page;->writeChildren(Lorg/h2/mvstore/WriteBuffer;)V

    .line 838
    invoke-virtual {p2, p1}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    :cond_3
    return-void
.end method
