.class public final Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;
.super Ljava/lang/Object;
.source "NavDrawerControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final dbExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)",
            "Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;"
        }
    .end annotation

    .line 70
    new-instance v6, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newNavDrawerControllerImpl(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/plugin/PluginManager;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/event/EventBus;)Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;
    .locals 7

    .line 84
    new-instance v6, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/plugin/PluginManager;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)",
            "Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;"
        }
    .end annotation

    .line 56
    new-instance v6, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;

    .line 57
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 58
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 59
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/briarproject/bramble/api/plugin/PluginManager;

    .line 60
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 61
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lorg/briarproject/bramble/api/event/EventBus;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/plugin/PluginManager;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-object v6
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->get()Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;
    .locals 5

    .line 42
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;

    move-result-object v0

    return-object v0
.end method
