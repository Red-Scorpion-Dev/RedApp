.class public Lorg/whispersystems/curve25519/java/fe_mul121666;
.super Ljava/lang/Object;
.source "fe_mul121666.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_mul121666([I[I)V
    .locals 36

    const/4 v1, 0x0

    .line 21
    aget v2, p1, v1

    const/4 v3, 0x1

    .line 22
    aget v4, p1, v3

    const/4 v5, 0x2

    .line 23
    aget v6, p1, v5

    const/4 v7, 0x3

    .line 24
    aget v8, p1, v7

    const/4 v9, 0x4

    .line 25
    aget v10, p1, v9

    const/4 v11, 0x5

    .line 26
    aget v12, p1, v11

    const/4 v13, 0x6

    .line 27
    aget v14, p1, v13

    const/4 v15, 0x7

    .line 28
    aget v13, p1, v15

    const/16 v16, 0x8

    .line 29
    aget v11, p1, v16

    const/16 v17, 0x9

    .line 30
    aget v0, p1, v17

    int-to-long v1, v2

    const-wide/32 v18, 0x1db42

    mul-long v1, v1, v18

    int-to-long v3, v4

    mul-long v3, v3, v18

    int-to-long v5, v6

    mul-long v5, v5, v18

    int-to-long v7, v8

    mul-long v7, v7, v18

    int-to-long v9, v10

    mul-long v9, v9, v18

    move-wide/from16 v20, v9

    int-to-long v9, v12

    mul-long v9, v9, v18

    move-wide/from16 v22, v9

    int-to-long v9, v14

    mul-long v9, v9, v18

    int-to-long v12, v13

    mul-long v12, v12, v18

    move-wide/from16 v24, v12

    int-to-long v11, v11

    mul-long v11, v11, v18

    int-to-long v13, v0

    mul-long v13, v13, v18

    const-wide/32 v18, 0x1000000

    add-long v26, v13, v18

    const/16 v0, 0x19

    shr-long v26, v26, v0

    const-wide/16 v28, 0x13

    mul-long v28, v28, v26

    add-long v1, v1, v28

    shl-long v26, v26, v0

    sub-long v13, v13, v26

    add-long v26, v3, v18

    shr-long v26, v26, v0

    add-long v5, v5, v26

    shl-long v26, v26, v0

    sub-long v3, v3, v26

    add-long v26, v7, v18

    shr-long v26, v26, v0

    add-long v20, v20, v26

    shl-long v26, v26, v0

    sub-long v7, v7, v26

    add-long v26, v22, v18

    shr-long v26, v26, v0

    add-long v9, v9, v26

    shl-long v26, v26, v0

    sub-long v22, v22, v26

    add-long v18, v24, v18

    shr-long v18, v18, v0

    add-long v11, v11, v18

    shl-long v18, v18, v0

    sub-long v18, v24, v18

    const-wide/32 v24, 0x2000000

    add-long v26, v1, v24

    const/16 v0, 0x1a

    shr-long v26, v26, v0

    add-long v3, v3, v26

    shl-long v26, v26, v0

    sub-long v1, v1, v26

    add-long v26, v5, v24

    shr-long v26, v26, v0

    add-long v7, v7, v26

    shl-long v26, v26, v0

    sub-long v5, v5, v26

    add-long v26, v20, v24

    shr-long v26, v26, v0

    move-wide/from16 v30, v7

    add-long v7, v22, v26

    shl-long v22, v26, v0

    move-wide/from16 v32, v7

    sub-long v7, v20, v22

    add-long v20, v9, v24

    shr-long v20, v20, v0

    move-wide/from16 v34, v7

    add-long v7, v18, v20

    shl-long v18, v20, v0

    sub-long v9, v9, v18

    add-long v24, v11, v24

    shr-long v18, v24, v0

    add-long v13, v13, v18

    shl-long v18, v18, v0

    sub-long v11, v11, v18

    long-to-int v0, v1

    const/4 v1, 0x0

    .line 64
    aput v0, p0, v1

    long-to-int v0, v3

    const/4 v1, 0x1

    .line 65
    aput v0, p0, v1

    long-to-int v0, v5

    const/4 v1, 0x2

    .line 66
    aput v0, p0, v1

    move-wide/from16 v0, v30

    long-to-int v0, v0

    const/4 v1, 0x3

    .line 67
    aput v0, p0, v1

    move-wide/from16 v0, v34

    long-to-int v0, v0

    const/4 v1, 0x4

    .line 68
    aput v0, p0, v1

    move-wide/from16 v0, v32

    long-to-int v0, v0

    const/4 v1, 0x5

    .line 69
    aput v0, p0, v1

    long-to-int v0, v9

    const/4 v1, 0x6

    .line 70
    aput v0, p0, v1

    long-to-int v0, v7

    .line 71
    aput v0, p0, v15

    long-to-int v0, v11

    .line 72
    aput v0, p0, v16

    long-to-int v0, v13

    .line 73
    aput v0, p0, v17

    return-void
.end method
