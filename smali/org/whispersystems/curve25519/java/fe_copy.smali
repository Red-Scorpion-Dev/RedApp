.class public Lorg/whispersystems/curve25519/java/fe_copy;
.super Ljava/lang/Object;
.source "fe_copy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_copy([I[I)V
    .locals 20

    const/4 v1, 0x0

    .line 13
    aget v2, p1, v1

    const/4 v3, 0x1

    .line 14
    aget v4, p1, v3

    const/4 v5, 0x2

    .line 15
    aget v6, p1, v5

    const/4 v7, 0x3

    .line 16
    aget v8, p1, v7

    const/4 v9, 0x4

    .line 17
    aget v10, p1, v9

    const/4 v11, 0x5

    .line 18
    aget v12, p1, v11

    const/4 v13, 0x6

    .line 19
    aget v14, p1, v13

    const/4 v15, 0x7

    .line 20
    aget v16, p1, v15

    const/16 v17, 0x8

    .line 21
    aget v18, p1, v17

    const/16 v19, 0x9

    .line 22
    aget v0, p1, v19

    .line 23
    aput v2, p0, v1

    .line 24
    aput v4, p0, v3

    .line 25
    aput v6, p0, v5

    .line 26
    aput v8, p0, v7

    .line 27
    aput v10, p0, v9

    .line 28
    aput v12, p0, v11

    .line 29
    aput v14, p0, v13

    .line 30
    aput v16, p0, v15

    .line 31
    aput v18, p0, v17

    .line 32
    aput v0, p0, v19

    return-void
.end method
