.class public Lorg/h2/security/AES;
.super Ljava/lang/Object;
.source "AES.java"

# interfaces
.implements Lorg/h2/security/BlockCipher;


# static fields
.field private static final FS:[I

.field private static final FT0:[I

.field private static final FT1:[I

.field private static final FT2:[I

.field private static final FT3:[I

.field private static final RCON:[I

.field private static final RS:[I

.field private static final RT0:[I

.field private static final RT1:[I

.field private static final RT2:[I

.field private static final RT3:[I


# instance fields
.field private final decKey:[I

.field private final encKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xa

    .line 14
    new-array v1, v0, [I

    sput-object v1, Lorg/h2/security/AES;->RCON:[I

    const/16 v1, 0x100

    .line 15
    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->FS:[I

    .line 16
    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->FT0:[I

    .line 17
    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->FT1:[I

    .line 18
    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->FT2:[I

    .line 19
    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->FT3:[I

    .line 20
    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->RS:[I

    .line 21
    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->RT0:[I

    .line 22
    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->RT1:[I

    .line 23
    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->RT2:[I

    .line 24
    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->RT3:[I

    .line 41
    new-array v2, v1, [I

    .line 42
    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v1, :cond_0

    .line 44
    aput v7, v2, v6

    .line 45
    aput v6, v3, v7

    add-int/lit8 v6, v6, 0x1

    .line 43
    invoke-static {v7}, Lorg/h2/security/AES;->xtime(I)I

    move-result v8

    xor-int/2addr v7, v8

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_1
    if-ge v6, v0, :cond_1

    .line 48
    sget-object v8, Lorg/h2/security/AES;->RCON:[I

    shl-int/lit8 v9, v7, 0x18

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    .line 47
    invoke-static {v7}, Lorg/h2/security/AES;->xtime(I)I

    move-result v7

    goto :goto_1

    .line 50
    :cond_1
    sget-object v0, Lorg/h2/security/AES;->FS:[I

    const/16 v6, 0x63

    aput v6, v0, v4

    .line 51
    sget-object v0, Lorg/h2/security/AES;->RS:[I

    aput v4, v0, v6

    :goto_2
    if-ge v5, v1, :cond_2

    .line 53
    aget v0, v3, v5

    rsub-int v0, v0, 0xff

    aget v0, v2, v0

    shl-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, v0, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v0, v7

    shl-int/lit8 v8, v7, 0x1

    shr-int/lit8 v7, v7, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v0, v7

    shl-int/lit8 v8, v7, 0x1

    shr-int/lit8 v7, v7, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v0, v7

    shl-int/lit8 v8, v7, 0x1

    shr-int/lit8 v7, v7, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v7, v6

    xor-int/2addr v0, v7

    .line 62
    sget-object v7, Lorg/h2/security/AES;->FS:[I

    and-int/lit16 v8, v0, 0xff

    aput v8, v7, v5

    .line 63
    sget-object v7, Lorg/h2/security/AES;->RS:[I

    and-int/lit16 v8, v5, 0xff

    aput v8, v7, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v4, v1, :cond_3

    .line 66
    sget-object v0, Lorg/h2/security/AES;->FS:[I

    aget v0, v0, v4

    invoke-static {v0}, Lorg/h2/security/AES;->xtime(I)I

    move-result v5

    .line 67
    sget-object v6, Lorg/h2/security/AES;->FT0:[I

    xor-int v7, v0, v5

    shl-int/lit8 v8, v0, 0x8

    xor-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x10

    xor-int/2addr v0, v7

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v0, v5

    aput v0, v6, v4

    .line 68
    sget-object v0, Lorg/h2/security/AES;->FT1:[I

    sget-object v5, Lorg/h2/security/AES;->FT0:[I

    aget v5, v5, v4

    invoke-static {v5}, Lorg/h2/security/AES;->rot8(I)I

    move-result v5

    aput v5, v0, v4

    .line 69
    sget-object v0, Lorg/h2/security/AES;->FT2:[I

    sget-object v5, Lorg/h2/security/AES;->FT1:[I

    aget v5, v5, v4

    invoke-static {v5}, Lorg/h2/security/AES;->rot8(I)I

    move-result v5

    aput v5, v0, v4

    .line 70
    sget-object v0, Lorg/h2/security/AES;->FT3:[I

    sget-object v5, Lorg/h2/security/AES;->FT2:[I

    aget v5, v5, v4

    invoke-static {v5}, Lorg/h2/security/AES;->rot8(I)I

    move-result v5

    aput v5, v0, v4

    .line 71
    sget-object v0, Lorg/h2/security/AES;->RS:[I

    aget v0, v0, v4

    .line 72
    sget-object v5, Lorg/h2/security/AES;->RT0:[I

    const/16 v6, 0xb

    invoke-static {v2, v3, v6, v0}, Lorg/h2/security/AES;->mul([I[III)I

    move-result v6

    const/16 v7, 0xd

    invoke-static {v2, v3, v7, v0}, Lorg/h2/security/AES;->mul([I[III)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    const/16 v7, 0x9

    invoke-static {v2, v3, v7, v0}, Lorg/h2/security/AES;->mul([I[III)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    const/16 v7, 0xe

    invoke-static {v2, v3, v7, v0}, Lorg/h2/security/AES;->mul([I[III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    xor-int/2addr v0, v6

    aput v0, v5, v4

    .line 74
    sget-object v0, Lorg/h2/security/AES;->RT1:[I

    sget-object v5, Lorg/h2/security/AES;->RT0:[I

    aget v5, v5, v4

    invoke-static {v5}, Lorg/h2/security/AES;->rot8(I)I

    move-result v5

    aput v5, v0, v4

    .line 75
    sget-object v0, Lorg/h2/security/AES;->RT2:[I

    sget-object v5, Lorg/h2/security/AES;->RT1:[I

    aget v5, v5, v4

    invoke-static {v5}, Lorg/h2/security/AES;->rot8(I)I

    move-result v5

    aput v5, v0, v4

    .line 76
    sget-object v0, Lorg/h2/security/AES;->RT3:[I

    sget-object v5, Lorg/h2/security/AES;->RT2:[I

    aget v5, v5, v4

    invoke-static {v5}, Lorg/h2/security/AES;->rot8(I)I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c

    .line 25
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/h2/security/AES;->encKey:[I

    .line 26
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/security/AES;->decKey:[I

    return-void
.end method

.method private decryptBlock([B[BI)V
    .locals 29

    move-object/from16 v1, p0

    .line 237
    iget-object v3, v1, Lorg/h2/security/AES;->decKey:[I

    .line 238
    aget-byte v4, p1, p3

    const/16 v5, 0x18

    shl-int/2addr v4, v5

    add-int/lit8 v6, p3, 0x1

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x10

    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    add-int/lit8 v7, p3, 0x2

    aget-byte v9, p1, v7

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x8

    shl-int/2addr v9, v10

    or-int/2addr v4, v9

    add-int/lit8 v9, p3, 0x3

    aget-byte v11, p1, v9

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v4, v11

    const/4 v11, 0x0

    aget v11, v3, v11

    xor-int/2addr v4, v11

    add-int/lit8 v11, p3, 0x4

    .line 240
    aget-byte v12, p1, v11

    shl-int/2addr v12, v5

    add-int/lit8 v13, p3, 0x5

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v8

    or-int/2addr v12, v14

    add-int/lit8 v14, p3, 0x6

    aget-byte v8, p1, v14

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v10

    or-int/2addr v8, v12

    add-int/lit8 v12, p3, 0x7

    aget-byte v10, p1, v12

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v8, v10

    const/4 v10, 0x1

    aget v10, v3, v10

    xor-int/2addr v8, v10

    add-int/lit8 v10, p3, 0x8

    .line 242
    aget-byte v17, p1, v10

    shl-int/lit8 v17, v17, 0x18

    add-int/lit8 v18, p3, 0x9

    aget-byte v5, p1, v18

    and-int/lit16 v5, v5, 0xff

    const/16 v15, 0x10

    shl-int/2addr v5, v15

    or-int v5, v17, v5

    add-int/lit8 v17, p3, 0xa

    aget-byte v1, p1, v17

    and-int/lit16 v1, v1, 0xff

    const/16 v16, 0x8

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v5

    add-int/lit8 v5, p3, 0xb

    move/from16 v20, v10

    aget-byte v10, p1, v5

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v1, v10

    const/4 v10, 0x2

    aget v10, v3, v10

    xor-int/2addr v1, v10

    add-int/lit8 v10, p3, 0xc

    .line 244
    aget-byte v21, p1, v10

    const/16 v19, 0x18

    shl-int/lit8 v21, v21, 0x18

    add-int/lit8 v22, p3, 0xd

    move/from16 v23, v10

    aget-byte v10, p1, v22

    and-int/lit16 v10, v10, 0xff

    const/16 v15, 0x10

    shl-int/2addr v10, v15

    or-int v10, v21, v10

    add-int/lit8 v21, p3, 0xe

    move/from16 v24, v5

    aget-byte v5, p1, v21

    and-int/lit16 v5, v5, 0xff

    const/16 v16, 0x8

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v10

    add-int/lit8 v10, p3, 0xf

    aget-byte v0, p1, v10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget v5, v3, v5

    xor-int/2addr v0, v5

    .line 246
    sget-object v5, Lorg/h2/security/AES;->RT0:[I

    move/from16 v25, v10

    shr-int/lit8 v10, v4, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT1:[I

    move/from16 v26, v12

    shr-int/lit8 v12, v0, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v12, v1, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v12, v8, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    const/4 v10, 0x4

    aget v10, v3, v10

    xor-int/2addr v5, v10

    .line 248
    sget-object v10, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v12, v8, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT1:[I

    move/from16 v27, v14

    shr-int/lit8 v14, v4, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v14, v0, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v14, v1, 0xff

    aget v12, v12, v14

    xor-int/2addr v10, v12

    const/4 v12, 0x5

    aget v12, v3, v12

    xor-int/2addr v10, v12

    .line 250
    sget-object v12, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v14, v1, 0x18

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    sget-object v14, Lorg/h2/security/AES;->RT1:[I

    move/from16 v28, v13

    shr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v14, v4, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v14, v0, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    const/4 v13, 0x6

    aget v13, v3, v13

    xor-int/2addr v12, v13

    .line 252
    sget-object v13, Lorg/h2/security/AES;->RT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    const/16 v14, 0x10

    shr-int/2addr v1, v14

    and-int/lit16 v1, v1, 0xff

    aget v1, v13, v1

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->RT2:[I

    const/16 v13, 0x8

    shr-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    aget v1, v1, v8

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, v3, v1

    xor-int/2addr v0, v1

    .line 254
    sget-object v1, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v8, v12, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v8, v10, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    const/16 v4, 0x8

    aget v8, v3, v4

    xor-int/2addr v1, v8

    .line 256
    sget-object v4, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v13, v5, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v13, v12, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    const/16 v8, 0x9

    aget v8, v3, v8

    xor-int/2addr v4, v8

    .line 258
    sget-object v8, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v14, v10, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v14, v0, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    const/16 v13, 0xa

    aget v13, v3, v13

    xor-int/2addr v8, v13

    .line 260
    sget-object v13, Lorg/h2/security/AES;->RT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    const/16 v14, 0x10

    shr-int/2addr v12, v14

    and-int/lit16 v12, v12, 0xff

    aget v12, v13, v12

    xor-int/2addr v0, v12

    sget-object v12, Lorg/h2/security/AES;->RT2:[I

    const/16 v13, 0x8

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v10, v12, v10

    xor-int/2addr v0, v10

    sget-object v10, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v5, v5, 0xff

    aget v5, v10, v5

    xor-int/2addr v0, v5

    const/16 v5, 0xb

    aget v5, v3, v5

    xor-int/2addr v0, v5

    .line 262
    sget-object v5, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v10, v1, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v12, v0, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v12, v4, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    const/16 v10, 0xc

    aget v10, v3, v10

    xor-int/2addr v5, v10

    .line 264
    sget-object v10, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v12, v4, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v13, v1, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v13, v8, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    const/16 v12, 0xd

    aget v12, v3, v12

    xor-int/2addr v10, v12

    .line 266
    sget-object v12, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v13, v8, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v14, v4, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v14, v1, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v14, v0, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    const/16 v13, 0xe

    aget v13, v3, v13

    xor-int/2addr v12, v13

    .line 268
    sget-object v13, Lorg/h2/security/AES;->RT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    const/16 v14, 0x10

    shr-int/2addr v8, v14

    and-int/lit16 v8, v8, 0xff

    aget v8, v13, v8

    xor-int/2addr v0, v8

    sget-object v8, Lorg/h2/security/AES;->RT2:[I

    const/16 v13, 0x8

    shr-int/2addr v4, v13

    and-int/lit16 v4, v4, 0xff

    aget v4, v8, v4

    xor-int/2addr v0, v4

    sget-object v4, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v1, v1, 0xff

    aget v1, v4, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xf

    aget v1, v3, v1

    xor-int/2addr v0, v1

    .line 270
    sget-object v1, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v8, v12, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v8, v10, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    const/16 v4, 0x10

    aget v8, v3, v4

    xor-int/2addr v1, v8

    .line 272
    sget-object v4, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v13, v5, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v13, v12, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    const/16 v8, 0x11

    aget v8, v3, v8

    xor-int/2addr v4, v8

    .line 274
    sget-object v8, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v14, v10, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v14, v0, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    const/16 v13, 0x12

    aget v13, v3, v13

    xor-int/2addr v8, v13

    .line 276
    sget-object v13, Lorg/h2/security/AES;->RT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    const/16 v14, 0x10

    shr-int/2addr v12, v14

    and-int/lit16 v12, v12, 0xff

    aget v12, v13, v12

    xor-int/2addr v0, v12

    sget-object v12, Lorg/h2/security/AES;->RT2:[I

    const/16 v13, 0x8

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v10, v12, v10

    xor-int/2addr v0, v10

    sget-object v10, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v5, v5, 0xff

    aget v5, v10, v5

    xor-int/2addr v0, v5

    const/16 v5, 0x13

    aget v5, v3, v5

    xor-int/2addr v0, v5

    .line 278
    sget-object v5, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v10, v1, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v12, v0, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v12, v4, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    const/16 v10, 0x14

    aget v10, v3, v10

    xor-int/2addr v5, v10

    .line 280
    sget-object v10, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v12, v4, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v13, v1, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v13, v8, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    const/16 v12, 0x15

    aget v12, v3, v12

    xor-int/2addr v10, v12

    .line 282
    sget-object v12, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v13, v8, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v14, v4, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v14, v1, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v14, v0, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    const/16 v13, 0x16

    aget v13, v3, v13

    xor-int/2addr v12, v13

    .line 284
    sget-object v13, Lorg/h2/security/AES;->RT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    const/16 v14, 0x10

    shr-int/2addr v8, v14

    and-int/lit16 v8, v8, 0xff

    aget v8, v13, v8

    xor-int/2addr v0, v8

    sget-object v8, Lorg/h2/security/AES;->RT2:[I

    const/16 v13, 0x8

    shr-int/2addr v4, v13

    and-int/lit16 v4, v4, 0xff

    aget v4, v8, v4

    xor-int/2addr v0, v4

    sget-object v4, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v1, v1, 0xff

    aget v1, v4, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x17

    aget v1, v3, v1

    xor-int/2addr v0, v1

    .line 286
    sget-object v1, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v8, v12, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v8, v10, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    const/16 v4, 0x18

    aget v8, v3, v4

    xor-int/2addr v1, v8

    .line 288
    sget-object v4, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v13, v5, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v13, v12, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    const/16 v8, 0x19

    aget v8, v3, v8

    xor-int/2addr v4, v8

    .line 290
    sget-object v8, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v14, v10, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v14, v0, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    const/16 v13, 0x1a

    aget v13, v3, v13

    xor-int/2addr v8, v13

    .line 292
    sget-object v13, Lorg/h2/security/AES;->RT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    const/16 v14, 0x10

    shr-int/2addr v12, v14

    and-int/lit16 v12, v12, 0xff

    aget v12, v13, v12

    xor-int/2addr v0, v12

    sget-object v12, Lorg/h2/security/AES;->RT2:[I

    const/16 v13, 0x8

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v10, v12, v10

    xor-int/2addr v0, v10

    sget-object v10, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v5, v5, 0xff

    aget v5, v10, v5

    xor-int/2addr v0, v5

    const/16 v5, 0x1b

    aget v5, v3, v5

    xor-int/2addr v0, v5

    .line 294
    sget-object v5, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v10, v1, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v12, v0, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v12, v4, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    const/16 v10, 0x1c

    aget v10, v3, v10

    xor-int/2addr v5, v10

    .line 296
    sget-object v10, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v12, v4, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v13, v1, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v13, v8, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    const/16 v12, 0x1d

    aget v12, v3, v12

    xor-int/2addr v10, v12

    .line 298
    sget-object v12, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v13, v8, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v14, v4, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v14, v1, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v14, v0, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    const/16 v13, 0x1e

    aget v13, v3, v13

    xor-int/2addr v12, v13

    .line 300
    sget-object v13, Lorg/h2/security/AES;->RT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    const/16 v14, 0x10

    shr-int/2addr v8, v14

    and-int/lit16 v8, v8, 0xff

    aget v8, v13, v8

    xor-int/2addr v0, v8

    sget-object v8, Lorg/h2/security/AES;->RT2:[I

    const/16 v13, 0x8

    shr-int/2addr v4, v13

    and-int/lit16 v4, v4, 0xff

    aget v4, v8, v4

    xor-int/2addr v0, v4

    sget-object v4, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v1, v1, 0xff

    aget v1, v4, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x1f

    aget v1, v3, v1

    xor-int/2addr v0, v1

    .line 302
    sget-object v1, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v8, v12, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v8, v10, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    const/16 v4, 0x20

    aget v4, v3, v4

    xor-int/2addr v1, v4

    .line 304
    sget-object v4, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v13, v5, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v13, v12, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    const/16 v8, 0x21

    aget v8, v3, v8

    xor-int/2addr v4, v8

    .line 306
    sget-object v8, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v14, v10, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v14, v0, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    const/16 v13, 0x22

    aget v13, v3, v13

    xor-int/2addr v8, v13

    .line 308
    sget-object v13, Lorg/h2/security/AES;->RT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    const/16 v14, 0x10

    shr-int/2addr v12, v14

    and-int/lit16 v12, v12, 0xff

    aget v12, v13, v12

    xor-int/2addr v0, v12

    sget-object v12, Lorg/h2/security/AES;->RT2:[I

    const/16 v13, 0x8

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v10, v12, v10

    xor-int/2addr v0, v10

    sget-object v10, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v5, v5, 0xff

    aget v5, v10, v5

    xor-int/2addr v0, v5

    const/16 v5, 0x23

    aget v5, v3, v5

    xor-int/2addr v0, v5

    .line 310
    sget-object v5, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v10, v1, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v12, v0, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v12, v4, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    const/16 v10, 0x24

    aget v10, v3, v10

    xor-int/2addr v5, v10

    .line 312
    sget-object v10, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v12, v4, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v13, v1, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v13, v8, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    const/16 v12, 0x25

    aget v12, v3, v12

    xor-int/2addr v10, v12

    .line 314
    sget-object v12, Lorg/h2/security/AES;->RT0:[I

    shr-int/lit8 v13, v8, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v14, v4, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v14, v1, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v14, v0, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    const/16 v13, 0x26

    aget v13, v3, v13

    xor-int/2addr v12, v13

    .line 316
    sget-object v13, Lorg/h2/security/AES;->RT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->RT1:[I

    const/16 v14, 0x10

    shr-int/2addr v8, v14

    and-int/lit16 v8, v8, 0xff

    aget v8, v13, v8

    xor-int/2addr v0, v8

    sget-object v8, Lorg/h2/security/AES;->RT2:[I

    const/16 v13, 0x8

    shr-int/2addr v4, v13

    and-int/lit16 v4, v4, 0xff

    aget v4, v8, v4

    xor-int/2addr v0, v4

    sget-object v4, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 v1, v1, 0xff

    aget v1, v4, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x27

    aget v1, v3, v1

    xor-int/2addr v0, v1

    .line 318
    sget-object v1, Lorg/h2/security/AES;->RS:[I

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    const/16 v4, 0x18

    shl-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->RS:[I

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    const/16 v8, 0x10

    shl-int/2addr v4, v8

    or-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->RS:[I

    shr-int/lit8 v8, v12, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    const/16 v8, 0x8

    shl-int/2addr v4, v8

    or-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->RS:[I

    and-int/lit16 v8, v10, 0xff

    aget v4, v4, v8

    or-int/2addr v1, v4

    const/16 v4, 0x28

    aget v4, v3, v4

    xor-int/2addr v1, v4

    .line 320
    sget-object v4, Lorg/h2/security/AES;->RS:[I

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    const/16 v8, 0x18

    shl-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->RS:[I

    shr-int/lit8 v13, v5, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    const/16 v13, 0x10

    shl-int/2addr v8, v13

    or-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->RS:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    const/16 v13, 0x8

    shl-int/2addr v8, v13

    or-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->RS:[I

    and-int/lit16 v13, v12, 0xff

    aget v8, v8, v13

    or-int/2addr v4, v8

    const/16 v8, 0x29

    aget v8, v3, v8

    xor-int/2addr v4, v8

    .line 322
    sget-object v8, Lorg/h2/security/AES;->RS:[I

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    const/16 v13, 0x18

    shl-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->RS:[I

    shr-int/lit8 v14, v10, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    const/16 v14, 0x10

    shl-int/2addr v13, v14

    or-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->RS:[I

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    const/16 v14, 0x8

    shl-int/2addr v13, v14

    or-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->RS:[I

    and-int/lit16 v14, v0, 0xff

    aget v13, v13, v14

    or-int/2addr v8, v13

    const/16 v13, 0x2a

    aget v13, v3, v13

    xor-int/2addr v8, v13

    .line 324
    sget-object v13, Lorg/h2/security/AES;->RS:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    shl-int/2addr v0, v14

    sget-object v13, Lorg/h2/security/AES;->RS:[I

    const/16 v14, 0x10

    shr-int/2addr v12, v14

    and-int/lit16 v12, v12, 0xff

    aget v12, v13, v12

    shl-int/2addr v12, v14

    or-int/2addr v0, v12

    sget-object v12, Lorg/h2/security/AES;->RS:[I

    const/16 v13, 0x8

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v10, v12, v10

    shl-int/2addr v10, v13

    or-int/2addr v0, v10

    sget-object v10, Lorg/h2/security/AES;->RS:[I

    and-int/lit16 v5, v5, 0xff

    aget v5, v10, v5

    or-int/2addr v0, v5

    const/16 v5, 0x2b

    aget v3, v3, v5

    xor-int/2addr v0, v3

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    .line 326
    aput-byte v3, p2, p3

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    .line 327
    aput-byte v2, p2, v6

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    .line 328
    aput-byte v2, p2, v7

    int-to-byte v1, v1

    aput-byte v1, p2, v9

    shr-int/lit8 v1, v4, 0x18

    int-to-byte v1, v1

    .line 329
    aput-byte v1, p2, v11

    shr-int/lit8 v1, v4, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v28

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    .line 330
    aput-byte v1, p2, v27

    int-to-byte v1, v4

    aput-byte v1, p2, v26

    shr-int/lit8 v1, v8, 0x18

    int-to-byte v1, v1

    .line 331
    aput-byte v1, p2, v20

    shr-int/lit8 v1, v8, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v18

    shr-int/lit8 v1, v8, 0x8

    int-to-byte v1, v1

    .line 332
    aput-byte v1, p2, v17

    int-to-byte v1, v8

    aput-byte v1, p2, v24

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    .line 333
    aput-byte v1, p2, v23

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v22

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 334
    aput-byte v1, p2, v21

    int-to-byte v0, v0

    aput-byte v0, p2, v25

    return-void
.end method

.method private encryptBlock([B[BI)V
    .locals 29

    move-object/from16 v1, p0

    .line 137
    iget-object v3, v1, Lorg/h2/security/AES;->encKey:[I

    .line 138
    aget-byte v4, p1, p3

    const/16 v5, 0x18

    shl-int/2addr v4, v5

    add-int/lit8 v6, p3, 0x1

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x10

    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    add-int/lit8 v7, p3, 0x2

    aget-byte v9, p1, v7

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x8

    shl-int/2addr v9, v10

    or-int/2addr v4, v9

    add-int/lit8 v9, p3, 0x3

    aget-byte v11, p1, v9

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v4, v11

    const/4 v11, 0x0

    aget v11, v3, v11

    xor-int/2addr v4, v11

    add-int/lit8 v11, p3, 0x4

    .line 140
    aget-byte v12, p1, v11

    shl-int/2addr v12, v5

    add-int/lit8 v13, p3, 0x5

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v8

    or-int/2addr v12, v14

    add-int/lit8 v14, p3, 0x6

    aget-byte v8, p1, v14

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v10

    or-int/2addr v8, v12

    add-int/lit8 v12, p3, 0x7

    aget-byte v10, p1, v12

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v8, v10

    const/4 v10, 0x1

    aget v10, v3, v10

    xor-int/2addr v8, v10

    add-int/lit8 v10, p3, 0x8

    .line 142
    aget-byte v17, p1, v10

    shl-int/lit8 v17, v17, 0x18

    add-int/lit8 v18, p3, 0x9

    aget-byte v5, p1, v18

    and-int/lit16 v5, v5, 0xff

    const/16 v15, 0x10

    shl-int/2addr v5, v15

    or-int v5, v17, v5

    add-int/lit8 v17, p3, 0xa

    aget-byte v1, p1, v17

    and-int/lit16 v1, v1, 0xff

    const/16 v16, 0x8

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v5

    add-int/lit8 v5, p3, 0xb

    move/from16 v20, v10

    aget-byte v10, p1, v5

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v1, v10

    const/4 v10, 0x2

    aget v10, v3, v10

    xor-int/2addr v1, v10

    add-int/lit8 v10, p3, 0xc

    .line 144
    aget-byte v21, p1, v10

    const/16 v19, 0x18

    shl-int/lit8 v21, v21, 0x18

    add-int/lit8 v22, p3, 0xd

    move/from16 v23, v10

    aget-byte v10, p1, v22

    and-int/lit16 v10, v10, 0xff

    const/16 v15, 0x10

    shl-int/2addr v10, v15

    or-int v10, v21, v10

    add-int/lit8 v21, p3, 0xe

    move/from16 v24, v5

    aget-byte v5, p1, v21

    and-int/lit16 v5, v5, 0xff

    const/16 v16, 0x8

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v10

    add-int/lit8 v10, p3, 0xf

    aget-byte v0, p1, v10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget v5, v3, v5

    xor-int/2addr v0, v5

    .line 146
    sget-object v5, Lorg/h2/security/AES;->FT0:[I

    move/from16 v25, v10

    shr-int/lit8 v10, v4, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT1:[I

    move/from16 v26, v12

    shr-int/lit8 v12, v8, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v12, v1, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v12, v0, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    const/4 v10, 0x4

    aget v10, v3, v10

    xor-int/2addr v5, v10

    .line 148
    sget-object v10, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v12, v8, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT1:[I

    move/from16 v27, v14

    shr-int/lit8 v14, v1, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v14, v0, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v14, v4, 0xff

    aget v12, v12, v14

    xor-int/2addr v10, v12

    const/4 v12, 0x5

    aget v12, v3, v12

    xor-int/2addr v10, v12

    .line 150
    sget-object v12, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v14, v1, 0x18

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    sget-object v14, Lorg/h2/security/AES;->FT1:[I

    move/from16 v28, v13

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v14, v4, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v14, v8, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    const/4 v13, 0x6

    aget v13, v3, v13

    xor-int/2addr v12, v13

    .line 152
    sget-object v13, Lorg/h2/security/AES;->FT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    const/16 v14, 0x10

    shr-int/2addr v4, v14

    and-int/lit16 v4, v4, 0xff

    aget v4, v13, v4

    xor-int/2addr v0, v4

    sget-object v4, Lorg/h2/security/AES;->FT2:[I

    const/16 v13, 0x8

    shr-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v0, v4

    sget-object v4, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v1, v1, 0xff

    aget v1, v4, v1

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, v3, v1

    xor-int/2addr v0, v1

    .line 154
    sget-object v1, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v8, v10, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v8, v12, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v8, v0, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    const/16 v4, 0x8

    aget v8, v3, v4

    xor-int/2addr v1, v8

    .line 156
    sget-object v4, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v13, v5, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    const/16 v8, 0x9

    aget v8, v3, v8

    xor-int/2addr v4, v8

    .line 158
    sget-object v8, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v14, v0, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v14, v10, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    const/16 v13, 0xa

    aget v13, v3, v13

    xor-int/2addr v8, v13

    .line 160
    sget-object v13, Lorg/h2/security/AES;->FT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    const/16 v14, 0x10

    shr-int/2addr v5, v14

    and-int/lit16 v5, v5, 0xff

    aget v5, v13, v5

    xor-int/2addr v0, v5

    sget-object v5, Lorg/h2/security/AES;->FT2:[I

    const/16 v13, 0x8

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    xor-int/2addr v0, v5

    sget-object v5, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v10, v12, 0xff

    aget v5, v5, v10

    xor-int/2addr v0, v5

    const/16 v5, 0xb

    aget v5, v3, v5

    xor-int/2addr v0, v5

    .line 162
    sget-object v5, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v10, v1, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v12, v0, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    const/16 v10, 0xc

    aget v10, v3, v10

    xor-int/2addr v5, v10

    .line 164
    sget-object v10, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v12, v4, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v13, v1, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    const/16 v12, 0xd

    aget v12, v3, v12

    xor-int/2addr v10, v12

    .line 166
    sget-object v12, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v13, v8, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v14, v0, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v14, v1, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v14, v4, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    const/16 v13, 0xe

    aget v13, v3, v13

    xor-int/2addr v12, v13

    .line 168
    sget-object v13, Lorg/h2/security/AES;->FT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    const/16 v14, 0x10

    shr-int/2addr v1, v14

    and-int/lit16 v1, v1, 0xff

    aget v1, v13, v1

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->FT2:[I

    const/16 v13, 0x8

    shr-int/2addr v4, v13

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v4, v8, 0xff

    aget v1, v1, v4

    xor-int/2addr v0, v1

    const/16 v1, 0xf

    aget v1, v3, v1

    xor-int/2addr v0, v1

    .line 170
    sget-object v1, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v8, v10, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v8, v12, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v8, v0, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    const/16 v4, 0x10

    aget v8, v3, v4

    xor-int/2addr v1, v8

    .line 172
    sget-object v4, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v13, v5, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    const/16 v8, 0x11

    aget v8, v3, v8

    xor-int/2addr v4, v8

    .line 174
    sget-object v8, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v14, v0, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v14, v10, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    const/16 v13, 0x12

    aget v13, v3, v13

    xor-int/2addr v8, v13

    .line 176
    sget-object v13, Lorg/h2/security/AES;->FT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    const/16 v14, 0x10

    shr-int/2addr v5, v14

    and-int/lit16 v5, v5, 0xff

    aget v5, v13, v5

    xor-int/2addr v0, v5

    sget-object v5, Lorg/h2/security/AES;->FT2:[I

    const/16 v13, 0x8

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    xor-int/2addr v0, v5

    sget-object v5, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v10, v12, 0xff

    aget v5, v5, v10

    xor-int/2addr v0, v5

    const/16 v5, 0x13

    aget v5, v3, v5

    xor-int/2addr v0, v5

    .line 178
    sget-object v5, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v10, v1, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v12, v0, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    const/16 v10, 0x14

    aget v10, v3, v10

    xor-int/2addr v5, v10

    .line 180
    sget-object v10, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v12, v4, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v13, v1, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    const/16 v12, 0x15

    aget v12, v3, v12

    xor-int/2addr v10, v12

    .line 182
    sget-object v12, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v13, v8, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v14, v0, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v14, v1, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v14, v4, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    const/16 v13, 0x16

    aget v13, v3, v13

    xor-int/2addr v12, v13

    .line 184
    sget-object v13, Lorg/h2/security/AES;->FT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    const/16 v14, 0x10

    shr-int/2addr v1, v14

    and-int/lit16 v1, v1, 0xff

    aget v1, v13, v1

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->FT2:[I

    const/16 v13, 0x8

    shr-int/2addr v4, v13

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v4, v8, 0xff

    aget v1, v1, v4

    xor-int/2addr v0, v1

    const/16 v1, 0x17

    aget v1, v3, v1

    xor-int/2addr v0, v1

    .line 186
    sget-object v1, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v8, v10, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v8, v12, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v8, v0, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    const/16 v4, 0x18

    aget v8, v3, v4

    xor-int/2addr v1, v8

    .line 188
    sget-object v4, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v13, v5, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    const/16 v8, 0x19

    aget v8, v3, v8

    xor-int/2addr v4, v8

    .line 190
    sget-object v8, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v14, v0, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v14, v10, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    const/16 v13, 0x1a

    aget v13, v3, v13

    xor-int/2addr v8, v13

    .line 192
    sget-object v13, Lorg/h2/security/AES;->FT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    const/16 v14, 0x10

    shr-int/2addr v5, v14

    and-int/lit16 v5, v5, 0xff

    aget v5, v13, v5

    xor-int/2addr v0, v5

    sget-object v5, Lorg/h2/security/AES;->FT2:[I

    const/16 v13, 0x8

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    xor-int/2addr v0, v5

    sget-object v5, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v10, v12, 0xff

    aget v5, v5, v10

    xor-int/2addr v0, v5

    const/16 v5, 0x1b

    aget v5, v3, v5

    xor-int/2addr v0, v5

    .line 194
    sget-object v5, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v10, v1, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v12, v0, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    const/16 v10, 0x1c

    aget v10, v3, v10

    xor-int/2addr v5, v10

    .line 196
    sget-object v10, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v12, v4, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v13, v1, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    const/16 v12, 0x1d

    aget v12, v3, v12

    xor-int/2addr v10, v12

    .line 198
    sget-object v12, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v13, v8, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v14, v0, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v14, v1, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v14, v4, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    const/16 v13, 0x1e

    aget v13, v3, v13

    xor-int/2addr v12, v13

    .line 200
    sget-object v13, Lorg/h2/security/AES;->FT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    const/16 v14, 0x10

    shr-int/2addr v1, v14

    and-int/lit16 v1, v1, 0xff

    aget v1, v13, v1

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->FT2:[I

    const/16 v13, 0x8

    shr-int/2addr v4, v13

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v4, v8, 0xff

    aget v1, v1, v4

    xor-int/2addr v0, v1

    const/16 v1, 0x1f

    aget v1, v3, v1

    xor-int/2addr v0, v1

    .line 202
    sget-object v1, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v8, v10, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v8, v12, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v8, v0, 0xff

    aget v4, v4, v8

    xor-int/2addr v1, v4

    const/16 v4, 0x20

    aget v4, v3, v4

    xor-int/2addr v1, v4

    .line 204
    sget-object v4, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v13, v5, 0xff

    aget v8, v8, v13

    xor-int/2addr v4, v8

    const/16 v8, 0x21

    aget v8, v3, v8

    xor-int/2addr v4, v8

    .line 206
    sget-object v8, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v14, v0, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v14, v10, 0xff

    aget v13, v13, v14

    xor-int/2addr v8, v13

    const/16 v13, 0x22

    aget v13, v3, v13

    xor-int/2addr v8, v13

    .line 208
    sget-object v13, Lorg/h2/security/AES;->FT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    const/16 v14, 0x10

    shr-int/2addr v5, v14

    and-int/lit16 v5, v5, 0xff

    aget v5, v13, v5

    xor-int/2addr v0, v5

    sget-object v5, Lorg/h2/security/AES;->FT2:[I

    const/16 v13, 0x8

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    xor-int/2addr v0, v5

    sget-object v5, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v10, v12, 0xff

    aget v5, v5, v10

    xor-int/2addr v0, v5

    const/16 v5, 0x23

    aget v5, v3, v5

    xor-int/2addr v0, v5

    .line 210
    sget-object v5, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v10, v1, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    sget-object v10, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v12, v0, 0xff

    aget v10, v10, v12

    xor-int/2addr v5, v10

    const/16 v10, 0x24

    aget v10, v3, v10

    xor-int/2addr v5, v10

    .line 212
    sget-object v10, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v12, v4, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    sget-object v12, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v13, v1, 0xff

    aget v12, v12, v13

    xor-int/2addr v10, v12

    const/16 v12, 0x25

    aget v12, v3, v12

    xor-int/2addr v10, v12

    .line 214
    sget-object v12, Lorg/h2/security/AES;->FT0:[I

    shr-int/lit8 v13, v8, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    shr-int/lit8 v14, v0, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT2:[I

    shr-int/lit8 v14, v1, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    sget-object v13, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v14, v4, 0xff

    aget v13, v13, v14

    xor-int/2addr v12, v13

    const/16 v13, 0x26

    aget v13, v3, v13

    xor-int/2addr v12, v13

    .line 216
    sget-object v13, Lorg/h2/security/AES;->FT0:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    sget-object v13, Lorg/h2/security/AES;->FT1:[I

    const/16 v14, 0x10

    shr-int/2addr v1, v14

    and-int/lit16 v1, v1, 0xff

    aget v1, v13, v1

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->FT2:[I

    const/16 v13, 0x8

    shr-int/2addr v4, v13

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->FT3:[I

    and-int/lit16 v4, v8, 0xff

    aget v1, v1, v4

    xor-int/2addr v0, v1

    const/16 v1, 0x27

    aget v1, v3, v1

    xor-int/2addr v0, v1

    .line 218
    sget-object v1, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    const/16 v4, 0x18

    shl-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v8, v10, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    const/16 v8, 0x10

    shl-int/2addr v4, v8

    or-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v8, v12, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    const/16 v8, 0x8

    shl-int/2addr v4, v8

    or-int/2addr v1, v4

    sget-object v4, Lorg/h2/security/AES;->FS:[I

    and-int/lit16 v8, v0, 0xff

    aget v4, v4, v8

    or-int/2addr v1, v4

    const/16 v4, 0x28

    aget v4, v3, v4

    xor-int/2addr v1, v4

    .line 220
    sget-object v4, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    const/16 v8, 0x18

    shl-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    const/16 v13, 0x10

    shl-int/2addr v8, v13

    or-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    const/16 v13, 0x8

    shl-int/2addr v8, v13

    or-int/2addr v4, v8

    sget-object v8, Lorg/h2/security/AES;->FS:[I

    and-int/lit16 v13, v5, 0xff

    aget v8, v8, v13

    or-int/2addr v4, v8

    const/16 v8, 0x29

    aget v8, v3, v8

    xor-int/2addr v4, v8

    .line 222
    sget-object v8, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v8, v8, v13

    const/16 v13, 0x18

    shl-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v14, v0, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    const/16 v14, 0x10

    shl-int/2addr v13, v14

    or-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    const/16 v14, 0x8

    shl-int/2addr v13, v14

    or-int/2addr v8, v13

    sget-object v13, Lorg/h2/security/AES;->FS:[I

    and-int/lit16 v14, v10, 0xff

    aget v13, v13, v14

    or-int/2addr v8, v13

    const/16 v13, 0x2a

    aget v13, v3, v13

    xor-int/2addr v8, v13

    .line 224
    sget-object v13, Lorg/h2/security/AES;->FS:[I

    const/16 v14, 0x18

    shr-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    aget v0, v13, v0

    shl-int/2addr v0, v14

    sget-object v13, Lorg/h2/security/AES;->FS:[I

    const/16 v14, 0x10

    shr-int/2addr v5, v14

    and-int/lit16 v5, v5, 0xff

    aget v5, v13, v5

    shl-int/2addr v5, v14

    or-int/2addr v0, v5

    sget-object v5, Lorg/h2/security/AES;->FS:[I

    const/16 v13, 0x8

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v5, v5, v10

    shl-int/2addr v5, v13

    or-int/2addr v0, v5

    sget-object v5, Lorg/h2/security/AES;->FS:[I

    and-int/lit16 v10, v12, 0xff

    aget v5, v5, v10

    or-int/2addr v0, v5

    const/16 v5, 0x2b

    aget v3, v3, v5

    xor-int/2addr v0, v3

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    .line 226
    aput-byte v3, p2, p3

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, v6

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    .line 227
    aput-byte v2, p2, v7

    int-to-byte v1, v1

    aput-byte v1, p2, v9

    shr-int/lit8 v1, v4, 0x18

    int-to-byte v1, v1

    .line 228
    aput-byte v1, p2, v11

    shr-int/lit8 v1, v4, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v28

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    .line 229
    aput-byte v1, p2, v27

    int-to-byte v1, v4

    aput-byte v1, p2, v26

    shr-int/lit8 v1, v8, 0x18

    int-to-byte v1, v1

    .line 230
    aput-byte v1, p2, v20

    shr-int/lit8 v1, v8, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v18

    shr-int/lit8 v1, v8, 0x8

    int-to-byte v1, v1

    .line 231
    aput-byte v1, p2, v17

    int-to-byte v1, v8

    aput-byte v1, p2, v24

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    .line 232
    aput-byte v1, p2, v23

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v22

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 233
    aput-byte v1, p2, v21

    int-to-byte v0, v0

    aput-byte v0, p2, v25

    return-void
.end method

.method private static getDec(I)I
    .locals 4

    .line 81
    sget-object v0, Lorg/h2/security/AES;->RT0:[I

    sget-object v1, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    aget v0, v0, v1

    sget-object v1, Lorg/h2/security/AES;->RT1:[I

    sget-object v2, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->RT2:[I

    sget-object v2, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    sget-object v1, Lorg/h2/security/AES;->RT3:[I

    sget-object v2, Lorg/h2/security/AES;->FS:[I

    and-int/lit16 p0, p0, 0xff

    aget p0, v2, p0

    aget p0, v1, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private static mul([I[III)I
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 37
    aget p2, p1, p2

    aget p1, p1, p3

    add-int/2addr p2, p1

    rem-int/lit16 p2, p2, 0xff

    aget p0, p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static rot8(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static xtime(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/16 p0, 0x1b

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public decrypt([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 132
    invoke-direct {p0, p1, p1, v0}, Lorg/h2/security/AES;->decryptBlock([B[BI)V

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

    .line 125
    invoke-direct {p0, p1, p1, v0}, Lorg/h2/security/AES;->encryptBlock([B[BI)V

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
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 88
    iget-object v3, p0, Lorg/h2/security/AES;->encKey:[I

    iget-object v4, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    aput v2, v4, v1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v6

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge p1, v2, :cond_1

    .line 94
    iget-object v2, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v4, v1, 0x4

    iget-object v5, p0, Lorg/h2/security/AES;->encKey:[I

    aget v5, v5, v1

    sget-object v6, Lorg/h2/security/AES;->RCON:[I

    aget v6, v6, p1

    xor-int/2addr v5, v6

    sget-object v6, Lorg/h2/security/AES;->FS:[I

    iget-object v7, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v8, v1, 0x3

    aget v7, v7, v8

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    xor-int/2addr v5, v6

    sget-object v6, Lorg/h2/security/AES;->FS:[I

    iget-object v7, p0, Lorg/h2/security/AES;->encKey:[I

    aget v7, v7, v8

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr v5, v6

    sget-object v6, Lorg/h2/security/AES;->FS:[I

    iget-object v7, p0, Lorg/h2/security/AES;->encKey:[I

    aget v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v5, v6

    sget-object v6, Lorg/h2/security/AES;->FS:[I

    iget-object v7, p0, Lorg/h2/security/AES;->encKey:[I

    aget v7, v7, v8

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v2, v4

    .line 99
    iget-object v2, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v5, v1, 0x5

    iget-object v6, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lorg/h2/security/AES;->encKey:[I

    aget v7, v7, v4

    xor-int/2addr v6, v7

    aput v6, v2, v5

    .line 100
    iget-object v2, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v6, v1, 0x6

    iget-object v7, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v9, v1, 0x2

    aget v7, v7, v9

    iget-object v9, p0, Lorg/h2/security/AES;->encKey:[I

    aget v5, v9, v5

    xor-int/2addr v5, v7

    aput v5, v2, v6

    .line 101
    iget-object v2, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v1, v1, 0x7

    iget-object v5, p0, Lorg/h2/security/AES;->encKey:[I

    aget v5, v5, v8

    iget-object v7, p0, Lorg/h2/security/AES;->encKey:[I

    aget v6, v7, v6

    xor-int/2addr v5, v6

    aput v5, v2, v1

    add-int/lit8 p1, p1, 0x1

    move v1, v4

    goto/16 :goto_1

    .line 104
    :cond_1
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    iget-object v4, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    aput v1, p1, v0

    .line 105
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    iget-object v0, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v1, v5, 0x1

    aget v0, v0, v5

    const/4 v4, 0x1

    aput v0, p1, v4

    .line 106
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    iget-object v0, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v5, v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 107
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    iget-object v0, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v1, v5, 0x1

    aget v0, v0, v5

    const/4 v5, 0x3

    aput v0, p1, v5

    :goto_2
    if-ge v4, v2, :cond_2

    add-int/lit8 v1, v1, -0x8

    .line 110
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v0, v3, 0x1

    iget-object v5, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v6, v1, 0x1

    aget v1, v5, v1

    invoke-static {v1}, Lorg/h2/security/AES;->getDec(I)I

    move-result v1

    aput v1, p1, v3

    .line 111
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v5, v6, 0x1

    aget v3, v3, v6

    invoke-static {v3}, Lorg/h2/security/AES;->getDec(I)I

    move-result v3

    aput v3, p1, v0

    .line 112
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v6, v5, 0x1

    aget v3, v3, v5

    invoke-static {v3}, Lorg/h2/security/AES;->getDec(I)I

    move-result v3

    aput v3, p1, v1

    .line 113
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v1, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v5, v6, 0x1

    aget v1, v1, v6

    invoke-static {v1}, Lorg/h2/security/AES;->getDec(I)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x8

    .line 116
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v0, v3, 0x1

    iget-object v2, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v2, v1

    aput v1, p1, v3

    .line 117
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v3, v4, 0x1

    aget v2, v2, v4

    aput v2, p1, v0

    .line 118
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    aput v2, p1, v1

    .line 119
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    iget-object v1, p0, Lorg/h2/security/AES;->encKey:[I

    aget v1, v1, v4

    aput v1, p1, v0

    return-void
.end method
