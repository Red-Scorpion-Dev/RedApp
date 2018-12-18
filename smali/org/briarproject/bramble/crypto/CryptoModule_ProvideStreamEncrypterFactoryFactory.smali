.class public final Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;
.super Ljava/lang/Object;
.source "CryptoModule_ProvideStreamEncrypterFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;",
        ">;"
    }
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

.field private final cryptoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/crypto/CryptoModule;

.field private final transportCryptoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/TransportCrypto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/TransportCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    .line 31
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->cryptoProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->transportCryptoProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->cipherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/TransportCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;"
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;-><init>(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/TransportCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;"
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    .line 46
    invoke-static {p0, p1, p2, p3}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->proxyProvideStreamEncrypterFactory(Lorg/briarproject/bramble/crypto/CryptoModule;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideStreamEncrypterFactory(Lorg/briarproject/bramble/crypto/CryptoModule;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            "Lorg/briarproject/bramble/api/crypto/TransportCrypto;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/crypto/CryptoModule;->provideStreamEncrypterFactory(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 64
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->get()Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;
    .locals 4

    .line 38
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    iget-object v1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->cryptoProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->transportCryptoProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->cipherProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    move-result-object v0

    return-object v0
.end method
