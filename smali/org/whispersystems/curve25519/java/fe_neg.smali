.class public Lorg/whispersystems/curve25519/java/fe_neg;
.super Ljava/lang/Object;
.source "fe_neg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_neg([I[I)V
    .locals 18

    const/4 v1, 0x0

    .line 19
    aget v2, p1, v1

    const/4 v3, 0x1

    .line 20
    aget v4, p1, v3

    const/4 v5, 0x2

    .line 21
    aget v6, p1, v5

    const/4 v7, 0x3

    .line 22
    aget v8, p1, v7

    const/4 v9, 0x4

    .line 23
    aget v10, p1, v9

    const/4 v11, 0x5

    .line 24
    aget v12, p1, v11

    const/4 v13, 0x6

    .line 25
    aget v14, p1, v13

    const/4 v15, 0x7

    .line 26
    aget v13, p1, v15

    const/16 v16, 0x8

    .line 27
    aget v11, p1, v16

    const/16 v17, 0x9

    .line 28
    aget v0, p1, v17

    neg-int v2, v2

    neg-int v4, v4

    neg-int v6, v6

    neg-int v8, v8

    neg-int v10, v10

    neg-int v12, v12

    neg-int v14, v14

    neg-int v13, v13

    neg-int v11, v11

    neg-int v0, v0

    .line 39
    aput v2, p0, v1

    .line 40
    aput v4, p0, v3

    .line 41
    aput v6, p0, v5

    .line 42
    aput v8, p0, v7

    .line 43
    aput v10, p0, v9

    const/4 v1, 0x5

    .line 44
    aput v12, p0, v1

    const/4 v1, 0x6

    .line 45
    aput v14, p0, v1

    .line 46
    aput v13, p0, v15

    .line 47
    aput v11, p0, v16

    .line 48
    aput v0, p0, v17

    return-void
.end method
