.class public Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;
.super Lorg/spongycastle/crypto/CipherKeyGenerator;
.source "Poly1305KeyGenerator.java"


# direct methods
.method public static clamp([B)V
    .locals 3

    .line 63
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 71
    aget-byte v1, p0, v0

    const/16 v2, 0xf

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x7

    .line 72
    aget-byte v1, p0, v0

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0xb

    .line 73
    aget-byte v1, p0, v0

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 74
    aget-byte v0, p0, v2

    and-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    const/4 v0, 0x4

    .line 79
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0x8

    .line 80
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0xc

    .line 81
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Poly1305 key must be 256 bits."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
