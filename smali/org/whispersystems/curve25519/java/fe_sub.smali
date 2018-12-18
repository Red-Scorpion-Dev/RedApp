.class public Lorg/whispersystems/curve25519/java/fe_sub;
.super Ljava/lang/Object;
.source "fe_sub.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_sub([I[I[I)V
    .locals 30

    const/4 v2, 0x0

    .line 21
    aget v3, p1, v2

    const/4 v4, 0x1

    .line 22
    aget v5, p1, v4

    const/4 v6, 0x2

    .line 23
    aget v7, p1, v6

    const/4 v8, 0x3

    .line 24
    aget v9, p1, v8

    const/4 v10, 0x4

    .line 25
    aget v11, p1, v10

    const/4 v12, 0x5

    .line 26
    aget v13, p1, v12

    const/4 v14, 0x6

    .line 27
    aget v15, p1, v14

    const/16 v16, 0x7

    .line 28
    aget v17, p1, v16

    const/16 v18, 0x8

    .line 29
    aget v19, p1, v18

    const/16 v20, 0x9

    .line 30
    aget v0, p1, v20

    .line 31
    aget v21, p2, v2

    .line 32
    aget v22, p2, v4

    .line 33
    aget v23, p2, v6

    .line 34
    aget v24, p2, v8

    .line 35
    aget v25, p2, v10

    .line 36
    aget v26, p2, v12

    .line 37
    aget v27, p2, v14

    .line 38
    aget v28, p2, v16

    .line 39
    aget v29, p2, v18

    .line 40
    aget v1, p2, v20

    sub-int v3, v3, v21

    sub-int v5, v5, v22

    sub-int v7, v7, v23

    sub-int v9, v9, v24

    sub-int v11, v11, v25

    sub-int v13, v13, v26

    sub-int v15, v15, v27

    sub-int v17, v17, v28

    sub-int v19, v19, v29

    sub-int/2addr v0, v1

    .line 51
    aput v3, p0, v2

    .line 52
    aput v5, p0, v4

    .line 53
    aput v7, p0, v6

    .line 54
    aput v9, p0, v8

    .line 55
    aput v11, p0, v10

    .line 56
    aput v13, p0, v12

    .line 57
    aput v15, p0, v14

    .line 58
    aput v17, p0, v16

    .line 59
    aput v19, p0, v18

    .line 60
    aput v0, p0, v20

    return-void
.end method
