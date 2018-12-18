.class public Lorg/h2/security/SHA256;
.super Ljava/lang/Object;
.source "SHA256.java"


# static fields
.field private static final HH:[I

.field private static final K:[I


# instance fields
.field private final hh:[I

.field private final result:[B

.field private final w:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    .line 19
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/h2/security/SHA256;->K:[I

    const/16 v0, 0x8

    .line 34
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/h2/security/SHA256;->HH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data

    :array_1
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 37
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/h2/security/SHA256;->result:[B

    const/16 v0, 0x40

    .line 38
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/security/SHA256;->w:[I

    const/16 v0, 0x8

    .line 39
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/security/SHA256;->hh:[I

    return-void
.end method

.method private calculateHMAC([B[BI[B[B[B[I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x40

    const/16 v2, 0x36

    .line 111
    invoke-static {p4, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 112
    invoke-static {p4, p1, v1}, Lorg/h2/security/SHA256;->xor([B[BI)V

    .line 113
    invoke-static {p2, v0, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, v1

    .line 114
    invoke-direct {p0, p4, p3, p6, p7}, Lorg/h2/security/SHA256;->calculateHash([BI[B[I)V

    const/16 p2, 0x5c

    .line 115
    invoke-static {p5, v0, v1, p2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 116
    invoke-static {p5, p1, v1}, Lorg/h2/security/SHA256;->xor([B[BI)V

    .line 117
    iget-object p1, p0, Lorg/h2/security/SHA256;->result:[B

    const/16 p2, 0x20

    invoke-static {p1, v0, p5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x60

    .line 118
    invoke-direct {p0, p5, p1, p6, p7}, Lorg/h2/security/SHA256;->calculateHash([BI[B[I)V

    return-void
.end method

.method private calculateHash([BI[B[I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 214
    iget-object v4, v0, Lorg/h2/security/SHA256;->w:[I

    .line 215
    iget-object v5, v0, Lorg/h2/security/SHA256;->hh:[I

    .line 216
    iget-object v6, v0, Lorg/h2/security/SHA256;->result:[B

    .line 217
    invoke-static/range {p2 .. p2}, Lorg/h2/security/SHA256;->getIntCount(I)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v9, p1

    .line 218
    invoke-static {v9, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v9, -0x80

    .line 219
    aput-byte v9, v2, v1

    add-int/lit8 v9, v1, 0x1

    mul-int/lit8 v10, v7, 0x4

    .line 220
    invoke-static {v2, v9, v10, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x4

    if-ge v9, v7, :cond_0

    .line 222
    invoke-static {v2, v10}, Lorg/h2/security/SHA256;->readInt([BI)I

    move-result v12

    aput v12, p4, v9

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v7, -0x2

    ushr-int/lit8 v9, v1, 0x1d

    .line 224
    aput v9, p4, v2

    add-int/lit8 v2, v7, -0x1

    const/4 v9, 0x3

    shl-int/2addr v1, v9

    .line 225
    aput v1, p4, v2

    .line 226
    sget-object v1, Lorg/h2/security/SHA256;->HH:[I

    const/16 v2, 0x8

    invoke-static {v1, v8, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_4

    const/4 v10, 0x0

    :goto_2
    const/16 v12, 0x10

    if-ge v10, v12, :cond_1

    add-int v12, v1, v10

    .line 229
    aget v12, p4, v12

    aput v12, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    const/16 v10, 0x40

    const/4 v13, 0x7

    if-ge v12, v10, :cond_2

    add-int/lit8 v10, v12, -0x2

    .line 232
    aget v10, v4, v10

    const/16 v14, 0x11

    .line 233
    invoke-static {v10, v14}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v14

    const/16 v15, 0x13

    invoke-static {v10, v15}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v15

    xor-int/2addr v14, v15

    ushr-int/lit8 v10, v10, 0xa

    xor-int/2addr v10, v14

    add-int/lit8 v14, v12, -0xf

    .line 234
    aget v14, v4, v14

    .line 235
    invoke-static {v14, v13}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v13

    const/16 v15, 0x12

    invoke-static {v14, v15}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v15

    xor-int/2addr v13, v15

    ushr-int/2addr v14, v9

    xor-int/2addr v13, v14

    add-int/lit8 v14, v12, -0x7

    .line 236
    aget v14, v4, v14

    add-int/2addr v10, v14

    add-int/2addr v10, v13

    add-int/lit8 v13, v12, -0x10

    aget v13, v4, v13

    add-int/2addr v10, v13

    aput v10, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 239
    :cond_2
    aget v12, v5, v8

    const/4 v14, 0x1

    aget v15, v5, v14

    const/4 v2, 0x2

    aget v16, v5, v2

    aget v17, v5, v9

    .line 240
    aget v18, v5, v11

    const/16 v19, 0x5

    aget v20, v5, v19

    const/4 v11, 0x6

    aget v21, v5, v11

    aget v22, v5, v13

    move v13, v12

    const/4 v12, 0x0

    move/from16 v24, v17

    move/from16 v17, v15

    move/from16 v15, v18

    move/from16 v18, v16

    move/from16 v16, v21

    move/from16 v21, v20

    move/from16 v20, v24

    :goto_4
    if-ge v12, v10, :cond_3

    .line 243
    invoke-static {v15, v11}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v23

    const/16 v10, 0xb

    invoke-static {v15, v10}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v10

    xor-int v10, v23, v10

    const/16 v11, 0x19

    invoke-static {v15, v11}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v11

    xor-int/2addr v10, v11

    add-int v22, v22, v10

    and-int v10, v15, v21

    xor-int/lit8 v11, v15, -0x1

    and-int v11, v11, v16

    xor-int/2addr v10, v11

    add-int v22, v22, v10

    sget-object v10, Lorg/h2/security/SHA256;->K:[I

    aget v10, v10, v12

    add-int v22, v22, v10

    aget v10, v4, v12

    add-int v22, v22, v10

    .line 245
    invoke-static {v13, v2}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v10

    const/16 v11, 0xd

    invoke-static {v13, v11}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v11

    xor-int/2addr v10, v11

    const/16 v11, 0x16

    invoke-static {v13, v11}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v11

    xor-int/2addr v10, v11

    and-int v11, v13, v17

    and-int v23, v13, v18

    xor-int v11, v11, v23

    and-int v23, v17, v18

    xor-int v11, v11, v23

    add-int/2addr v10, v11

    add-int v11, v20, v22

    add-int v10, v22, v10

    add-int/lit8 v12, v12, 0x1

    move/from16 v22, v16

    move/from16 v20, v18

    move/from16 v16, v21

    move/from16 v21, v15

    move/from16 v18, v17

    move v15, v11

    move/from16 v17, v13

    const/4 v11, 0x6

    move v13, v10

    const/16 v10, 0x40

    goto :goto_4

    .line 256
    :cond_3
    aget v10, v5, v8

    add-int/2addr v10, v13

    aput v10, v5, v8

    .line 257
    aget v10, v5, v14

    add-int v10, v10, v17

    aput v10, v5, v14

    .line 258
    aget v10, v5, v2

    add-int v10, v10, v18

    aput v10, v5, v2

    .line 259
    aget v2, v5, v9

    add-int v2, v2, v20

    aput v2, v5, v9

    const/4 v2, 0x4

    .line 260
    aget v10, v5, v2

    add-int/2addr v10, v15

    aput v10, v5, v2

    .line 261
    aget v10, v5, v19

    add-int v10, v10, v21

    aput v10, v5, v19

    const/4 v10, 0x6

    .line 262
    aget v11, v5, v10

    add-int v11, v11, v16

    aput v11, v5, v10

    const/4 v10, 0x7

    .line 263
    aget v11, v5, v10

    add-int v11, v11, v22

    aput v11, v5, v10

    add-int/lit8 v1, v1, 0x10

    const/16 v2, 0x8

    const/4 v11, 0x4

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x8

    :goto_5
    if-ge v8, v1, :cond_5

    mul-int/lit8 v2, v8, 0x4

    .line 266
    aget v3, v5, v8

    invoke-static {v6, v2, v3}, Lorg/h2/security/SHA256;->writeInt([BII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method private fillWithNull()V
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/h2/security/SHA256;->w:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 209
    iget-object v0, p0, Lorg/h2/security/SHA256;->hh:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public static getHMAC([B[B)[B
    .locals 8

    .line 96
    invoke-static {p0}, Lorg/h2/security/SHA256;->normalizeKeyForHMAC([B)[B

    move-result-object v1

    .line 97
    array-length v3, p1

    const/16 p0, 0x20

    .line 98
    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x40

    .line 99
    invoke-static {p0}, Lorg/h2/security/SHA256;->getIntCount(I)I

    move-result p0

    mul-int/lit8 v0, p0, 0x4

    .line 100
    new-array v6, v0, [B

    .line 101
    new-array v7, p0, [I

    .line 102
    new-instance p0, Lorg/h2/security/SHA256;

    invoke-direct {p0}, Lorg/h2/security/SHA256;-><init>()V

    add-int/lit8 v0, v3, 0x40

    .line 103
    new-array v4, v0, [B

    const/16 v0, 0x60

    .line 104
    new-array v5, v0, [B

    move-object v0, p0

    move-object v2, p1

    .line 105
    invoke-direct/range {v0 .. v7}, Lorg/h2/security/SHA256;->calculateHMAC([B[BI[B[B[B[I)V

    .line 106
    iget-object p0, p0, Lorg/h2/security/SHA256;->result:[B

    return-object p0
.end method

.method public static getHash([BZ)[B
    .locals 4

    .line 188
    array-length v0, p0

    .line 189
    invoke-static {v0}, Lorg/h2/security/SHA256;->getIntCount(I)I

    move-result v1

    mul-int/lit8 v2, v1, 0x4

    .line 190
    new-array v2, v2, [B

    .line 191
    new-array v1, v1, [I

    .line 192
    new-instance v3, Lorg/h2/security/SHA256;

    invoke-direct {v3}, Lorg/h2/security/SHA256;-><init>()V

    .line 193
    invoke-direct {v3, p0, v0, v2, v1}, Lorg/h2/security/SHA256;->calculateHash([BI[B[I)V

    if-eqz p1, :cond_0

    .line 195
    invoke-direct {v3}, Lorg/h2/security/SHA256;->fillWithNull()V

    const/4 p1, 0x0

    .line 196
    invoke-static {v1, p1}, Ljava/util/Arrays;->fill([II)V

    .line 197
    invoke-static {v2, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 198
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 200
    :cond_0
    iget-object p0, v3, Lorg/h2/security/SHA256;->result:[B

    return-object p0
.end method

.method public static getHashWithSalt([B[B)[B
    .locals 3

    .line 53
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 54
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    .line 56
    invoke-static {v0, p0}, Lorg/h2/security/SHA256;->getHash([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static getIntCount(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x9

    add-int/lit8 p0, p0, 0x3f

    .line 204
    div-int/lit8 p0, p0, 0x40

    mul-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getKeyPasswordHash(Ljava/lang/String;[C)[B
    .locals 8

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    .line 77
    aput-byte v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    int-to-byte v5, v5

    .line 78
    aput-byte v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_0
    array-length p0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_1

    aget-char v3, p1, v1

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    .line 81
    aput-byte v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    int-to-byte v3, v3

    .line 82
    aput-byte v3, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_1
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([CC)V

    const/4 p0, 0x1

    .line 85
    invoke-static {v0, p0}, Lorg/h2/security/SHA256;->getHash([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static getPBKDF2([B[BII)[B
    .locals 21

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 148
    new-array v2, v1, [B

    .line 149
    invoke-static/range {p0 .. p0}, Lorg/h2/security/SHA256;->normalizeKeyForHMAC([B)[B

    move-result-object v11

    .line 150
    new-instance v12, Lorg/h2/security/SHA256;

    invoke-direct {v12}, Lorg/h2/security/SHA256;-><init>()V

    .line 151
    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    const/16 v13, 0x20

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    .line 152
    new-array v14, v3, [B

    .line 153
    invoke-static {v3}, Lorg/h2/security/SHA256;->getIntCount(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x4

    .line 154
    new-array v15, v5, [B

    .line 155
    new-array v10, v4, [I

    add-int/lit8 v3, v3, 0x40

    .line 156
    new-array v9, v3, [B

    const/16 v3, 0x60

    .line 157
    new-array v8, v3, [B

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_3

    move/from16 v4, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    if-nez v3, :cond_0

    .line 161
    array-length v13, v0

    invoke-static {v0, v7, v14, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    array-length v13, v0

    invoke-static {v14, v13, v5}, Lorg/h2/security/SHA256;->writeInt([BII)V

    .line 163
    array-length v13, v0

    add-int/lit8 v13, v13, 0x4

    move v0, v3

    goto :goto_2

    .line 165
    :cond_0
    iget-object v13, v12, Lorg/h2/security/SHA256;->result:[B

    const/16 v0, 0x20

    invoke-static {v13, v7, v14, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    const/16 v13, 0x20

    :goto_2
    move-object v3, v12

    move-object v4, v11

    move/from16 v16, v5

    move-object v5, v14

    move/from16 v17, v6

    move v6, v13

    const/4 v13, 0x0

    move-object v7, v9

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object v9, v15

    move-object/from16 v20, v10

    .line 168
    invoke-direct/range {v3 .. v10}, Lorg/h2/security/SHA256;->calculateHMAC([B[BI[B[B[B[I)V

    const/4 v3, 0x0

    const/16 v4, 0x20

    :goto_3
    if-ge v3, v4, :cond_1

    add-int v6, v3, v17

    if-ge v6, v1, :cond_1

    .line 170
    aget-byte v5, v2, v6

    iget-object v7, v12, Lorg/h2/security/SHA256;->result:[B

    aget-byte v7, v7, v3

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v0, 0x1

    move/from16 v4, p2

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v0, p1

    const/4 v7, 0x0

    const/16 v13, 0x20

    goto :goto_1

    :cond_2
    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    const/16 v4, 0x20

    const/4 v13, 0x0

    add-int/lit8 v5, v16, 0x1

    add-int/lit8 v6, v17, 0x20

    move-object/from16 v0, p1

    const/4 v7, 0x0

    const/16 v13, 0x20

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    .line 174
    invoke-static {v0, v13}, Ljava/util/Arrays;->fill([BB)V

    .line 175
    invoke-static {v11, v13}, Ljava/util/Arrays;->fill([BB)V

    return-object v2
.end method

.method private static normalizeKeyForHMAC([B)[B
    .locals 2

    .line 122
    array-length v0, p0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 123
    invoke-static {p0, v0}, Lorg/h2/security/SHA256;->getHash([BZ)[B

    move-result-object p0

    .line 125
    :cond_0
    array-length v0, p0

    if-ge v0, v1, :cond_1

    .line 126
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static readInt([BI)I
    .locals 2

    .line 275
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method private static rot(II)I
    .locals 0

    .line 271
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    return p0
.end method

.method private static writeInt([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 280
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 281
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 282
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 283
    aput-byte p2, p0, p1

    return-void
.end method

.method private static xor([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 133
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
