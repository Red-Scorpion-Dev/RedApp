.class public abstract Lorg/spongycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


# direct methods
.method public static add(I[I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 16
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 17
    aput v3, p3, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static addTo(I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 144
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 145
    aput v3, p2, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static copy(I[I)[I
    .locals 2

    .line 199
    new-array v0, p0, [I

    const/4 v1, 0x0

    .line 200
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static create(I)[I
    .locals 0

    .line 211
    new-array p0, p0, [I

    return-object p0
.end method

.method public static fromBigInteger(ILjava/math/BigInteger;)[I
    .locals 3

    .line 292
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_1

    add-int/lit8 p0, p0, 0x1f

    shr-int/lit8 p0, p0, 0x5

    .line 298
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object p0

    const/4 v0, 0x0

    .line 300
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 302
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, p0, v0

    const/16 v0, 0x20

    .line 303
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    move v0, v1

    goto :goto_0

    :cond_0
    return-object p0

    .line 294
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static gte(I[I[I)Z
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_0
    if-ltz p0, :cond_2

    .line 327
    aget v1, p1, p0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 328
    aget v3, p2, p0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isOne(I[I)Z
    .locals 4

    const/4 v0, 0x0

    .line 398
    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_2

    .line 404
    aget v3, p1, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isZero(I[I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 416
    aget v2, p1, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static shiftDownBit(I[II)I
    .locals 2

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 548
    aget v0, p1, p0

    ushr-int/lit8 v1, v0, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v1

    .line 549
    aput p2, p1, p0

    move p2, v0

    goto :goto_0

    :cond_0
    shl-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static shiftDownBits(I[III)I
    .locals 3

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 597
    aget v0, p1, p0

    ushr-int v1, v0, p2

    neg-int v2, p2

    shl-int/2addr p3, v2

    or-int/2addr p3, v1

    .line 598
    aput p3, p1, p0

    move p3, v0

    goto :goto_0

    :cond_0
    neg-int p0, p2

    shl-int p0, p3, p0

    return p0
.end method

.method public static shiftDownWord(I[II)I
    .locals 1

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 648
    aget v0, p1, p0

    .line 649
    aput p2, p1, p0

    move p2, v0

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static subFrom(I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 1004
    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 1005
    aput v3, p2, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static toBigInteger(I[I)Ljava/math/BigInteger;
    .locals 4

    shl-int/lit8 v0, p0, 0x2

    .line 1059
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 1062
    aget v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    .line 1065
    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method
