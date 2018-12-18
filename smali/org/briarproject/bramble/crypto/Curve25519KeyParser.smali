.class Lorg/briarproject/bramble/crypto/Curve25519KeyParser;
.super Ljava/lang/Object;
.source "Curve25519KeyParser.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/KeyParser;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clamp([B)[B
    .locals 3

    const/16 v0, 0x20

    .line 28
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 29
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xf8

    int-to-byte p0, p0

    aput-byte p0, v1, v2

    const/16 p0, 0x1f

    .line 31
    aget-byte v0, v1, p0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    .line 32
    aget-byte v0, v1, p0

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    return-object v1
.end method


# virtual methods
.method public parsePrivateKey([B)Lorg/briarproject/bramble/api/crypto/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 23
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 24
    new-instance v0, Lorg/briarproject/bramble/crypto/Curve25519PrivateKey;

    invoke-static {p1}, Lorg/briarproject/bramble/crypto/Curve25519KeyParser;->clamp([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/crypto/Curve25519PrivateKey;-><init>([B)V

    return-object v0

    .line 23
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1
.end method

.method public parsePublicKey([B)Lorg/briarproject/bramble/api/crypto/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 16
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 17
    new-instance v0, Lorg/briarproject/bramble/crypto/Curve25519PublicKey;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/crypto/Curve25519PublicKey;-><init>([B)V

    return-object v0

    .line 16
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1
.end method
