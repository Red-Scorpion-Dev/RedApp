.class public Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;
.super Ljava/lang/Object;
.source "AndroidTorPluginFactory.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final BACKOFF_BASE:D = 1.2

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final MAX_IDLE_TIME:I = 0x7530

.field private static final MAX_LATENCY:I = 0x7530

.field private static final MAX_POLLING_INTERVAL:I = 0x927c0

.field private static final MIN_POLLING_INTERVAL:I = 0xea60


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

.field private final batteryManager:Lorg/briarproject/bramble/api/battery/BatteryManager;

.field private final circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final locationUtils:Lorg/briarproject/bramble/api/system/LocationUtils;

.field private final networkManager:Lorg/briarproject/bramble/api/network/NetworkManager;

.field private final resourceProvider:Lorg/briarproject/bramble/api/system/ResourceProvider;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final torSocketFactory:Ljavax/net/SocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;Lorg/briarproject/bramble/api/network/NetworkManager;Lorg/briarproject/bramble/api/system/LocationUtils;Lorg/briarproject/bramble/api/event/EventBus;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/plugin/BackoffFactory;Lorg/briarproject/bramble/api/system/ResourceProvider;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;Lorg/briarproject/bramble/api/battery/BatteryManager;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 63
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->appContext:Landroid/content/Context;

    .line 65
    iput-object p4, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->networkManager:Lorg/briarproject/bramble/api/network/NetworkManager;

    .line 66
    iput-object p5, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->locationUtils:Lorg/briarproject/bramble/api/system/LocationUtils;

    .line 67
    iput-object p6, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 68
    iput-object p7, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->torSocketFactory:Ljavax/net/SocketFactory;

    .line 69
    iput-object p8, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

    .line 70
    iput-object p9, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->resourceProvider:Lorg/briarproject/bramble/api/system/ResourceProvider;

    .line 71
    iput-object p10, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    .line 72
    iput-object p11, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->batteryManager:Lorg/briarproject/bramble/api/battery/BatteryManager;

    .line 73
    iput-object p12, p0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method


# virtual methods
.method public createPlugin(Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;
    .locals 18

    move-object/from16 v0, p0

    .line 91
    invoke-static {}, Lorg/briarproject/bramble/util/AndroidUtils;->getSupportedArchitectures()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "x86"

    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "x86"

    goto :goto_0

    :cond_1
    const-string v4, "armeabi"

    .line 95
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "arm"

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_3

    .line 101
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Tor is not supported on this architecture"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v3

    .line 105
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_pie"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v15, v1

    .line 107
    iget-object v1, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

    const v2, 0xea60

    const v3, 0x927c0

    const-wide v4, 0x3ff3333333333333L    # 1.2

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/briarproject/bramble/api/plugin/BackoffFactory;->createBackoff(IID)Lorg/briarproject/bramble/api/plugin/Backoff;

    move-result-object v13

    .line 109
    new-instance v1, Lorg/briarproject/bramble/plugin/tor/AndroidTorPlugin;

    iget-object v3, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->ioExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->appContext:Landroid/content/Context;

    iget-object v6, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->networkManager:Lorg/briarproject/bramble/api/network/NetworkManager;

    iget-object v7, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->locationUtils:Lorg/briarproject/bramble/api/system/LocationUtils;

    iget-object v8, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->torSocketFactory:Ljavax/net/SocketFactory;

    iget-object v9, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->clock:Lorg/briarproject/bramble/api/system/Clock;

    iget-object v10, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->resourceProvider:Lorg/briarproject/bramble/api/system/ResourceProvider;

    iget-object v11, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    iget-object v12, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->batteryManager:Lorg/briarproject/bramble/api/battery/BatteryManager;

    const/16 v16, 0x7530

    const/16 v17, 0x7530

    move-object v2, v1

    move-object/from16 v14, p1

    invoke-direct/range {v2 .. v17}, Lorg/briarproject/bramble/plugin/tor/AndroidTorPlugin;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;Lorg/briarproject/bramble/api/network/NetworkManager;Lorg/briarproject/bramble/api/system/LocationUtils;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/system/ResourceProvider;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;Lorg/briarproject/bramble/api/battery/BatteryManager;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;Ljava/lang/String;II)V

    .line 113
    iget-object v2, v0, Lorg/briarproject/bramble/plugin/tor/AndroidTorPluginFactory;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-object v1
.end method

.method public getId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 78
    sget-object v0, Lorg/briarproject/bramble/api/plugin/TorConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method

.method public getMaxLatency()I
    .locals 1

    const/16 v0, 0x7530

    return v0
.end method
