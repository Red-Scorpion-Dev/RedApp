.class public Lorg/briarproject/bramble/crypto/MessageEncrypter;
.super Ljava/lang/Object;
.source "MessageEncrypter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyParser;,
        Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyEncoder;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final CIPHER_KEY_BITS:I = 0x100

.field private static final LINE_LENGTH:I = 0x46

.field private static final MAC_KEY_BITS:I = 0x100

.field private static final MESSAGE_KEY_BITS:I = 0x200

.field private static final PARAMETERS:Lorg/spongycastle/crypto/params/ECDomainParameters;


# instance fields
.field private final ephemeralGenerator:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

.field private final ephemeralParser:Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyParser;

.field private final generator:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

.field private final parser:Lorg/briarproject/bramble/api/crypto/KeyParser;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "brainpoolp512r1"

    .line 59
    invoke-static {v0}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 60
    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 61
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v1, Lorg/briarproject/bramble/crypto/MessageEncrypter;->PARAMETERS:Lorg/spongycastle/crypto/params/ECDomainParameters;

    return-void
.end method

.method constructor <init>(Ljava/security/SecureRandom;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/crypto/MessageEncrypter;->generator:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    .line 71
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/MessageEncrypter;->generator:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    new-instance v1, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    sget-object v2, Lorg/briarproject/bramble/crypto/MessageEncrypter;->PARAMETERS:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v1, v2, p1}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 72
    new-instance p1, Lorg/briarproject/bramble/crypto/Sec1KeyParser;

    sget-object v0, Lorg/briarproject/bramble/crypto/MessageEncrypter;->PARAMETERS:Lorg/spongycastle/crypto/params/ECDomainParameters;

    const/16 v1, 0x200

    invoke-direct {p1, v0, v1}, Lorg/briarproject/bramble/crypto/Sec1KeyParser;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;I)V

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/MessageEncrypter;->parser:Lorg/briarproject/bramble/api/crypto/KeyParser;

    .line 73
    new-instance p1, Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyEncoder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyEncoder;-><init>(Lorg/briarproject/bramble/crypto/MessageEncrypter$1;)V

    .line 74
    new-instance v1, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    iget-object v2, p0, Lorg/briarproject/bramble/crypto/MessageEncrypter;->generator:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v1, v2, p1}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/spongycastle/crypto/KeyEncoder;)V

    iput-object v1, p0, Lorg/briarproject/bramble/crypto/MessageEncrypter;->ephemeralGenerator:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    .line 75
    new-instance p1, Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyParser;

    sget-object v1, Lorg/briarproject/bramble/crypto/MessageEncrypter;->PARAMETERS:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {p1, v1, v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyParser;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Lorg/briarproject/bramble/crypto/MessageEncrypter$1;)V

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/MessageEncrypter;->ephemeralParser:Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyParser;

    return-void
.end method

.method private static decryptMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 237
    new-instance v1, Lorg/briarproject/bramble/crypto/MessageEncrypter;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;-><init>(Ljava/security/SecureRandom;)V

    .line 238
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-static {v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/briarproject/bramble/util/StringUtils;->fromHexString(Ljava/lang/String;)[B

    move-result-object p0

    .line 241
    invoke-virtual {v1}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->getKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/crypto/KeyParser;->parsePrivateKey([B)Lorg/briarproject/bramble/api/crypto/PrivateKey;

    move-result-object p0

    .line 242
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/bramble/crypto/AsciiArmour;->unwrap(Ljava/lang/String;)[B

    move-result-object v0

    .line 243
    invoke-virtual {v1, p0, v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->decrypt(Lorg/briarproject/bramble/api/crypto/PrivateKey;[B)[B

    move-result-object p0

    .line 244
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static encryptMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 224
    new-instance v1, Lorg/briarproject/bramble/crypto/MessageEncrypter;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;-><init>(Ljava/security/SecureRandom;)V

    .line 225
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-static {v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/briarproject/bramble/util/StringUtils;->fromHexString(Ljava/lang/String;)[B

    move-result-object p0

    .line 228
    invoke-virtual {v1}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->getKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/crypto/KeyParser;->parsePublicKey([B)Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object p0

    .line 229
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    .line 230
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 231
    invoke-virtual {v1, p0, v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->encrypt(Lorg/briarproject/bramble/api/crypto/PublicKey;[B)[B

    move-result-object p0

    .line 232
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0x46

    invoke-static {p0, v1}, Lorg/briarproject/bramble/crypto/AsciiArmour;->wrap([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static generateKeyPair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 210
    new-instance v1, Lorg/briarproject/bramble/crypto/MessageEncrypter;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;-><init>(Ljava/security/SecureRandom;)V

    .line 211
    invoke-virtual {v1}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->generateKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPublic()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/briarproject/bramble/util/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 215
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 216
    new-instance p0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 217
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPrivate()Lorg/briarproject/bramble/api/crypto/PrivateKey;

    move-result-object p1

    invoke-interface {p1}, Lorg/briarproject/bramble/api/crypto/PrivateKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 219
    invoke-virtual {p0}, Ljava/io/PrintStream;->close()V

    return-void
.end method

.method private getCipherParameters()Lorg/spongycastle/crypto/CipherParameters;
    .locals 3

    .line 124
    new-instance v0, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;-><init>([B[BII)V

    return-object v0
.end method

.method private getEngine()Lorg/spongycastle/crypto/engines/IESEngine;
    .locals 5

    .line 115
    new-instance v0, Lorg/spongycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v0}, Lorg/spongycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    .line 116
    new-instance v1, Lorg/spongycastle/crypto/generators/KDF2BytesGenerator;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/generators/KDF2BytesGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 117
    new-instance v2, Lorg/spongycastle/crypto/macs/HMac;

    new-instance v3, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v3}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 118
    new-instance v3, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v4, Lorg/spongycastle/crypto/engines/AESLightEngine;

    invoke-direct {v4}, Lorg/spongycastle/crypto/engines/AESLightEngine;-><init>()V

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 119
    new-instance v4, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v4, v3}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 120
    new-instance v3, Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-direct {v3, v0, v1, v2, v4}, Lorg/spongycastle/crypto/engines/IESEngine;-><init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    .line 156
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 157
    invoke-static {}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->printUsage()V

    .line 158
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/4 v0, 0x0

    .line 160
    aget-object v2, p0, v0

    const-string v3, "generate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 161
    array-length v0, p0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 162
    invoke-static {}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->printUsage()V

    .line 163
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 166
    :cond_1
    :try_start_0
    aget-object v0, p0, v1

    aget-object p0, p0, v3

    invoke-static {v0, p0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 171
    :cond_2
    aget-object v2, p0, v0

    const-string v4, "encrypt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    array-length v0, p0

    if-eq v0, v3, :cond_3

    .line 173
    invoke-static {}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->printUsage()V

    .line 174
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 177
    :cond_3
    :try_start_1
    aget-object p0, p0, v1

    invoke-static {p0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->encryptMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 182
    :cond_4
    aget-object v0, p0, v0

    const-string v2, "decrypt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 183
    array-length v0, p0

    if-eq v0, v3, :cond_5

    .line 184
    invoke-static {}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->printUsage()V

    .line 185
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 188
    :cond_5
    :try_start_2
    aget-object p0, p0, v1

    invoke-static {p0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->decryptMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 194
    :cond_6
    invoke-static {}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->printUsage()V

    .line 195
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method private static printUsage()V
    .locals 2

    .line 200
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "MessageEncrypter generate <public_key_file> <private_key_file>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "MessageEncrypter encrypt <public_key_file>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "MessageEncrypter decrypt <private_key_file>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static readFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "line.separator"

    .line 248
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 251
    :goto_0
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 256
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method decrypt(Lorg/briarproject/bramble/api/crypto/PrivateKey;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .line 106
    instance-of v0, p1, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->getEngine()Lorg/spongycastle/crypto/engines/IESEngine;

    move-result-object v0

    .line 109
    check-cast p1, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;

    invoke-virtual {p1}, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;->getKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object p1

    invoke-direct {p0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->getCipherParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/briarproject/bramble/crypto/MessageEncrypter;->ephemeralParser:Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyParser;

    invoke-virtual {v0, p1, v1, v2}, Lorg/spongycastle/crypto/engines/IESEngine;->init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/KeyParser;)V

    const/4 p1, 0x0

    .line 111
    array-length v1, p2

    invoke-virtual {v0, p2, p1, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method encrypt(Lorg/briarproject/bramble/api/crypto/PublicKey;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .line 96
    instance-of v0, p1, Lorg/briarproject/bramble/crypto/Sec1PublicKey;

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->getEngine()Lorg/spongycastle/crypto/engines/IESEngine;

    move-result-object v0

    .line 99
    check-cast p1, Lorg/briarproject/bramble/crypto/Sec1PublicKey;

    invoke-virtual {p1}, Lorg/briarproject/bramble/crypto/Sec1PublicKey;->getKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    invoke-direct {p0}, Lorg/briarproject/bramble/crypto/MessageEncrypter;->getCipherParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/briarproject/bramble/crypto/MessageEncrypter;->ephemeralGenerator:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    invoke-virtual {v0, p1, v1, v2}, Lorg/spongycastle/crypto/engines/IESEngine;->init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;)V

    const/4 p1, 0x0

    .line 101
    array-length v1, p2

    invoke-virtual {v0, p2, p1, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method generateKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;
    .locals 4

    .line 79
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/MessageEncrypter;->generator:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 83
    new-instance v2, Lorg/briarproject/bramble/crypto/Sec1PublicKey;

    invoke-direct {v2, v1}, Lorg/briarproject/bramble/crypto/Sec1PublicKey;-><init>(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    .line 85
    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 86
    new-instance v1, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;

    const/16 v3, 0x200

    invoke-direct {v1, v0, v3}, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;-><init>(Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;I)V

    .line 88
    new-instance v0, Lorg/briarproject/bramble/api/crypto/KeyPair;

    invoke-direct {v0, v2, v1}, Lorg/briarproject/bramble/api/crypto/KeyPair;-><init>(Lorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/PrivateKey;)V

    return-object v0
.end method

.method getKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/MessageEncrypter;->parser:Lorg/briarproject/bramble/api/crypto/KeyParser;

    return-object v0
.end method
