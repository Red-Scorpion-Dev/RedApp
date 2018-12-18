.class abstract Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;
.super Ljava/lang/Object;
.source "BaseJavaCurve25519Provider.java"

# interfaces
.implements Lorg/whispersystems/curve25519/Curve25519Provider;


# instance fields
.field private secureRandomProvider:Lorg/whispersystems/curve25519/SecureRandomProvider;

.field private final sha512provider:Lorg/whispersystems/curve25519/java/Sha512;


# direct methods
.method protected constructor <init>(Lorg/whispersystems/curve25519/java/Sha512;Lorg/whispersystems/curve25519/SecureRandomProvider;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->sha512provider:Lorg/whispersystems/curve25519/java/Sha512;

    .line 22
    iput-object p2, p0, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->secureRandomProvider:Lorg/whispersystems/curve25519/SecureRandomProvider;

    return-void
.end method


# virtual methods
.method public calculateAgreement([B[B)[B
    .locals 1

    const/16 v0, 0x20

    .line 32
    new-array v0, v0, [B

    .line 33
    invoke-static {v0, p1, p2}, Lorg/whispersystems/curve25519/java/scalarmult;->crypto_scalarmult([B[B[B)I

    return-object v0
.end method

.method public calculateSignature([B[B[B)[B
    .locals 7

    const/16 v0, 0x40

    .line 63
    new-array v0, v0, [B

    .line 65
    iget-object v1, p0, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->sha512provider:Lorg/whispersystems/curve25519/java/Sha512;

    array-length v5, p3

    move-object v2, v0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/whispersystems/curve25519/java/curve_sigs;->curve25519_sign(Lorg/whispersystems/curve25519/java/Sha512;[B[B[BI[B)I

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message exceeds max length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public calculateVrfSignature([B[B[B)[B
    .locals 0

    .line 77
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "NYI"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public generatePrivateKey()[B
    .locals 1

    const/16 v0, 0x20

    .line 46
    invoke-virtual {p0, v0}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->getRandom(I)[B

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->generatePrivateKey([B)[B

    move-result-object v0

    return-object v0
.end method

.method public generatePrivateKey([B)[B
    .locals 3

    const/16 v0, 0x20

    .line 51
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 53
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xf8

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    const/16 p1, 0x1f

    .line 56
    aget-byte v0, v1, p1

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    .line 57
    aget-byte v0, v1, p1

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    return-object v1
.end method

.method public generatePublicKey([B)[B
    .locals 1

    const/16 v0, 0x20

    .line 39
    new-array v0, v0, [B

    .line 40
    invoke-static {v0, p1}, Lorg/whispersystems/curve25519/java/curve_sigs;->curve25519_keygen([B[B)V

    return-object v0
.end method

.method public getRandom(I)[B
    .locals 1

    .line 87
    new-array p1, p1, [B

    .line 88
    iget-object v0, p0, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->secureRandomProvider:Lorg/whispersystems/curve25519/SecureRandomProvider;

    invoke-interface {v0, p1}, Lorg/whispersystems/curve25519/SecureRandomProvider;->nextBytes([B)V

    return-object p1
.end method

.method public abstract isNative()Z
.end method

.method public setRandomProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->secureRandomProvider:Lorg/whispersystems/curve25519/SecureRandomProvider;

    return-void
.end method

.method public verifySignature([B[B[B)Z
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->sha512provider:Lorg/whispersystems/curve25519/java/Sha512;

    array-length v1, p2

    invoke-static {v0, p3, p1, p2, v1}, Lorg/whispersystems/curve25519/java/curve_sigs;->curve25519_verify(Lorg/whispersystems/curve25519/java/Sha512;[B[B[BI)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public verifyVrfSignature([B[B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/VrfSignatureVerificationFailedException;
        }
    .end annotation

    .line 83
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "NYI"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
