.class public abstract Lorg/h2/util/HashBase;
.super Ljava/lang/Object;
.source "HashBase.java"


# static fields
.field private static final MAX_LOAD:J = 0x5aL


# instance fields
.field protected deletedCount:I

.field protected len:I

.field protected level:I

.field protected mask:I

.field private maxDeleted:I

.field private maxSize:I

.field private minSize:I

.field protected size:I

.field protected zeroKey:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 53
    invoke-virtual {p0, v0}, Lorg/h2/util/HashBase;->reset(I)V

    return-void
.end method


# virtual methods
.method checkSizePut()V
    .locals 2

    .line 77
    iget v0, p0, Lorg/h2/util/HashBase;->deletedCount:I

    iget v1, p0, Lorg/h2/util/HashBase;->size:I

    if-le v0, v1, :cond_0

    .line 78
    iget v0, p0, Lorg/h2/util/HashBase;->level:I

    invoke-virtual {p0, v0}, Lorg/h2/util/HashBase;->rehash(I)V

    .line 80
    :cond_0
    iget v0, p0, Lorg/h2/util/HashBase;->size:I

    iget v1, p0, Lorg/h2/util/HashBase;->deletedCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/h2/util/HashBase;->maxSize:I

    if-lt v0, v1, :cond_1

    .line 81
    iget v0, p0, Lorg/h2/util/HashBase;->level:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/h2/util/HashBase;->rehash(I)V

    :cond_1
    return-void
.end method

.method protected checkSizeRemove()V
    .locals 2

    .line 90
    iget v0, p0, Lorg/h2/util/HashBase;->size:I

    iget v1, p0, Lorg/h2/util/HashBase;->minSize:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/h2/util/HashBase;->level:I

    if-lez v0, :cond_0

    .line 91
    iget v0, p0, Lorg/h2/util/HashBase;->level:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/h2/util/HashBase;->rehash(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget v0, p0, Lorg/h2/util/HashBase;->deletedCount:I

    iget v1, p0, Lorg/h2/util/HashBase;->maxDeleted:I

    if-le v0, v1, :cond_1

    .line 93
    iget v0, p0, Lorg/h2/util/HashBase;->level:I

    invoke-virtual {p0, v0}, Lorg/h2/util/HashBase;->rehash(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getIndex(I)I
    .locals 1

    .line 125
    iget v0, p0, Lorg/h2/util/HashBase;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method protected abstract rehash(I)V
.end method

.method protected reset(I)V
    .locals 8

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lorg/h2/util/HashBase;->size:I

    .line 109
    iput p1, p0, Lorg/h2/util/HashBase;->level:I

    .line 110
    iget p1, p0, Lorg/h2/util/HashBase;->level:I

    const/4 v1, 0x2

    shl-int p1, v1, p1

    iput p1, p0, Lorg/h2/util/HashBase;->len:I

    .line 111
    iget p1, p0, Lorg/h2/util/HashBase;->len:I

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/h2/util/HashBase;->mask:I

    .line 112
    iget p1, p0, Lorg/h2/util/HashBase;->level:I

    shl-int p1, v2, p1

    int-to-long v2, p1

    const-wide/16 v4, 0x5a

    mul-long v2, v2, v4

    const-wide/16 v6, 0x64

    div-long/2addr v2, v6

    long-to-int p1, v2

    iput p1, p0, Lorg/h2/util/HashBase;->minSize:I

    .line 113
    iget p1, p0, Lorg/h2/util/HashBase;->len:I

    int-to-long v2, p1

    mul-long v2, v2, v4

    div-long/2addr v2, v6

    long-to-int p1, v2

    iput p1, p0, Lorg/h2/util/HashBase;->maxSize:I

    .line 114
    iput v0, p0, Lorg/h2/util/HashBase;->deletedCount:I

    .line 115
    iget p1, p0, Lorg/h2/util/HashBase;->len:I

    div-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x14

    iput p1, p0, Lorg/h2/util/HashBase;->maxDeleted:I

    return-void

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "exceeded max size of hash table"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 2

    .line 69
    iget v0, p0, Lorg/h2/util/HashBase;->size:I

    iget-boolean v1, p0, Lorg/h2/util/HashBase;->zeroKey:Z

    add-int/2addr v0, v1

    return v0
.end method
