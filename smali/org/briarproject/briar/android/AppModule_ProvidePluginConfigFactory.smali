.class public final Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvidePluginConfigFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/plugin/PluginConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final androidExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final appProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final backoffFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/BackoffFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final batteryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/battery/BatteryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final circumventionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
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

.field private final locationUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/LocationUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/AppModule;

.field private final networkManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/network/NetworkManager;",
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

.field private final resourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/ResourceProvider;",
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

.field private final torSocketFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/security/SecureRandom;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/BackoffFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/network/NetworkManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/LocationUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/ResourceProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/battery/BatteryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->module:Lorg/briarproject/briar/android/AppModule;

    .line 75
    iput-object p2, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->ioExecutorProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p3, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->schedulerProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p4, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->androidExecutorProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p5, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->randomProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p6, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->torSocketFactoryProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p7, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->backoffFactoryProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p8, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->appProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p9, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->networkManagerProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p10, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->locationUtilsProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p11, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 85
    iput-object p12, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->resourceProvider:Ljavax/inject/Provider;

    .line 86
    iput-object p13, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->circumventionProvider:Ljavax/inject/Provider;

    .line 87
    iput-object p14, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->batteryManagerProvider:Ljavax/inject/Provider;

    .line 88
    iput-object p15, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/security/SecureRandom;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/BackoffFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/network/NetworkManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/LocationUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/ResourceProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/battery/BatteryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;"
        }
    .end annotation

    .line 161
    new-instance v16, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;-><init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v16
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/plugin/PluginConfig;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/security/SecureRandom;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/BackoffFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/network/NetworkManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/LocationUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/ResourceProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/battery/BatteryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/bramble/api/plugin/PluginConfig;"
        }
    .end annotation

    .line 129
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 130
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 131
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    .line 132
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/SecureRandom;

    .line 133
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/SocketFactory;

    .line 134
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/briarproject/bramble/api/plugin/BackoffFactory;

    .line 135
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Application;

    .line 136
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/briarproject/bramble/api/network/NetworkManager;

    .line 137
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/briarproject/bramble/api/system/LocationUtils;

    .line 138
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/briarproject/bramble/api/event/EventBus;

    .line 139
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/briarproject/bramble/api/system/ResourceProvider;

    .line 140
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    .line 141
    invoke-interface/range {p13 .. p13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/briarproject/bramble/api/battery/BatteryManager;

    .line 142
    invoke-interface/range {p14 .. p14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/briarproject/bramble/api/system/Clock;

    move-object p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    .line 127
    invoke-static/range {p0 .. p14}, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->proxyProvidePluginConfig(Lorg/briarproject/briar/android/AppModule;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/system/AndroidExecutor;Ljava/security/SecureRandom;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/plugin/BackoffFactory;Landroid/app/Application;Lorg/briarproject/bramble/api/network/NetworkManager;Lorg/briarproject/bramble/api/system/LocationUtils;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/ResourceProvider;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;Lorg/briarproject/bramble/api/battery/BatteryManager;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/api/plugin/PluginConfig;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvidePluginConfig(Lorg/briarproject/briar/android/AppModule;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/system/AndroidExecutor;Ljava/security/SecureRandom;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/plugin/BackoffFactory;Landroid/app/Application;Lorg/briarproject/bramble/api/network/NetworkManager;Lorg/briarproject/bramble/api/system/LocationUtils;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/ResourceProvider;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;Lorg/briarproject/bramble/api/battery/BatteryManager;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/api/plugin/PluginConfig;
    .locals 0

    .line 196
    invoke-virtual/range {p0 .. p14}, Lorg/briarproject/briar/android/AppModule;->providePluginConfig(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/system/AndroidExecutor;Ljava/security/SecureRandom;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/plugin/BackoffFactory;Landroid/app/Application;Lorg/briarproject/bramble/api/network/NetworkManager;Lorg/briarproject/bramble/api/system/LocationUtils;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/ResourceProvider;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;Lorg/briarproject/bramble/api/battery/BatteryManager;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/api/plugin/PluginConfig;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 195
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/plugin/PluginConfig;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->get()Lorg/briarproject/bramble/api/plugin/PluginConfig;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/plugin/PluginConfig;
    .locals 15

    .line 93
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->module:Lorg/briarproject/briar/android/AppModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->ioExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->schedulerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->androidExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->randomProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->torSocketFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->backoffFactoryProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->appProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->networkManagerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->locationUtilsProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->resourceProvider:Ljavax/inject/Provider;

    iget-object v12, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->circumventionProvider:Ljavax/inject/Provider;

    iget-object v13, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->batteryManagerProvider:Ljavax/inject/Provider;

    iget-object v14, p0, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v14}, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/plugin/PluginConfig;

    move-result-object v0

    return-object v0
.end method
