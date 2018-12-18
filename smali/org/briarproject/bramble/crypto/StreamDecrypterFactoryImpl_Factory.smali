.class public final Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl_Factory;
.super Ljava/lang/Object;
.source "StreamDecrypterFactoryImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl_Factory;->cipherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newStreamDecrypterFactoryImpl(Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl_Factory;->get()Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl_Factory;->cipherProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;

    move-result-object v0

    return-object v0
.end method
