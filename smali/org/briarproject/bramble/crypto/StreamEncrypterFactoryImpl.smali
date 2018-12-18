.class Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;
.super Ljava/lang/Object;
.source "StreamEncrypterFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final cipherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;"
        }
    .end annotation
.end field

.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

.field private final transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            "Lorg/briarproject/bramble/api/crypto/TransportCrypto;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 34
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;->transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    .line 35
    iput-object p3, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;->cipherProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public createContactExchangeStreamDecrypter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/crypto/StreamEncrypter;
    .locals 10

    .line 56
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;->cipherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    const/16 v0, 0x18

    .line 57
    new-array v7, v0, [B

    .line 58
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 59
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->generateSecretKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v9

    .line 60
    new-instance v0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;-><init>(Ljava/io/OutputStream;Lorg/briarproject/bramble/crypto/AuthenticatedCipher;J[B[BLorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;)V

    return-object v0
.end method

.method public createStreamEncrypter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Lorg/briarproject/bramble/api/crypto/StreamEncrypter;
    .locals 13

    .line 41
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;->cipherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    .line 42
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/StreamContext;->getStreamNumber()J

    move-result-wide v10

    const/16 v0, 0x10

    .line 43
    new-array v0, v0, [B

    .line 44
    iget-object v4, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;->transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/StreamContext;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v6

    const/4 v7, 0x4

    move-object v5, v0

    move-wide v8, v10

    invoke-interface/range {v4 .. v9}, Lorg/briarproject/bramble/api/crypto/TransportCrypto;->encodeTag([BLorg/briarproject/bramble/api/crypto/SecretKey;IJ)V

    const/16 v1, 0x18

    .line 46
    new-array v7, v1, [B

    .line 47
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 48
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->generateSecretKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v9

    .line 49
    new-instance v12, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;

    .line 50
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/StreamContext;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v8

    move-object v1, v12

    move-object v2, p1

    move-wide v4, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;-><init>(Ljava/io/OutputStream;Lorg/briarproject/bramble/crypto/AuthenticatedCipher;J[B[BLorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;)V

    return-object v12
.end method
