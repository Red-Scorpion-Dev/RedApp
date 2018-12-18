.class public final Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;
.super Ljava/lang/Object;
.source "StreamEncrypterFactoryImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;->transportCryptoProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;->cipherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/TransportCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newStreamEncrypterFactoryImpl(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            "Lorg/briarproject/bramble/api/crypto/TransportCrypto;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;"
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;-><init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/TransportCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;

    .line 40
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;-><init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;->get()Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;->transportCryptoProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;->cipherProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/StreamEncrypterFactoryImpl;

    move-result-object v0

    return-object v0
.end method
