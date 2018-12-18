.class public Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;
.super Ljava/lang/Object;
.source "OpportunisticCurve25519Provider.java"

# interfaces
.implements Lorg/whispersystems/curve25519/Curve25519Provider;


# instance fields
.field private delegate:Lorg/whispersystems/curve25519/Curve25519Provider;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    :try_start_0
    new-instance v0, Lorg/whispersystems/curve25519/NativeCurve25519Provider;

    invoke-direct {v0}, Lorg/whispersystems/curve25519/NativeCurve25519Provider;-><init>()V

    iput-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;
    :try_end_0
    .catch Lorg/whispersystems/curve25519/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    new-instance v0, Lorg/whispersystems/curve25519/JavaCurve25519Provider;

    invoke-direct {v0}, Lorg/whispersystems/curve25519/JavaCurve25519Provider;-><init>()V

    iput-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    :goto_0
    return-void
.end method


# virtual methods
.method public calculateAgreement([B[B)[B
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p1, p2}, Lorg/whispersystems/curve25519/Curve25519Provider;->calculateAgreement([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public calculateSignature([B[B[B)[B
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p1, p2, p3}, Lorg/whispersystems/curve25519/Curve25519Provider;->calculateSignature([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public calculateVrfSignature([B[B[B)[B
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p1, p2, p3}, Lorg/whispersystems/curve25519/Curve25519Provider;->calculateVrfSignature([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public generatePrivateKey()[B
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0}, Lorg/whispersystems/curve25519/Curve25519Provider;->generatePrivateKey()[B

    move-result-object v0

    return-object v0
.end method

.method public generatePrivateKey([B)[B
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p1}, Lorg/whispersystems/curve25519/Curve25519Provider;->generatePrivateKey([B)[B

    move-result-object p1

    return-object p1
.end method

.method public generatePublicKey([B)[B
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p1}, Lorg/whispersystems/curve25519/Curve25519Provider;->generatePublicKey([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getRandom(I)[B
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p1}, Lorg/whispersystems/curve25519/Curve25519Provider;->getRandom(I)[B

    move-result-object p1

    return-object p1
.end method

.method public isNative()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0}, Lorg/whispersystems/curve25519/Curve25519Provider;->isNative()Z

    move-result v0

    return v0
.end method

.method public setRandomProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p1}, Lorg/whispersystems/curve25519/Curve25519Provider;->setRandomProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)V

    return-void
.end method

.method public verifySignature([B[B[B)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p1, p2, p3}, Lorg/whispersystems/curve25519/Curve25519Provider;->verifySignature([B[B[B)Z

    move-result p1

    return p1
.end method

.method public verifyVrfSignature([B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/VrfSignatureVerificationFailedException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/whispersystems/curve25519/OpportunisticCurve25519Provider;->delegate:Lorg/whispersystems/curve25519/Curve25519Provider;

    invoke-interface {v0, p1, p2, p3}, Lorg/whispersystems/curve25519/Curve25519Provider;->verifyVrfSignature([B[B[B)[B

    move-result-object p1

    return-object p1
.end method
