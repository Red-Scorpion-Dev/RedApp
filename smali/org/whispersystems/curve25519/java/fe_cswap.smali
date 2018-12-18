.class public Lorg/whispersystems/curve25519/java/fe_cswap;
.super Ljava/lang/Object;
.source "fe_cswap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_cswap([I[II)V
    .locals 41

    const/4 v1, 0x0

    .line 17
    aget v2, p0, v1

    const/4 v3, 0x1

    .line 18
    aget v4, p0, v3

    const/4 v5, 0x2

    .line 19
    aget v6, p0, v5

    const/4 v7, 0x3

    .line 20
    aget v8, p0, v7

    const/4 v9, 0x4

    .line 21
    aget v10, p0, v9

    const/4 v11, 0x5

    .line 22
    aget v12, p0, v11

    const/4 v13, 0x6

    .line 23
    aget v14, p0, v13

    const/4 v15, 0x7

    .line 24
    aget v16, p0, v15

    const/16 v17, 0x8

    .line 25
    aget v18, p0, v17

    const/16 v19, 0x9

    .line 26
    aget v20, p0, v19

    .line 27
    aget v21, p1, v1

    .line 28
    aget v22, p1, v3

    .line 29
    aget v23, p1, v5

    .line 30
    aget v24, p1, v7

    .line 31
    aget v25, p1, v9

    .line 32
    aget v26, p1, v11

    .line 33
    aget v27, p1, v13

    .line 34
    aget v28, p1, v15

    .line 35
    aget v29, p1, v17

    .line 36
    aget v30, p1, v19

    xor-int v31, v2, v21

    xor-int v32, v4, v22

    xor-int v33, v6, v23

    xor-int v34, v8, v24

    xor-int v35, v10, v25

    xor-int v36, v12, v26

    xor-int v37, v14, v27

    xor-int v38, v16, v28

    xor-int v39, v18, v29

    xor-int v40, v20, v30

    move/from16 v13, p2

    neg-int v13, v13

    and-int v31, v31, v13

    and-int v32, v32, v13

    and-int v33, v33, v13

    and-int v34, v34, v13

    and-int v35, v35, v13

    and-int v36, v36, v13

    and-int v37, v37, v13

    and-int v38, v38, v13

    and-int v39, v39, v13

    and-int v13, v40, v13

    xor-int v2, v2, v31

    .line 58
    aput v2, p0, v1

    xor-int v2, v4, v32

    .line 59
    aput v2, p0, v3

    xor-int v2, v6, v33

    .line 60
    aput v2, p0, v5

    xor-int v2, v8, v34

    .line 61
    aput v2, p0, v7

    xor-int v2, v10, v35

    .line 62
    aput v2, p0, v9

    xor-int v2, v12, v36

    .line 63
    aput v2, p0, v11

    xor-int v2, v14, v37

    const/4 v4, 0x6

    .line 64
    aput v2, p0, v4

    xor-int v2, v16, v38

    .line 65
    aput v2, p0, v15

    xor-int v2, v18, v39

    .line 66
    aput v2, p0, v17

    xor-int v2, v20, v13

    .line 67
    aput v2, p0, v19

    xor-int v0, v21, v31

    .line 68
    aput v0, p1, v1

    xor-int v0, v22, v32

    .line 69
    aput v0, p1, v3

    xor-int v0, v23, v33

    .line 70
    aput v0, p1, v5

    xor-int v0, v24, v34

    .line 71
    aput v0, p1, v7

    xor-int v0, v25, v35

    .line 72
    aput v0, p1, v9

    xor-int v0, v26, v36

    .line 73
    aput v0, p1, v11

    xor-int v0, v27, v37

    const/4 v1, 0x6

    .line 74
    aput v0, p1, v1

    xor-int v0, v28, v38

    .line 75
    aput v0, p1, v15

    xor-int v0, v29, v39

    .line 76
    aput v0, p1, v17

    xor-int v0, v30, v13

    .line 77
    aput v0, p1, v19

    return-void
.end method
