.class public final Lorg/briarproject/bramble/crypto/CryptoExecutorModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "CryptoExecutorModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final cryptoExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
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
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_EagerSingletons_MembersInjector;->cryptoExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectCryptoExecutor(Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;->cryptoExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_EagerSingletons_MembersInjector;->cryptoExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, v0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_EagerSingletons_MembersInjector;->injectCryptoExecutor(Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
