.class public final Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;
.super Ljava/lang/Object;
.source "SyncModule_ProvideValidationExecutorFactory.java"

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
.field private final cryptoExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/sync/SyncModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/sync/SyncModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;->module:Lorg/briarproject/bramble/sync/SyncModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;->cryptoExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/sync/SyncModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;-><init>(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)Ljava/util/concurrent/Executor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/sync/SyncModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p0, p1}, Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;->proxyProvideValidationExecutor(Lorg/briarproject/bramble/sync/SyncModule;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideValidationExecutor(Lorg/briarproject/bramble/sync/SyncModule;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/sync/SyncModule;->provideValidationExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;->module:Lorg/briarproject/bramble/sync/SyncModule;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;->cryptoExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;->provideInstance(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
