.class Lorg/briarproject/bramble/crypto/Sec1KeyParser;
.super Ljava/lang/Object;
.source "Sec1KeyParser.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/KeyParser;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final bytesPerInt:I

.field private final keyBits:I

.field private final modulus:Ljava/math/BigInteger;

.field private final params:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field private final privateKeyBytes:I

.field private final publicKeyBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/params/ECDomainParameters;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 40
    iput p2, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->keyBits:I

    .line 41
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/math/ec/ECCurve$Fp;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->modulus:Ljava/math/BigInteger;

    add-int/lit8 p2, p2, 0x7

    .line 42
    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->bytesPerInt:I

    .line 43
    iget p1, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->bytesPerInt:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->publicKeyBytes:I

    .line 44
    iget p1, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->bytesPerInt:I

    iput p1, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->privateKeyBytes:I

    return-void
.end method


# virtual methods
.method public parsePrivateKey([B)Lorg/briarproject/bramble/api/crypto/PrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 92
    array-length v2, p1

    iget v3, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->privateKeyBytes:I

    if-ne v2, v3, :cond_1

    .line 94
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 96
    iget-object p1, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_0

    .line 99
    new-instance p1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v3, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {p1, v2, v3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    .line 100
    new-instance v2, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;

    iget v3, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->keyBits:I

    invoke-direct {v2, p1, v3}, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;-><init>(Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;I)V

    .line 101
    sget-object p1, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Parsing private key"

    invoke-static {p1, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    return-object v2

    .line 97
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1

    .line 93
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1
.end method

.method public parsePublicKey([B)Lorg/briarproject/bramble/api/crypto/PublicKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 53
    array-length v2, p1

    iget v3, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->publicKeyBytes:I

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    .line 56
    aget-byte v3, p1, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 58
    iget v3, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->bytesPerInt:I

    new-array v3, v3, [B

    .line 59
    iget v4, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->bytesPerInt:I

    const/4 v5, 0x1

    invoke-static {p1, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 61
    iget-object v3, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_4

    .line 63
    iget v3, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->bytesPerInt:I

    new-array v3, v3, [B

    .line 64
    iget v6, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->bytesPerInt:I

    add-int/2addr v6, v5

    iget v7, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->bytesPerInt:I

    invoke-static {p1, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 66
    iget-object v2, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->modulus:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_3

    .line 68
    iget-object v2, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    .line 70
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 71
    invoke-virtual {p1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 72
    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v5, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 73
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    invoke-virtual {v2, v4, p1}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    iget-object v2, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    new-instance v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iget-object v3, p0, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v2, p1, v3}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    .line 83
    new-instance p1, Lorg/briarproject/bramble/crypto/Sec1PublicKey;

    invoke-direct {p1, v2}, Lorg/briarproject/bramble/crypto/Sec1PublicKey;-><init>(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    .line 84
    sget-object v2, Lorg/briarproject/bramble/crypto/Sec1KeyParser;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Parsing public key"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    return-object p1

    .line 80
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1

    .line 73
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1

    .line 66
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1

    .line 61
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1

    .line 56
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1

    .line 54
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1
.end method
