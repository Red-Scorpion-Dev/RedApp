.class public final Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;
.super Ljava/lang/Object;
.source "CryptoExecutorModule_ProvideCryptoExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;->module:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;)Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;
    .locals 1

    .line 30
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;-><init>(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 25
    invoke-static {p0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;->proxyProvideCryptoExecutor(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideCryptoExecutor(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule;->provideCryptoExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;->module:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    invoke-static {v0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;->provideInstance(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
