.class abstract Lorg/briarproject/bramble/plugin/tor/TorPlugin;
.super Ljava/lang/Object;
.source "TorPlugin.java"

# interfaces
.implements Lnet/freehaven/tor/control/EventHandler;
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final COOKIE_POLLING_INTERVAL_MS:I = 0xc8

.field private static final COOKIE_TIMEOUT_MS:I = 0xbb8

.field private static final EVENTS:[Ljava/lang/String;

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final ONION_V2:Ljava/util/regex/Pattern;

.field private static final ONION_V3:Ljava/util/regex/Pattern;

.field private static final OWNER:Ljava/lang/String; = "__OwningControllerProcess"


# instance fields
.field private final architecture:Ljava/lang/String;

.field private final backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

.field private final batteryManager:Lorg/briarproject/bramble/api/battery/BatteryManager;

.field private final callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

.field private final circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final configFile:Ljava/io/File;

.field private final connectionStatus:Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;

.field private final connectionStatusExecutor:Ljava/util/concurrent/Executor;

.field private volatile controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

.field private volatile controlSocket:Ljava/net/Socket;

.field private final cookieFile:Ljava/io/File;

.field private final doneFile:Ljava/io/File;

.field private final geoIpFile:Ljava/io/File;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final locationUtils:Lorg/briarproject/bramble/api/system/LocationUtils;

.field private final maxIdleTime:I

.field private final maxLatency:I

.field private final networkManager:Lorg/briarproject/bramble/api/network/NetworkManager;

.field private final obfs4File:Ljava/io/File;

.field private final resourceProvider:Lorg/briarproject/bramble/api/system/ResourceProvider;

.field protected volatile running:Z

.field private volatile settings:Lorg/briarproject/bramble/api/settings/Settings;

.field private volatile socket:Ljava/net/ServerSocket;

.field private final socketTimeout:I

.field private final torDirectory:Ljava/io/File;

.field private final torFile:Ljava/io/File;

.field private final torSocketFactory:Ljavax/net/SocketFactory;

.field private final used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    const-class v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const/4 v0, 0x6

    .line 87
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CIRC"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ORCONN"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "HS_DESC"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "NOTICE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "WARN"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ERR"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->EVENTS:[Ljava/lang/String;

    const-string v0, "[a-z2-7]{16}"

    .line 93
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->ONION_V2:Ljava/util/regex/Pattern;

    const-string v0, "[a-z2-7]{56}"

    .line 94
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->ONION_V3:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/network/NetworkManager;Lorg/briarproject/bramble/api/system/LocationUtils;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/system/ResourceProvider;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;Lorg/briarproject/bramble/api/battery/BatteryManager;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;Ljava/lang/String;IILjava/io/File;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p13

    move-object/from16 v3, p14

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    .line 113
    iput-object v4, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->socket:Ljava/net/ServerSocket;

    .line 114
    iput-object v4, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlSocket:Ljava/net/Socket;

    .line 115
    iput-object v4, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    .line 116
    iput-object v4, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    .line 118
    iput-boolean v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->running:Z

    .line 131
    iput-object v1, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    move-object v5, p2

    .line 132
    iput-object v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->networkManager:Lorg/briarproject/bramble/api/network/NetworkManager;

    move-object v5, p3

    .line 133
    iput-object v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->locationUtils:Lorg/briarproject/bramble/api/system/LocationUtils;

    move-object v5, p4

    .line 134
    iput-object v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torSocketFactory:Ljavax/net/SocketFactory;

    move-object v5, p5

    .line 135
    iput-object v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->clock:Lorg/briarproject/bramble/api/system/Clock;

    move-object v5, p6

    .line 136
    iput-object v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->resourceProvider:Lorg/briarproject/bramble/api/system/ResourceProvider;

    move-object v5, p7

    .line 137
    iput-object v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    move-object v5, p8

    .line 138
    iput-object v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->batteryManager:Lorg/briarproject/bramble/api/battery/BatteryManager;

    move-object v5, p9

    .line 139
    iput-object v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    move-object/from16 v5, p10

    .line 140
    iput-object v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    move-object/from16 v5, p11

    .line 141
    iput-object v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->architecture:Ljava/lang/String;

    move/from16 v5, p12

    .line 142
    iput v5, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->maxLatency:I

    .line 143
    iput v2, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->maxIdleTime:I

    const v5, 0x3fffffff    # 1.9999999f

    if-le v2, v5, :cond_0

    const v2, 0x7fffffff

    .line 145
    iput v2, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->socketTimeout:I

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x2

    .line 146
    iput v2, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->socketTimeout:I

    .line 147
    :goto_0
    iput-object v3, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torDirectory:Ljava/io/File;

    .line 148
    new-instance v2, Ljava/io/File;

    const-string v5, "tor"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torFile:Ljava/io/File;

    .line 149
    new-instance v2, Ljava/io/File;

    const-string v5, "geoip"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->geoIpFile:Ljava/io/File;

    .line 150
    new-instance v2, Ljava/io/File;

    const-string v5, "obfs4proxy"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->obfs4File:Ljava/io/File;

    .line 151
    new-instance v2, Ljava/io/File;

    const-string v5, "torrc"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->configFile:Ljava/io/File;

    .line 152
    new-instance v2, Ljava/io/File;

    const-string v5, "done"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->doneFile:Ljava/io/File;

    .line 153
    new-instance v2, Ljava/io/File;

    const-string v5, ".tor/control_auth_cookie"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->cookieFile:Ljava/io/File;

    .line 154
    new-instance v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;

    invoke-direct {v2, v4}, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;-><init>(Lorg/briarproject/bramble/plugin/tor/TorPlugin$1;)V

    iput-object v2, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->connectionStatus:Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;

    .line 156
    new-instance v2, Lorg/briarproject/bramble/PoliteExecutor;

    const-string v3, "TorPlugin"

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lorg/briarproject/bramble/PoliteExecutor;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;I)V

    iput-object v2, v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->connectionStatusExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private acceptContactConnections(Ljava/net/ServerSocket;)V
    .locals 3

    .line 470
    :goto_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->running:Z

    if-eqz v0, :cond_1

    .line 473
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 474
    iget v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->socketTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Connection received"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/Backoff;->reset()V

    .line 482
    new-instance v1, Lorg/briarproject/bramble/plugin/tor/TorTransportConnection;

    invoke-direct {v1, p0, v0}, Lorg/briarproject/bramble/plugin/tor/TorTransportConnection;-><init>(Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/net/Socket;)V

    .line 483
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->incomingConnectionCreated(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 477
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method private assetsAreUpToDate()Z
    .locals 5

    .line 276
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->doneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->getLastUpdateTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private bind()V
    .locals 2

    .line 386
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$cu0izPD2GOf80rphclFZIOmGoWU;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$cu0izPD2GOf80rphclFZIOmGoWU;-><init>(Lorg/briarproject/bramble/plugin/tor/TorPlugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private connectAndCallBack(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/properties/TransportProperties;)V
    .locals 2

    .line 548
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$KvVRN1ndQ6pI0wsCpqJssL690yA;

    invoke-direct {v1, p0, p2, p1}, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$KvVRN1ndQ6pI0wsCpqJssL690yA;-><init>(Lorg/briarproject/bramble/plugin/tor/TorPlugin;Lorg/briarproject/bramble/api/properties/TransportProperties;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private disableNetwork()V
    .locals 2

    .line 689
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->connectionStatusExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$ucv8I8VE39Ajndg2AOLwxdM_EhI;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$ucv8I8VE39Ajndg2AOLwxdM_EhI;-><init>(Lorg/briarproject/bramble/plugin/tor/TorPlugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enableBridges(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 496
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "UseBridges 1"

    .line 497
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientTransportPlugin obfs4 exec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->obfs4File:Ljava/io/File;

    .line 499
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    invoke-interface {v0}, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;->getBridges()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 501
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    invoke-virtual {v0, p1}, Lnet/freehaven/tor/control/TorControlConnection;->setConf(Ljava/util/Collection;)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    const-string v0, "UseBridges"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lnet/freehaven/tor/control/TorControlConnection;->setConf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private enableConnectionPadding(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    const-string v1, "ConnectionPadding"

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lnet/freehaven/tor/control/TorControlConnection;->setConf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getConfigInputStream()Ljava/io/InputStream;
    .locals 2

    .line 341
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "torrc"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getGeoIpInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->resourceProvider:Lorg/briarproject/bramble/api/system/ResourceProvider;

    const-string v1, "geoip"

    const-string v2, ".zip"

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/system/ResourceProvider;->getResourceInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 326
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private getObfs4InputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installing obfs4proxy binary for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->architecture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->resourceProvider:Lorg/briarproject/bramble/api/system/ResourceProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obfs4proxy_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->architecture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip"

    .line 334
    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/system/ResourceProvider;->getResourceInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 336
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private getTorInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installing Tor binary for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->architecture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->resourceProvider:Lorg/briarproject/bramble/api/system/ResourceProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->architecture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip"

    .line 316
    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/system/ResourceProvider;->getResourceInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 318
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private installAssets()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/plugin/PluginException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 283
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->doneFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 285
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->getTorInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 286
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 287
    :try_start_2
    invoke-static {v1, v2}, Lorg/briarproject/bramble/util/IoUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 289
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->getGeoIpInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 292
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->geoIpFile:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 293
    :try_start_4
    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/IoUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 295
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->getObfs4InputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 296
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->obfs4File:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 297
    :try_start_6
    invoke-static {v2, v0}, Lorg/briarproject/bramble/util/IoUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 299
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->obfs4File:Ljava/io/File;

    invoke-virtual {v1, v3, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->getConfigInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 302
    :try_start_7
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->configFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 303
    :try_start_8
    invoke-static {v1, v2}, Lorg/briarproject/bramble/util/IoUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 304
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->doneFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    return-void

    .line 299
    :cond_0
    :try_start_9
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v1

    move-object v5, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    :goto_0
    move-object v1, v5

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    goto :goto_1

    .line 289
    :cond_1
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    :goto_1
    move-object v0, v5

    goto :goto_2

    :catch_6
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 306
    :goto_2
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->tryToClose(Ljava/io/Closeable;)V

    .line 307
    invoke-direct {p0, v2}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->tryToClose(Ljava/io/Closeable;)V

    .line 308
    new-instance v1, Lorg/briarproject/bramble/api/plugin/PluginException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/plugin/PluginException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic lambda$bind$1(Lorg/briarproject/bramble/plugin/tor/TorPlugin;)V
    .locals 4

    .line 388
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v1, "port"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/settings/Settings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 390
    invoke-static {v0}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    .line 395
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    :try_start_1
    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v3, "127.0.0.1"

    invoke-direct {v1, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->running:Z

    if-nez v0, :cond_1

    .line 403
    invoke-direct {p0, v2}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->tryToClose(Ljava/net/ServerSocket;)V

    return-void

    .line 406
    :cond_1
    iput-object v2, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->socket:Ljava/net/ServerSocket;

    .line 408
    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    new-instance v1, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v3, "port"

    .line 410
    invoke-virtual {v1, v3, v0}, Lorg/briarproject/bramble/api/settings/Settings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v3, v1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    .line 413
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$RFlUowBM9Ck593EvFeKObsGxuGE;

    invoke-direct {v3, p0, v0}, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$RFlUowBM9Ck593EvFeKObsGxuGE;-><init>(Lorg/briarproject/bramble/plugin/tor/TorPlugin;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 414
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Backoff;->reset()V

    .line 416
    invoke-direct {p0, v2}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->acceptContactConnections(Ljava/net/ServerSocket;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 398
    :goto_1
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v3, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 399
    invoke-direct {p0, v2}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->tryToClose(Ljava/net/ServerSocket;)V

    return-void
.end method

.method public static synthetic lambda$connectAndCallBack$2(Lorg/briarproject/bramble/plugin/tor/TorPlugin;Lorg/briarproject/bramble/api/properties/TransportProperties;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 549
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->createConnection(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 551
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Backoff;->reset()V

    .line 552
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0, p2, p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->outgoingConnectionCreated(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$disableNetwork$3(Lorg/briarproject/bramble/plugin/tor/TorPlugin;)V
    .locals 3

    const/4 v0, 0x0

    .line 691
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->enableNetwork(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 693
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$null$0(Lorg/briarproject/bramble/plugin/tor/TorPlugin;Ljava/lang/String;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->publishHiddenService(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$updateConnectionStatus$4(Lorg/briarproject/bramble/plugin/tor/TorPlugin;Lorg/briarproject/bramble/api/network/NetworkStatus;Z)V
    .locals 12

    .line 701
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 702
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/network/NetworkStatus;->isConnected()Z

    move-result v0

    .line 703
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/network/NetworkStatus;->isWifi()Z

    move-result p1

    .line 704
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->locationUtils:Lorg/briarproject/bramble/api/system/LocationUtils;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/system/LocationUtils;->getCurrentCountry()Ljava/lang/String;

    move-result-object v1

    .line 705
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    .line 706
    invoke-interface {v2, v1}, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;->isTorProbablyBlocked(Ljava/lang/String;)Z

    move-result v2

    .line 707
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v4, "network2"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/briarproject/bramble/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 709
    iget-object v4, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v6, "useMobileData"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 710
    iget-object v6, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    invoke-interface {v6, v1}, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;->doBridgesWork(Ljava/lang/String;)Z

    move-result v6

    if-nez v3, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 713
    :goto_0
    sget-object v9, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 714
    sget-object v9, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Online: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", wifi: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const-string v9, ""

    .line 715
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v9, "Country code unknown"

    invoke-virtual {v1, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 716
    :cond_2
    sget-object v9, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Country code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 717
    :goto_1
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Charging: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_3
    if-nez v0, :cond_4

    .line 722
    :try_start_0
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Disabling network, device is offline"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0, v5}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->enableNetwork(Z)V

    goto :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_4
    const/4 v1, 0x3

    if-eq v3, v1, :cond_9

    if-nez v4, :cond_5

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v8, :cond_6

    if-eqz v2, :cond_6

    if-nez v6, :cond_6

    .line 729
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Disabling network, country is blocked"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0, v5}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->enableNetwork(Z)V

    goto :goto_4

    :cond_6
    const/4 v1, 0x2

    if-eq v3, v1, :cond_8

    if-eqz v8, :cond_7

    if-eqz v6, :cond_7

    goto :goto_2

    .line 737
    :cond_7
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Enabling network, not using bridges"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 738
    invoke-direct {p0, v5}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->enableBridges(Z)V

    .line 739
    invoke-virtual {p0, v7}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->enableNetwork(Z)V

    goto :goto_4

    .line 733
    :cond_8
    :goto_2
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Enabling network, using bridges"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 734
    invoke-direct {p0, v7}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->enableBridges(Z)V

    .line 735
    invoke-virtual {p0, v7}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->enableNetwork(Z)V

    goto :goto_4

    .line 726
    :cond_9
    :goto_3
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Disabling network due to setting"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0, v5}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->enableNetwork(Z)V

    :goto_4
    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 742
    sget-object p1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Enabling connection padding"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 743
    invoke-direct {p0, v7}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->enableConnectionPadding(Z)V

    goto :goto_6

    .line 745
    :cond_a
    sget-object p1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Disabling connection padding"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 746
    invoke-direct {p0, v5}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->enableConnectionPadding(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 749
    :goto_5
    sget-object p2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method private listFiles(Ljava/io/File;)V
    .locals 4

    .line 361
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 363
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->listFiles(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private migrateSettings()V
    .locals 4

    .line 761
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->getSettings()Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v0

    const-string v1, "network"

    const/4 v2, -0x1

    .line 762
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    .line 764
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    if-nez v0, :cond_1

    const-string v0, "network2"

    const/4 v3, 0x3

    .line 766
    invoke-virtual {v1, v0, v3}, Lorg/briarproject/bramble/api/settings/Settings;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const-string v0, "useMobileData"

    const/4 v3, 0x0

    .line 768
    invoke-virtual {v1, v0, v3}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    const-string v0, "network"

    .line 770
    invoke-virtual {v1, v0, v2}, Lorg/briarproject/bramble/api/settings/Settings;->putInt(Ljava/lang/String;I)V

    .line 771
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    return-void
.end method

.method private publishHiddenService(Ljava/lang/String;)V
    .locals 5

    .line 431
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Creating hidden service"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v1, "onionPrivKey"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/settings/Settings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x50

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "127.0.0.1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    if-nez v0, :cond_1

    .line 440
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    invoke-virtual {v1, p1}, Lnet/freehaven/tor/control/TorControlConnection;->addOnion(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 441
    :cond_1
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    invoke-virtual {v1, v0, p1}, Lnet/freehaven/tor/control/TorControlConnection;->addOnion(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "onionAddress"

    .line 446
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 447
    sget-object p1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Tor did not return a hidden service address"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez v0, :cond_3

    const-string v1, "onionPrivKey"

    .line 450
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 451
    sget-object p1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Tor did not return a private key"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v1, "onionAddress"

    .line 455
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 456
    sget-object v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    sget-object v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hidden service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubOnion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 458
    :cond_4
    new-instance v2, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {v2}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>()V

    const-string v3, "onion"

    .line 459
    invoke-virtual {v2, v3, v1}, Lorg/briarproject/bramble/api/properties/TransportProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->mergeLocalProperties(Lorg/briarproject/bramble/api/properties/TransportProperties;)V

    if-nez v0, :cond_5

    .line 463
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "onionPrivKey"

    const-string v2, "onionPrivKey"

    .line 464
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/settings/Settings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    :cond_5
    return-void

    .line 443
    :goto_1
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    return-void
.end method

.method private read(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 371
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 374
    :goto_0
    :try_start_0
    array-length v2, v0

    if-ge p1, v2, :cond_1

    .line 375
    array-length v2, v0

    sub-int/2addr v2, p1

    invoke-virtual {v1, v0, p1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr p1, v2

    goto :goto_0

    .line 376
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_1
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->tryToClose(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->tryToClose(Ljava/io/Closeable;)V

    .line 382
    throw p1
.end method

.method private tryToClose(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 346
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 348
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private tryToClose(Ljava/net/ServerSocket;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 422
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 424
    :try_start_1
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 426
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportDisabled()V

    .line 427
    throw p1

    .line 426
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportDisabled()V

    return-void
.end method

.method private tryToClose(Ljava/net/Socket;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 354
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 356
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateConnectionStatus(Lorg/briarproject/bramble/api/network/NetworkStatus;Z)V
    .locals 2

    .line 700
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->connectionStatusExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$NvAWeOQ-quTIeFtwYo65eMaC0XM;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$NvAWeOQ-quTIeFtwYo65eMaC0XM;-><init>(Lorg/briarproject/bramble/plugin/tor/TorPlugin;Lorg/briarproject/bramble/api/network/NetworkStatus;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public bandwidthUsed(JJ)V
    .locals 0

    return-void
.end method

.method public circuitStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "BUILT"

    .line 619
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->connectionStatus:Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;

    .line 620
    invoke-static {p1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->access$400(Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 621
    sget-object p1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string p2, "First circuit built"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 622
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/Backoff;->reset()V

    .line 623
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportEnabled()V

    :cond_0
    return-void
.end method

.method public createConnection(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 7

    .line 559
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "onion"

    .line 561
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "onion3"

    .line 562
    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 563
    invoke-static {v0}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 564
    sget-object v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->ONION_V2:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 568
    :cond_1
    sget-object v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 569
    sget-object v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid v2 hostname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    .line 572
    :goto_0
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 573
    sget-object v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->ONION_V3:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 577
    :cond_3
    sget-object v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 578
    sget-object v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid v3 hostname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_4
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_5

    return-object v1

    .line 584
    :cond_5
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 585
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubOnion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 586
    :cond_6
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torSocketFactory:Ljavax/net/SocketFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".onion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 587
    :try_start_1
    iget v2, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->socketTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 588
    sget-object v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 589
    sget-object v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubOnion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 590
    :cond_7
    new-instance v2, Lorg/briarproject/bramble/plugin/tor/TorTransportConnection;

    invoke-direct {v2, p0, v0}, Lorg/briarproject/bramble/plugin/tor/TorTransportConnection;-><init>(Lorg/briarproject/bramble/api/plugin/Plugin;Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 592
    :goto_2
    sget-object v3, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 593
    sget-object v3, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubOnion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 593
    invoke-virtual {v3, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 596
    :cond_8
    invoke-direct {p0, v2}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->tryToClose(Ljava/net/Socket;)V

    return-object v1
.end method

.method public createKeyAgreementConnection([BLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 0

    .line 614
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createKeyAgreementListener([B)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;
    .locals 0

    .line 608
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected enableNetwork(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->connectionStatus:Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;

    invoke-static {v0, p1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->access$200(Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;Z)V

    .line 490
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    const-string v1, "DisableNetwork"

    if-eqz p1, :cond_1

    const-string v2, "0"

    goto :goto_0

    :cond_1
    const-string v2, "1"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lnet/freehaven/tor/control/TorControlConnection;->setConf(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 491
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportDisabled()V

    :cond_2
    return-void
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 668
    instance-of v0, p1, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    if-eqz v0, :cond_0

    .line 669
    check-cast p1, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    .line 670
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getNamespace()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/briarproject/bramble/api/plugin/TorConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Tor settings updated"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getSettings()Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    .line 675
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->disableNetwork()V

    .line 676
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->networkManager:Lorg/briarproject/bramble/api/network/NetworkManager;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/network/NetworkManager;->getNetworkStatus()Lorg/briarproject/bramble/api/network/NetworkStatus;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->batteryManager:Lorg/briarproject/bramble/api/battery/BatteryManager;

    .line 677
    invoke-interface {v0}, Lorg/briarproject/bramble/api/battery/BatteryManager;->isCharging()Z

    move-result v0

    .line 676
    invoke-direct {p0, p1, v0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->updateConnectionStatus(Lorg/briarproject/bramble/api/network/NetworkStatus;Z)V

    goto :goto_0

    .line 679
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/network/event/NetworkStatusEvent;

    if-eqz v0, :cond_1

    .line 680
    check-cast p1, Lorg/briarproject/bramble/api/network/event/NetworkStatusEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/network/event/NetworkStatusEvent;->getStatus()Lorg/briarproject/bramble/api/network/NetworkStatus;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->batteryManager:Lorg/briarproject/bramble/api/battery/BatteryManager;

    .line 681
    invoke-interface {v0}, Lorg/briarproject/bramble/api/battery/BatteryManager;->isCharging()Z

    move-result v0

    .line 680
    invoke-direct {p0, p1, v0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->updateConnectionStatus(Lorg/briarproject/bramble/api/network/NetworkStatus;Z)V

    goto :goto_0

    .line 682
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/battery/event/BatteryEvent;

    if-eqz v0, :cond_2

    .line 683
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->networkManager:Lorg/briarproject/bramble/api/network/NetworkManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/network/NetworkManager;->getNetworkStatus()Lorg/briarproject/bramble/api/network/NetworkStatus;

    move-result-object v0

    check-cast p1, Lorg/briarproject/bramble/api/battery/event/BatteryEvent;

    .line 684
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/battery/event/BatteryEvent;->isCharging()Z

    move-result p1

    .line 683
    invoke-direct {p0, v0, p1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->updateConnectionStatus(Lorg/briarproject/bramble/api/network/NetworkStatus;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 162
    sget-object v0, Lorg/briarproject/bramble/api/plugin/TorConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method

.method protected abstract getLastUpdateTime()J
.end method

.method public getMaxIdleTime()I
    .locals 1

    .line 172
    iget v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->maxIdleTime:I

    return v0
.end method

.method public getMaxLatency()I
    .locals 1

    .line 167
    iget v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->maxLatency:I

    return v0
.end method

.method public getPollingInterval()I
    .locals 1

    .line 535
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Backoff;->getPollingInterval()I

    move-result v0

    return v0
.end method

.method protected abstract getProcessId()I
.end method

.method public isRunning()Z
    .locals 1

    .line 525
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->connectionStatus:Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->access$300(Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public message(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 652
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    const-string v0, "NOTICE"

    .line 653
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Bootstrapped 100%"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 654
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->connectionStatus:Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;

    invoke-static {p1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->access$100(Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;)V

    .line 655
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/Backoff;->reset()V

    .line 656
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->transportEnabled()V

    :cond_1
    return-void
.end method

.method public newDescriptors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public orConnStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 633
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OR connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    const-string p2, "CLOSED"

    .line 635
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "FAILED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 637
    :cond_1
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->networkManager:Lorg/briarproject/bramble/api/network/NetworkManager;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/network/NetworkManager;->getNetworkStatus()Lorg/briarproject/bramble/api/network/NetworkStatus;

    move-result-object p1

    iget-object p2, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->batteryManager:Lorg/briarproject/bramble/api/battery/BatteryManager;

    .line 638
    invoke-interface {p2}, Lorg/briarproject/bramble/api/battery/BatteryManager;->isCharging()Z

    move-result p2

    .line 637
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->updateConnectionStatus(Lorg/briarproject/bramble/api/network/NetworkStatus;Z)V

    :cond_2
    return-void
.end method

.method public poll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;)V"
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->backoff:Lorg/briarproject/bramble/api/plugin/Backoff;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Backoff;->increment()V

    .line 542
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 543
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {p0, v1, v0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->connectAndCallBack(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/properties/TransportProperties;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shouldPoll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/plugin/PluginException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_f

    .line 178
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Could not create Tor directory."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lorg/briarproject/bramble/api/plugin/PluginException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/plugin/PluginException;-><init>()V

    throw v0

    .line 185
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->callback:Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;->getSettings()Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    .line 187
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->assetsAreUpToDate()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->installAssets()V

    .line 188
    :cond_2
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->cookieFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->cookieFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 189
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Old auth cookie not deleted"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 191
    :cond_3
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->migrateSettings()V

    .line 193
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Starting Tor"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->configFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->getProcessId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    new-instance v4, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-string v0, "-f"

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    const-string v2, "__OwningControllerProcess"

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 200
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v0

    const-string v2, "HOME"

    .line 201
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torDirectory:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 204
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 209
    sget-object v2, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 210
    new-instance v2, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 211
    new-instance v3, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 212
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 220
    :cond_5
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 221
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    goto :goto_3

    .line 213
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 214
    sget-object v4, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 216
    :cond_7
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 217
    sget-object v4, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_8
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-eqz v0, :cond_a

    .line 227
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 228
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tor exited with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 229
    :cond_9
    new-instance v0, Lorg/briarproject/bramble/api/plugin/PluginException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/plugin/PluginException;-><init>()V

    throw v0

    .line 232
    :cond_a
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 233
    :goto_4
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->cookieFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x20

    cmp-long v0, v4, v6

    if-gez v0, :cond_d

    .line 234
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xbb8

    cmp-long v0, v4, v6

    if-lez v0, :cond_c

    .line 235
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Auth cookie not created"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 236
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->torDirectory:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->listFiles(Ljava/io/File;)V

    .line 237
    :cond_b
    new-instance v0, Lorg/briarproject/bramble/api/plugin/PluginException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/plugin/PluginException;-><init>()V

    throw v0

    :cond_c
    const-wide/16 v4, 0xc8

    .line 239
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_4

    .line 241
    :cond_d
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Auth cookie created"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    :try_start_2
    new-instance v0, Ljava/net/Socket;

    const-string v2, "127.0.0.1"

    const v3, 0xe6ab

    invoke-direct {v0, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlSocket:Ljava/net/Socket;

    .line 250
    new-instance v0, Lnet/freehaven/tor/control/TorControlConnection;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlSocket:Ljava/net/Socket;

    invoke-direct {v0, v2}, Lnet/freehaven/tor/control/TorControlConnection;-><init>(Ljava/net/Socket;)V

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    .line 251
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->cookieFile:Ljava/io/File;

    invoke-direct {p0, v2}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->read(Ljava/io/File;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/freehaven/tor/control/TorControlConnection;->authenticate([B)V

    .line 253
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    invoke-virtual {v0}, Lnet/freehaven/tor/control/TorControlConnection;->takeOwnership()V

    .line 254
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    const-string v2, "__OwningControllerProcess"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/freehaven/tor/control/TorControlConnection;->resetConf(Ljava/util/Collection;)V

    .line 255
    iput-boolean v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->running:Z

    .line 257
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    invoke-virtual {v0, p0}, Lnet/freehaven/tor/control/TorControlConnection;->setEventHandler(Lnet/freehaven/tor/control/EventHandler;)V

    .line 258
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->EVENTS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/freehaven/tor/control/TorControlConnection;->setEvents(Ljava/util/List;)V

    .line 260
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    const-string v1, "status/bootstrap-phase"

    invoke-virtual {v0, v1}, Lnet/freehaven/tor/control/TorControlConnection;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "PROGRESS=100"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 262
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Tor has already bootstrapped"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->connectionStatus:Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->access$100(Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 269
    :cond_e
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->networkManager:Lorg/briarproject/bramble/api/network/NetworkManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/network/NetworkManager;->getNetworkStatus()Lorg/briarproject/bramble/api/network/NetworkStatus;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->batteryManager:Lorg/briarproject/bramble/api/battery/BatteryManager;

    .line 270
    invoke-interface {v1}, Lorg/briarproject/bramble/api/battery/BatteryManager;->isCharging()Z

    move-result v1

    .line 269
    invoke-direct {p0, v0, v1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->updateConnectionStatus(Lorg/briarproject/bramble/api/network/NetworkStatus;Z)V

    .line 272
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->bind()V

    return-void

    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Lorg/briarproject/bramble/api/plugin/PluginException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/plugin/PluginException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 243
    :catch_1
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Interrupted while starting Tor"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 245
    new-instance v0, Lorg/briarproject/bramble/api/plugin/PluginException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/plugin/PluginException;-><init>()V

    throw v0

    :catch_2
    move-exception v0

    .line 206
    new-instance v1, Lorg/briarproject/bramble/api/plugin/PluginException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/plugin/PluginException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 177
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->running:Z

    .line 510
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->socket:Ljava/net/ServerSocket;

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->tryToClose(Ljava/net/ServerSocket;)V

    .line 511
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    if-eqz v0, :cond_0

    .line 513
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Stopping Tor"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    const-string v1, "DisableNetwork"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lnet/freehaven/tor/control/TorControlConnection;->setConf(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlConnection:Lnet/freehaven/tor/control/TorControlConnection;

    const-string v1, "TERM"

    invoke-virtual {v0, v1}, Lnet/freehaven/tor/control/TorControlConnection;->shutdownTor(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 518
    sget-object v1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public streamStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public supportsKeyAgreement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unrecognized(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "HS_DESC"

    .line 662
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UPLOADED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 663
    sget-object p1, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Descriptor uploaded"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
