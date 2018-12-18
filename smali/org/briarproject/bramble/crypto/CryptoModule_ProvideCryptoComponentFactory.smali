.class public final Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;
.super Ljava/lang/Object;
.source "CryptoModule_ProvideCryptoComponentFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/crypto/CryptoModule;

.field private final passwordBasedKdfProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/ScryptKdf;",
            ">;"
        }
    .end annotation
.end field

.field private final secureRandomProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/SecureRandomProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/SecureRandomProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/ScryptKdf;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    .line 26
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;->secureRandomProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;->passwordBasedKdfProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/SecureRandomProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/ScryptKdf;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;-><init>(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/CryptoComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/SecureRandomProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/ScryptKdf;",
            ">;)",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/system/SecureRandomProvider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    .line 39
    invoke-static {p0, p1, p2}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;->proxyProvideCryptoComponent(Lorg/briarproject/bramble/crypto/CryptoModule;Lorg/briarproject/bramble/api/system/SecureRandomProvider;Ljava/lang/Object;)Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideCryptoComponent(Lorg/briarproject/bramble/crypto/CryptoModule;Lorg/briarproject/bramble/api/system/SecureRandomProvider;Ljava/lang/Object;)Lorg/briarproject/bramble/api/crypto/CryptoComponent;
    .locals 0

    .line 53
    check-cast p2, Lorg/briarproject/bramble/crypto/ScryptKdf;

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/crypto/CryptoModule;->provideCryptoComponent(Lorg/briarproject/bramble/api/system/SecureRandomProvider;Lorg/briarproject/bramble/crypto/ScryptKdf;)Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 53
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;->get()Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/crypto/CryptoComponent;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    iget-object v1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;->secureRandomProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;->passwordBasedKdfProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;->provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    move-result-object v0

    return-object v0
.end method
