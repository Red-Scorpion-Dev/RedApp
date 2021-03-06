.class public final Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;
.super Ljava/lang/Object;
.source "CryptoModule_ProvideKeyAgreementCryptoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyAgreementCryptoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;",
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
            "Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;->keyAgreementCryptoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;-><init>(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;->proxyProvideKeyAgreementCrypto(Lorg/briarproject/bramble/crypto/CryptoModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideKeyAgreementCrypto(Lorg/briarproject/bramble/crypto/CryptoModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule;->provideKeyAgreementCrypto(Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;)Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;->get()Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    iget-object v1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;->keyAgreementCryptoProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;->provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    move-result-object v0

    return-object v0
.end method
