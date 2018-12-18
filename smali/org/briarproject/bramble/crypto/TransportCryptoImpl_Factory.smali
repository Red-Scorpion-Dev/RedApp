.class public final Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;
.super Ljava/lang/Object;
.source "TransportCryptoImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/crypto/TransportCryptoImpl;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newTransportCryptoImpl(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/crypto/TransportCryptoImpl;
    .locals 1

    .line 33
    new-instance v0, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;-><init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/TransportCryptoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/TransportCryptoImpl;"
        }
    .end annotation

    .line 25
    new-instance v0, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;-><init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;->get()Lorg/briarproject/bramble/crypto/TransportCryptoImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/crypto/TransportCryptoImpl;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/TransportCryptoImpl;

    move-result-object v0

    return-object v0
.end method
