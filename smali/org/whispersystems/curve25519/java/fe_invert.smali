.class public Lorg/whispersystems/curve25519/java/fe_invert;
.super Ljava/lang/Object;
.source "fe_invert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_invert([I[I)V
    .locals 8

    const/16 v0, 0xa

    .line 9
    new-array v1, v0, [I

    .line 10
    new-array v2, v0, [I

    .line 11
    new-array v3, v0, [I

    .line 12
    new-array v4, v0, [I

    .line 68
    invoke-static {v1, p1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 73
    invoke-static {v2, v1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    invoke-static {v2, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {v2, p1, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 83
    invoke-static {v1, v1, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 88
    invoke-static {v3, v1}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 93
    invoke-static {v2, v2, v3}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 98
    invoke-static {v3, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 p1, 0x1

    :goto_1
    const/4 v6, 0x5

    if-ge p1, v6, :cond_1

    invoke-static {v3, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 103
    :cond_1
    invoke-static {v2, v3, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 108
    invoke-static {v3, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 p1, 0x1

    :goto_2
    if-ge p1, v0, :cond_2

    invoke-static {v3, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 113
    :cond_2
    invoke-static {v3, v3, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 118
    invoke-static {v4, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 p1, 0x1

    :goto_3
    const/16 v7, 0x14

    if-ge p1, v7, :cond_3

    invoke-static {v4, v4}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 123
    :cond_3
    invoke-static {v3, v4, v3}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 128
    invoke-static {v3, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 p1, 0x1

    :goto_4
    if-ge p1, v0, :cond_4

    invoke-static {v3, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 133
    :cond_4
    invoke-static {v2, v3, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 138
    invoke-static {v3, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 p1, 0x1

    :goto_5
    const/16 v0, 0x32

    if-ge p1, v0, :cond_5

    invoke-static {v3, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 143
    :cond_5
    invoke-static {v3, v3, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 148
    invoke-static {v4, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 p1, 0x1

    :goto_6
    const/16 v7, 0x64

    if-ge p1, v7, :cond_6

    invoke-static {v4, v4}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 153
    :cond_6
    invoke-static {v3, v4, v3}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 158
    invoke-static {v3, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    const/4 p1, 0x1

    :goto_7
    if-ge p1, v0, :cond_7

    invoke-static {v3, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 163
    :cond_7
    invoke-static {v2, v3, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 168
    invoke-static {v2, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    :goto_8
    if-ge v5, v6, :cond_8

    invoke-static {v2, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 173
    :cond_8
    invoke-static {p0, v2, v1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    return-void
.end method
