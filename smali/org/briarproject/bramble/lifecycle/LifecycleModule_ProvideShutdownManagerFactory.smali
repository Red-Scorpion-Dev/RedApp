.class public final Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideShutdownManagerFactory;
.super Ljava/lang/Object;
.source "LifecycleModule_ProvideShutdownManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/lifecycle/LifecycleModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/lifecycle/LifecycleModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideShutdownManagerFactory;->module:Lorg/briarproject/bramble/lifecycle/LifecycleModule;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/lifecycle/LifecycleModule;)Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideShutdownManagerFactory;
    .locals 1

    .line 30
    new-instance v0, Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideShutdownManagerFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideShutdownManagerFactory;-><init>(Lorg/briarproject/bramble/lifecycle/LifecycleModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/lifecycle/LifecycleModule;)Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;
    .locals 0

    .line 26
    invoke-static {p0}, Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideShutdownManagerFactory;->proxyProvideShutdownManager(Lorg/briarproject/bramble/lifecycle/LifecycleModule;)Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideShutdownManager(Lorg/briarproject/bramble/lifecycle/LifecycleModule;)Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/briarproject/bramble/lifecycle/LifecycleModule;->provideShutdownManager()Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideShutdownManagerFactory;->get()Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideShutdownManagerFactory;->module:Lorg/briarproject/bramble/lifecycle/LifecycleModule;

    invoke-static {v0}, Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideShutdownManagerFactory;->provideInstance(Lorg/briarproject/bramble/lifecycle/LifecycleModule;)Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

    move-result-object v0

    return-object v0
.end method
