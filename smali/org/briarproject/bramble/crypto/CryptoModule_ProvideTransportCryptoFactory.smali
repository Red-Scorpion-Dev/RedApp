.class public final Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;
.super Ljava/lang/Object;
.source "CryptoModule_ProvideTransportCryptoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/crypto/TransportCrypto;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/crypto/CryptoModule;

.field private final transportCryptoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/TransportCryptoImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/TransportCryptoImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;->transportCryptoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/TransportCryptoImpl;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;-><init>(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/TransportCrypto;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/TransportCryptoImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/crypto/TransportCrypto;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;->proxyProvideTransportCrypto(Lorg/briarproject/bramble/crypto/CryptoModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideTransportCrypto(Lorg/briarproject/bramble/crypto/CryptoModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/crypto/TransportCrypto;
    .locals 0

    .line 41
    check-cast p1, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule;->provideTransportCrypto(Lorg/briarproject/bramble/crypto/TransportCryptoImpl;)Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;->get()Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/crypto/TransportCrypto;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    iget-object v1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;->transportCryptoProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;->provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    move-result-object v0

    return-object v0
.end method
