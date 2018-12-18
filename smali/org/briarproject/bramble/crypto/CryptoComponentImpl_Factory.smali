.class public final Lorg/briarproject/bramble/crypto/CryptoComponentImpl_Factory;
.super Ljava/lang/Object;
.source "CryptoComponentImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/crypto/CryptoComponentImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final passwordBasedKdfProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/PasswordBasedKdf;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/SecureRandomProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/PasswordBasedKdf;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl_Factory;->secureRandomProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl_Factory;->passwordBasedKdfProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoComponentImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/SecureRandomProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/PasswordBasedKdf;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/CryptoComponentImpl_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl_Factory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newCryptoComponentImpl(Lorg/briarproject/bramble/api/system/SecureRandomProvider;Ljava/lang/Object;)Lorg/briarproject/bramble/crypto/CryptoComponentImpl;
    .locals 1

    .line 43
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;

    check-cast p1, Lorg/briarproject/bramble/crypto/PasswordBasedKdf;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;-><init>(Lorg/briarproject/bramble/api/system/SecureRandomProvider;Lorg/briarproject/bramble/crypto/PasswordBasedKdf;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoComponentImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/SecureRandomProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/PasswordBasedKdf;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/CryptoComponentImpl;"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/system/SecureRandomProvider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/crypto/PasswordBasedKdf;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl;-><init>(Lorg/briarproject/bramble/api/system/SecureRandomProvider;Lorg/briarproject/bramble/crypto/PasswordBasedKdf;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl_Factory;->get()Lorg/briarproject/bramble/crypto/CryptoComponentImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/crypto/CryptoComponentImpl;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl_Factory;->secureRandomProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/crypto/CryptoComponentImpl_Factory;->passwordBasedKdfProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/crypto/CryptoComponentImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoComponentImpl;

    move-result-object v0

    return-object v0
.end method
