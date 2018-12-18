.class public Lorg/whispersystems/curve25519/java/fe_pow22523;
.super Ljava/lang/Object;
.source "fe_pow22523.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_pow22523([I[I)V
    .locals 8

    const/16 v0, 0xa

    .line 9
    new-array v1, v0, [I

    .line 10
    new-array v2, v0, [I

    .line 11
    new-array v3, v0, [I

    .line 67
    invoke-static {v1, p1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 72
    invoke-static {v2, v1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    invoke-static {v2, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v2, p1, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 82
    invoke-static {v1, v1, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 87
    invoke-static {v1, v1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 92
    invoke-static {v1, v2, v1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 97
    invoke-static {v2, v1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 v5, 0x1

    :goto_1
    const/4 v7, 0x5

    if-ge v5, v7, :cond_1

    invoke-static {v2, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 102
    :cond_1
    invoke-static {v1, v2, v1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 107
    invoke-static {v2, v1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 v5, 0x1

    :goto_2
    if-ge v5, v0, :cond_2

    invoke-static {v2, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 112
    :cond_2
    invoke-static {v2, v2, v1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 117
    invoke-static {v3, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 v5, 0x1

    :goto_3
    const/16 v7, 0x14

    if-ge v5, v7, :cond_3

    invoke-static {v3, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 122
    :cond_3
    invoke-static {v2, v3, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 127
    invoke-static {v2, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v0, :cond_4

    invoke-static {v2, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 132
    :cond_4
    invoke-static {v1, v2, v1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 137
    invoke-static {v2, v1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 v0, 0x1

    :goto_5
    const/16 v5, 0x32

    if-ge v0, v5, :cond_5

    invoke-static {v2, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 142
    :cond_5
    invoke-static {v2, v2, v1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 147
    invoke-static {v3, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 v0, 0x1

    :goto_6
    const/16 v7, 0x64

    if-ge v0, v7, :cond_6

    invoke-static {v3, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 152
    :cond_6
    invoke-static {v2, v3, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 157
    invoke-static {v2, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 v0, 0x1

    :goto_7
    if-ge v0, v5, :cond_7

    invoke-static {v2, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 162
    :cond_7
    invoke-static {v1, v2, v1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 167
    invoke-static {v1, v1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    :goto_8
    if-ge v4, v6, :cond_8

    invoke-static {v1, v1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 172
    :cond_8
    invoke-static {p0, v1, p1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    return-void
.end method
