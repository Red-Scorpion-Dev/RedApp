.class public final Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;
.super Ljava/lang/Object;
.source "TransportModule_ProvideStreamWriterFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/transport/StreamWriterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/transport/TransportModule;

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
.method public constructor <init>(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/transport/TransportModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;->module:Lorg/briarproject/bramble/transport/TransportModule;

    .line 23
    iput-object p2, p0, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;->streamEncrypterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/transport/TransportModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;-><init>(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/transport/StreamWriterFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/transport/TransportModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/api/transport/StreamWriterFactory;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    invoke-static {p0, p1}, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;->proxyProvideStreamWriterFactory(Lorg/briarproject/bramble/transport/TransportModule;Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;)Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideStreamWriterFactory(Lorg/briarproject/bramble/transport/TransportModule;Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;)Lorg/briarproject/bramble/api/transport/StreamWriterFactory;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/transport/TransportModule;->provideStreamWriterFactory(Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;)Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 44
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;->get()Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/transport/StreamWriterFactory;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;->module:Lorg/briarproject/bramble/transport/TransportModule;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;->streamEncrypterFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;->provideInstance(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    move-result-object v0

    return-object v0
.end method
