.class Lorg/briarproject/bramble/crypto/EdSignature;
.super Ljava/lang/Object;
.source "EdSignature.java"

# interfaces
.implements Lorg/briarproject/bramble/crypto/Signature;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

.field private static final PROVIDER:Ljava/security/Provider;


# instance fields
.field private final signature:Ljava/security/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;

    invoke-direct {v0}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;-><init>()V

    sput-object v0, Lorg/briarproject/bramble/crypto/EdSignature;->PROVIDER:Ljava/security/Provider;

    const-string v0, "Ed25519"

    .line 27
    invoke-static {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/crypto/EdSignature;->CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "NONEwithEdDSA"

    .line 33
    sget-object v1, Lorg/briarproject/bramble/crypto/EdSignature;->PROVIDER:Ljava/security/Provider;

    .line 34
    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/crypto/EdSignature;->signature:Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public initSign(Lorg/briarproject/bramble/api/crypto/PrivateKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 42
    instance-of v0, p1, Lorg/briarproject/bramble/crypto/EdPrivateKey;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    new-instance v1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    .line 45
    invoke-interface {p1}, Lorg/briarproject/bramble/api/crypto/PrivateKey;->getEncoded()[B

    move-result-object p1

    sget-object v2, Lorg/briarproject/bramble/crypto/EdSignature;->CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    invoke-direct {v1, p1, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-direct {v0, v1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V

    .line 46
    iget-object p1, p0, Lorg/briarproject/bramble/crypto/EdSignature;->signature:Ljava/security/Signature;

    invoke-virtual {p1, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public initVerify(Lorg/briarproject/bramble/api/crypto/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    instance-of v0, p1, Lorg/briarproject/bramble/crypto/EdPublicKey;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    new-instance v1, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    .line 54
    invoke-interface {p1}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object p1

    sget-object v2, Lorg/briarproject/bramble/crypto/EdSignature;->CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    invoke-direct {v1, p1, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-direct {v0, v1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V

    .line 55
    iget-object p1, p0, Lorg/briarproject/bramble/crypto/EdSignature;->signature:Ljava/security/Signature;

    invoke-virtual {p1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public sign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/EdSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public update(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/EdSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update(B)V

    return-void
.end method

.method public update([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/EdSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    return-void
.end method

.method public update([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/EdSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    return-void
.end method

.method public verify([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/EdSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method
