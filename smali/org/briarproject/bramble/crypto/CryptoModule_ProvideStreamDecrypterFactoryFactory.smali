.class public final Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;
.super Ljava/lang/Object;
.source "CryptoModule_ProvideStreamDecrypterFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;",
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

.field private final module:Lorg/briarproject/bramble/crypto/CryptoModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;->cipherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;-><init>(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;"
        }
    .end annotation

    .line 32
    invoke-static {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;->proxyProvideStreamDecrypterFactory(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideStreamDecrypterFactory(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule;->provideStreamDecrypterFactory(Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;->get()Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    iget-object v1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;->cipherProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;->provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;

    move-result-object v0

    return-object v0
.end method
