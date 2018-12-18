.class public Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;
.super Lnet/i2p/crypto/eddsa/math/Encoding;
.source "Ed25519LittleEndianEncoding.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/Encoding;-><init>()V

    return-void
.end method

.method static load_3([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 169
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v1, v0, 0x1

    .line 170
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    .line 171
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method static load_4([BI)J
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 176
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v1, v0, 0x1

    .line 177
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 178
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    .line 179
    aget-byte p0, p0, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public decode([B)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 42

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 190
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v2

    const/4 v4, 0x4

    .line 191
    invoke-static {v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v5

    const/4 v6, 0x6

    shl-int/2addr v5, v6

    int-to-long v7, v5

    const/4 v5, 0x7

    .line 192
    invoke-static {v0, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    const/4 v10, 0x5

    shl-int/2addr v9, v10

    int-to-long v11, v9

    const/16 v9, 0xa

    .line 193
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v13

    const/4 v14, 0x3

    shl-int/2addr v13, v14

    int-to-long v14, v13

    const/16 v13, 0xd

    .line 194
    invoke-static {v0, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v13

    const/16 v16, 0x2

    shl-int/lit8 v13, v13, 0x2

    move-wide/from16 v17, v7

    int-to-long v6, v13

    const/16 v8, 0x10

    .line 195
    invoke-static {v0, v8}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v19

    const/16 v8, 0x14

    .line 196
    invoke-static {v0, v8}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v8

    shl-int/2addr v8, v5

    move-wide/from16 v21, v6

    int-to-long v5, v8

    const/16 v7, 0x17

    .line 197
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v7

    shl-int/2addr v7, v10

    int-to-long v7, v7

    const/16 v13, 0x1a

    .line 198
    invoke-static {v0, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v23

    shl-int/lit8 v10, v23, 0x4

    int-to-long v9, v10

    const/16 v4, 0x1d

    .line 199
    invoke-static {v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v0

    const v4, 0x7fffff

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x2

    move-wide/from16 v24, v14

    int-to-long v13, v0

    const-wide/32 v26, 0x1000000

    add-long v28, v13, v26

    const/16 v0, 0x19

    shr-long v28, v28, v0

    const-wide/16 v30, 0x13

    mul-long v30, v30, v28

    add-long v2, v2, v30

    shl-long v28, v28, v0

    sub-long v13, v13, v28

    add-long v28, v17, v26

    shr-long v28, v28, v0

    add-long v11, v11, v28

    shl-long v28, v28, v0

    sub-long v17, v17, v28

    add-long v28, v24, v26

    shr-long v28, v28, v0

    add-long v21, v21, v28

    shl-long v28, v28, v0

    sub-long v24, v24, v28

    add-long v28, v19, v26

    shr-long v28, v28, v0

    add-long v5, v5, v28

    shl-long v28, v28, v0

    sub-long v19, v19, v28

    add-long v26, v7, v26

    shr-long v26, v26, v0

    add-long v9, v9, v26

    shl-long v26, v26, v0

    sub-long v7, v7, v26

    const-wide/32 v26, 0x2000000

    add-long v28, v2, v26

    const/16 v0, 0x1a

    shr-long v28, v28, v0

    move-wide/from16 v32, v13

    add-long v13, v17, v28

    shl-long v17, v28, v0

    sub-long v2, v2, v17

    add-long v17, v11, v26

    shr-long v17, v17, v0

    move-wide/from16 v34, v2

    add-long v1, v24, v17

    shl-long v3, v17, v0

    sub-long/2addr v11, v3

    add-long v3, v21, v26

    shr-long/2addr v3, v0

    move-wide/from16 v36, v1

    add-long v1, v19, v3

    shl-long/2addr v3, v0

    sub-long v3, v21, v3

    add-long v17, v5, v26

    shr-long v17, v17, v0

    add-long v7, v7, v17

    shl-long v17, v17, v0

    sub-long v5, v5, v17

    add-long v26, v9, v26

    shr-long v17, v26, v0

    move-wide/from16 v38, v7

    add-long v7, v32, v17

    shl-long v17, v17, v0

    sub-long v9, v9, v17

    const/16 v0, 0xa

    .line 224
    new-array v0, v0, [I

    move-wide/from16 v40, v7

    move-wide/from16 v7, v34

    long-to-int v7, v7

    const/4 v8, 0x0

    aput v7, v0, v8

    long-to-int v7, v13

    const/4 v8, 0x1

    aput v7, v0, v8

    long-to-int v7, v11

    aput v7, v0, v16

    move-wide/from16 v7, v36

    long-to-int v7, v7

    const/4 v8, 0x3

    aput v7, v0, v8

    long-to-int v3, v3

    const/4 v4, 0x4

    aput v3, v0, v4

    long-to-int v1, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    long-to-int v1, v5

    const/4 v2, 0x6

    aput v1, v0, v2

    move-wide/from16 v7, v38

    long-to-int v1, v7

    const/4 v2, 0x7

    aput v1, v0, v2

    long-to-int v1, v9

    const/16 v2, 0x8

    aput v1, v0, v2

    move-wide/from16 v13, v40

    long-to-int v1, v13

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 235
    new-instance v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    move-object/from16 v2, p0

    iget-object v3, v2, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v1, v3, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v1
.end method

.method public encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B
    .locals 22

    .line 79
    move-object/from16 v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v1, 0x0

    .line 80
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 81
    aget v3, v0, v2

    const/4 v4, 0x2

    .line 82
    aget v5, v0, v4

    const/4 v6, 0x3

    .line 83
    aget v7, v0, v6

    const/4 v8, 0x4

    .line 84
    aget v9, v0, v8

    const/4 v10, 0x5

    .line 85
    aget v11, v0, v10

    const/4 v12, 0x6

    .line 86
    aget v13, v0, v12

    const/4 v14, 0x7

    .line 87
    aget v15, v0, v14

    const/16 v16, 0x8

    .line 88
    aget v17, v0, v16

    const/16 v18, 0x9

    .line 89
    aget v0, v0, v18

    mul-int/lit8 v18, v0, 0x13

    const/high16 v19, 0x1000000

    add-int v18, v18, v19

    const/16 v19, 0x19

    shr-int/lit8 v18, v18, 0x19

    add-int v18, v1, v18

    const/16 v20, 0x1a

    shr-int/lit8 v18, v18, 0x1a

    add-int v18, v3, v18

    shr-int/lit8 v18, v18, 0x19

    add-int v18, v5, v18

    shr-int/lit8 v18, v18, 0x1a

    add-int v18, v7, v18

    shr-int/lit8 v18, v18, 0x19

    add-int v18, v9, v18

    shr-int/lit8 v18, v18, 0x1a

    add-int v18, v11, v18

    shr-int/lit8 v18, v18, 0x19

    add-int v18, v13, v18

    shr-int/lit8 v18, v18, 0x1a

    add-int v18, v15, v18

    shr-int/lit8 v18, v18, 0x19

    add-int v18, v17, v18

    shr-int/lit8 v18, v18, 0x1a

    add-int v18, v0, v18

    shr-int/lit8 v18, v18, 0x19

    const/16 v21, 0x13

    mul-int/lit8 v18, v18, 0x13

    add-int v1, v1, v18

    shr-int/lit8 v18, v1, 0x1a

    add-int v3, v3, v18

    shl-int/lit8 v18, v18, 0x1a

    sub-int v1, v1, v18

    shr-int/lit8 v18, v3, 0x19

    add-int v5, v5, v18

    shl-int/lit8 v18, v18, 0x19

    sub-int v3, v3, v18

    shr-int/lit8 v18, v5, 0x1a

    add-int v7, v7, v18

    shl-int/lit8 v18, v18, 0x1a

    sub-int v5, v5, v18

    shr-int/lit8 v18, v7, 0x19

    add-int v9, v9, v18

    shl-int/lit8 v18, v18, 0x19

    sub-int v7, v7, v18

    shr-int/lit8 v18, v9, 0x1a

    add-int v11, v11, v18

    shl-int/lit8 v18, v18, 0x1a

    sub-int v9, v9, v18

    shr-int/lit8 v18, v11, 0x19

    add-int v13, v13, v18

    shl-int/lit8 v18, v18, 0x19

    sub-int v11, v11, v18

    shr-int/lit8 v18, v13, 0x1a

    add-int v15, v15, v18

    shl-int/lit8 v18, v18, 0x1a

    sub-int v13, v13, v18

    shr-int/lit8 v18, v15, 0x19

    add-int v17, v17, v18

    shl-int/lit8 v18, v18, 0x19

    sub-int v15, v15, v18

    shr-int/lit8 v18, v17, 0x1a

    add-int v0, v0, v18

    shl-int/lit8 v18, v18, 0x1a

    sub-int v17, v17, v18

    shr-int/lit8 v18, v0, 0x19

    shl-int/lit8 v18, v18, 0x19

    sub-int v0, v0, v18

    const/16 v14, 0x20

    .line 132
    new-array v14, v14, [B

    int-to-byte v12, v1

    const/16 v18, 0x0

    aput-byte v12, v14, v18

    shr-int/lit8 v12, v1, 0x8

    int-to-byte v12, v12

    aput-byte v12, v14, v2

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v14, v4

    const/16 v2, 0x18

    shr-int/2addr v1, v2

    shl-int/lit8 v4, v3, 0x2

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v14, v6

    shr-int/lit8 v1, v3, 0x6

    int-to-byte v1, v1

    aput-byte v1, v14, v8

    shr-int/lit8 v1, v3, 0xe

    int-to-byte v1, v1

    aput-byte v1, v14, v10

    shr-int/lit8 v1, v3, 0x16

    shl-int/lit8 v3, v5, 0x3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x6

    aput-byte v1, v14, v3

    shr-int/lit8 v1, v5, 0x5

    int-to-byte v1, v1

    const/4 v3, 0x7

    aput-byte v1, v14, v3

    shr-int/lit8 v1, v5, 0xd

    int-to-byte v1, v1

    aput-byte v1, v14, v16

    const/16 v1, 0x15

    shr-int/lit8 v3, v5, 0x15

    shl-int/lit8 v4, v7, 0x5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x9

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v7, 0x3

    int-to-byte v3, v3

    const/16 v4, 0xa

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v7, 0xb

    int-to-byte v3, v3

    const/16 v4, 0xb

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v7, 0x13

    shl-int/lit8 v4, v9, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    const/16 v4, 0xc

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v9, 0x2

    int-to-byte v3, v3

    const/16 v4, 0xd

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v9, 0xa

    int-to-byte v3, v3

    const/16 v4, 0xe

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v9, 0x12

    int-to-byte v3, v3

    const/16 v4, 0xf

    aput-byte v3, v14, v4

    int-to-byte v3, v11

    const/16 v4, 0x10

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v11, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x11

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v11, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x12

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v11, 0x18

    shl-int/lit8 v4, v13, 0x1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v14, v21

    shr-int/lit8 v3, v13, 0x7

    int-to-byte v3, v3

    const/16 v4, 0x14

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v13, 0xf

    int-to-byte v3, v3

    aput-byte v3, v14, v1

    shr-int/lit8 v3, v13, 0x17

    shl-int/lit8 v4, v15, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x16

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v15, 0x5

    int-to-byte v3, v3

    const/16 v4, 0x17

    aput-byte v3, v14, v4

    shr-int/lit8 v3, v15, 0xd

    int-to-byte v3, v3

    aput-byte v3, v14, v2

    shr-int/lit8 v1, v15, 0x15

    shl-int/lit8 v2, v17, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v14, v19

    shr-int/lit8 v1, v17, 0x4

    int-to-byte v1, v1

    aput-byte v1, v14, v20

    shr-int/lit8 v1, v17, 0xc

    int-to-byte v1, v1

    const/16 v2, 0x1b

    aput-byte v1, v14, v2

    shr-int/lit8 v1, v17, 0x14

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x1c

    aput-byte v1, v14, v2

    shr-int/lit8 v1, v0, 0x2

    int-to-byte v1, v1

    const/16 v2, 0x1d

    aput-byte v1, v14, v2

    shr-int/lit8 v1, v0, 0xa

    int-to-byte v1, v1

    const/16 v2, 0x1e

    aput-byte v1, v14, v2

    shr-int/lit8 v0, v0, 0x12

    int-to-byte v0, v0

    const/16 v1, 0x1f

    aput-byte v0, v14, v1

    return-object v14
.end method

.method public isNegative(Lnet/i2p/crypto/eddsa/math/FieldElement;)Z
    .locals 2

    .line 252
    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 253
    aget-byte p1, p1, v0

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
