.class public Lorg/briarproject/bramble/crypto/CryptoModule;
.super Ljava/lang/Object;
.source "CryptoModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getSecureRandom(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Ljava/security/SecureRandom;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 68
    invoke-interface {p1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    return-object p1
.end method

.method provideAuthenticatedCipher()Lorg/briarproject/bramble/crypto/AuthenticatedCipher;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 24
    new-instance v0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;

    invoke-direct {v0}, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;-><init>()V

    return-object v0
.end method

.method provideCryptoComponent(Lorg/briarproject/bramble/api/system/SecureRandomProvider;Lorg/briarproject/bramble/crypto/ScryptKdf;)Lorg/briarproject/bramble/api/crypto/CryptoComponent;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 32
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;-><init>(Lorg/briarproject/bramble/api/system/SecureRandomProvider;Lorg/briarproject/bramble/crypto/PasswordBasedKdf;)V

    return-object v0
.end method

.method provideKeyAgreementCrypto(Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;)Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method providePasswordStrengthEstimator()Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/crypto/PasswordStrengthEstimatorImpl;

    invoke-direct {v0}, Lorg/briarproject/bramble/crypto/PasswordStrengthEstimatorImpl;-><init>()V

    return-object v0
.end method

.method provideStreamDecrypterFactory(Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method provideStreamEncrypterFactory(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            "Lorg/briarproject/bramble/api/crypto/TransportCrypto;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;-><init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method provideTransportCrypto(Lorg/briarproject/bramble/crypto/TransportCryptoImpl;)Lorg/briarproject/bramble/api/crypto/TransportCrypto;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
