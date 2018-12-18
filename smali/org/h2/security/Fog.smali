.class public Lorg/h2/security/Fog;
.super Ljava/lang/Object;
.source "Fog.java"

# interfaces
.implements Lorg/h2/security/BlockCipher;


# instance fields
.field private key:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decryptBlock([B[BI)V
    .locals 25

    .line 64
    aget-byte v2, p1, p3

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, p3, 0x2

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    add-int/lit8 v5, p3, 0x3

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    add-int/lit8 v6, p3, 0x4

    .line 66
    aget-byte v7, p1, v6

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, p3, 0x5

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    add-int/lit8 v9, p3, 0x6

    aget-byte v10, p1, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v7, v10

    add-int/lit8 v10, p3, 0x7

    aget-byte v11, p1, v10

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v7, v11

    add-int/lit8 v11, p3, 0x8

    .line 68
    aget-byte v12, p1, v11

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, p3, 0x9

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v12, v14

    add-int/lit8 v14, p3, 0xa

    move v15, v13

    aget-byte v13, p1, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    add-int/lit8 v13, p3, 0xb

    move/from16 v16, v14

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v12, v14

    add-int/lit8 v14, p3, 0xc

    .line 70
    aget-byte v17, p1, v14

    shl-int/lit8 v17, v17, 0x18

    add-int/lit8 v18, p3, 0xd

    move/from16 v19, v14

    aget-byte v14, p1, v18

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int v14, v17, v14

    add-int/lit8 v17, p3, 0xe

    move/from16 v20, v13

    aget-byte v13, p1, v17

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v14

    add-int/lit8 v14, p3, 0xf

    aget-byte v0, p1, v14

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v13

    move-object/from16 v13, p0

    move/from16 v21, v14

    .line 72
    iget v14, v13, Lorg/h2/security/Fog;->key:I

    and-int/lit8 v22, v2, 0x1f

    rsub-int/lit8 v22, v22, 0x20

    shl-int v23, v7, v22

    rsub-int/lit8 v24, v22, 0x20

    ushr-int v7, v7, v24

    or-int v7, v23, v7

    xor-int/2addr v7, v14

    shl-int v22, v0, v22

    ushr-int v0, v0, v24

    or-int v0, v22, v0

    xor-int/2addr v0, v14

    and-int/lit8 v22, v7, 0x1f

    rsub-int/lit8 v22, v22, 0x20

    shl-int v23, v2, v22

    rsub-int/lit8 v24, v22, 0x20

    ushr-int v2, v2, v24

    or-int v2, v23, v2

    xor-int/2addr v2, v14

    shl-int v22, v12, v22

    ushr-int v12, v12, v24

    or-int v12, v22, v12

    xor-int/2addr v12, v14

    shr-int/lit8 v14, v2, 0x18

    int-to-byte v14, v14

    .line 83
    aput-byte v14, p2, p3

    shr-int/lit8 v1, v2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    .line 84
    aput-byte v1, p2, v4

    int-to-byte v1, v2

    aput-byte v1, p2, v5

    shr-int/lit8 v1, v7, 0x18

    int-to-byte v1, v1

    .line 85
    aput-byte v1, p2, v6

    shr-int/lit8 v1, v7, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v8

    shr-int/lit8 v1, v7, 0x8

    int-to-byte v1, v1

    .line 86
    aput-byte v1, p2, v9

    int-to-byte v1, v7

    aput-byte v1, p2, v10

    shr-int/lit8 v1, v12, 0x18

    int-to-byte v1, v1

    .line 87
    aput-byte v1, p2, v11

    shr-int/lit8 v1, v12, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v15

    shr-int/lit8 v1, v12, 0x8

    int-to-byte v1, v1

    .line 88
    aput-byte v1, p2, v16

    int-to-byte v1, v12

    aput-byte v1, p2, v20

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    .line 89
    aput-byte v1, p2, v19

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v18

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 90
    aput-byte v1, p2, v17

    int-to-byte v0, v0

    aput-byte v0, p2, v21

    return-void
.end method

.method private encryptBlock([B[BI)V
    .locals 25

    .line 34
    aget-byte v2, p1, p3

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, p3, 0x2

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    add-int/lit8 v5, p3, 0x3

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    add-int/lit8 v6, p3, 0x4

    .line 36
    aget-byte v7, p1, v6

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, p3, 0x5

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    add-int/lit8 v9, p3, 0x6

    aget-byte v10, p1, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v7, v10

    add-int/lit8 v10, p3, 0x7

    aget-byte v11, p1, v10

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v7, v11

    add-int/lit8 v11, p3, 0x8

    .line 38
    aget-byte v12, p1, v11

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, p3, 0x9

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v12, v14

    add-int/lit8 v14, p3, 0xa

    move v15, v13

    aget-byte v13, p1, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    add-int/lit8 v13, p3, 0xb

    move/from16 v16, v14

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v12, v14

    add-int/lit8 v14, p3, 0xc

    .line 40
    aget-byte v17, p1, v14

    shl-int/lit8 v17, v17, 0x18

    add-int/lit8 v18, p3, 0xd

    move/from16 v19, v14

    aget-byte v14, p1, v18

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int v14, v17, v14

    add-int/lit8 v17, p3, 0xe

    move/from16 v20, v13

    aget-byte v13, p1, v17

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v14

    add-int/lit8 v14, p3, 0xf

    aget-byte v0, p1, v14

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v13

    move-object/from16 v13, p0

    move/from16 v21, v14

    .line 42
    iget v14, v13, Lorg/h2/security/Fog;->key:I

    and-int/lit8 v22, v7, 0x1f

    xor-int/2addr v2, v14

    shl-int v23, v2, v22

    rsub-int/lit8 v24, v22, 0x20

    ushr-int v2, v2, v24

    or-int v2, v23, v2

    xor-int/2addr v12, v14

    shl-int v22, v12, v22

    ushr-int v12, v12, v24

    or-int v12, v22, v12

    and-int/lit8 v22, v2, 0x1f

    xor-int/2addr v7, v14

    shl-int v23, v7, v22

    rsub-int/lit8 v24, v22, 0x20

    ushr-int v7, v7, v24

    or-int v7, v23, v7

    xor-int/2addr v0, v14

    shl-int v14, v0, v22

    ushr-int v0, v0, v24

    or-int/2addr v0, v14

    shr-int/lit8 v14, v2, 0x18

    int-to-byte v14, v14

    .line 53
    aput-byte v14, p2, p3

    shr-int/lit8 v1, v2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    .line 54
    aput-byte v1, p2, v4

    int-to-byte v1, v2

    aput-byte v1, p2, v5

    shr-int/lit8 v1, v7, 0x18

    int-to-byte v1, v1

    .line 55
    aput-byte v1, p2, v6

    shr-int/lit8 v1, v7, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v8

    shr-int/lit8 v1, v7, 0x8

    int-to-byte v1, v1

    .line 56
    aput-byte v1, p2, v9

    int-to-byte v1, v7

    aput-byte v1, p2, v10

    shr-int/lit8 v1, v12, 0x18

    int-to-byte v1, v1

    .line 57
    aput-byte v1, p2, v11

    shr-int/lit8 v1, v12, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v15

    shr-int/lit8 v1, v12, 0x8

    int-to-byte v1, v1

    .line 58
    aput-byte v1, p2, v16

    int-to-byte v1, v12

    aput-byte v1, p2, v20

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    .line 59
    aput-byte v1, p2, v19

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v18

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 60
    aput-byte v1, p2, v17

    int-to-byte v0, v0

    aput-byte v0, p2, v21

    return-void
.end method


# virtual methods
.method public decrypt([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 29
    invoke-direct {p0, p1, p1, v0}, Lorg/h2/security/Fog;->decryptBlock([B[BI)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    return-void
.end method

.method public encrypt([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 22
    invoke-direct {p0, p1, p1, v0}, Lorg/h2/security/Fog;->encryptBlock([B[BI)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getKeyLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public setKey([B)V
    .locals 2

    const/4 v0, 0x0

    .line 100
    invoke-static {p1, v0}, Lorg/h2/util/Utils;->readLong([BI)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lorg/h2/security/Fog;->key:I

    return-void
.end method
