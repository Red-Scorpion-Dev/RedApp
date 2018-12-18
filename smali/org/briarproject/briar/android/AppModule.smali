.class public Lorg/briarproject/briar/android/AppModule;
.super Ljava/lang/Object;
.source "AppModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lorg/briarproject/briar/android/viewmodel/ViewModelModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/AppModule$EagerSingletons;
    }
.end annotation


# instance fields
.field private final application:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule;->application:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method provideAndroidNotificationManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)Lorg/briarproject/briar/api/android/AndroidNotificationManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 182
    invoke-interface {p1, p3}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V

    .line 183
    invoke-interface {p2, p3}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-object p3
.end method

.method provideDatabaseConfig(Landroid/app/Application;)Lorg/briarproject/bramble/api/db/DatabaseConfig;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 92
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 93
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 94
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "db"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 95
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "key"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 96
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 97
    new-instance v0, Lorg/briarproject/briar/android/AndroidDatabaseConfig;

    invoke-direct {v0, v1, p1}, Lorg/briarproject/briar/android/AndroidDatabaseConfig;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v0
.end method

.method provideDevConfig(Landroid/app/Application;Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/api/reporting/DevConfig;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 146
    new-instance v0, Lorg/briarproject/briar/android/AppModule$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/briarproject/briar/android/AppModule$2;-><init>(Lorg/briarproject/briar/android/AppModule;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Landroid/app/Application;)V

    return-object v0
.end method

.method provideDozeWatchdog(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Lorg/briarproject/briar/api/android/DozeWatchdog;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 207
    new-instance v0, Lorg/briarproject/briar/android/DozeWatchdogImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/AppModule;->application:Landroid/app/Application;

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/DozeWatchdogImpl;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V

    return-object v0
.end method

.method provideLockManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/android/account/LockManagerImpl;)Lorg/briarproject/briar/api/android/LockManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 216
    invoke-interface {p1, p3}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V

    .line 217
    invoke-interface {p2, p3}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-object p3
.end method

.method provideNetworkUsageLogger(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Lorg/briarproject/briar/android/NetworkUsageLogger;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 199
    new-instance v0, Lorg/briarproject/briar/android/NetworkUsageLogger;

    invoke-direct {v0}, Lorg/briarproject/briar/android/NetworkUsageLogger;-><init>()V

    .line 200
    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V

    return-object v0
.end method

.method providePluginConfig(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/system/AndroidExecutor;Ljava/security/SecureRandom;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/plugin/BackoffFactory;Landroid/app/Application;Lorg/briarproject/bramble/api/network/NetworkManager;Lorg/briarproject/bramble/api/system/LocationUtils;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/ResourceProvider;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;Lorg/briarproject/bramble/api/battery/BatteryManager;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/api/plugin/PluginConfig;
    .locals 16
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Lorg/briarproject/bramble/api/system/Scheduler;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 110
    invoke-virtual/range {p7 .. p7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    .line 111
    new-instance v14, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v13

    move-object/from16 v4, p4

    move-object/from16 v5, p10

    move-object/from16 v6, p14

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/system/AndroidExecutor;Landroid/content/Context;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/plugin/BackoffFactory;)V

    .line 114
    new-instance v15, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;

    move-object v0, v15

    move-object/from16 v2, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    invoke-direct/range {v0 .. v12}, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;Lorg/briarproject/bramble/api/network/NetworkManager;Lorg/briarproject/bramble/api/system/LocationUtils;Lorg/briarproject/bramble/api/event/EventBus;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/plugin/BackoffFactory;Lorg/briarproject/bramble/api/system/ResourceProvider;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;Lorg/briarproject/bramble/api/battery/BatteryManager;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 118
    new-instance v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPluginFactory;

    move-object/from16 v2, p6

    move-object/from16 v3, p10

    invoke-direct {v0, v1, v3, v2, v13}, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPluginFactory;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/plugin/BackoffFactory;Landroid/content/Context;)V

    const/4 v1, 0x3

    .line 120
    new-array v1, v1, [Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    const/4 v2, 0x1

    aput-object v15, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 122
    new-instance v1, Lorg/briarproject/briar/android/AppModule$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lorg/briarproject/briar/android/AppModule$1;-><init>(Lorg/briarproject/briar/android/AppModule;Ljava/util/Collection;)V

    return-object v1
.end method

.method provideRecentEmoji(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/android/RecentEmojiImpl;)Lcom/vanniktech/emoji/RecentEmoji;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 225
    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerClient(Lorg/briarproject/bramble/api/sync/Client;)V

    return-object p2
.end method

.method provideScreenFilterMonitor(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;)Lorg/briarproject/briar/api/android/ScreenFilterMonitor;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 192
    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V

    return-object p2
.end method

.method provideSharedPreferences(Landroid/app/Application;)Landroid/content/SharedPreferences;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "db"

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method providesApplication()Landroid/app/Application;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule;->application:Landroid/app/Application;

    return-object v0
.end method
