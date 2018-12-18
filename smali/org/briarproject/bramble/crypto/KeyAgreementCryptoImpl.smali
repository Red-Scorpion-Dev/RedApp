.class Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;
.super Ljava/lang/Object;
.source "KeyAgreementCryptoImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;


# instance fields
.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    return-void
.end method


# virtual methods
.method public deriveConfirmationRecord(Lorg/briarproject/bramble/api/crypto/SecretKey;[B[BLorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/KeyPair;ZZ)[B
    .locals 7

    .line 35
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v1, "org.briarproject.bramble.keyagreement/CONFIRMATION_KEY"

    const/4 v2, 0x0

    new-array v3, v2, [[B

    invoke-interface {v0, v1, p1, v3}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->deriveKey(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p1

    if-eqz p6, :cond_0

    .line 39
    invoke-virtual {p5}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPublic()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object p5

    invoke-interface {p5}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object p5

    .line 41
    invoke-interface {p4}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object p4

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    move-object v6, p5

    move-object p5, p4

    move-object p4, v6

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p4}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object p4

    .line 46
    invoke-virtual {p5}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPublic()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object p5

    invoke-interface {p5}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object p5

    :goto_0
    const/4 p6, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x4

    if-eqz p7, :cond_1

    .line 49
    iget-object p7, p0, Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v4, "org.briarproject.bramble.keyagreement/CONFIRMATION_MAC"

    new-array v3, v3, [[B

    aput-object p2, v3, v2

    aput-object p4, v3, v1

    aput-object p3, v3, v0

    aput-object p5, v3, p6

    invoke-interface {p7, v4, p1, v3}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->mac(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)[B

    move-result-object p1

    return-object p1

    .line 52
    :cond_1
    iget-object p7, p0, Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v4, "org.briarproject.bramble.keyagreement/CONFIRMATION_MAC"

    new-array v3, v3, [[B

    aput-object p3, v3, v2

    aput-object p5, v3, v1

    aput-object p2, v3, v0

    aput-object p4, v3, p6

    invoke-interface {p7, v4, p1, v3}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->mac(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)[B

    move-result-object p1

    return-object p1
.end method

.method public deriveKeyCommitment(Lorg/briarproject/bramble/api/crypto/PublicKey;)[B
    .locals 4

    .line 24
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v1, "org.briarproject.bramble.keyagreement/COMMIT"

    const/4 v2, 0x1

    new-array v2, v2, [[B

    invoke-interface {p1}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->hash(Ljava/lang/String;[[B)[B

    move-result-object p1

    const/16 v0, 0x10

    .line 26
    new-array v1, v0, [B

    .line 27
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
