.class public final Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl_Factory;
.super Ljava/lang/Object;
.source "StreamReaderFactoryImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final streamDecrypterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;",
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
            "Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl_Factory;->streamDecrypterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newStreamReaderFactoryImpl(Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;)Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;
    .locals 1

    .line 37
    new-instance v0, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;-><init>(Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;"
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;-><init>(Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl_Factory;->get()Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl_Factory;->streamDecrypterFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;

    move-result-object v0

    return-object v0
.end method
