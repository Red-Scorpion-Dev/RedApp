.class public Lorg/whispersystems/curve25519/JavaCurve25519Provider;
.super Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;
.source "JavaCurve25519Provider.java"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 16
    new-instance v0, Lorg/whispersystems/curve25519/JCESha512Provider;

    invoke-direct {v0}, Lorg/whispersystems/curve25519/JCESha512Provider;-><init>()V

    new-instance v1, Lorg/whispersystems/curve25519/JCESecureRandomProvider;

    invoke-direct {v1}, Lorg/whispersystems/curve25519/JCESecureRandomProvider;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;-><init>(Lorg/whispersystems/curve25519/java/Sha512;Lorg/whispersystems/curve25519/SecureRandomProvider;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic calculateAgreement([B[B)[B
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->calculateAgreement([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic calculateSignature([B[B[B)[B
    .locals 0

    .line 13
    invoke-super {p0, p1, p2, p3}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->calculateSignature([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic calculateVrfSignature([B[B[B)[B
    .locals 0

    .line 13
    invoke-super {p0, p1, p2, p3}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->calculateVrfSignature([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generatePrivateKey()[B
    .locals 1

    .line 13
    invoke-super {p0}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->generatePrivateKey()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generatePrivateKey([B)[B
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->generatePrivateKey([B)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generatePublicKey([B)[B
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->generatePublicKey([B)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRandom(I)[B
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->getRandom(I)[B

    move-result-object p1

    return-object p1
.end method

.method public isNative()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic setRandomProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->setRandomProvider(Lorg/whispersystems/curve25519/SecureRandomProvider;)V

    return-void
.end method

.method public bridge synthetic verifySignature([B[B[B)Z
    .locals 0

    .line 13
    invoke-super {p0, p1, p2, p3}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->verifySignature([B[B[B)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic verifyVrfSignature([B[B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/whispersystems/curve25519/VrfSignatureVerificationFailedException;
        }
    .end annotation

    .line 13
    invoke-super {p0, p1, p2, p3}, Lorg/whispersystems/curve25519/BaseJavaCurve25519Provider;->verifyVrfSignature([B[B[B)[B

    move-result-object p1

    return-object p1
.end method
