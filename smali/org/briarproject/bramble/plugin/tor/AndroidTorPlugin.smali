.class Lorg/briarproject/bramble/plugin/tor/AndroidTorPlugin;
.super Lorg/briarproject/bramble/plugin/tor/TorPlugin;
.source "AndroidTorPlugin.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final WAKE_LOCK_TAG:Ljava/lang/String; = "LocationManagerService"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final wakeLock:Lorg/briarproject/bramble/util/RenewableWakeLock;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;Lorg/briarproject/bramble/api/network/NetworkManager;Lorg/briarproject/bramble/api/system/LocationUtils;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/system/ResourceProvider;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;Lorg/briarproject/bramble/api/battery/BatteryManager;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;Ljava/lang/String;II)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v14, p3

    const-string v0, "tor"

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v14, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move/from16 v12, p14

    move/from16 v13, p15

    move-object v15, v14

    move-object/from16 v14, v16

    .line 49
    invoke-direct/range {v0 .. v14}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/network/NetworkManager;Lorg/briarproject/bramble/api/system/LocationUtils;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/system/ResourceProvider;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;Lorg/briarproject/bramble/api/battery/BatteryManager;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;Ljava/lang/String;IILjava/io/File;)V

    move-object v1, v15

    .line 53
    iput-object v1, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPlugin;->appContext:Landroid/content/Context;

    const-string v2, "power"

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    .line 57
    new-instance v2, Lorg/briarproject/bramble/util/RenewableWakeLock;

    const/4 v3, 0x1

    const-string v4, "LocationManagerService"

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object/from16 p3, v2

    move-object/from16 p4, v1

    move-object/from16 p5, p2

    move/from16 p6, v3

    move-object/from16 p7, v4

    move-wide/from16 p8, v5

    move-object/from16 p10, v7

    invoke-direct/range {p3 .. p10}, Lorg/briarproject/bramble/util/RenewableWakeLock;-><init>(Landroid/os/PowerManager;Ljava/util/concurrent/ScheduledExecutorService;ILjava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    iput-object v2, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPlugin;->wakeLock:Lorg/briarproject/bramble/util/RenewableWakeLock;

    return-void

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method protected enableNetwork(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPlugin;->running:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPlugin;->wakeLock:Lorg/briarproject/bramble/util/RenewableWakeLock;

    invoke-virtual {v0}, Lorg/briarproject/bramble/util/RenewableWakeLock;->acquire()V

    .line 81
    :cond_1
    invoke-super {p0, p1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->enableNetwork(Z)V

    if-nez p1, :cond_2

    .line 82
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPlugin;->wakeLock:Lorg/briarproject/bramble/util/RenewableWakeLock;

    invoke-virtual {p1}, Lorg/briarproject/bramble/util/RenewableWakeLock;->release()V

    :cond_2
    return-void
.end method

.method protected getLastUpdateTime()J
    .locals 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPlugin;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPlugin;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 71
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected getProcessId()I
    .locals 1

    .line 63
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 1

    .line 87
    invoke-super {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->stop()V

    .line 88
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPlugin;->wakeLock:Lorg/briarproject/bramble/util/RenewableWakeLock;

    invoke-virtual {v0}, Lorg/briarproject/bramble/util/RenewableWakeLock;->release()V

    return-void
.end method
