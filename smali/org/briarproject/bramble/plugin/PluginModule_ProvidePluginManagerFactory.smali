.class public final Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;
.super Ljava/lang/Object;
.source "PluginModule_ProvidePluginManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/plugin/PluginManager;",
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

.field private final module:Lorg/briarproject/bramble/plugin/PluginModule;

.field private final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/PluginManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/plugin/PluginModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/PluginManagerImpl;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;->module:Lorg/briarproject/bramble/plugin/PluginModule;

    .line 26
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;->pluginManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/plugin/PluginModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/PluginManagerImpl;",
            ">;)",
            "Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;-><init>(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/plugin/PluginManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/plugin/PluginModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/PluginManagerImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    .line 39
    invoke-static {p0, p1, p2}, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;->proxyProvidePluginManager(Lorg/briarproject/bramble/plugin/PluginModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Ljava/lang/Object;)Lorg/briarproject/bramble/api/plugin/PluginManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidePluginManager(Lorg/briarproject/bramble/plugin/PluginModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Ljava/lang/Object;)Lorg/briarproject/bramble/api/plugin/PluginManager;
    .locals 0

    .line 53
    check-cast p2, Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/plugin/PluginModule;->providePluginManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/plugin/PluginManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 53
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/plugin/PluginManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;->get()Lorg/briarproject/bramble/api/plugin/PluginManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/plugin/PluginManager;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;->module:Lorg/briarproject/bramble/plugin/PluginModule;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;->provideInstance(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/plugin/PluginManager;

    move-result-object v0

    return-object v0
.end method
