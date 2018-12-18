.class public final Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;
.super Ljava/lang/Object;
.source "CryptoModule_GetSecureRandomFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/security/SecureRandom;",
        ">;"
    }
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;->cryptoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;-><init>(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Ljava/security/SecureRandom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;)",
            "Ljava/security/SecureRandom;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-static {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;->proxyGetSecureRandom(Lorg/briarproject/bramble/crypto/CryptoModule;Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetSecureRandom(Lorg/briarproject/bramble/crypto/CryptoModule;Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Ljava/security/SecureRandom;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoModule;->getSecureRandom(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Ljava/security/SecureRandom;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/SecureRandom;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;->get()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/security/SecureRandom;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    iget-object v1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;->cryptoProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;->provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method
