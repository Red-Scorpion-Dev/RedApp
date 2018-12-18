.class public final Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;
.super Ljava/lang/Object;
.source "SystemModule_ProvideScheduledExecutorServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/concurrent/ScheduledExecutorService;",
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

.field private final module:Lorg/briarproject/bramble/system/SystemModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/system/SystemModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/system/SystemModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;->module:Lorg/briarproject/bramble/system/SystemModule;

    .line 23
    iput-object p2, p0, Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/system/SystemModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/system/SystemModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;)",
            "Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;-><init>(Lorg/briarproject/bramble/system/SystemModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/system/SystemModule;Ljavax/inject/Provider;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/system/SystemModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;)",
            "Ljava/util/concurrent/ScheduledExecutorService;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-static {p0, p1}, Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;->proxyProvideScheduledExecutorService(Lorg/briarproject/bramble/system/SystemModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideScheduledExecutorService(Lorg/briarproject/bramble/system/SystemModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/system/SystemModule;->provideScheduledExecutorService(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 44
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;->module:Lorg/briarproject/bramble/system/SystemModule;

    iget-object v1, p0, Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;->provideInstance(Lorg/briarproject/bramble/system/SystemModule;Ljavax/inject/Provider;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
