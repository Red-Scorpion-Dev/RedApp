.class public Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;
.super Lnet/i2p/crypto/eddsa/math/FieldElement;
.source "Ed25519FieldElement.java"


# static fields
.field private static final ZERO:[B


# instance fields
.field final t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    .line 47
    new-array v0, v0, [B

    sput-object v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->ZERO:[B

    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;)V

    .line 42
    array-length p1, p2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 44
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid radix-2^51 representation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 5

    .line 78
    check-cast p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v0, 0xa

    .line 79
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 81
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v2

    aget v4, p1, v2

    add-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {p1, v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object p1
.end method

.method public cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 5

    .line 959
    check-cast p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    neg-int p2, p2

    const/16 v0, 0xa

    .line 961
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 963
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v2

    aput v3, v1, v2

    .line 964
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v2

    iget-object v4, p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v4, v4, v2

    xor-int/2addr v3, v4

    and-int/2addr v3, p2

    .line 966
    aget v4, v1, v2

    xor-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    :cond_0
    new-instance p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object p2, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {p1, p2, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 978
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 980
    :cond_0
    check-cast p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 981
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->toByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Lnet/i2p/crypto/eddsa/Utils;->equal([B[B)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 973
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public invert()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 9

    .line 720
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 726
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 729
    invoke-virtual {p0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 732
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 738
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 741
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, v2

    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x5

    if-ge v2, v5, :cond_0

    .line 745
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {v4, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 752
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    move-object v4, v2

    const/4 v2, 0x1

    :goto_1
    const/16 v6, 0xa

    if-ge v2, v6, :cond_1

    .line 756
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 760
    :cond_1
    invoke-virtual {v4, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 763
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    move-object v7, v4

    const/4 v4, 0x1

    :goto_2
    const/16 v8, 0x14

    if-ge v4, v8, :cond_2

    .line 767
    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 771
    :cond_2
    invoke-virtual {v7, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 774
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    move-object v4, v2

    const/4 v2, 0x1

    :goto_3
    if-ge v2, v6, :cond_3

    .line 778
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 782
    :cond_3
    invoke-virtual {v4, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 785
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    move-object v4, v2

    const/4 v2, 0x1

    :goto_4
    const/16 v6, 0x32

    if-ge v2, v6, :cond_4

    .line 789
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 793
    :cond_4
    invoke-virtual {v4, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 796
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    move-object v7, v4

    const/4 v4, 0x1

    :goto_5
    const/16 v8, 0x64

    if-ge v4, v8, :cond_5

    .line 800
    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 804
    :cond_5
    invoke-virtual {v7, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 807
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    move-object v4, v2

    const/4 v2, 0x1

    :goto_6
    if-ge v2, v6, :cond_6

    .line 811
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 815
    :cond_6
    invoke-virtual {v4, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 818
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    :goto_7
    if-ge v3, v5, :cond_7

    .line 822
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 826
    :cond_7
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public isNonZero()Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->toByteArray()[B

    move-result-object v0

    .line 56
    sget-object v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->ZERO:[B

    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/Utils;->equal([B[B)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 226

    move-object/from16 v0, p0

    .line 178
    move-object/from16 v1, p1

    check-cast v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v1, v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v2, 0x1

    .line 179
    aget v3, v1, v2

    mul-int/lit8 v3, v3, 0x13

    const/4 v4, 0x2

    .line 180
    aget v5, v1, v4

    mul-int/lit8 v5, v5, 0x13

    const/4 v6, 0x3

    .line 181
    aget v7, v1, v6

    mul-int/lit8 v7, v7, 0x13

    const/4 v8, 0x4

    .line 182
    aget v9, v1, v8

    mul-int/lit8 v9, v9, 0x13

    const/4 v10, 0x5

    .line 183
    aget v11, v1, v10

    mul-int/lit8 v11, v11, 0x13

    const/4 v12, 0x6

    .line 184
    aget v13, v1, v12

    mul-int/lit8 v13, v13, 0x13

    const/4 v14, 0x7

    .line 185
    aget v15, v1, v14

    mul-int/lit8 v15, v15, 0x13

    const/16 v16, 0x8

    .line 186
    aget v17, v1, v16

    mul-int/lit8 v12, v17, 0x13

    const/16 v17, 0x9

    .line 187
    aget v19, v1, v17

    mul-int/lit8 v8, v19, 0x13

    .line 188
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v14, v14, v2

    mul-int/lit8 v14, v14, 0x2

    .line 189
    iget-object v2, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v2, v2, v6

    mul-int/lit8 v2, v2, 0x2

    .line 190
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v10

    mul-int/lit8 v6, v6, 0x2

    .line 191
    iget-object v10, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v19, 0x7

    aget v10, v10, v19

    mul-int/lit8 v10, v10, 0x2

    move/from16 v25, v3

    .line 192
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v17

    mul-int/lit8 v3, v3, 0x2

    .line 193
    iget-object v4, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v19, 0x0

    aget v4, v4, v19

    move/from16 v26, v3

    int-to-long v3, v4

    move/from16 v27, v5

    aget v5, v1, v19

    move/from16 v28, v9

    move/from16 v29, v10

    int-to-long v9, v5

    mul-long v3, v3, v9

    .line 194
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v5, v5, v19

    int-to-long v9, v5

    move-wide/from16 v30, v3

    const/4 v5, 0x1

    aget v3, v1, v5

    int-to-long v3, v3

    mul-long v9, v9, v3

    .line 195
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v19

    int-to-long v3, v3

    move-wide/from16 v32, v9

    const/4 v5, 0x2

    aget v9, v1, v5

    int-to-long v9, v9

    mul-long v3, v3, v9

    .line 196
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v5, v5, v19

    int-to-long v9, v5

    move-wide/from16 v34, v3

    const/4 v5, 0x3

    aget v3, v1, v5

    int-to-long v3, v3

    mul-long v9, v9, v3

    .line 197
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v19

    int-to-long v3, v3

    move-wide/from16 v36, v9

    const/4 v5, 0x4

    aget v9, v1, v5

    int-to-long v9, v9

    mul-long v3, v3, v9

    .line 198
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v5, v5, v19

    int-to-long v9, v5

    move-wide/from16 v38, v3

    const/4 v5, 0x5

    aget v3, v1, v5

    int-to-long v3, v3

    mul-long v9, v9, v3

    .line 199
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v19

    int-to-long v3, v3

    move-wide/from16 v40, v9

    const/4 v5, 0x6

    aget v9, v1, v5

    int-to-long v9, v9

    mul-long v3, v3, v9

    .line 200
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v5, v5, v19

    int-to-long v9, v5

    move-wide/from16 v42, v3

    const/4 v5, 0x7

    aget v3, v1, v5

    int-to-long v3, v3

    mul-long v9, v9, v3

    .line 201
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v19

    int-to-long v3, v3

    aget v5, v1, v16

    move-wide/from16 v44, v9

    int-to-long v9, v5

    mul-long v3, v3, v9

    .line 202
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v5, v5, v19

    int-to-long v9, v5

    aget v5, v1, v17

    move-wide/from16 v46, v3

    int-to-long v3, v5

    mul-long v9, v9, v3

    .line 203
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-long v4, v3

    aget v3, v1, v19

    move-wide/from16 v48, v9

    int-to-long v9, v3

    mul-long v4, v4, v9

    int-to-long v9, v14

    const/4 v3, 0x1

    .line 204
    aget v14, v1, v3

    move-wide/from16 v50, v4

    int-to-long v3, v14

    mul-long v3, v3, v9

    .line 205
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v14, 0x1

    aget v5, v5, v14

    move/from16 v53, v15

    int-to-long v14, v5

    move-wide/from16 v54, v3

    const/4 v5, 0x2

    aget v3, v1, v5

    int-to-long v3, v3

    mul-long v14, v14, v3

    const/4 v3, 0x3

    .line 206
    aget v4, v1, v3

    int-to-long v3, v4

    mul-long v3, v3, v9

    .line 207
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v22, 0x1

    aget v5, v5, v22

    move-wide/from16 v56, v3

    int-to-long v3, v5

    move-wide/from16 v58, v14

    const/4 v5, 0x4

    aget v14, v1, v5

    int-to-long v14, v14

    mul-long v3, v3, v14

    const/4 v5, 0x5

    .line 208
    aget v14, v1, v5

    int-to-long v14, v14

    mul-long v14, v14, v9

    .line 209
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v5, v5, v22

    move-wide/from16 v60, v14

    int-to-long v14, v5

    move-wide/from16 v62, v3

    const/4 v5, 0x6

    aget v3, v1, v5

    int-to-long v3, v3

    mul-long v14, v14, v3

    const/4 v3, 0x7

    .line 210
    aget v4, v1, v3

    int-to-long v3, v4

    mul-long v3, v3, v9

    .line 211
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v5, v5, v22

    move-wide/from16 v64, v3

    int-to-long v3, v5

    aget v5, v1, v16

    move-wide/from16 v66, v14

    int-to-long v14, v5

    mul-long v3, v3, v14

    int-to-long v14, v8

    mul-long v9, v9, v14

    .line 213
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v8, 0x2

    aget v5, v5, v8

    move-wide/from16 v68, v9

    int-to-long v8, v5

    aget v5, v1, v19

    move-wide/from16 v70, v3

    int-to-long v3, v5

    mul-long v8, v8, v3

    .line 214
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-long v4, v3

    const/4 v3, 0x1

    aget v10, v1, v3

    move-wide/from16 v72, v8

    int-to-long v8, v10

    mul-long v4, v4, v8

    .line 215
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v8, 0x2

    aget v3, v3, v8

    int-to-long v9, v3

    aget v3, v1, v8

    move-wide/from16 v74, v4

    int-to-long v3, v3

    mul-long v9, v9, v3

    .line 216
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v8

    int-to-long v3, v3

    const/4 v5, 0x3

    aget v8, v1, v5

    move-wide/from16 v76, v9

    int-to-long v8, v8

    mul-long v3, v3, v8

    .line 217
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-long v9, v5

    const/4 v5, 0x4

    aget v8, v1, v5

    move-wide/from16 v78, v3

    int-to-long v3, v8

    mul-long v9, v9, v3

    .line 218
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-long v4, v3

    const/4 v3, 0x5

    aget v8, v1, v3

    move-wide/from16 v80, v9

    int-to-long v8, v8

    mul-long v4, v4, v8

    .line 219
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v8, 0x2

    aget v3, v3, v8

    int-to-long v9, v3

    const/4 v3, 0x6

    aget v8, v1, v3

    move-wide/from16 v82, v4

    int-to-long v3, v8

    mul-long v9, v9, v3

    .line 220
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-long v4, v3

    const/4 v3, 0x7

    aget v8, v1, v3

    move-wide/from16 v84, v9

    int-to-long v8, v8

    mul-long v4, v4, v8

    .line 221
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v8, 0x2

    aget v3, v3, v8

    int-to-long v9, v3

    move-wide/from16 v86, v4

    int-to-long v3, v12

    mul-long v9, v9, v3

    .line 222
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v5, v5, v8

    move-wide/from16 v88, v9

    int-to-long v8, v5

    mul-long v8, v8, v14

    .line 223
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v10, 0x3

    aget v5, v5, v10

    move/from16 v90, v11

    int-to-long v10, v5

    aget v5, v1, v19

    move-wide/from16 v92, v8

    int-to-long v8, v5

    mul-long v10, v10, v8

    int-to-long v8, v2

    const/4 v2, 0x1

    .line 224
    aget v5, v1, v2

    move-wide/from16 v94, v10

    int-to-long v10, v5

    mul-long v10, v10, v8

    .line 225
    iget-object v2, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v5, 0x3

    aget v2, v2, v5

    move/from16 v96, v6

    int-to-long v5, v2

    const/4 v2, 0x2

    aget v12, v1, v2

    move-wide/from16 v98, v10

    int-to-long v10, v12

    mul-long v5, v5, v10

    const/4 v2, 0x3

    .line 226
    aget v10, v1, v2

    int-to-long v10, v10

    mul-long v10, v10, v8

    .line 227
    iget-object v12, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v12, v12, v2

    move-wide/from16 v100, v3

    int-to-long v2, v12

    const/4 v4, 0x4

    aget v12, v1, v4

    move-wide/from16 v102, v10

    int-to-long v10, v12

    mul-long v2, v2, v10

    const/4 v4, 0x5

    .line 228
    aget v10, v1, v4

    int-to-long v10, v10

    mul-long v10, v10, v8

    .line 229
    iget-object v4, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v12, 0x3

    aget v4, v4, v12

    move/from16 v104, v13

    int-to-long v12, v4

    move-wide/from16 v106, v10

    const/4 v4, 0x6

    aget v10, v1, v4

    int-to-long v10, v10

    mul-long v12, v12, v10

    move/from16 v4, v53

    int-to-long v10, v4

    mul-long v52, v8, v10

    .line 231
    iget-object v4, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v23, 0x3

    aget v4, v4, v23

    move-wide/from16 v108, v12

    int-to-long v12, v4

    mul-long v12, v12, v100

    mul-long v8, v8, v14

    .line 233
    iget-object v4, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v20, 0x4

    aget v4, v4, v20

    move-wide/from16 v110, v2

    int-to-long v2, v4

    aget v4, v1, v19

    move-wide/from16 v112, v5

    int-to-long v4, v4

    mul-long v2, v2, v4

    .line 234
    iget-object v4, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v4, v4, v20

    int-to-long v4, v4

    move-wide/from16 v114, v2

    const/4 v6, 0x1

    aget v2, v1, v6

    int-to-long v2, v2

    mul-long v4, v4, v2

    .line 235
    iget-object v2, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v2, v2, v20

    int-to-long v2, v2

    move-wide/from16 v116, v4

    const/4 v6, 0x2

    aget v4, v1, v6

    int-to-long v4, v4

    mul-long v2, v2, v4

    .line 236
    iget-object v4, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v4, v4, v20

    int-to-long v4, v4

    move-wide/from16 v118, v2

    const/4 v6, 0x3

    aget v2, v1, v6

    int-to-long v2, v2

    mul-long v4, v4, v2

    .line 237
    iget-object v2, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v2, v2, v20

    int-to-long v2, v2

    aget v6, v1, v20

    move-wide/from16 v120, v4

    int-to-long v4, v6

    mul-long v2, v2, v4

    .line 238
    iget-object v4, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v4, v4, v20

    int-to-long v4, v4

    move-wide/from16 v122, v2

    const/4 v6, 0x5

    aget v2, v1, v6

    int-to-long v2, v2

    mul-long v4, v4, v2

    .line 239
    iget-object v2, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v2, v2, v20

    int-to-long v2, v2

    move-wide/from16 v124, v4

    move/from16 v6, v104

    int-to-long v4, v6

    mul-long v2, v2, v4

    .line 240
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v20

    move-wide/from16 v126, v8

    int-to-long v8, v6

    mul-long v8, v8, v10

    .line 241
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v20

    move-wide/from16 v128, v8

    int-to-long v8, v6

    mul-long v8, v8, v100

    .line 242
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v20

    move-wide/from16 v130, v8

    int-to-long v8, v6

    mul-long v8, v8, v14

    .line 243
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v24, 0x5

    aget v6, v6, v24

    move-wide/from16 v132, v8

    int-to-long v8, v6

    aget v6, v1, v19

    move-wide/from16 v134, v12

    int-to-long v12, v6

    mul-long v8, v8, v12

    move/from16 v6, v96

    int-to-long v12, v6

    move-wide/from16 v136, v8

    const/4 v6, 0x1

    .line 244
    aget v8, v1, v6

    int-to-long v8, v8

    mul-long v8, v8, v12

    .line 245
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v24

    move-wide/from16 v138, v8

    int-to-long v8, v6

    move-wide/from16 v140, v2

    const/4 v6, 0x2

    aget v2, v1, v6

    int-to-long v2, v2

    mul-long v8, v8, v2

    const/4 v2, 0x3

    .line 246
    aget v3, v1, v2

    int-to-long v2, v3

    mul-long v2, v2, v12

    .line 247
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v24

    move-wide/from16 v142, v2

    int-to-long v2, v6

    move-wide/from16 v144, v8

    const/4 v6, 0x4

    aget v8, v1, v6

    int-to-long v8, v8

    mul-long v2, v2, v8

    move/from16 v6, v90

    int-to-long v8, v6

    mul-long v90, v12, v8

    .line 249
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v24

    move-wide/from16 v146, v2

    int-to-long v2, v6

    mul-long v2, v2, v4

    mul-long v96, v12, v10

    .line 251
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v24

    move-wide/from16 v148, v2

    int-to-long v2, v6

    mul-long v2, v2, v100

    mul-long v12, v12, v14

    .line 253
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v18, 0x6

    aget v6, v6, v18

    move-wide/from16 v150, v12

    int-to-long v12, v6

    aget v6, v1, v19

    move-wide/from16 v152, v2

    int-to-long v2, v6

    mul-long v12, v12, v2

    .line 254
    iget-object v2, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v2, v2, v18

    int-to-long v2, v2

    move-wide/from16 v154, v12

    const/4 v6, 0x1

    aget v12, v1, v6

    int-to-long v12, v12

    mul-long v2, v2, v12

    .line 255
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v18

    int-to-long v12, v6

    move-wide/from16 v156, v2

    const/4 v6, 0x2

    aget v2, v1, v6

    int-to-long v2, v2

    mul-long v12, v12, v2

    .line 256
    iget-object v2, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v2, v2, v18

    int-to-long v2, v2

    move-wide/from16 v158, v12

    const/4 v6, 0x3

    aget v12, v1, v6

    int-to-long v12, v12

    mul-long v2, v2, v12

    .line 257
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v18

    int-to-long v12, v6

    move-wide/from16 v160, v2

    move/from16 v6, v28

    int-to-long v2, v6

    mul-long v12, v12, v2

    .line 258
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v18

    move-wide/from16 v162, v12

    int-to-long v12, v6

    mul-long v12, v12, v8

    .line 259
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v18

    move-wide/from16 v164, v12

    int-to-long v12, v6

    mul-long v12, v12, v4

    .line 260
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v18

    move-wide/from16 v166, v12

    int-to-long v12, v6

    mul-long v12, v12, v10

    .line 261
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v18

    move-wide/from16 v168, v12

    int-to-long v12, v6

    mul-long v12, v12, v100

    .line 262
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v18

    move-wide/from16 v170, v12

    int-to-long v12, v6

    mul-long v12, v12, v14

    .line 263
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v21, 0x7

    aget v6, v6, v21

    move-wide/from16 v172, v12

    int-to-long v12, v6

    aget v6, v1, v19

    move-wide/from16 v174, v14

    int-to-long v14, v6

    mul-long v12, v12, v14

    move/from16 v6, v29

    int-to-long v14, v6

    move-wide/from16 v176, v12

    const/4 v6, 0x1

    .line 264
    aget v12, v1, v6

    int-to-long v12, v12

    mul-long v12, v12, v14

    .line 265
    iget-object v6, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v6, v6, v21

    move-wide/from16 v178, v12

    int-to-long v12, v6

    move-wide/from16 v180, v10

    const/4 v6, 0x2

    aget v10, v1, v6

    int-to-long v10, v10

    mul-long v12, v12, v10

    int-to-long v6, v7

    mul-long v10, v14, v6

    move-wide/from16 v182, v12

    .line 267
    iget-object v12, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v12, v12, v21

    int-to-long v12, v12

    mul-long v12, v12, v2

    mul-long v28, v14, v8

    move-wide/from16 v184, v12

    .line 269
    iget-object v12, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v12, v12, v21

    int-to-long v12, v12

    mul-long v12, v12, v4

    mul-long v104, v14, v180

    move-wide/from16 v186, v12

    .line 271
    iget-object v12, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v12, v12, v21

    int-to-long v12, v12

    mul-long v12, v12, v100

    mul-long v14, v14, v174

    move-wide/from16 v188, v14

    .line 273
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v14, v14, v16

    int-to-long v14, v14

    move-wide/from16 v190, v12

    aget v12, v1, v19

    int-to-long v12, v12

    mul-long v14, v14, v12

    .line 274
    iget-object v12, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v12, v12, v16

    int-to-long v12, v12

    move-wide/from16 v192, v14

    const/16 v22, 0x1

    aget v14, v1, v22

    int-to-long v14, v14

    mul-long v12, v12, v14

    .line 275
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v14, v14, v16

    int-to-long v14, v14

    move-wide/from16 v194, v12

    move/from16 v12, v27

    int-to-long v12, v12

    mul-long v14, v14, v12

    move-wide/from16 v196, v14

    .line 276
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v14, v14, v16

    int-to-long v14, v14

    mul-long v14, v14, v6

    move-wide/from16 v198, v14

    .line 277
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v14, v14, v16

    int-to-long v14, v14

    mul-long v14, v14, v2

    move-wide/from16 v200, v14

    .line 278
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v14, v14, v16

    int-to-long v14, v14

    mul-long v14, v14, v8

    move-wide/from16 v202, v14

    .line 279
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v14, v14, v16

    int-to-long v14, v14

    mul-long v14, v14, v4

    move-wide/from16 v204, v14

    .line 280
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v14, v14, v16

    int-to-long v14, v14

    mul-long v14, v14, v180

    move-wide/from16 v206, v14

    .line 281
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v14, v14, v16

    int-to-long v14, v14

    mul-long v14, v14, v100

    move-wide/from16 v208, v14

    .line 282
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v14, v14, v16

    int-to-long v14, v14

    mul-long v14, v14, v174

    move-wide/from16 v210, v14

    .line 283
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v14, v14, v17

    int-to-long v14, v14

    aget v1, v1, v19

    move-wide/from16 v212, v10

    int-to-long v10, v1

    mul-long v14, v14, v10

    move/from16 v1, v26

    int-to-long v10, v1

    move-wide/from16 v214, v14

    move/from16 v1, v25

    int-to-long v14, v1

    mul-long v14, v14, v10

    .line 285
    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v1, v1, v17

    move-wide/from16 v216, v14

    int-to-long v14, v1

    mul-long v14, v14, v12

    mul-long v6, v6, v10

    .line 287
    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v1, v1, v17

    int-to-long v12, v1

    mul-long v12, v12, v2

    mul-long v8, v8, v10

    .line 289
    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v1, v1, v17

    int-to-long v1, v1

    mul-long v1, v1, v4

    mul-long v3, v10, v180

    .line 291
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v5, v5, v17

    move-wide/from16 v218, v3

    int-to-long v3, v5

    mul-long v3, v3, v100

    mul-long v10, v10, v174

    add-long v26, v30, v68

    add-long v26, v26, v88

    add-long v26, v26, v52

    add-long v26, v26, v140

    add-long v26, v26, v90

    add-long v26, v26, v162

    add-long v26, v26, v212

    add-long v26, v26, v196

    add-long v26, v26, v216

    add-long v30, v32, v50

    add-long v30, v30, v92

    add-long v30, v30, v134

    add-long v30, v30, v128

    add-long v30, v30, v148

    add-long v30, v30, v164

    add-long v30, v30, v184

    add-long v30, v30, v198

    add-long v30, v30, v14

    add-long v14, v34, v54

    add-long v14, v14, v72

    add-long v14, v14, v126

    add-long v14, v14, v130

    add-long v14, v14, v96

    add-long v14, v14, v166

    add-long v14, v14, v28

    add-long v14, v14, v200

    add-long/2addr v14, v6

    add-long v5, v36, v58

    add-long v5, v5, v74

    add-long v5, v5, v94

    add-long v5, v5, v132

    add-long v5, v5, v152

    add-long v5, v5, v168

    add-long v5, v5, v186

    add-long v5, v5, v202

    add-long/2addr v5, v12

    add-long v12, v38, v56

    add-long v12, v12, v76

    add-long v12, v12, v98

    add-long v12, v12, v114

    add-long v12, v12, v150

    add-long v12, v12, v170

    add-long v12, v12, v104

    add-long v12, v12, v204

    add-long/2addr v12, v8

    add-long v7, v40, v62

    add-long v7, v7, v78

    add-long v7, v7, v112

    add-long v7, v7, v116

    add-long v7, v7, v136

    add-long v7, v7, v172

    add-long v7, v7, v190

    add-long v7, v7, v206

    add-long/2addr v7, v1

    add-long v1, v42, v60

    add-long v1, v1, v80

    add-long v1, v1, v102

    add-long v1, v1, v118

    add-long v1, v1, v138

    add-long v1, v1, v154

    add-long v1, v1, v188

    add-long v1, v1, v208

    add-long v1, v1, v218

    add-long v28, v44, v66

    add-long v28, v28, v82

    add-long v28, v28, v110

    add-long v28, v28, v120

    add-long v28, v28, v144

    add-long v28, v28, v156

    add-long v28, v28, v176

    add-long v28, v28, v210

    add-long v28, v28, v3

    add-long v3, v46, v64

    add-long v3, v3, v84

    add-long v3, v3, v106

    add-long v3, v3, v122

    add-long v3, v3, v142

    add-long v3, v3, v158

    add-long v3, v3, v178

    add-long v3, v3, v192

    add-long/2addr v3, v10

    add-long v9, v48, v70

    add-long v9, v9, v86

    add-long v9, v9, v108

    add-long v9, v9, v124

    add-long v9, v9, v146

    add-long v9, v9, v160

    add-long v9, v9, v182

    add-long v9, v9, v194

    add-long v9, v9, v214

    const-wide/32 v32, 0x2000000

    add-long v34, v26, v32

    const/16 v11, 0x1a

    shr-long v34, v34, v11

    add-long v30, v30, v34

    shl-long v34, v34, v11

    sub-long v26, v26, v34

    add-long v34, v12, v32

    shr-long v34, v34, v11

    add-long v7, v7, v34

    shl-long v34, v34, v11

    sub-long v12, v12, v34

    const-wide/32 v34, 0x1000000

    add-long v36, v30, v34

    const/16 v25, 0x19

    shr-long v36, v36, v25

    add-long v14, v14, v36

    shl-long v36, v36, v25

    sub-long v30, v30, v36

    add-long v36, v7, v34

    shr-long v36, v36, v25

    add-long v1, v1, v36

    shl-long v36, v36, v25

    sub-long v7, v7, v36

    add-long v36, v14, v32

    shr-long v36, v36, v11

    add-long v5, v5, v36

    shl-long v36, v36, v11

    sub-long v14, v14, v36

    add-long v36, v1, v32

    shr-long v36, v36, v11

    add-long v28, v28, v36

    shl-long v36, v36, v11

    sub-long v1, v1, v36

    add-long v36, v5, v34

    shr-long v36, v36, v25

    add-long v12, v12, v36

    shl-long v36, v36, v25

    sub-long v5, v5, v36

    add-long v36, v28, v34

    shr-long v36, v36, v25

    add-long v3, v3, v36

    shl-long v36, v36, v25

    move-wide/from16 v220, v1

    sub-long v0, v28, v36

    add-long v28, v12, v32

    shr-long v28, v28, v11

    add-long v7, v7, v28

    shl-long v28, v28, v11

    sub-long v12, v12, v28

    add-long v28, v3, v32

    shr-long v28, v28, v11

    add-long v9, v9, v28

    shl-long v28, v28, v11

    sub-long v3, v3, v28

    add-long v34, v9, v34

    shr-long v28, v34, v25

    const-wide/16 v34, 0x13

    mul-long v34, v34, v28

    add-long v26, v26, v34

    shl-long v28, v28, v25

    sub-long v9, v9, v28

    add-long v32, v26, v32

    shr-long v28, v32, v11

    move-wide/from16 v222, v9

    add-long v9, v30, v28

    shl-long v28, v28, v11

    move-wide/from16 v224, v3

    sub-long v2, v26, v28

    const/16 v4, 0xa

    .line 376
    new-array v4, v4, [I

    long-to-int v2, v2

    aput v2, v4, v19

    long-to-int v2, v9

    const/4 v3, 0x1

    aput v2, v4, v3

    long-to-int v2, v14

    const/4 v3, 0x2

    aput v2, v4, v3

    long-to-int v2, v5

    const/4 v3, 0x3

    aput v2, v4, v3

    long-to-int v2, v12

    const/4 v3, 0x4

    aput v2, v4, v3

    long-to-int v2, v7

    const/4 v3, 0x5

    aput v2, v4, v3

    move-wide/from16 v2, v220

    long-to-int v2, v2

    const/4 v3, 0x6

    aput v2, v4, v3

    long-to-int v0, v0

    const/4 v1, 0x7

    aput v0, v4, v1

    move-wide/from16 v0, v224

    long-to-int v0, v0

    aput v0, v4, v16

    move-wide/from16 v9, v222

    long-to-int v0, v9

    aput v0, v4, v17

    .line 387
    new-instance v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    move-object/from16 v1, p0

    iget-object v2, v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v0, v2, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v0
.end method

.method public negate()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4

    const/16 v0, 0xa

    .line 132
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 134
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v2

    neg-int v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v0, v2, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v0
.end method

.method public pow22523()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 7

    .line 841
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 844
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 847
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 850
    invoke-virtual {p0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 853
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 859
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    const/4 v2, 0x1

    move-object v3, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    .line 866
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    :cond_0
    invoke-virtual {v3, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    move-object v3, v1

    const/4 v1, 0x1

    :goto_1
    const/16 v4, 0xa

    if-ge v1, v4, :cond_1

    .line 877
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 881
    :cond_1
    invoke-virtual {v3, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 884
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    move-object v5, v3

    const/4 v3, 0x1

    :goto_2
    const/16 v6, 0x14

    if-ge v3, v6, :cond_2

    .line 888
    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 892
    :cond_2
    invoke-virtual {v5, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 895
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    move-object v3, v1

    const/4 v1, 0x1

    :goto_3
    if-ge v1, v4, :cond_3

    .line 899
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 903
    :cond_3
    invoke-virtual {v3, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    move-object v3, v1

    const/4 v1, 0x1

    :goto_4
    const/16 v4, 0x32

    if-ge v1, v4, :cond_4

    .line 910
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 914
    :cond_4
    invoke-virtual {v3, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 917
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    move-object v5, v3

    const/4 v3, 0x1

    :goto_5
    const/16 v6, 0x64

    if-ge v3, v6, :cond_5

    .line 921
    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 925
    :cond_5
    invoke-virtual {v5, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 928
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    :goto_6
    if-ge v2, v4, :cond_6

    .line 932
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 936
    :cond_6
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 942
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 945
    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public square()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 127

    move-object/from16 v0, p0

    .line 409
    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 410
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 411
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    .line 412
    iget-object v7, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    .line 413
    iget-object v9, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    .line 414
    iget-object v11, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v12, 0x5

    aget v11, v11, v12

    .line 415
    iget-object v13, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    .line 416
    iget-object v15, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v16, 0x7

    aget v15, v15, v16

    .line 417
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v17, 0x8

    aget v14, v14, v17

    .line 418
    iget-object v12, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v18, 0x9

    aget v12, v12, v18

    mul-int/lit8 v10, v1, 0x2

    mul-int/lit8 v8, v3, 0x2

    mul-int/lit8 v6, v5, 0x2

    mul-int/lit8 v4, v7, 0x2

    mul-int/lit8 v2, v9, 0x2

    mul-int/lit8 v0, v11, 0x2

    move/from16 v19, v2

    mul-int/lit8 v2, v13, 0x2

    move/from16 v20, v2

    mul-int/lit8 v2, v15, 0x2

    move/from16 v21, v6

    mul-int/lit8 v6, v11, 0x26

    move/from16 v22, v6

    mul-int/lit8 v6, v13, 0x13

    move/from16 v23, v6

    mul-int/lit8 v6, v15, 0x26

    move/from16 v24, v6

    mul-int/lit8 v6, v14, 0x13

    move/from16 v25, v6

    mul-int/lit8 v6, v12, 0x26

    move/from16 v26, v2

    int-to-long v1, v1

    mul-long v1, v1, v1

    move-wide/from16 v27, v1

    int-to-long v1, v10

    move/from16 v29, v4

    int-to-long v3, v3

    mul-long v30, v1, v3

    move/from16 v32, v6

    int-to-long v5, v5

    mul-long v33, v1, v5

    move-wide/from16 v35, v5

    int-to-long v5, v7

    mul-long v37, v1, v5

    int-to-long v9, v9

    mul-long v39, v1, v9

    move-wide/from16 v41, v5

    int-to-long v5, v11

    mul-long v43, v1, v5

    move-wide/from16 v45, v5

    int-to-long v5, v13

    mul-long v47, v1, v5

    move-wide/from16 v49, v5

    int-to-long v5, v15

    mul-long v51, v1, v5

    int-to-long v13, v14

    mul-long v53, v1, v13

    int-to-long v11, v12

    mul-long v1, v1, v11

    int-to-long v7, v8

    mul-long v3, v3, v7

    mul-long v55, v7, v35

    move-wide/from16 v57, v1

    move/from16 v15, v29

    int-to-long v1, v15

    mul-long v59, v7, v1

    mul-long v61, v7, v9

    move-wide/from16 v63, v3

    int-to-long v3, v0

    mul-long v65, v7, v3

    mul-long v67, v7, v49

    move-wide/from16 v69, v11

    move/from16 v15, v26

    int-to-long v11, v15

    mul-long v71, v7, v11

    mul-long v73, v7, v13

    move-wide/from16 v75, v13

    move/from16 v0, v32

    int-to-long v13, v0

    mul-long v7, v7, v13

    mul-long v77, v35, v35

    move-wide/from16 v79, v7

    move/from16 v0, v21

    int-to-long v7, v0

    mul-long v81, v7, v41

    mul-long v83, v7, v9

    mul-long v85, v7, v45

    mul-long v87, v7, v49

    mul-long v89, v7, v5

    move-wide/from16 v91, v11

    move/from16 v0, v25

    int-to-long v11, v0

    mul-long v7, v7, v11

    mul-long v25, v35, v13

    mul-long v35, v1, v41

    mul-long v41, v1, v9

    mul-long v93, v1, v3

    mul-long v95, v1, v49

    move-wide/from16 v97, v7

    move/from16 v15, v24

    int-to-long v7, v15

    mul-long v99, v1, v7

    mul-long v101, v1, v11

    mul-long v1, v1, v13

    mul-long v103, v9, v9

    move-wide/from16 v105, v1

    move/from16 v0, v19

    int-to-long v0, v0

    mul-long v107, v0, v45

    move-wide/from16 v109, v5

    move/from16 v2, v23

    int-to-long v5, v2

    mul-long v23, v0, v5

    mul-long v111, v9, v7

    mul-long v0, v0, v11

    mul-long v9, v9, v13

    move-wide/from16 v113, v9

    move/from16 v2, v22

    int-to-long v9, v2

    mul-long v9, v9, v45

    mul-long v21, v3, v5

    mul-long v45, v3, v7

    mul-long v115, v3, v11

    mul-long v3, v3, v13

    mul-long v5, v5, v49

    mul-long v117, v49, v7

    move-wide/from16 v119, v3

    move/from16 v2, v20

    int-to-long v2, v2

    mul-long v2, v2, v11

    mul-long v19, v49, v13

    mul-long v7, v7, v109

    mul-long v49, v91, v11

    mul-long v91, v91, v13

    mul-long v11, v11, v75

    mul-long v75, v75, v13

    mul-long v13, v13, v69

    add-long v27, v27, v79

    add-long v27, v27, v97

    add-long v27, v27, v99

    add-long v27, v27, v23

    add-long v27, v27, v9

    add-long v30, v30, v25

    add-long v30, v30, v101

    add-long v30, v30, v111

    add-long v30, v30, v21

    add-long v33, v33, v63

    add-long v33, v33, v105

    add-long v33, v33, v0

    add-long v33, v33, v45

    add-long v33, v33, v5

    add-long v37, v37, v55

    add-long v37, v37, v113

    add-long v37, v37, v115

    add-long v37, v37, v117

    add-long v39, v39, v59

    add-long v39, v39, v77

    add-long v39, v39, v119

    add-long v39, v39, v2

    add-long v39, v39, v7

    add-long v43, v43, v61

    add-long v43, v43, v81

    add-long v43, v43, v19

    add-long v43, v43, v49

    add-long v47, v47, v65

    add-long v47, v47, v83

    add-long v47, v47, v35

    add-long v47, v47, v91

    add-long v47, v47, v11

    add-long v51, v51, v67

    add-long v51, v51, v85

    add-long v51, v51, v41

    add-long v51, v51, v75

    add-long v53, v53, v71

    add-long v53, v53, v87

    add-long v53, v53, v93

    add-long v53, v53, v103

    add-long v53, v53, v13

    add-long v1, v57, v73

    add-long v1, v1, v89

    add-long v1, v1, v95

    add-long v1, v1, v107

    const-wide/32 v3, 0x2000000

    add-long v5, v27, v3

    const/16 v0, 0x1a

    shr-long/2addr v5, v0

    add-long v30, v30, v5

    shl-long/2addr v5, v0

    sub-long v27, v27, v5

    add-long v5, v39, v3

    shr-long/2addr v5, v0

    add-long v43, v43, v5

    shl-long/2addr v5, v0

    sub-long v39, v39, v5

    const-wide/32 v5, 0x1000000

    add-long v7, v30, v5

    const/16 v9, 0x19

    shr-long/2addr v7, v9

    add-long v33, v33, v7

    shl-long/2addr v7, v9

    sub-long v30, v30, v7

    add-long v7, v43, v5

    shr-long/2addr v7, v9

    add-long v47, v47, v7

    shl-long/2addr v7, v9

    sub-long v43, v43, v7

    add-long v7, v33, v3

    shr-long/2addr v7, v0

    add-long v37, v37, v7

    shl-long/2addr v7, v0

    sub-long v7, v33, v7

    add-long v10, v47, v3

    shr-long/2addr v10, v0

    add-long v51, v51, v10

    shl-long/2addr v10, v0

    sub-long v10, v47, v10

    add-long v12, v37, v5

    shr-long/2addr v12, v9

    add-long v39, v39, v12

    shl-long/2addr v12, v9

    sub-long v12, v37, v12

    add-long v14, v51, v5

    shr-long/2addr v14, v9

    add-long v53, v53, v14

    shl-long/2addr v14, v9

    sub-long v14, v51, v14

    add-long v19, v39, v3

    shr-long v19, v19, v0

    move-wide/from16 v121, v10

    add-long v9, v43, v19

    shl-long v19, v19, v0

    sub-long v5, v39, v19

    add-long v19, v53, v3

    shr-long v19, v19, v0

    add-long v1, v1, v19

    shl-long v19, v19, v0

    sub-long v3, v53, v19

    const-wide/32 v19, 0x1000000

    add-long v19, v1, v19

    const/16 v11, 0x19

    shr-long v19, v19, v11

    const-wide/16 v21, 0x13

    mul-long v21, v21, v19

    add-long v27, v27, v21

    shl-long v19, v19, v11

    sub-long v1, v1, v19

    const-wide/32 v19, 0x2000000

    add-long v19, v27, v19

    shr-long v19, v19, v0

    move-wide/from16 v123, v1

    add-long v1, v30, v19

    shl-long v19, v19, v0

    move-wide/from16 v125, v3

    sub-long v3, v27, v19

    const/16 v0, 0xa

    .line 532
    new-array v0, v0, [I

    long-to-int v3, v3

    const/4 v4, 0x0

    aput v3, v0, v4

    long-to-int v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    long-to-int v1, v7

    const/4 v2, 0x2

    aput v1, v0, v2

    long-to-int v1, v12

    const/4 v2, 0x3

    aput v1, v0, v2

    long-to-int v1, v5

    const/4 v2, 0x4

    aput v1, v0, v2

    long-to-int v1, v9

    const/4 v2, 0x5

    aput v1, v0, v2

    move-wide/from16 v1, v121

    long-to-int v1, v1

    const/4 v2, 0x6

    aput v1, v0, v2

    long-to-int v1, v14

    aput v1, v0, v16

    move-wide/from16 v1, v125

    long-to-int v1, v1

    aput v1, v0, v17

    move-wide/from16 v1, v123

    long-to-int v1, v1

    aput v1, v0, v18

    .line 543
    new-instance v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    move-object/from16 v2, p0

    iget-object v3, v2, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v1, v3, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v1
.end method

.method public squareAndDouble()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 127

    move-object/from16 v0, p0

    .line 565
    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 566
    iget-object v3, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 567
    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    .line 568
    iget-object v7, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    .line 569
    iget-object v9, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    .line 570
    iget-object v11, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v12, 0x5

    aget v11, v11, v12

    .line 571
    iget-object v13, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    .line 572
    iget-object v15, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v16, 0x7

    aget v15, v15, v16

    .line 573
    iget-object v14, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v17, 0x8

    aget v14, v14, v17

    .line 574
    iget-object v12, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v18, 0x9

    aget v12, v12, v18

    mul-int/lit8 v10, v1, 0x2

    mul-int/lit8 v8, v3, 0x2

    mul-int/lit8 v6, v5, 0x2

    mul-int/lit8 v4, v7, 0x2

    mul-int/lit8 v2, v9, 0x2

    mul-int/lit8 v0, v11, 0x2

    move/from16 v19, v2

    mul-int/lit8 v2, v13, 0x2

    move/from16 v20, v2

    mul-int/lit8 v2, v15, 0x2

    move/from16 v21, v6

    mul-int/lit8 v6, v11, 0x26

    move/from16 v22, v6

    mul-int/lit8 v6, v13, 0x13

    move/from16 v23, v6

    mul-int/lit8 v6, v15, 0x26

    move/from16 v24, v6

    mul-int/lit8 v6, v14, 0x13

    move/from16 v25, v6

    mul-int/lit8 v6, v12, 0x26

    move/from16 v26, v2

    int-to-long v1, v1

    mul-long v1, v1, v1

    move-wide/from16 v27, v1

    int-to-long v1, v10

    move/from16 v29, v4

    int-to-long v3, v3

    mul-long v30, v1, v3

    move/from16 v32, v6

    int-to-long v5, v5

    mul-long v33, v1, v5

    move-wide/from16 v35, v5

    int-to-long v5, v7

    mul-long v37, v1, v5

    int-to-long v9, v9

    mul-long v39, v1, v9

    move-wide/from16 v41, v5

    int-to-long v5, v11

    mul-long v43, v1, v5

    move-wide/from16 v45, v5

    int-to-long v5, v13

    mul-long v47, v1, v5

    move-wide/from16 v49, v5

    int-to-long v5, v15

    mul-long v51, v1, v5

    int-to-long v13, v14

    mul-long v53, v1, v13

    int-to-long v11, v12

    mul-long v1, v1, v11

    int-to-long v7, v8

    mul-long v3, v3, v7

    mul-long v55, v7, v35

    move-wide/from16 v57, v1

    move/from16 v15, v29

    int-to-long v1, v15

    mul-long v59, v7, v1

    mul-long v61, v7, v9

    move-wide/from16 v63, v3

    int-to-long v3, v0

    mul-long v65, v7, v3

    mul-long v67, v7, v49

    move-wide/from16 v69, v11

    move/from16 v15, v26

    int-to-long v11, v15

    mul-long v71, v7, v11

    mul-long v73, v7, v13

    move-wide/from16 v75, v13

    move/from16 v0, v32

    int-to-long v13, v0

    mul-long v7, v7, v13

    mul-long v77, v35, v35

    move-wide/from16 v79, v7

    move/from16 v0, v21

    int-to-long v7, v0

    mul-long v81, v7, v41

    mul-long v83, v7, v9

    mul-long v85, v7, v45

    mul-long v87, v7, v49

    mul-long v89, v7, v5

    move-wide/from16 v91, v11

    move/from16 v0, v25

    int-to-long v11, v0

    mul-long v7, v7, v11

    mul-long v25, v35, v13

    mul-long v35, v1, v41

    mul-long v41, v1, v9

    mul-long v93, v1, v3

    mul-long v95, v1, v49

    move-wide/from16 v97, v7

    move/from16 v15, v24

    int-to-long v7, v15

    mul-long v99, v1, v7

    mul-long v101, v1, v11

    mul-long v1, v1, v13

    mul-long v103, v9, v9

    move-wide/from16 v105, v1

    move/from16 v0, v19

    int-to-long v0, v0

    mul-long v107, v0, v45

    move-wide/from16 v109, v5

    move/from16 v2, v23

    int-to-long v5, v2

    mul-long v23, v0, v5

    mul-long v111, v9, v7

    mul-long v0, v0, v11

    mul-long v9, v9, v13

    move-wide/from16 v113, v9

    move/from16 v2, v22

    int-to-long v9, v2

    mul-long v9, v9, v45

    mul-long v21, v3, v5

    mul-long v45, v3, v7

    mul-long v115, v3, v11

    mul-long v3, v3, v13

    mul-long v5, v5, v49

    mul-long v117, v49, v7

    move-wide/from16 v119, v3

    move/from16 v2, v20

    int-to-long v2, v2

    mul-long v2, v2, v11

    mul-long v19, v49, v13

    mul-long v7, v7, v109

    mul-long v49, v91, v11

    mul-long v91, v91, v13

    mul-long v11, v11, v75

    mul-long v75, v75, v13

    mul-long v13, v13, v69

    add-long v27, v27, v79

    add-long v27, v27, v97

    add-long v27, v27, v99

    add-long v27, v27, v23

    add-long v27, v27, v9

    add-long v30, v30, v25

    add-long v30, v30, v101

    add-long v30, v30, v111

    add-long v30, v30, v21

    add-long v33, v33, v63

    add-long v33, v33, v105

    add-long v33, v33, v0

    add-long v33, v33, v45

    add-long v33, v33, v5

    add-long v37, v37, v55

    add-long v37, v37, v113

    add-long v37, v37, v115

    add-long v37, v37, v117

    add-long v39, v39, v59

    add-long v39, v39, v77

    add-long v39, v39, v119

    add-long v39, v39, v2

    add-long v39, v39, v7

    add-long v43, v43, v61

    add-long v43, v43, v81

    add-long v43, v43, v19

    add-long v43, v43, v49

    add-long v47, v47, v65

    add-long v47, v47, v83

    add-long v47, v47, v35

    add-long v47, v47, v91

    add-long v47, v47, v11

    add-long v51, v51, v67

    add-long v51, v51, v85

    add-long v51, v51, v41

    add-long v51, v51, v75

    add-long v53, v53, v71

    add-long v53, v53, v87

    add-long v53, v53, v93

    add-long v53, v53, v103

    add-long v53, v53, v13

    add-long v1, v57, v73

    add-long v1, v1, v89

    add-long v1, v1, v95

    add-long v1, v1, v107

    add-long v27, v27, v27

    add-long v30, v30, v30

    add-long v33, v33, v33

    add-long v37, v37, v37

    add-long v39, v39, v39

    add-long v43, v43, v43

    add-long v47, v47, v47

    add-long v51, v51, v51

    add-long v53, v53, v53

    add-long/2addr v1, v1

    const-wide/32 v3, 0x2000000

    add-long v5, v27, v3

    const/16 v0, 0x1a

    shr-long/2addr v5, v0

    add-long v30, v30, v5

    shl-long/2addr v5, v0

    sub-long v27, v27, v5

    add-long v5, v39, v3

    shr-long/2addr v5, v0

    add-long v43, v43, v5

    shl-long/2addr v5, v0

    sub-long v39, v39, v5

    const-wide/32 v5, 0x1000000

    add-long v7, v30, v5

    const/16 v9, 0x19

    shr-long/2addr v7, v9

    add-long v33, v33, v7

    shl-long/2addr v7, v9

    sub-long v30, v30, v7

    add-long v7, v43, v5

    shr-long/2addr v7, v9

    add-long v47, v47, v7

    shl-long/2addr v7, v9

    sub-long v43, v43, v7

    add-long v7, v33, v3

    shr-long/2addr v7, v0

    add-long v37, v37, v7

    shl-long/2addr v7, v0

    sub-long v7, v33, v7

    add-long v10, v47, v3

    shr-long/2addr v10, v0

    add-long v51, v51, v10

    shl-long/2addr v10, v0

    sub-long v10, v47, v10

    add-long v12, v37, v5

    shr-long/2addr v12, v9

    add-long v39, v39, v12

    shl-long/2addr v12, v9

    sub-long v12, v37, v12

    add-long v14, v51, v5

    shr-long/2addr v14, v9

    add-long v53, v53, v14

    shl-long/2addr v14, v9

    sub-long v14, v51, v14

    add-long v19, v39, v3

    shr-long v19, v19, v0

    move-wide/from16 v121, v10

    add-long v9, v43, v19

    shl-long v19, v19, v0

    sub-long v5, v39, v19

    add-long v19, v53, v3

    shr-long v19, v19, v0

    add-long v1, v1, v19

    shl-long v19, v19, v0

    sub-long v3, v53, v19

    const-wide/32 v19, 0x1000000

    add-long v19, v1, v19

    const/16 v11, 0x19

    shr-long v19, v19, v11

    const-wide/16 v21, 0x13

    mul-long v21, v21, v19

    add-long v27, v27, v21

    shl-long v19, v19, v11

    sub-long v1, v1, v19

    const-wide/32 v19, 0x2000000

    add-long v19, v27, v19

    shr-long v19, v19, v0

    move-wide/from16 v123, v1

    add-long v1, v30, v19

    shl-long v19, v19, v0

    move-wide/from16 v125, v3

    sub-long v3, v27, v19

    const/16 v0, 0xa

    .line 694
    new-array v0, v0, [I

    long-to-int v3, v3

    const/4 v4, 0x0

    aput v3, v0, v4

    long-to-int v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    long-to-int v1, v7

    const/4 v2, 0x2

    aput v1, v0, v2

    long-to-int v1, v12

    const/4 v2, 0x3

    aput v1, v0, v2

    long-to-int v1, v5

    const/4 v2, 0x4

    aput v1, v0, v2

    long-to-int v1, v9

    const/4 v2, 0x5

    aput v1, v0, v2

    move-wide/from16 v1, v121

    long-to-int v1, v1

    const/4 v2, 0x6

    aput v1, v0, v2

    long-to-int v1, v14

    aput v1, v0, v16

    move-wide/from16 v1, v125

    long-to-int v1, v1

    aput v1, v0, v17

    move-wide/from16 v1, v123

    long-to-int v1, v1

    aput v1, v0, v18

    .line 705
    new-instance v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    move-object/from16 v2, p0

    iget-object v3, v2, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v1, v3, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v1
.end method

.method public subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 5

    .line 107
    check-cast p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v0, 0xa

    .line 108
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 110
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v2

    aget v4, p1, v2

    sub-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_0
    new-instance p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {p1, v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Ed25519FieldElement val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lnet/i2p/crypto/eddsa/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
