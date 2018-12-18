.class public Lorg/h2/mvstore/rtree/SpatialKey;
.super Ljava/lang/Object;
.source "SpatialKey.java"


# instance fields
.field private final id:J

.field private final minMax:[F


# direct methods
.method public varargs constructor <init>(J[F)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lorg/h2/mvstore/rtree/SpatialKey;->id:J

    .line 26
    iput-object p3, p0, Lorg/h2/mvstore/rtree/SpatialKey;->minMax:[F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 99
    :cond_0
    instance-of v0, p1, Lorg/h2/mvstore/rtree/SpatialKey;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 102
    :cond_1
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 103
    iget-wide v2, p0, Lorg/h2/mvstore/rtree/SpatialKey;->id:J

    iget-wide v4, p1, Lorg/h2/mvstore/rtree/SpatialKey;->id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    .line 106
    :cond_2
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/rtree/SpatialKey;->equalsIgnoringId(Lorg/h2/mvstore/rtree/SpatialKey;)Z

    move-result p1

    return p1
.end method

.method public equalsIgnoringId(Lorg/h2/mvstore/rtree/SpatialKey;)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/h2/mvstore/rtree/SpatialKey;->minMax:[F

    iget-object p1, p1, Lorg/h2/mvstore/rtree/SpatialKey;->minMax:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1
.end method

.method public getId()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lorg/h2/mvstore/rtree/SpatialKey;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 92
    iget-wide v0, p0, Lorg/h2/mvstore/rtree/SpatialKey;->id:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Lorg/h2/mvstore/rtree/SpatialKey;->id:J

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isNull()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/h2/mvstore/rtree/SpatialKey;->minMax:[F

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public max(I)F
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/h2/mvstore/rtree/SpatialKey;->minMax:[F

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public min(I)F
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/h2/mvstore/rtree/SpatialKey;->minMax:[F

    add-int/2addr p1, p1

    aget p1, v0, p1

    return p1
.end method

.method public setMax(IF)V
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/h2/mvstore/rtree/SpatialKey;->minMax:[F

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    aput p2, v0, p1

    return-void
.end method

.method public setMin(IF)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/h2/mvstore/rtree/SpatialKey;->minMax:[F

    add-int/2addr p1, p1

    aput p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    iget-wide v1, p0, Lorg/h2/mvstore/rtree/SpatialKey;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 81
    :goto_0
    iget-object v2, p0, Lorg/h2/mvstore/rtree/SpatialKey;->minMax:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    iget-object v2, p0, Lorg/h2/mvstore/rtree/SpatialKey;->minMax:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/mvstore/rtree/SpatialKey;->minMax:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const-string v1, ")"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
