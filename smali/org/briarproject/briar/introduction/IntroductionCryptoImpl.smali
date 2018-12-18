.class Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;
.super Ljava/lang/Object;
.source "IntroductionCryptoImpl.java"

# interfaces
.implements Lorg/briarproject/briar/introduction/IntroductionCrypto;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/client/ClientHelper;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 47
    iput-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method

.method private getAuthMacInputs(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Common;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Common;)[B
    .locals 7

    const/4 v0, 0x4

    .line 155
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    iget-wide v3, p3, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->acceptTimestamp:J

    .line 157
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    iget-object p2, p3, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->ephemeralPublicKey:[B

    const/4 v4, 0x2

    aput-object p2, v1, v4

    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object p3, p3, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->transportProperties:Ljava/util/Map;

    .line 159
    invoke-interface {p2, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->toDictionary(Ljava/util/Map;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    .line 155
    invoke-static {v1}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 161
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p4, v0, v2

    iget-wide v5, p5, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->acceptTimestamp:J

    .line 163
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v0, v3

    iget-object p4, p5, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->ephemeralPublicKey:[B

    aput-object p4, v0, v4

    iget-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object p5, p5, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->transportProperties:Ljava/util/Map;

    .line 165
    invoke-interface {p4, p5}, Lorg/briarproject/bramble/api/client/ClientHelper;->toDictionary(Ljava/util/Map;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p4

    aput-object p4, v0, p3

    .line 161
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p4

    .line 167
    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    aput-object p2, p3, v3

    aput-object p4, p3, v4

    invoke-static {p3}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    .line 173
    :try_start_0
    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 175
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private getNonce(Lorg/briarproject/bramble/api/crypto/SecretKey;)[B
    .locals 3

    .line 207
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v1, "org.briarproject.briar.introduction/AUTH_NONCE"

    const/4 v2, 0x0

    new-array v2, v2, [[B

    invoke-interface {v0, v1, p1, v2}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->mac(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method activateMac(Lorg/briarproject/bramble/api/crypto/SecretKey;)[B
    .locals 3

    .line 218
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v1, "org.briarproject.briar.introduction/ACTIVATE_MAC"

    const/4 v2, 0x0

    new-array v2, v2, [[B

    invoke-interface {v0, v1, p1, v2}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->mac(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)[B

    move-result-object p1

    return-object p1
.end method

.method public activateMac(Lorg/briarproject/briar/introduction/IntroduceeSession;)[B
    .locals 1

    .line 212
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object v0

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->macKey:[B

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object p1

    iget-object p1, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->macKey:[B

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->activateMac(Lorg/briarproject/bramble/api/crypto/SecretKey;)[B

    move-result-object p1

    return-object p1

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Local MAC key is null"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method authMac(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;)[B
    .locals 7

    .line 122
    iget-object v0, p5, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 123
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 122
    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->getAuthMacInputs(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Common;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Common;)[B

    move-result-object p2

    .line 124
    iget-object p3, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string p4, "org.briarproject.briar.introduction/AUTH_MAC"

    const/4 p5, 0x1

    new-array p5, p5, [[B

    const/4 v0, 0x0

    aput-object p2, p5, v0

    invoke-interface {p3, p4, p1, p5}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->mac(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)[B

    move-result-object p1

    return-object p1
.end method

.method public authMac(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/identity/AuthorId;)[B
    .locals 7

    .line 116
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getIntroducer()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    .line 117
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 116
    invoke-virtual/range {v1 .. v6}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->authMac(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;)[B

    move-result-object p1

    return-object p1
.end method

.method public deriveMacKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Z)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    if-eqz p2, :cond_0

    const-string p2, "org.briarproject.briar.introduction/ALICE_MAC_KEY"

    goto :goto_0

    :cond_0
    const-string p2, "org.briarproject.briar.introduction/BOB_MAC_KEY"

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [[B

    invoke-interface {v0, p2, p1, v1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->deriveKey(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method

.method public deriveMasterKey(Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object v0

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->ephemeralPublicKey:[B

    .line 79
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object v1

    iget-object v1, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->ephemeralPrivateKey:[B

    .line 80
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v2

    iget-object v2, v2, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->ephemeralPublicKey:[B

    .line 81
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object p1

    iget-boolean p1, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->alice:Z

    .line 77
    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->deriveMasterKey([B[B[BZ)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method

.method deriveMasterKey([B[B[BZ)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->getAgreementKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;

    move-result-object v0

    .line 89
    invoke-interface {v0, p3}, Lorg/briarproject/bramble/api/crypto/KeyParser;->parsePublicKey([B)Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v1

    .line 90
    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/crypto/KeyParser;->parsePublicKey([B)Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v2

    .line 91
    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/crypto/KeyParser;->parsePrivateKey([B)Lorg/briarproject/bramble/api/crypto/PrivateKey;

    move-result-object p2

    .line 92
    new-instance v0, Lorg/briarproject/bramble/api/crypto/KeyPair;

    invoke-direct {v0, v2, p2}, Lorg/briarproject/bramble/api/crypto/KeyPair;-><init>(Lorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/PrivateKey;)V

    .line 93
    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v2, "org.briarproject.briar.introduction/MASTER_KEY"

    const/4 v3, 0x3

    new-array v3, v3, [[B

    const/4 v4, 0x1

    new-array v5, v4, [B

    const/4 v6, 0x0

    aput-byte v4, v5, v6

    aput-object v5, v3, v6

    if-eqz p4, :cond_0

    move-object v5, p1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    aput-object v5, v3, v4

    const/4 v4, 0x2

    if-eqz p4, :cond_1

    move-object p1, p3

    :cond_1
    aput-object p1, v3, v4

    invoke-interface {p2, v2, v1, v0, v3}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->deriveSharedSecret(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/KeyPair;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method

.method public generateKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->generateAgreementKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/client/SessionId;
    .locals 5

    .line 53
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->isAlice(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result v0

    .line 54
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v2, "org.briarproject.briar.introduction/SESSION_ID"

    const/4 v3, 0x3

    new-array v3, v3, [[B

    .line 56
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p2

    :goto_2
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object p2

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p2

    goto :goto_2

    :goto_3
    aput-object p2, v3, p1

    .line 54
    invoke-interface {v1, v2, v3}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->hash(Ljava/lang/String;[[B)[B

    move-result-object p1

    .line 60
    new-instance p2, Lorg/briarproject/briar/api/client/SessionId;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    return-object p2
.end method

.method public isAlice(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
    .locals 0

    .line 70
    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/identity/AuthorId;->compareTo(Lorg/briarproject/bramble/api/Bytes;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public sign(Lorg/briarproject/bramble/api/crypto/SecretKey;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v1, "org.briarproject.briar.introduction/AUTH_SIGN"

    .line 184
    invoke-direct {p0, p1}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->getNonce(Lorg/briarproject/bramble/api/crypto/SecretKey;)[B

    move-result-object p1

    .line 182
    invoke-interface {v0, v1, p1, p2}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->sign(Ljava/lang/String;[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method verifyActivateMac([BLorg/briarproject/bramble/api/crypto/SecretKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v1, "org.briarproject.briar.introduction/ACTIVATE_MAC"

    const/4 v2, 0x0

    new-array v2, v2, [[B

    invoke-interface {v0, p1, v1, p2, v2}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->verifyMac([BLjava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 235
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1
.end method

.method public verifyActivateMac([BLorg/briarproject/briar/introduction/IntroduceeSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 227
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v0

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->macKey:[B

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object p2

    iget-object p2, p2, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->macKey:[B

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->verifyActivateMac([BLorg/briarproject/bramble/api/crypto/SecretKey;)V

    return-void

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Remote MAC key is null"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method verifyAuthMac([BLorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Common;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Common;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object v2, p6

    move-object v3, p7

    move-object v4, p4

    move-object v5, p5

    .line 144
    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->getAuthMacInputs(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Common;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Common;)[B

    move-result-object p3

    .line 146
    iget-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string p5, "org.briarproject.briar.introduction/AUTH_MAC"

    const/4 p6, 0x1

    new-array p6, p6, [[B

    const/4 p7, 0x0

    aput-object p3, p6, p7

    invoke-interface {p4, p1, p5, p2, p6}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->verifyMac([BLjava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1
.end method

.method public verifyAuthMac([BLorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/identity/AuthorId;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 135
    new-instance v2, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v0

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->macKey:[B

    invoke-direct {v2, v0}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    .line 136
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getIntroducer()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object v5

    .line 137
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v0

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v6

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 135
    invoke-virtual/range {v0 .. v7}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->verifyAuthMac([BLorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Common;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/introduction/IntroduceeSession$Common;)V

    return-void
.end method

.method verifySignature(Lorg/briarproject/bramble/api/crypto/SecretKey;[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->getNonce(Lorg/briarproject/bramble/api/crypto/SecretKey;)[B

    move-result-object p1

    .line 200
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v1, "org.briarproject.briar.introduction/AUTH_SIGN"

    invoke-interface {v0, p3, v1, p1, p2}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->verifySignature([BLjava/lang/String;[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1
.end method

.method public verifySignature([BLorg/briarproject/briar/introduction/IntroduceeSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 193
    new-instance v0, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v1

    iget-object v1, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->macKey:[B

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    .line 194
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object p2

    iget-object p2, p2, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;->verifySignature(Lorg/briarproject/bramble/api/crypto/SecretKey;[B[B)V

    return-void
.end method
