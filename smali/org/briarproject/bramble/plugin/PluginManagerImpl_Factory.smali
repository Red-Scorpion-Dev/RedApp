.class public final Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;
.super Ljava/lang/Object;
.source "PluginManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/plugin/PluginManagerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
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

.field private final ioExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final randomProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
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

.field private final transportPropertyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/security/SecureRandom;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->schedulerProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p4, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->pluginConfigProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p5, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->connectionManagerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p6, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->connectionRegistryProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p7, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p8, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p9, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->randomProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p10, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/security/SecureRandom;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;"
        }
    .end annotation

    .line 115
    new-instance v11, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static newPluginManagerImpl(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/plugin/PluginConfig;Lorg/briarproject/bramble/api/plugin/ConnectionManager;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/plugin/PluginManagerImpl;
    .locals 12

    .line 139
    new-instance v11, Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/plugin/PluginConfig;Lorg/briarproject/bramble/api/plugin/ConnectionManager;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v11
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/PluginManagerImpl;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/security/SecureRandom;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/bramble/plugin/PluginManagerImpl;"
        }
    .end annotation

    .line 91
    new-instance v11, Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    .line 92
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 93
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 94
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/api/event/EventBus;

    .line 95
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/briarproject/bramble/api/plugin/PluginConfig;

    .line 96
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    .line 97
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 98
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 99
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    .line 100
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/security/SecureRandom;

    .line 101
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/briarproject/bramble/api/system/Clock;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/plugin/PluginConfig;Lorg/briarproject/bramble/api/plugin/ConnectionManager;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v11
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->get()Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/plugin/PluginManagerImpl;
    .locals 10

    .line 67
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->schedulerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->pluginConfigProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->connectionManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->connectionRegistryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->randomProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v9}, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    move-result-object v0

    return-object v0
.end method
