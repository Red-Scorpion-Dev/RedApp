.class public final Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;
.super Ljava/lang/Object;
.source "CryptoExecutorModule_ProvideCryptoExecutorServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# instance fields
.field private final lifecycleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoExecutorModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;->module:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    .line 23
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoExecutorModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;)",
            "Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;-><init>(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;Ljavax/inject/Provider;)Ljava/util/concurrent/ExecutorService;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/crypto/CryptoExecutorModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-static {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;->proxyProvideCryptoExecutorService(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideCryptoExecutorService(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule;->provideCryptoExecutorService(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 44
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;->get()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;->module:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    iget-object v1, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;->provideInstance(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;Ljavax/inject/Provider;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
