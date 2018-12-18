.class public Lorg/whispersystems/curve25519/java/fe_tobytes;
.super Ljava/lang/Object;
.source "fe_tobytes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_tobytes([B[I)V
    .locals 23

    const/4 v1, 0x0

    .line 34
    aget v2, p1, v1

    const/4 v3, 0x1

    .line 35
    aget v4, p1, v3

    const/4 v5, 0x2

    .line 36
    aget v6, p1, v5

    const/4 v7, 0x3

    .line 37
    aget v8, p1, v7

    const/4 v9, 0x4

    .line 38
    aget v10, p1, v9

    const/4 v11, 0x5

    .line 39
    aget v12, p1, v11

    const/4 v13, 0x6

    .line 40
    aget v14, p1, v13

    const/4 v15, 0x7

    .line 41
    aget v16, p1, v15

    const/16 v17, 0x8

    .line 42
    aget v18, p1, v17

    const/16 v19, 0x9

    .line 43
    aget v0, p1, v19

    mul-int/lit8 v19, v0, 0x13

    const/high16 v20, 0x1000000

    add-int v19, v19, v20

    const/16 v20, 0x19

    shr-int/lit8 v19, v19, 0x19

    add-int v19, v2, v19

    const/16 v21, 0x1a

    shr-int/lit8 v19, v19, 0x1a

    add-int v19, v4, v19

    shr-int/lit8 v19, v19, 0x19

    add-int v19, v6, v19

    shr-int/lit8 v19, v19, 0x1a

    add-int v19, v8, v19

    shr-int/lit8 v19, v19, 0x19

    add-int v19, v10, v19

    shr-int/lit8 v19, v19, 0x1a

    add-int v19, v12, v19

    shr-int/lit8 v19, v19, 0x19

    add-int v19, v14, v19

    shr-int/lit8 v19, v19, 0x1a

    add-int v19, v16, v19

    shr-int/lit8 v19, v19, 0x19

    add-int v19, v18, v19

    shr-int/lit8 v19, v19, 0x1a

    add-int v19, v0, v19

    shr-int/lit8 v19, v19, 0x19

    const/16 v22, 0x13

    mul-int/lit8 v19, v19, 0x13

    add-int v2, v2, v19

    shr-int/lit8 v19, v2, 0x1a

    add-int v4, v4, v19

    shl-int/lit8 v19, v19, 0x1a

    sub-int v2, v2, v19

    shr-int/lit8 v19, v4, 0x19

    add-int v6, v6, v19

    shl-int/lit8 v19, v19, 0x19

    sub-int v4, v4, v19

    shr-int/lit8 v19, v6, 0x1a

    add-int v8, v8, v19

    shl-int/lit8 v19, v19, 0x1a

    sub-int v6, v6, v19

    shr-int/lit8 v19, v8, 0x19

    add-int v10, v10, v19

    shl-int/lit8 v19, v19, 0x19

    sub-int v8, v8, v19

    shr-int/lit8 v19, v10, 0x1a

    add-int v12, v12, v19

    shl-int/lit8 v19, v19, 0x1a

    sub-int v10, v10, v19

    shr-int/lit8 v19, v12, 0x19

    add-int v14, v14, v19

    shl-int/lit8 v19, v19, 0x19

    sub-int v12, v12, v19

    shr-int/lit8 v19, v14, 0x1a

    add-int v16, v16, v19

    shl-int/lit8 v19, v19, 0x1a

    sub-int v14, v14, v19

    shr-int/lit8 v19, v16, 0x19

    add-int v18, v18, v19

    shl-int/lit8 v19, v19, 0x19

    sub-int v16, v16, v19

    shr-int/lit8 v19, v18, 0x1a

    add-int v0, v0, v19

    shl-int/lit8 v19, v19, 0x1a

    sub-int v18, v18, v19

    shr-int/lit8 v19, v0, 0x19

    shl-int/lit8 v19, v19, 0x19

    sub-int v0, v0, v19

    shr-int/lit8 v13, v2, 0x0

    int-to-byte v13, v13

    .line 91
    aput-byte v13, p0, v1

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    .line 92
    aput-byte v1, p0, v3

    shr-int/lit8 v1, v2, 0x10

    int-to-byte v1, v1

    .line 93
    aput-byte v1, p0, v5

    const/16 v1, 0x18

    shr-int/2addr v2, v1

    shl-int/lit8 v3, v4, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 94
    aput-byte v2, p0, v7

    shr-int/lit8 v2, v4, 0x6

    int-to-byte v2, v2

    .line 95
    aput-byte v2, p0, v9

    shr-int/lit8 v2, v4, 0xe

    int-to-byte v2, v2

    .line 96
    aput-byte v2, p0, v11

    shr-int/lit8 v2, v4, 0x16

    shl-int/lit8 v3, v6, 0x3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v3, 0x6

    .line 97
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v6, 0x5

    int-to-byte v2, v2

    .line 98
    aput-byte v2, p0, v15

    shr-int/lit8 v2, v6, 0xd

    int-to-byte v2, v2

    .line 99
    aput-byte v2, p0, v17

    shr-int/lit8 v2, v6, 0x15

    shl-int/lit8 v3, v8, 0x5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x9

    .line 100
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v8, 0x3

    int-to-byte v2, v2

    const/16 v3, 0xa

    .line 101
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v8, 0xb

    int-to-byte v2, v2

    const/16 v3, 0xb

    .line 102
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v8, 0x13

    shl-int/lit8 v3, v10, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0xc

    .line 103
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v10, 0x2

    int-to-byte v2, v2

    const/16 v3, 0xd

    .line 104
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v10, 0xa

    int-to-byte v2, v2

    const/16 v3, 0xe

    .line 105
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v10, 0x12

    int-to-byte v2, v2

    const/16 v3, 0xf

    .line 106
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v12, 0x0

    int-to-byte v2, v2

    const/16 v3, 0x10

    .line 107
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v12, 0x8

    int-to-byte v2, v2

    const/16 v3, 0x11

    .line 108
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v12, 0x10

    int-to-byte v2, v2

    const/16 v3, 0x12

    .line 109
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v12, 0x18

    shl-int/lit8 v3, v14, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 110
    aput-byte v2, p0, v22

    shr-int/lit8 v2, v14, 0x7

    int-to-byte v2, v2

    const/16 v3, 0x14

    .line 111
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v14, 0xf

    int-to-byte v2, v2

    const/16 v3, 0x15

    .line 112
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v14, 0x17

    shl-int/lit8 v3, v16, 0x3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x16

    .line 113
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v16, 0x5

    int-to-byte v2, v2

    const/16 v3, 0x17

    .line 114
    aput-byte v2, p0, v3

    shr-int/lit8 v2, v16, 0xd

    int-to-byte v2, v2

    .line 115
    aput-byte v2, p0, v1

    shr-int/lit8 v1, v16, 0x15

    shl-int/lit8 v2, v18, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 116
    aput-byte v1, p0, v20

    shr-int/lit8 v1, v18, 0x4

    int-to-byte v1, v1

    .line 117
    aput-byte v1, p0, v21

    shr-int/lit8 v1, v18, 0xc

    int-to-byte v1, v1

    const/16 v2, 0x1b

    .line 118
    aput-byte v1, p0, v2

    shr-int/lit8 v1, v18, 0x14

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x1c

    .line 119
    aput-byte v1, p0, v2

    shr-int/lit8 v1, v0, 0x2

    int-to-byte v1, v1

    const/16 v2, 0x1d

    .line 120
    aput-byte v1, p0, v2

    shr-int/lit8 v1, v0, 0xa

    int-to-byte v1, v1

    const/16 v2, 0x1e

    .line 121
    aput-byte v1, p0, v2

    shr-int/lit8 v0, v0, 0x12

    int-to-byte v0, v0

    const/16 v1, 0x1f

    .line 122
    aput-byte v0, p0, v1

    return-void
.end method
