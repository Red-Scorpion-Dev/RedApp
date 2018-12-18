.class public Lorg/h2/mvstore/FreeSpaceBitSet;
.super Ljava/lang/Object;
.source "FreeSpaceBitSet.java"


# static fields
.field private static final DETAILED_INFO:Z


# instance fields
.field private final blockSize:I

.field private final firstFreeBlock:I

.field private final set:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    .line 41
    iput p1, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->firstFreeBlock:I

    .line 42
    iput p2, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->blockSize:I

    .line 43
    invoke-virtual {p0}, Lorg/h2/mvstore/FreeSpaceBitSet;->clear()V

    return-void
.end method

.method private getBlock(J)I
    .locals 2

    .line 138
    iget v0, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->blockSize:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method private getBlockCount(I)I
    .locals 1

    .line 142
    iget v0, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->blockSize:I

    invoke-static {p1, v0}, Lorg/h2/util/MathUtils;->roundUpInt(II)I

    move-result p1

    iget v0, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->blockSize:I

    div-int/2addr p1, v0

    return p1
.end method

.method private getPos(I)J
    .locals 4

    int-to-long v0, p1

    .line 134
    iget p1, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->blockSize:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    return-wide v0
.end method


# virtual methods
.method public allocate(I)J
    .locals 3

    .line 97
    invoke-direct {p0, p1}, Lorg/h2/mvstore/FreeSpaceBitSet;->getBlockCount(I)I

    move-result p1

    const/4 v0, 0x0

    .line 99
    :goto_0
    iget-object v1, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    .line 100
    iget-object v1, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_1

    sub-int v2, v1, v0

    if-lt v2, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 102
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    add-int/2addr p1, v0

    invoke-virtual {v1, v0, p1}, Ljava/util/BitSet;->set(II)V

    .line 103
    invoke-direct {p0, v0}, Lorg/h2/mvstore/FreeSpaceBitSet;->getPos(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 3

    .line 50
    iget-object v0, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 51
    iget-object v0, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    iget v1, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->firstFreeBlock:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public free(JI)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/FreeSpaceBitSet;->getBlock(J)I

    move-result p1

    .line 129
    invoke-direct {p0, p3}, Lorg/h2/mvstore/FreeSpaceBitSet;->getBlockCount(I)I

    move-result p2

    .line 130
    iget-object p3, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    add-int/2addr p2, p1

    invoke-virtual {p3, p1, p2}, Ljava/util/BitSet;->clear(II)V

    return-void
.end method

.method public getFillRate()I
    .locals 5

    .line 152
    iget-object v0, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 154
    iget-object v4, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v1

    :cond_2
    const-wide/16 v1, 0x64

    int-to-long v3, v3

    mul-long v3, v3, v1

    int-to-long v0, v0

    .line 161
    div-long/2addr v3, v0

    long-to-int v0, v3

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getFirstFree()J
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/FreeSpaceBitSet;->getPos(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isFree(JI)Z
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/FreeSpaceBitSet;->getBlock(J)I

    move-result p1

    .line 81
    invoke-direct {p0, p3}, Lorg/h2/mvstore/FreeSpaceBitSet;->getBlockCount(I)I

    move-result p2

    move p3, p1

    :goto_0
    add-int v0, p1, p2

    if-ge p3, v0, :cond_1

    .line 83
    iget-object v0, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isUsed(JI)Z
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/FreeSpaceBitSet;->getBlock(J)I

    move-result p1

    .line 63
    invoke-direct {p0, p3}, Lorg/h2/mvstore/FreeSpaceBitSet;->getBlockCount(I)I

    move-result p2

    move p3, p1

    :goto_0
    add-int v0, p1, p2

    if-ge p3, v0, :cond_1

    .line 65
    iget-object v0, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public markUsed(JI)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/FreeSpaceBitSet;->getBlock(J)I

    move-result p1

    .line 117
    invoke-direct {p0, p3}, Lorg/h2/mvstore/FreeSpaceBitSet;->getBlockCount(I)I

    move-result p2

    .line 118
    iget-object p3, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    add-int/2addr p2, p1

    invoke-virtual {p3, p1, p2}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_0

    const-string v2, ", "

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_0
    iget-object v2, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v1

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    iget-object v2, p0, Lorg/h2/mvstore/FreeSpaceBitSet;->set:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v1, 0x5d

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v2, v1, -0x1

    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
