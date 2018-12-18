.class public final Lnet/i2p/crypto/eddsa/KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "KeyPairGenerator.java"


# static fields
.field private static final DEFAULT_KEYSIZE:I = 0x100

.field private static final edParameters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

.field private initialized:Z

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParameters:Ljava/util/Hashtable;

    .line 43
    sget-object v0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParameters:Ljava/util/Hashtable;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;

    const-string v3, "Ed25519"

    invoke-direct {v2, v3}, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNamedCurveSpec(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 91
    invoke-static {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown curve name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    .line 71
    iget-boolean v0, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialized:Z

    if-nez v0, :cond_0

    const/16 v0, 0x100

    .line 72
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 75
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 77
    new-instance v1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    invoke-direct {v1, v0, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 78
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    invoke-direct {v0, v2, v3}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>(Lnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 80
    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-direct {v3, v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V

    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    invoke-direct {v0, v1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V

    invoke-direct {v2, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    .line 47
    sget-object v0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParameters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz p1, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 53
    :catch_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "key type not configurable."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "unknown key type."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 59
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    goto :goto_0

    .line 61
    :cond_0
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;

    if-eqz v0, :cond_1

    .line 62
    check-cast p1, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->createNamedCurveSpec(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 66
    :goto_0
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialized:Z

    return-void

    .line 64
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a EdDSAParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
