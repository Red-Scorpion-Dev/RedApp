.class public Lorg/whispersystems/curve25519/java/fe_cmov;
.super Ljava/lang/Object;
.source "fe_cmov.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_cmov([I[II)V
    .locals 30

    const/4 v1, 0x0

    .line 16
    aget v2, p0, v1

    const/4 v3, 0x1

    .line 17
    aget v4, p0, v3

    const/4 v5, 0x2

    .line 18
    aget v6, p0, v5

    const/4 v7, 0x3

    .line 19
    aget v8, p0, v7

    const/4 v9, 0x4

    .line 20
    aget v10, p0, v9

    const/4 v11, 0x5

    .line 21
    aget v12, p0, v11

    const/4 v13, 0x6

    .line 22
    aget v14, p0, v13

    const/4 v15, 0x7

    .line 23
    aget v16, p0, v15

    const/16 v17, 0x8

    .line 24
    aget v18, p0, v17

    const/16 v19, 0x9

    .line 25
    aget v20, p0, v19

    .line 26
    aget v21, p1, v1

    .line 27
    aget v22, p1, v3

    .line 28
    aget v23, p1, v5

    .line 29
    aget v24, p1, v7

    .line 30
    aget v25, p1, v9

    .line 31
    aget v26, p1, v11

    .line 32
    aget v27, p1, v13

    .line 33
    aget v28, p1, v15

    .line 34
    aget v29, p1, v17

    .line 35
    aget v0, p1, v19

    xor-int v21, v2, v21

    xor-int v22, v4, v22

    xor-int v23, v6, v23

    xor-int v24, v8, v24

    xor-int v25, v10, v25

    xor-int v26, v12, v26

    xor-int v27, v14, v27

    xor-int v28, v16, v28

    xor-int v29, v18, v29

    xor-int v0, v20, v0

    move/from16 v13, p2

    neg-int v13, v13

    and-int v21, v21, v13

    and-int v22, v22, v13

    and-int v23, v23, v13

    and-int v24, v24, v13

    and-int v25, v25, v13

    and-int v26, v26, v13

    and-int v27, v27, v13

    and-int v28, v28, v13

    and-int v29, v29, v13

    and-int/2addr v0, v13

    xor-int v2, v2, v21

    .line 57
    aput v2, p0, v1

    xor-int v1, v4, v22

    .line 58
    aput v1, p0, v3

    xor-int v1, v6, v23

    .line 59
    aput v1, p0, v5

    xor-int v1, v8, v24

    .line 60
    aput v1, p0, v7

    xor-int v1, v10, v25

    .line 61
    aput v1, p0, v9

    xor-int v1, v12, v26

    .line 62
    aput v1, p0, v11

    xor-int v1, v14, v27

    const/4 v2, 0x6

    .line 63
    aput v1, p0, v2

    xor-int v1, v16, v28

    .line 64
    aput v1, p0, v15

    xor-int v1, v18, v29

    .line 65
    aput v1, p0, v17

    xor-int v0, v20, v0

    .line 66
    aput v0, p0, v19

    return-void
.end method
