.class public Lorg/whispersystems/curve25519/java/scalarmult;
.super Ljava/lang/Object;
.source "scalarmult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crypto_scalarmult([B[B[B)I
    .locals 12

    const/16 v0, 0x20

    .line 12
    new-array v1, v0, [B

    const/16 v2, 0xa

    .line 14
    new-array v3, v2, [I

    .line 15
    new-array v4, v2, [I

    .line 16
    new-array v5, v2, [I

    .line 17
    new-array v6, v2, [I

    .line 18
    new-array v7, v2, [I

    .line 19
    new-array v8, v2, [I

    .line 20
    new-array v2, v2, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v0, :cond_0

    .line 25
    aget-byte v11, p1, v10

    aput-byte v11, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v3, p2}, Lorg/whispersystems/curve25519/java/fe_frombytes;->fe_frombytes([I[B)V

    .line 30
    invoke-static {v4}, Lorg/whispersystems/curve25519/java/fe_1;->fe_1([I)V

    .line 31
    invoke-static {v5}, Lorg/whispersystems/curve25519/java/fe_0;->fe_0([I)V

    .line 32
    invoke-static {v6, v3}, Lorg/whispersystems/curve25519/java/fe_copy;->fe_copy([I[I)V

    .line 33
    invoke-static {v7}, Lorg/whispersystems/curve25519/java/fe_1;->fe_1([I)V

    const/16 p1, 0xfe

    const/4 p2, 0x0

    :goto_1
    if-ltz p1, :cond_1

    .line 37
    div-int/lit8 v0, p1, 0x8

    aget-byte v0, v1, v0

    and-int/lit8 v10, p1, 0x7

    ushr-int/2addr v0, v10

    and-int/lit8 v0, v0, 0x1

    xor-int/2addr p2, v0

    .line 40
    invoke-static {v4, v6, p2}, Lorg/whispersystems/curve25519/java/fe_cswap;->fe_cswap([I[II)V

    .line 41
    invoke-static {v5, v7, p2}, Lorg/whispersystems/curve25519/java/fe_cswap;->fe_cswap([I[II)V

    .line 94
    invoke-static {v8, v6, v7}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 99
    invoke-static {v2, v4, v5}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 104
    invoke-static {v4, v4, v5}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 109
    invoke-static {v5, v6, v7}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 114
    invoke-static {v7, v8, v4}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 119
    invoke-static {v5, v5, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 124
    invoke-static {v8, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 129
    invoke-static {v2, v4}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 134
    invoke-static {v6, v7, v5}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 141
    invoke-static {v5, v7, v5}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 146
    invoke-static {v4, v2, v8}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 151
    invoke-static {v2, v2, v8}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 156
    invoke-static {v5, v5}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 161
    invoke-static {v7, v2}, Lorg/whispersystems/curve25519/java/fe_mul121666;->fe_mul121666([I[I)V

    .line 166
    invoke-static {v6, v6}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 171
    invoke-static {v8, v8, v7}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 176
    invoke-static {v7, v3, v5}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 181
    invoke-static {v5, v2, v8}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    add-int/lit8 p1, p1, -0x1

    move p2, v0

    goto :goto_1

    .line 185
    :cond_1
    invoke-static {v4, v6, p2}, Lorg/whispersystems/curve25519/java/fe_cswap;->fe_cswap([I[II)V

    .line 186
    invoke-static {v5, v7, p2}, Lorg/whispersystems/curve25519/java/fe_cswap;->fe_cswap([I[II)V

    .line 188
    invoke-static {v5, v5}, Lorg/whispersystems/curve25519/java/fe_invert;->fe_invert([I[I)V

    .line 189
    invoke-static {v4, v4, v5}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 190
    invoke-static {p0, v4}, Lorg/whispersystems/curve25519/java/fe_tobytes;->fe_tobytes([B[I)V

    return v9
.end method
