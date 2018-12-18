.class public Lorg/whispersystems/curve25519/java/fe_frombytes;
.super Ljava/lang/Object;
.source "fe_frombytes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_frombytes([I[B)V
    .locals 41

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1}, Lorg/whispersystems/curve25519/java/fe_frombytes;->load_4([BI)J

    move-result-wide v2

    const/4 v4, 0x4

    .line 35
    invoke-static {v0, v4}, Lorg/whispersystems/curve25519/java/fe_frombytes;->load_3([BI)J

    move-result-wide v5

    const/4 v7, 0x6

    shl-long/2addr v5, v7

    const/4 v8, 0x7

    .line 36
    invoke-static {v0, v8}, Lorg/whispersystems/curve25519/java/fe_frombytes;->load_3([BI)J

    move-result-wide v9

    const/4 v11, 0x5

    shl-long/2addr v9, v11

    const/16 v12, 0xa

    .line 37
    invoke-static {v0, v12}, Lorg/whispersystems/curve25519/java/fe_frombytes;->load_3([BI)J

    move-result-wide v12

    const/4 v14, 0x3

    shl-long/2addr v12, v14

    const/16 v7, 0xd

    .line 38
    invoke-static {v0, v7}, Lorg/whispersystems/curve25519/java/fe_frombytes;->load_3([BI)J

    move-result-wide v15

    const/4 v7, 0x2

    shl-long/2addr v15, v7

    const/16 v14, 0x10

    .line 39
    invoke-static {v0, v14}, Lorg/whispersystems/curve25519/java/fe_frombytes;->load_4([BI)J

    move-result-wide v17

    const/16 v14, 0x14

    .line 40
    invoke-static {v0, v14}, Lorg/whispersystems/curve25519/java/fe_frombytes;->load_3([BI)J

    move-result-wide v19

    shl-long v19, v19, v8

    const/16 v14, 0x17

    .line 41
    invoke-static {v0, v14}, Lorg/whispersystems/curve25519/java/fe_frombytes;->load_3([BI)J

    move-result-wide v21

    shl-long v21, v21, v11

    const/16 v14, 0x1a

    .line 42
    invoke-static {v0, v14}, Lorg/whispersystems/curve25519/java/fe_frombytes;->load_3([BI)J

    move-result-wide v23

    shl-long v23, v23, v4

    const/16 v8, 0x1d

    .line 43
    invoke-static {v0, v8}, Lorg/whispersystems/curve25519/java/fe_frombytes;->load_3([BI)J

    move-result-wide v25

    const-wide/32 v27, 0x7fffff

    and-long v25, v25, v27

    shl-long v25, v25, v7

    const-wide/32 v27, 0x1000000

    add-long v29, v25, v27

    const/16 v0, 0x19

    shr-long v29, v29, v0

    const-wide/16 v31, 0x13

    mul-long v31, v31, v29

    add-long v2, v2, v31

    shl-long v29, v29, v0

    sub-long v25, v25, v29

    add-long v29, v5, v27

    shr-long v29, v29, v0

    add-long v9, v9, v29

    shl-long v29, v29, v0

    sub-long v5, v5, v29

    add-long v29, v12, v27

    shr-long v29, v29, v0

    add-long v15, v15, v29

    shl-long v29, v29, v0

    sub-long v12, v12, v29

    add-long v29, v17, v27

    shr-long v29, v29, v0

    add-long v19, v19, v29

    shl-long v29, v29, v0

    sub-long v17, v17, v29

    add-long v27, v21, v27

    shr-long v27, v27, v0

    add-long v23, v23, v27

    shl-long v27, v27, v0

    sub-long v21, v21, v27

    const-wide/32 v27, 0x2000000

    add-long v29, v2, v27

    shr-long v29, v29, v14

    add-long v5, v5, v29

    shl-long v29, v29, v14

    sub-long v2, v2, v29

    add-long v29, v9, v27

    shr-long v29, v29, v14

    add-long v12, v12, v29

    shl-long v29, v29, v14

    sub-long v9, v9, v29

    add-long v29, v15, v27

    shr-long v29, v29, v14

    move-wide/from16 v33, v12

    add-long v11, v17, v29

    shl-long v17, v29, v14

    sub-long v7, v15, v17

    add-long v15, v19, v27

    shr-long/2addr v15, v14

    move-wide/from16 v35, v5

    add-long v4, v21, v15

    shl-long/2addr v15, v14

    move-wide/from16 v37, v2

    sub-long v1, v19, v15

    add-long v27, v23, v27

    shr-long v15, v27, v14

    move-wide/from16 v39, v4

    add-long v3, v25, v15

    shl-long v5, v15, v14

    sub-long v5, v23, v5

    move-wide/from16 v13, v37

    long-to-int v0, v13

    const/4 v13, 0x0

    .line 67
    aput v0, p0, v13

    move-wide/from16 v13, v35

    long-to-int v0, v13

    const/4 v13, 0x1

    .line 68
    aput v0, p0, v13

    long-to-int v0, v9

    const/4 v9, 0x2

    .line 69
    aput v0, p0, v9

    move-wide/from16 v9, v33

    long-to-int v0, v9

    const/4 v9, 0x3

    .line 70
    aput v0, p0, v9

    long-to-int v0, v7

    const/4 v7, 0x4

    .line 71
    aput v0, p0, v7

    long-to-int v0, v11

    const/4 v7, 0x5

    .line 72
    aput v0, p0, v7

    long-to-int v0, v1

    const/4 v1, 0x6

    .line 73
    aput v0, p0, v1

    move-wide/from16 v0, v39

    long-to-int v0, v0

    const/4 v1, 0x7

    .line 74
    aput v0, p0, v1

    long-to-int v0, v5

    const/16 v1, 0x8

    .line 75
    aput v0, p0, v1

    long-to-int v0, v3

    const/16 v1, 0x9

    .line 76
    aput v0, p0, v1

    return-void
.end method

.method public static load_3([BI)J
    .locals 6

    add-int/lit8 v0, p1, 0x0

    .line 12
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .line 13
    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    .line 14
    aget-byte p0, p0, p1

    int-to-long p0, p0

    const/16 v2, 0x10

    shl-long/2addr p0, v2

    const-wide/32 v2, 0xff0000

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static load_4([BI)J
    .locals 6

    add-int/lit8 v0, p1, 0x0

    .line 21
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .line 22
    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    .line 23
    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x3

    .line 24
    aget-byte p0, p0, p1

    int-to-long p0, p0

    const/16 v2, 0x18

    shl-long/2addr p0, v2

    const-wide v2, 0xff000000L

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method
