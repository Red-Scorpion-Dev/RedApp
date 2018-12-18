.class Lorg/briarproject/bramble/crypto/CryptoComponentImpl;
.super Ljava/lang/Object;
.source "CryptoComponentImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/CryptoComponent;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PBKDF_FORMAT_SCRYPT:I = 0x0

.field private static final PBKDF_SALT_BYTES:I = 0x20

.field private static final SIGNATURE_KEY_PAIR_BITS:I = 0x100

.field private static final STORAGE_IV_BYTES:I = 0x18


# instance fields
.field private final agreementKeyParser:Lorg/briarproject/bramble/api/crypto/KeyParser;

.field private final curve25519:Lorg/whispersystems/curve25519/Curve25519;

.field private final messageEncrypter:Lorg/briarproject/bramble/crypto/MessageEncrypter;

.field private final passwordBasedKdf:Lorg/briarproject/bramble/crypto/PasswordBasedKdf;

.field private final secureRandom:Ljava/security/SecureRandom;

.field private final signatureKeyPairGenerator:Lnet/i2p/crypto/eddsa/KeyPairGenerator;

.field private final signatureKeyParser:Lorg/briarproject/bramble/api/crypto/KeyParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/system/SecureRandomProvider;Lorg/briarproject/bramble/crypto/PasswordBasedKdf;)V
    .locals 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 61
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-object v2, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default SecureRandom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-interface {p1}, Lorg/briarproject/bramble/api/system/SecureRandomProvider;->getProvider()Ljava/security/Provider;

    move-result-object p1

    if-nez p1, :cond_1

    .line 67
    sget-object p1, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Using default"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->installSecureRandomProvider(Ljava/security/Provider;)V

    .line 70
    sget-object p1, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 71
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 72
    invoke-virtual {p1}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Ljava/security/SecureRandom;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    .line 74
    sget-object v1, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installed SecureRandom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 77
    :cond_2
    :goto_0
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 78
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->passwordBasedKdf:Lorg/briarproject/bramble/crypto/PasswordBasedKdf;

    const-string p1, "java"

    .line 79
    invoke-static {p1}, Lorg/whispersystems/curve25519/Curve25519;->getInstance(Ljava/lang/String;)Lorg/whispersystems/curve25519/Curve25519;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->curve25519:Lorg/whispersystems/curve25519/Curve25519;

    .line 80
    new-instance p1, Lnet/i2p/crypto/eddsa/KeyPairGenerator;

    invoke-direct {p1}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->signatureKeyPairGenerator:Lnet/i2p/crypto/eddsa/KeyPairGenerator;

    .line 81
    iget-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->signatureKeyPairGenerator:Lnet/i2p/crypto/eddsa/KeyPairGenerator;

    const/16 p2, 0x100

    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p1, p2, v0}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 83
    new-instance p1, Lorg/briarproject/bramble/crypto/Curve25519KeyParser;

    invoke-direct {p1}, Lorg/briarproject/bramble/crypto/Curve25519KeyParser;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->agreementKeyParser:Lorg/briarproject/bramble/api/crypto/KeyParser;

    .line 84
    new-instance p1, Lorg/briarproject/bramble/crypto/EdKeyParser;

    invoke-direct {p1}, Lorg/briarproject/bramble/crypto/EdKeyParser;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->signatureKeyParser:Lorg/briarproject/bramble/api/crypto/KeyParser;

    .line 85
    new-instance p1, Lorg/briarproject/bramble/crypto/MessageEncrypter;

    iget-object p2, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/crypto/MessageEncrypter;-><init>(Ljava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->messageEncrypter:Lorg/briarproject/bramble/crypto/MessageEncrypter;

    return-void
.end method

.method private installSecureRandomProvider(Ljava/security/Provider;)V
    .locals 3

    const-string v0, "SecureRandom.SHA1PRNG"

    .line 90
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 93
    invoke-static {p1, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 96
    :cond_1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 103
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong SHA1PRNG provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 105
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 98
    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong SecureRandom provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateSignature(Lorg/briarproject/bramble/crypto/Signature;Ljava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 219
    invoke-static {p2}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x4

    .line 220
    new-array v0, v0, [B

    .line 221
    array-length v1, p2

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint32(J[BI)V

    .line 222
    invoke-interface {p1, v0}, Lorg/briarproject/bramble/crypto/Signature;->update([B)V

    .line 223
    invoke-interface {p1, p2}, Lorg/briarproject/bramble/crypto/Signature;->update([B)V

    .line 224
    array-length p2, p3

    int-to-long v1, p2

    invoke-static {v1, v2, v0, v3}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint32(J[BI)V

    .line 225
    invoke-interface {p1, v0}, Lorg/briarproject/bramble/crypto/Signature;->update([B)V

    .line 226
    invoke-interface {p1, p3}, Lorg/briarproject/bramble/crypto/Signature;->update([B)V

    return-void
.end method


# virtual methods
.method public asciiArmour([BI)Ljava/lang/String;
    .locals 0

    .line 377
    invoke-static {p1, p2}, Lorg/briarproject/bramble/crypto/AsciiArmour;->wrap([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decryptWithPassword([BLjava/lang/String;)[B
    .locals 11

    .line 321
    new-instance v0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;

    invoke-direct {v0}, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;-><init>()V

    .line 322
    invoke-interface {v0}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->getMacBytes()I

    move-result v1

    .line 325
    array-length v2, p1

    add-int/lit8 v3, v1, 0x3d

    const/4 v6, 0x0

    if-ge v2, v3, :cond_0

    return-object v6

    :cond_0
    const/4 v2, 0x0

    .line 330
    aget-byte v3, p1, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return-object v6

    :cond_1
    const/16 v3, 0x20

    .line 335
    new-array v3, v3, [B

    .line 336
    array-length v5, v3

    invoke-static {p1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    array-length v5, v3

    add-int/2addr v4, v5

    .line 339
    invoke-static {p1, v4}, Lorg/briarproject/bramble/util/ByteUtils;->readUint32([BI)J

    move-result-wide v7

    add-int/lit8 v4, v4, 0x4

    const-wide/16 v9, 0x2

    cmp-long v5, v7, v9

    if-ltz v5, :cond_3

    const-wide/32 v9, 0x7fffffff

    cmp-long v5, v7, v9

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    const/16 v5, 0x18

    .line 344
    new-array v5, v5, [B

    .line 345
    array-length v9, v5

    invoke-static {p1, v4, v5, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    array-length v9, v5

    add-int/2addr v4, v9

    .line 348
    iget-object v9, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->passwordBasedKdf:Lorg/briarproject/bramble/crypto/PasswordBasedKdf;

    long-to-int v7, v7

    invoke-interface {v9, p2, v3, v7}, Lorg/briarproject/bramble/crypto/PasswordBasedKdf;->deriveKey(Ljava/lang/String;[BI)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p2

    .line 351
    :try_start_0
    invoke-interface {v0, v2, p2, v5}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->init(ZLorg/briarproject/bramble/api/crypto/SecretKey;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 357
    :try_start_1
    array-length p2, p1

    sub-int v3, p2, v4

    sub-int p2, v3, v1

    .line 358
    new-array p2, p2, [B

    const/4 v5, 0x0

    move-object v1, p1

    move v2, v4

    move-object v4, p2

    .line 359
    invoke-interface/range {v0 .. v5}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->process([BII[BI)I
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    return-object v6

    :catch_1
    move-exception p1

    .line 353
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_0
    return-object v6
.end method

.method public varargs deriveKey(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 0

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->mac(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)[B

    move-result-object p1

    .line 180
    array-length p2, p1

    const/16 p3, 0x20

    if-ne p2, p3, :cond_0

    .line 181
    new-instance p2, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    return-object p2

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public varargs deriveSharedSecret(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/KeyPair;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 188
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPrivate()Lorg/briarproject/bramble/api/crypto/PrivateKey;

    move-result-object p3

    .line 189
    array-length v0, p4

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [[B

    .line 190
    invoke-virtual {p0, p3, p2}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->performRawKeyAgreement(Lorg/briarproject/bramble/api/crypto/PrivateKey;Lorg/briarproject/bramble/api/crypto/PublicKey;)[B

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    .line 191
    array-length p2, p4

    invoke-static {p4, p3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->hash(Ljava/lang/String;[[B)[B

    move-result-object p1

    .line 193
    array-length p2, p1

    const/16 p3, 0x20

    if-ne p2, p3, :cond_0

    .line 194
    new-instance p2, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    return-object p2

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public encryptToKey(Lorg/briarproject/bramble/api/crypto/PublicKey;[B)[B
    .locals 1

    .line 369
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->messageEncrypter:Lorg/briarproject/bramble/crypto/MessageEncrypter;

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->encrypt(Lorg/briarproject/bramble/api/crypto/PublicKey;[B)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 371
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public encryptWithPassword([BLjava/lang/String;)[B
    .locals 10

    .line 278
    new-instance v0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;

    invoke-direct {v0}, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;-><init>()V

    .line 279
    invoke-interface {v0}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->getMacBytes()I

    move-result v1

    const/16 v2, 0x20

    .line 281
    new-array v2, v2, [B

    .line 282
    iget-object v3, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 284
    iget-object v3, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->passwordBasedKdf:Lorg/briarproject/bramble/crypto/PasswordBasedKdf;

    invoke-interface {v3}, Lorg/briarproject/bramble/crypto/PasswordBasedKdf;->chooseCostParameter()I

    move-result v3

    .line 286
    iget-object v4, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->passwordBasedKdf:Lorg/briarproject/bramble/crypto/PasswordBasedKdf;

    invoke-interface {v4, p2, v2, v3}, Lorg/briarproject/bramble/crypto/PasswordBasedKdf;->deriveKey(Ljava/lang/String;[BI)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p2

    const/16 v4, 0x18

    .line 288
    new-array v4, v4, [B

    .line 289
    iget-object v5, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 292
    array-length v5, v2

    const/4 v6, 0x1

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    array-length v7, v4

    add-int/2addr v5, v7

    array-length v7, p1

    add-int/2addr v5, v7

    add-int/2addr v5, v1

    .line 294
    new-array v7, v5, [B

    const/4 v1, 0x0

    .line 297
    aput-byte v1, v7, v1

    .line 300
    array-length v5, v2

    invoke-static {v2, v1, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    array-length v2, v2

    add-int/2addr v2, v6

    int-to-long v8, v3

    .line 303
    invoke-static {v8, v9, v7, v2}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint32(J[BI)V

    add-int/lit8 v2, v2, 0x4

    .line 306
    array-length v3, v4

    invoke-static {v4, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    array-length v1, v4

    add-int v5, v2, v1

    .line 310
    :try_start_0
    invoke-interface {v0, v6, p2, v4}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->init(ZLorg/briarproject/bramble/api/crypto/SecretKey;[B)V

    const/4 v2, 0x0

    .line 311
    array-length v3, p1

    move-object v1, p1

    move-object v4, v7

    invoke-interface/range {v0 .. v5}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->process([BII[BI)I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    .line 314
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public generateAgreementKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;
    .locals 3

    .line 145
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->curve25519:Lorg/whispersystems/curve25519/Curve25519;

    invoke-virtual {v0}, Lorg/whispersystems/curve25519/Curve25519;->generateKeyPair()Lorg/whispersystems/curve25519/Curve25519KeyPair;

    move-result-object v0

    .line 146
    new-instance v1, Lorg/briarproject/bramble/crypto/Curve25519PublicKey;

    invoke-virtual {v0}, Lorg/whispersystems/curve25519/Curve25519KeyPair;->getPublicKey()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/crypto/Curve25519PublicKey;-><init>([B)V

    .line 147
    new-instance v2, Lorg/briarproject/bramble/crypto/Curve25519PrivateKey;

    invoke-virtual {v0}, Lorg/whispersystems/curve25519/Curve25519KeyPair;->getPrivateKey()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/briarproject/bramble/crypto/Curve25519PrivateKey;-><init>([B)V

    .line 148
    new-instance v0, Lorg/briarproject/bramble/api/crypto/KeyPair;

    invoke-direct {v0, v1, v2}, Lorg/briarproject/bramble/api/crypto/KeyPair;-><init>(Lorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/PrivateKey;)V

    return-object v0
.end method

.method public generateSecretKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 2

    const/16 v0, 0x20

    .line 115
    new-array v0, v0, [B

    .line 116
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 117
    new-instance v1, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    return-object v1
.end method

.method public generateSignatureKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;
    .locals 3

    .line 158
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->signatureKeyPairGenerator:Lnet/i2p/crypto/eddsa/KeyPairGenerator;

    .line 159
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 161
    new-instance v2, Lorg/briarproject/bramble/crypto/EdPublicKey;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/briarproject/bramble/crypto/EdPublicKey;-><init>([B)V

    .line 162
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 163
    new-instance v1, Lorg/briarproject/bramble/crypto/EdPrivateKey;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getSeed()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/crypto/EdPrivateKey;-><init>([B)V

    .line 164
    new-instance v0, Lorg/briarproject/bramble/api/crypto/KeyPair;

    invoke-direct {v0, v2, v1}, Lorg/briarproject/bramble/api/crypto/KeyPair;-><init>(Lorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/PrivateKey;)V

    return-object v0
.end method

.method public getAgreementKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->agreementKeyParser:Lorg/briarproject/bramble/api/crypto/KeyParser;

    return-object v0
.end method

.method public getMessageKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->messageEncrypter:Lorg/briarproject/bramble/crypto/MessageEncrypter;

    invoke-virtual {v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->getKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;

    move-result-object v0

    return-object v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getSignatureKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->signatureKeyParser:Lorg/briarproject/bramble/api/crypto/KeyParser;

    return-object v0
.end method

.method public varargs hash(Ljava/lang/String;[[B)[B
    .locals 7

    .line 231
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object p1

    .line 232
    new-instance v0, Lorg/spongycastle/crypto/digests/Blake2bDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    const/4 v1, 0x4

    .line 233
    new-array v1, v1, [B

    .line 234
    array-length v2, p1

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint32(J[BI)V

    .line 235
    array-length v2, v1

    invoke-interface {v0, v1, v4, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 236
    array-length v2, p1

    invoke-interface {v0, p1, v4, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 237
    array-length p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p2, v2

    .line 238
    array-length v5, v3

    int-to-long v5, v5

    invoke-static {v5, v6, v1, v4}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint32(J[BI)V

    .line 239
    array-length v5, v1

    invoke-interface {v0, v1, v4, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 240
    array-length v5, v3

    invoke-interface {v0, v3, v4, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    .line 243
    invoke-interface {v0, p1, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-object p1
.end method

.method public varargs mac(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)[B
    .locals 6

    .line 249
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object p1

    .line 250
    new-instance v0, Lorg/spongycastle/crypto/digests/Blake2bDigest;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-direct {v0, p2, v2, v1, v1}, Lorg/spongycastle/crypto/digests/Blake2bDigest;-><init>([BI[B[B)V

    const/4 p2, 0x4

    .line 251
    new-array p2, p2, [B

    .line 252
    array-length v1, p1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint32(J[BI)V

    .line 253
    array-length v1, p2

    invoke-interface {v0, p2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 254
    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 255
    array-length p1, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p3, v1

    .line 256
    array-length v4, v2

    int-to-long v4, v4

    invoke-static {v4, v5, p2, v3}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint32(J[BI)V

    .line 257
    array-length v4, p2

    invoke-interface {v0, p2, v3, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 258
    array-length v4, v2

    invoke-interface {v0, v2, v3, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    .line 261
    invoke-interface {v0, p1, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-object p1
.end method

.method performRawKeyAgreement(Lorg/briarproject/bramble/api/crypto/PrivateKey;Lorg/briarproject/bramble/api/crypto/PublicKey;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 128
    instance-of v0, p1, Lorg/briarproject/bramble/crypto/Curve25519PrivateKey;

    if-eqz v0, :cond_3

    .line 130
    instance-of v0, p2, Lorg/briarproject/bramble/crypto/Curve25519PublicKey;

    if-eqz v0, :cond_2

    .line 132
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 133
    iget-object v2, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->curve25519:Lorg/whispersystems/curve25519/Curve25519;

    invoke-interface {p2}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object p2

    .line 134
    invoke-interface {p1}, Lorg/briarproject/bramble/api/crypto/PrivateKey;->getEncoded()[B

    move-result-object p1

    .line 133
    invoke-virtual {v2, p2, p1}, Lorg/whispersystems/curve25519/Curve25519;->calculateAgreement([B[B)[B

    move-result-object p1

    .line 137
    array-length p2, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-byte v4, p1, v2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 139
    sget-object p2, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Deriving shared secret"

    invoke-static {p2, v2, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    return-object p1

    .line 138
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 129
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public sign(Ljava/lang/String;[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->signatureKeyParser:Lorg/briarproject/bramble/api/crypto/KeyParser;

    invoke-interface {v0, p3}, Lorg/briarproject/bramble/api/crypto/KeyParser;->parsePrivateKey([B)Lorg/briarproject/bramble/api/crypto/PrivateKey;

    move-result-object p3

    .line 201
    new-instance v0, Lorg/briarproject/bramble/crypto/EdSignature;

    invoke-direct {v0}, Lorg/briarproject/bramble/crypto/EdSignature;-><init>()V

    .line 202
    invoke-interface {v0, p3}, Lorg/briarproject/bramble/crypto/Signature;->initSign(Lorg/briarproject/bramble/api/crypto/PrivateKey;)V

    .line 203
    invoke-direct {p0, v0, p1, p2}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->updateSignature(Lorg/briarproject/bramble/crypto/Signature;Ljava/lang/String;[B)V

    .line 204
    invoke-interface {v0}, Lorg/briarproject/bramble/crypto/Signature;->sign()[B

    move-result-object p1

    return-object p1
.end method

.method public varargs verifyMac([BLjava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Z
    .locals 3

    .line 268
    invoke-virtual {p0, p2, p3, p4}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->mac(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)[B

    move-result-object p2

    .line 269
    array-length p3, p1

    array-length p4, p2

    const/4 v0, 0x0

    if-eq p3, p4, :cond_0

    return v0

    :cond_0
    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 272
    :goto_0
    array-length v1, p1

    if-ge p3, v1, :cond_1

    aget-byte v1, p1, p3

    aget-byte v2, p2, p3

    xor-int/2addr v1, v2

    or-int/2addr p4, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public verifySignature([BLjava/lang/String;[B[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->signatureKeyParser:Lorg/briarproject/bramble/api/crypto/KeyParser;

    invoke-interface {v0, p4}, Lorg/briarproject/bramble/api/crypto/KeyParser;->parsePublicKey([B)Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object p4

    .line 211
    new-instance v0, Lorg/briarproject/bramble/crypto/EdSignature;

    invoke-direct {v0}, Lorg/briarproject/bramble/crypto/EdSignature;-><init>()V

    .line 212
    invoke-interface {v0, p4}, Lorg/briarproject/bramble/crypto/Signature;->initVerify(Lorg/briarproject/bramble/api/crypto/PublicKey;)V

    .line 213
    invoke-direct {p0, v0, p2, p3}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;->updateSignature(Lorg/briarproject/bramble/crypto/Signature;Ljava/lang/String;[B)V

    .line 214
    invoke-interface {v0, p1}, Lorg/briarproject/bramble/crypto/Signature;->verify([B)Z

    move-result p1

    return p1
.end method
