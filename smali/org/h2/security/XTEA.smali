.class public Lorg/h2/security/XTEA;
.super Ljava/lang/Object;
.source "XTEA.java"

# interfaces
.implements Lorg/h2/security/BlockCipher;


# static fields
.field private static final DELTA:I = -0x61c88647


# instance fields
.field private k0:I

.field private k1:I

.field private k10:I

.field private k11:I

.field private k12:I

.field private k13:I

.field private k14:I

.field private k15:I

.field private k16:I

.field private k17:I

.field private k18:I

.field private k19:I

.field private k2:I

.field private k20:I

.field private k21:I

.field private k22:I

.field private k23:I

.field private k24:I

.field private k25:I

.field private k26:I

.field private k27:I

.field private k28:I

.field private k29:I

.field private k3:I

.field private k30:I

.field private k31:I

.field private k4:I

.field private k5:I

.field private k6:I

.field private k7:I

.field private k8:I

.field private k9:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decryptBlock([B[BI)V
    .locals 10

    .line 120
    aget-byte v0, p1, p3

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p3, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, p3, 0x2

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, p3, 0x3

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    add-int/lit8 v4, p3, 0x4

    .line 122
    aget-byte v5, p1, v4

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, p3, 0x5

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    add-int/lit8 v7, p3, 0x6

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    add-int/lit8 v8, p3, 0x7

    aget-byte p1, p1, v8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 124
    iget v9, p0, Lorg/h2/security/XTEA;->k31:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 125
    iget v9, p0, Lorg/h2/security/XTEA;->k30:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 126
    iget v9, p0, Lorg/h2/security/XTEA;->k29:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 127
    iget v9, p0, Lorg/h2/security/XTEA;->k28:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 128
    iget v9, p0, Lorg/h2/security/XTEA;->k27:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 129
    iget v9, p0, Lorg/h2/security/XTEA;->k26:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 130
    iget v9, p0, Lorg/h2/security/XTEA;->k25:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 131
    iget v9, p0, Lorg/h2/security/XTEA;->k24:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 132
    iget v9, p0, Lorg/h2/security/XTEA;->k23:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 133
    iget v9, p0, Lorg/h2/security/XTEA;->k22:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 134
    iget v9, p0, Lorg/h2/security/XTEA;->k21:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 135
    iget v9, p0, Lorg/h2/security/XTEA;->k20:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 136
    iget v9, p0, Lorg/h2/security/XTEA;->k19:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 137
    iget v9, p0, Lorg/h2/security/XTEA;->k18:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 138
    iget v9, p0, Lorg/h2/security/XTEA;->k17:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 139
    iget v9, p0, Lorg/h2/security/XTEA;->k16:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 140
    iget v9, p0, Lorg/h2/security/XTEA;->k15:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 141
    iget v9, p0, Lorg/h2/security/XTEA;->k14:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 142
    iget v9, p0, Lorg/h2/security/XTEA;->k13:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 143
    iget v9, p0, Lorg/h2/security/XTEA;->k12:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 144
    iget v9, p0, Lorg/h2/security/XTEA;->k11:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 145
    iget v9, p0, Lorg/h2/security/XTEA;->k10:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 146
    iget v9, p0, Lorg/h2/security/XTEA;->k9:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 147
    iget v9, p0, Lorg/h2/security/XTEA;->k8:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 148
    iget v9, p0, Lorg/h2/security/XTEA;->k7:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 149
    iget v9, p0, Lorg/h2/security/XTEA;->k6:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 150
    iget v9, p0, Lorg/h2/security/XTEA;->k5:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 151
    iget v9, p0, Lorg/h2/security/XTEA;->k4:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 152
    iget v9, p0, Lorg/h2/security/XTEA;->k3:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 153
    iget v9, p0, Lorg/h2/security/XTEA;->k2:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 154
    iget v9, p0, Lorg/h2/security/XTEA;->k1:I

    xor-int/2addr v5, v9

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 155
    iget v9, p0, Lorg/h2/security/XTEA;->k0:I

    xor-int/2addr v5, v9

    sub-int/2addr v0, v5

    shr-int/lit8 v5, v0, 0x18

    int-to-byte v5, v5

    .line 156
    aput-byte v5, p2, p3

    shr-int/lit8 p3, v0, 0x10

    int-to-byte p3, p3

    .line 157
    aput-byte p3, p2, v1

    shr-int/lit8 p3, v0, 0x8

    int-to-byte p3, p3

    .line 158
    aput-byte p3, p2, v2

    int-to-byte p3, v0

    .line 159
    aput-byte p3, p2, v3

    shr-int/lit8 p3, p1, 0x18

    int-to-byte p3, p3

    .line 160
    aput-byte p3, p2, v4

    shr-int/lit8 p3, p1, 0x10

    int-to-byte p3, p3

    .line 161
    aput-byte p3, p2, v6

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    .line 162
    aput-byte p3, p2, v7

    int-to-byte p1, p1

    .line 163
    aput-byte p1, p2, v8

    return-void
.end method

.method private encryptBlock([B[BI)V
    .locals 10

    .line 73
    aget-byte v0, p1, p3

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p3, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, p3, 0x2

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, p3, 0x3

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    add-int/lit8 v4, p3, 0x4

    .line 75
    aget-byte v5, p1, v4

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, p3, 0x5

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    add-int/lit8 v7, p3, 0x6

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    add-int/lit8 v8, p3, 0x7

    aget-byte p1, p1, v8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 77
    iget v9, p0, Lorg/h2/security/XTEA;->k0:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 78
    iget v9, p0, Lorg/h2/security/XTEA;->k1:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 79
    iget v9, p0, Lorg/h2/security/XTEA;->k2:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 80
    iget v9, p0, Lorg/h2/security/XTEA;->k3:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 81
    iget v9, p0, Lorg/h2/security/XTEA;->k4:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 82
    iget v9, p0, Lorg/h2/security/XTEA;->k5:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 83
    iget v9, p0, Lorg/h2/security/XTEA;->k6:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 84
    iget v9, p0, Lorg/h2/security/XTEA;->k7:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 85
    iget v9, p0, Lorg/h2/security/XTEA;->k8:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 86
    iget v9, p0, Lorg/h2/security/XTEA;->k9:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 87
    iget v9, p0, Lorg/h2/security/XTEA;->k10:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 88
    iget v9, p0, Lorg/h2/security/XTEA;->k11:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 89
    iget v9, p0, Lorg/h2/security/XTEA;->k12:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 90
    iget v9, p0, Lorg/h2/security/XTEA;->k13:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 91
    iget v9, p0, Lorg/h2/security/XTEA;->k14:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 92
    iget v9, p0, Lorg/h2/security/XTEA;->k15:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 93
    iget v9, p0, Lorg/h2/security/XTEA;->k16:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 94
    iget v9, p0, Lorg/h2/security/XTEA;->k17:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 95
    iget v9, p0, Lorg/h2/security/XTEA;->k18:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 96
    iget v9, p0, Lorg/h2/security/XTEA;->k19:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 97
    iget v9, p0, Lorg/h2/security/XTEA;->k20:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 98
    iget v9, p0, Lorg/h2/security/XTEA;->k21:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 99
    iget v9, p0, Lorg/h2/security/XTEA;->k22:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 100
    iget v9, p0, Lorg/h2/security/XTEA;->k23:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 101
    iget v9, p0, Lorg/h2/security/XTEA;->k24:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 102
    iget v9, p0, Lorg/h2/security/XTEA;->k25:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 103
    iget v9, p0, Lorg/h2/security/XTEA;->k26:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 104
    iget v9, p0, Lorg/h2/security/XTEA;->k27:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 105
    iget v9, p0, Lorg/h2/security/XTEA;->k28:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 106
    iget v9, p0, Lorg/h2/security/XTEA;->k29:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    ushr-int/lit8 v9, p1, 0x5

    xor-int/2addr v5, v9

    add-int/2addr v5, p1

    .line 107
    iget v9, p0, Lorg/h2/security/XTEA;->k30:I

    xor-int/2addr v5, v9

    add-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x5

    shl-int/lit8 v9, v0, 0x4

    xor-int/2addr v5, v9

    add-int/2addr v5, v0

    .line 108
    iget v9, p0, Lorg/h2/security/XTEA;->k31:I

    xor-int/2addr v5, v9

    add-int/2addr p1, v5

    shr-int/lit8 v5, v0, 0x18

    int-to-byte v5, v5

    .line 109
    aput-byte v5, p2, p3

    shr-int/lit8 p3, v0, 0x10

    int-to-byte p3, p3

    .line 110
    aput-byte p3, p2, v1

    shr-int/lit8 p3, v0, 0x8

    int-to-byte p3, p3

    .line 111
    aput-byte p3, p2, v2

    int-to-byte p3, v0

    .line 112
    aput-byte p3, p2, v3

    shr-int/lit8 p3, p1, 0x18

    int-to-byte p3, p3

    .line 113
    aput-byte p3, p2, v4

    shr-int/lit8 p3, p1, 0x10

    int-to-byte p3, p3

    .line 114
    aput-byte p3, p2, v6

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    .line 115
    aput-byte p3, p2, v7

    int-to-byte p1, p1

    .line 116
    aput-byte p1, p2, v8

    return-void
.end method


# virtual methods
.method public decrypt([BII)V
    .locals 2

    .line 62
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    .line 63
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unaligned len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 68
    invoke-direct {p0, p1, p1, v0}, Lorg/h2/security/XTEA;->decryptBlock([B[BI)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_1
    return-void
.end method

.method public encrypt([BII)V
    .locals 2

    .line 50
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    .line 51
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unaligned len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 56
    invoke-direct {p0, p1, p1, v0}, Lorg/h2/security/XTEA;->encryptBlock([B[BI)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getKeyLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public setKey([B)V
    .locals 12

    const/4 v0, 0x4

    .line 27
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    const/16 v5, 0x18

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 29
    div-int/lit8 v7, v3, 0x4

    add-int/lit8 v8, v3, 0x1

    aget-byte v3, p1, v3

    shl-int/2addr v3, v5

    add-int/lit8 v5, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v6, v8, 0x10

    add-int/2addr v3, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v4, v5, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v6, 0x1

    aget-byte v5, p1, v6

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    aput v3, v1, v7

    move v3, v4

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    .line 32
    new-array v3, p1, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x3

    if-ge v7, p1, :cond_1

    add-int/lit8 v10, v7, 0x1

    and-int/lit8 v11, v8, 0x3

    .line 34
    aget v11, v1, v11

    add-int/2addr v11, v8

    aput v11, v3, v7

    const v7, 0x61c88647

    sub-int/2addr v8, v7

    add-int/lit8 v7, v10, 0x1

    ushr-int/lit8 v11, v8, 0xb

    and-int/2addr v9, v11

    .line 36
    aget v9, v1, v9

    add-int/2addr v9, v8

    aput v9, v3, v10

    goto :goto_1

    .line 38
    :cond_1
    aget p1, v3, v2

    iput p1, p0, Lorg/h2/security/XTEA;->k0:I

    const/4 p1, 0x1

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k1:I

    const/4 p1, 0x2

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k2:I

    aget p1, v3, v9

    iput p1, p0, Lorg/h2/security/XTEA;->k3:I

    .line 39
    aget p1, v3, v0

    iput p1, p0, Lorg/h2/security/XTEA;->k4:I

    const/4 p1, 0x5

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k5:I

    const/4 p1, 0x6

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k6:I

    const/4 p1, 0x7

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k7:I

    .line 40
    aget p1, v3, v4

    iput p1, p0, Lorg/h2/security/XTEA;->k8:I

    const/16 p1, 0x9

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k9:I

    const/16 p1, 0xa

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k10:I

    const/16 p1, 0xb

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k11:I

    const/16 p1, 0xc

    .line 41
    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k12:I

    const/16 p1, 0xd

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k13:I

    const/16 p1, 0xe

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k14:I

    const/16 p1, 0xf

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k15:I

    .line 42
    aget p1, v3, v6

    iput p1, p0, Lorg/h2/security/XTEA;->k16:I

    const/16 p1, 0x11

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k17:I

    const/16 p1, 0x12

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k18:I

    const/16 p1, 0x13

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k19:I

    const/16 p1, 0x14

    .line 43
    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k20:I

    const/16 p1, 0x15

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k21:I

    const/16 p1, 0x16

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k22:I

    const/16 p1, 0x17

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k23:I

    .line 44
    aget p1, v3, v5

    iput p1, p0, Lorg/h2/security/XTEA;->k24:I

    const/16 p1, 0x19

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k25:I

    const/16 p1, 0x1a

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k26:I

    const/16 p1, 0x1b

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k27:I

    const/16 p1, 0x1c

    .line 45
    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k28:I

    const/16 p1, 0x1d

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k29:I

    const/16 p1, 0x1e

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k30:I

    const/16 p1, 0x1f

    aget p1, v3, p1

    iput p1, p0, Lorg/h2/security/XTEA;->k31:I

    return-void
.end method
