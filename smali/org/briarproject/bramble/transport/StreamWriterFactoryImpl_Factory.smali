.class public final Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl_Factory;
.super Ljava/lang/Object;
.source "StreamWriterFactoryImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final streamEncrypterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;",
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
            "Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl_Factory;->streamEncrypterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newStreamWriterFactoryImpl(Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;)Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;
    .locals 1

    .line 37
    new-instance v0, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;-><init>(Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;"
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;-><init>(Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl_Factory;->get()Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl_Factory;->streamEncrypterFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;

    move-result-object v0

    return-object v0
.end method
