.class Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;
.super Ljava/lang/Object;
.source "KeyAgreementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol$Callbacks;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final alice:Z

.field private final callbacks:Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol$Callbacks;

.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

.field private final keyAgreementCrypto:Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

.field private final ourKeyPair:Lorg/briarproject/bramble/api/crypto/KeyPair;

.field private final ourPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

.field private final payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

.field private final theirPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

.field private final transport:Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol$Callbacks;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;Lorg/briarproject/bramble/api/keyagreement/Payload;Lorg/briarproject/bramble/api/keyagreement/Payload;Lorg/briarproject/bramble/api/crypto/KeyPair;Z)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->callbacks:Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol$Callbacks;

    .line 80
    iput-object p2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 81
    iput-object p3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->keyAgreementCrypto:Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    .line 82
    iput-object p4, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    .line 83
    iput-object p5, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->transport:Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;

    .line 84
    iput-object p6, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->theirPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    .line 85
    iput-object p7, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->ourPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    .line 86
    iput-object p8, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->ourKeyPair:Lorg/briarproject/bramble/api/crypto/KeyPair;

    .line 87
    iput-boolean p9, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->alice:Z

    return-void
.end method

.method private deriveSharedSecret(Lorg/briarproject/bramble/api/crypto/PublicKey;)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/keyagreement/AbortException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->ourKeyPair:Lorg/briarproject/bramble/api/crypto/KeyPair;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPublic()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 148
    invoke-interface {p1}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x3

    .line 149
    new-array v2, v2, [[B

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    aput-object v4, v2, v6

    iget-boolean v4, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->alice:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->alice:Z

    if-eqz v4, :cond_1

    move-object v0, v1

    :cond_1
    aput-object v0, v2, v3

    .line 154
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v1, "org.briarproject.bramble.keyagreement/SHARED_SECRET"

    iget-object v3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->ourKeyPair:Lorg/briarproject/bramble/api/crypto/KeyPair;

    invoke-interface {v0, v1, p1, v3, v2}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->deriveSharedSecret(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/KeyPair;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 157
    new-instance v0, Lorg/briarproject/bramble/keyagreement/AbortException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/keyagreement/AbortException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private receiveConfirm(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/PublicKey;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/keyagreement/AbortException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->transport:Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;

    invoke-virtual {v0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->receiveConfirm()[B

    move-result-object v0

    .line 174
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->keyAgreementCrypto:Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    iget-object v3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->theirPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    .line 175
    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;->encode(Lorg/briarproject/bramble/api/keyagreement/Payload;)[B

    move-result-object v3

    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    iget-object v4, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->ourPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    .line 176
    invoke-interface {v2, v4}, Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;->encode(Lorg/briarproject/bramble/api/keyagreement/Payload;)[B

    move-result-object v4

    iget-object v6, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->ourKeyPair:Lorg/briarproject/bramble/api/crypto/KeyPair;

    iget-boolean v7, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->alice:Z

    iget-boolean v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->alice:Z

    xor-int/lit8 v8, v2, 0x1

    move-object v2, p1

    move-object v5, p2

    .line 174
    invoke-interface/range {v1 .. v8}, Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;->deriveConfirmationRecord(Lorg/briarproject/bramble/api/crypto/SecretKey;[B[BLorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/KeyPair;ZZ)[B

    move-result-object p1

    .line 179
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/keyagreement/AbortException;

    invoke-direct {p1}, Lorg/briarproject/bramble/keyagreement/AbortException;-><init>()V

    throw p1
.end method

.method private receiveKey()Lorg/briarproject/bramble/api/crypto/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/keyagreement/AbortException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->transport:Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;

    invoke-virtual {v0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->receiveKey()[B

    move-result-object v0

    .line 131
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->callbacks:Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol$Callbacks;

    invoke-interface {v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol$Callbacks;->initialRecordReceived()V

    .line 132
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->getAgreementKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;

    move-result-object v1

    .line 134
    :try_start_0
    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/crypto/KeyParser;->parsePublicKey([B)Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->keyAgreementCrypto:Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;->deriveKeyCommitment(Lorg/briarproject/bramble/api/crypto/PublicKey;)[B

    move-result-object v1

    .line 136
    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->theirPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/keyagreement/Payload;->getCommitment()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/keyagreement/AbortException;

    invoke-direct {v0}, Lorg/briarproject/bramble/keyagreement/AbortException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    new-instance v0, Lorg/briarproject/bramble/keyagreement/AbortException;

    invoke-direct {v0}, Lorg/briarproject/bramble/keyagreement/AbortException;-><init>()V

    throw v0
.end method

.method private sendAbort(Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->transport:Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->sendAbort(Z)V

    return-void
.end method

.method private sendConfirm(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/PublicKey;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->keyAgreementCrypto:Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->theirPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    .line 164
    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;->encode(Lorg/briarproject/bramble/api/keyagreement/Payload;)[B

    move-result-object v2

    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    iget-object v3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->ourPayload:Lorg/briarproject/bramble/api/keyagreement/Payload;

    .line 165
    invoke-interface {v1, v3}, Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;->encode(Lorg/briarproject/bramble/api/keyagreement/Payload;)[B

    move-result-object v3

    iget-object v5, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->ourKeyPair:Lorg/briarproject/bramble/api/crypto/KeyPair;

    iget-boolean v6, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->alice:Z

    iget-boolean v7, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->alice:Z

    move-object v1, p1

    move-object v4, p2

    .line 163
    invoke-interface/range {v0 .. v7}, Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;->deriveConfirmationRecord(Lorg/briarproject/bramble/api/crypto/SecretKey;[B[BLorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/KeyPair;ZZ)[B

    move-result-object p1

    .line 168
    iget-object p2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->transport:Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;

    invoke-virtual {p2, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->sendConfirm([B)V

    return-void
.end method

.method private sendKey()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->transport:Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;

    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->ourKeyPair:Lorg/briarproject/bramble/api/crypto/KeyPair;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPublic()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->sendKey([B)V

    return-void
.end method


# virtual methods
.method perform()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/keyagreement/AbortException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    :try_start_0
    iget-boolean v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->alice:Z

    if-eqz v1, :cond_0

    .line 101
    invoke-direct {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->sendKey()V

    .line 104
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->callbacks:Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol$Callbacks;

    invoke-interface {v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol$Callbacks;->connectionWaiting()V

    .line 105
    invoke-direct {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->receiveKey()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v1

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->receiveKey()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v1

    .line 108
    invoke-direct {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->sendKey()V

    .line 110
    :goto_0
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->deriveSharedSecret(Lorg/briarproject/bramble/api/crypto/PublicKey;)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v2

    .line 111
    iget-boolean v3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->alice:Z

    if-eqz v3, :cond_1

    .line 112
    invoke-direct {p0, v2, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->sendConfirm(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/PublicKey;)V

    .line 113
    invoke-direct {p0, v2, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->receiveConfirm(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/PublicKey;)V

    goto :goto_1

    .line 115
    :cond_1
    invoke-direct {p0, v2, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->receiveConfirm(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/PublicKey;)V

    .line 116
    invoke-direct {p0, v2, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->sendConfirm(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/PublicKey;)V

    .line 118
    :goto_1
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v3, "org.briarproject.bramble.keyagreement/MASTER_SECRET"

    new-array v4, v0, [[B

    invoke-interface {v1, v3, v2, v4}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->deriveKey(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v1
    :try_end_0
    .catch Lorg/briarproject/bramble/keyagreement/AbortException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 120
    invoke-virtual {v1}, Lorg/briarproject/bramble/keyagreement/AbortException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementProtocol;->sendAbort(Z)V

    .line 121
    throw v1
.end method
