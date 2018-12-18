.class public Lorg/whispersystems/curve25519/java/ge_scalarmult_base;
.super Ljava/lang/Object;
.source "ge_scalarmult_base.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cmov(Lorg/whispersystems/curve25519/java/ge_precomp;Lorg/whispersystems/curve25519/java/ge_precomp;I)V
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->yplusx:[I

    iget-object v1, p1, Lorg/whispersystems/curve25519/java/ge_precomp;->yplusx:[I

    invoke-static {v0, v1, p2}, Lorg/whispersystems/curve25519/java/fe_cmov;->fe_cmov([I[II)V

    .line 29
    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->yminusx:[I

    iget-object v1, p1, Lorg/whispersystems/curve25519/java/ge_precomp;->yminusx:[I

    invoke-static {v0, v1, p2}, Lorg/whispersystems/curve25519/java/fe_cmov;->fe_cmov([I[II)V

    .line 30
    iget-object p0, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->xy2d:[I

    iget-object p1, p1, Lorg/whispersystems/curve25519/java/ge_precomp;->xy2d:[I

    invoke-static {p0, p1, p2}, Lorg/whispersystems/curve25519/java/fe_cmov;->fe_cmov([I[II)V

    return-void
.end method

.method static equal(BB)I
    .locals 0

    xor-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static ge_scalarmult_base(Lorg/whispersystems/curve25519/java/ge_p3;[B)V
    .locals 11

    const/16 v0, 0x40

    .line 69
    new-array v1, v0, [B

    .line 71
    new-instance v2, Lorg/whispersystems/curve25519/java/ge_p1p1;

    invoke-direct {v2}, Lorg/whispersystems/curve25519/java/ge_p1p1;-><init>()V

    .line 72
    new-instance v3, Lorg/whispersystems/curve25519/java/ge_p2;

    invoke-direct {v3}, Lorg/whispersystems/curve25519/java/ge_p2;-><init>()V

    .line 73
    new-instance v4, Lorg/whispersystems/curve25519/java/ge_precomp;

    invoke-direct {v4}, Lorg/whispersystems/curve25519/java/ge_precomp;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x20

    const/4 v8, 0x1

    if-ge v6, v7, :cond_0

    mul-int/lit8 v7, v6, 0x2

    add-int/lit8 v9, v7, 0x0

    .line 77
    aget-byte v10, p1, v6

    ushr-int/2addr v10, v5

    and-int/lit8 v10, v10, 0xf

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    add-int/2addr v7, v8

    .line 78
    aget-byte v8, p1, v6

    ushr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x3f

    if-ge p1, v7, :cond_1

    .line 85
    aget-byte v7, v1, p1

    add-int/2addr v7, v6

    int-to-byte v6, v7

    aput-byte v6, v1, p1

    .line 86
    aget-byte v6, v1, p1

    add-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    shr-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    .line 88
    aget-byte v7, v1, p1

    shl-int/lit8 v9, v6, 0x4

    sub-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 90
    :cond_1
    aget-byte p1, v1, v7

    add-int/2addr p1, v6

    int-to-byte p1, p1

    aput-byte p1, v1, v7

    .line 93
    invoke-static {p0}, Lorg/whispersystems/curve25519/java/ge_p3_0;->ge_p3_0(Lorg/whispersystems/curve25519/java/ge_p3;)V

    :goto_2
    if-ge v8, v0, :cond_2

    .line 95
    div-int/lit8 p1, v8, 0x2

    aget-byte v6, v1, v8

    invoke-static {v4, p1, v6}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->select(Lorg/whispersystems/curve25519/java/ge_precomp;IB)V

    .line 96
    invoke-static {v2, p0, v4}, Lorg/whispersystems/curve25519/java/ge_madd;->ge_madd(Lorg/whispersystems/curve25519/java/ge_p1p1;Lorg/whispersystems/curve25519/java/ge_p3;Lorg/whispersystems/curve25519/java/ge_precomp;)V

    invoke-static {p0, v2}, Lorg/whispersystems/curve25519/java/ge_p1p1_to_p3;->ge_p1p1_to_p3(Lorg/whispersystems/curve25519/java/ge_p3;Lorg/whispersystems/curve25519/java/ge_p1p1;)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 99
    :cond_2
    invoke-static {v2, p0}, Lorg/whispersystems/curve25519/java/ge_p3_dbl;->ge_p3_dbl(Lorg/whispersystems/curve25519/java/ge_p1p1;Lorg/whispersystems/curve25519/java/ge_p3;)V

    invoke-static {v3, v2}, Lorg/whispersystems/curve25519/java/ge_p1p1_to_p2;->ge_p1p1_to_p2(Lorg/whispersystems/curve25519/java/ge_p2;Lorg/whispersystems/curve25519/java/ge_p1p1;)V

    .line 100
    invoke-static {v2, v3}, Lorg/whispersystems/curve25519/java/ge_p2_dbl;->ge_p2_dbl(Lorg/whispersystems/curve25519/java/ge_p1p1;Lorg/whispersystems/curve25519/java/ge_p2;)V

    invoke-static {v3, v2}, Lorg/whispersystems/curve25519/java/ge_p1p1_to_p2;->ge_p1p1_to_p2(Lorg/whispersystems/curve25519/java/ge_p2;Lorg/whispersystems/curve25519/java/ge_p1p1;)V

    .line 101
    invoke-static {v2, v3}, Lorg/whispersystems/curve25519/java/ge_p2_dbl;->ge_p2_dbl(Lorg/whispersystems/curve25519/java/ge_p1p1;Lorg/whispersystems/curve25519/java/ge_p2;)V

    invoke-static {v3, v2}, Lorg/whispersystems/curve25519/java/ge_p1p1_to_p2;->ge_p1p1_to_p2(Lorg/whispersystems/curve25519/java/ge_p2;Lorg/whispersystems/curve25519/java/ge_p1p1;)V

    .line 102
    invoke-static {v2, v3}, Lorg/whispersystems/curve25519/java/ge_p2_dbl;->ge_p2_dbl(Lorg/whispersystems/curve25519/java/ge_p1p1;Lorg/whispersystems/curve25519/java/ge_p2;)V

    invoke-static {p0, v2}, Lorg/whispersystems/curve25519/java/ge_p1p1_to_p3;->ge_p1p1_to_p3(Lorg/whispersystems/curve25519/java/ge_p3;Lorg/whispersystems/curve25519/java/ge_p1p1;)V

    :goto_3
    if-ge v5, v0, :cond_3

    .line 105
    div-int/lit8 p1, v5, 0x2

    aget-byte v3, v1, v5

    invoke-static {v4, p1, v3}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->select(Lorg/whispersystems/curve25519/java/ge_precomp;IB)V

    .line 106
    invoke-static {v2, p0, v4}, Lorg/whispersystems/curve25519/java/ge_madd;->ge_madd(Lorg/whispersystems/curve25519/java/ge_p1p1;Lorg/whispersystems/curve25519/java/ge_p3;Lorg/whispersystems/curve25519/java/ge_precomp;)V

    invoke-static {p0, v2}, Lorg/whispersystems/curve25519/java/ge_p1p1_to_p3;->ge_p1p1_to_p3(Lorg/whispersystems/curve25519/java/ge_p3;Lorg/whispersystems/curve25519/java/ge_p1p1;)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_3
    return-void
.end method

.method static negative(B)I
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x3f

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static select(Lorg/whispersystems/curve25519/java/ge_precomp;IB)V
    .locals 7

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 35
    sget-object v1, Lorg/whispersystems/curve25519/java/ge_precomp_base_0_7;->base:[[Lorg/whispersystems/curve25519/java/ge_precomp;

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    if-gt p1, v1, :cond_1

    sget-object v1, Lorg/whispersystems/curve25519/java/ge_precomp_base_8_15;->base:[[Lorg/whispersystems/curve25519/java/ge_precomp;

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-gt p1, v1, :cond_2

    sget-object v1, Lorg/whispersystems/curve25519/java/ge_precomp_base_16_23;->base:[[Lorg/whispersystems/curve25519/java/ge_precomp;

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/whispersystems/curve25519/java/ge_precomp_base_24_31;->base:[[Lorg/whispersystems/curve25519/java/ge_precomp;

    .line 39
    :goto_0
    new-instance v2, Lorg/whispersystems/curve25519/java/ge_precomp;

    invoke-direct {v2}, Lorg/whispersystems/curve25519/java/ge_precomp;-><init>()V

    .line 40
    invoke-static {p2}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->negative(B)I

    move-result v3

    neg-int v4, v3

    and-int/2addr v4, p2

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    sub-int/2addr p2, v4

    .line 43
    invoke-static {p0}, Lorg/whispersystems/curve25519/java/ge_precomp_0;->ge_precomp_0(Lorg/whispersystems/curve25519/java/ge_precomp;)V

    .line 44
    aget-object v4, v1, p1

    const/4 v6, 0x0

    aget-object v4, v4, v6

    int-to-byte p2, p2

    invoke-static {p2, v5}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->equal(BB)I

    move-result v6

    invoke-static {p0, v4, v6}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->cmov(Lorg/whispersystems/curve25519/java/ge_precomp;Lorg/whispersystems/curve25519/java/ge_precomp;I)V

    .line 45
    aget-object v4, v1, p1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    invoke-static {p2, v5}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->equal(BB)I

    move-result v6

    invoke-static {p0, v4, v6}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->cmov(Lorg/whispersystems/curve25519/java/ge_precomp;Lorg/whispersystems/curve25519/java/ge_precomp;I)V

    .line 46
    aget-object v4, v1, p1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    invoke-static {p2, v5}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->equal(BB)I

    move-result v6

    invoke-static {p0, v4, v6}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->cmov(Lorg/whispersystems/curve25519/java/ge_precomp;Lorg/whispersystems/curve25519/java/ge_precomp;I)V

    .line 47
    aget-object v4, v1, p1

    aget-object v4, v4, v5

    const/4 v5, 0x4

    invoke-static {p2, v5}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->equal(BB)I

    move-result v6

    invoke-static {p0, v4, v6}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->cmov(Lorg/whispersystems/curve25519/java/ge_precomp;Lorg/whispersystems/curve25519/java/ge_precomp;I)V

    .line 48
    aget-object v4, v1, p1

    aget-object v4, v4, v5

    const/4 v5, 0x5

    invoke-static {p2, v5}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->equal(BB)I

    move-result v6

    invoke-static {p0, v4, v6}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->cmov(Lorg/whispersystems/curve25519/java/ge_precomp;Lorg/whispersystems/curve25519/java/ge_precomp;I)V

    .line 49
    aget-object v4, v1, p1

    aget-object v4, v4, v5

    const/4 v5, 0x6

    invoke-static {p2, v5}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->equal(BB)I

    move-result v6

    invoke-static {p0, v4, v6}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->cmov(Lorg/whispersystems/curve25519/java/ge_precomp;Lorg/whispersystems/curve25519/java/ge_precomp;I)V

    .line 50
    aget-object v4, v1, p1

    aget-object v4, v4, v5

    invoke-static {p2, v0}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->equal(BB)I

    move-result v5

    invoke-static {p0, v4, v5}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->cmov(Lorg/whispersystems/curve25519/java/ge_precomp;Lorg/whispersystems/curve25519/java/ge_precomp;I)V

    .line 51
    aget-object p1, v1, p1

    aget-object p1, p1, v0

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->equal(BB)I

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->cmov(Lorg/whispersystems/curve25519/java/ge_precomp;Lorg/whispersystems/curve25519/java/ge_precomp;I)V

    .line 52
    iget-object p1, v2, Lorg/whispersystems/curve25519/java/ge_precomp;->yplusx:[I

    iget-object p2, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->yminusx:[I

    invoke-static {p1, p2}, Lorg/whispersystems/curve25519/java/fe_copy;->fe_copy([I[I)V

    .line 53
    iget-object p1, v2, Lorg/whispersystems/curve25519/java/ge_precomp;->yminusx:[I

    iget-object p2, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->yplusx:[I

    invoke-static {p1, p2}, Lorg/whispersystems/curve25519/java/fe_copy;->fe_copy([I[I)V

    .line 54
    iget-object p1, v2, Lorg/whispersystems/curve25519/java/ge_precomp;->xy2d:[I

    iget-object p2, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->xy2d:[I

    invoke-static {p1, p2}, Lorg/whispersystems/curve25519/java/fe_neg;->fe_neg([I[I)V

    .line 55
    invoke-static {p0, v2, v3}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->cmov(Lorg/whispersystems/curve25519/java/ge_precomp;Lorg/whispersystems/curve25519/java/ge_precomp;I)V

    return-void
.end method
