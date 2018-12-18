.class public Lorg/briarproject/bramble/transport/TransportModule;
.super Ljava/lang/Object;
.source "TransportModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideKeyManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/transport/KeyManagerImpl;)Lorg/briarproject/bramble/api/transport/KeyManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 47
    invoke-interface {p1, p3}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V

    .line 48
    invoke-interface {p2, p3}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-object p3
.end method

.method provideStreamReaderFactory(Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;)Lorg/briarproject/bramble/api/transport/StreamReaderFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 28
    new-instance v0, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;-><init>(Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;)V

    return-object v0
.end method

.method provideStreamWriterFactory(Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;)Lorg/briarproject/bramble/api/transport/StreamWriterFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 34
    new-instance v0, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;-><init>(Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;)V

    return-object v0
.end method

.method provideTransportKeyManagerFactory(Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;)Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
