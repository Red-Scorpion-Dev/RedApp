.class public final Lnet/i2p/crypto/eddsa/KeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "KeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 35
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    check-cast p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    invoke-direct {v0, p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V

    return-object v0

    .line 38
    :cond_0
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key spec not recognised: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 46
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    check-cast p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-direct {v0, p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V

    return-object v0

    .line 49
    :cond_0
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1

    .line 50
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Ljava/security/spec/X509EncodedKeySpec;)V

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key spec not recognised: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 58
    const-class v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 60
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    new-instance p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object p2

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>(Lnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    return-object p1

    .line 63
    :cond_0
    const-class v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    if-eqz v0, :cond_1

    .line 64
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 65
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    new-instance p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getSeed()[B

    move-result-object v3

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getH()[B

    move-result-object v4

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->geta()[B

    move-result-object v5

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v6

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([B[B[BLnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    return-object p1

    .line 69
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented yet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 73
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "No other EdDSA key providers known"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
