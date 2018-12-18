.class Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;
.super Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;
.source "AndroidLanTcpPlugin.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final WIFI_AP_ADDRESS:Ljava/net/InetAddress;

.field private static final WIFI_AP_ADDRESS_BYTES:[B


# instance fields
.field private final connectionStatusExecutor:Ljava/util/concurrent/Executor;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private volatile socketFactory:Ljavax/net/SocketFactory;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 39
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->WIFI_AP_ADDRESS_BYTES:[B

    .line 43
    const-class v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    .line 48
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->WIFI_AP_ADDRESS_BYTES:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->WIFI_AP_ADDRESS:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :array_0
    .array-data 1
        -0x40t
        -0x58t
        0x2bt
        0x1t
    .end array-data
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;II)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 65
    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;II)V

    .line 67
    new-instance p3, Lorg/briarproject/bramble/PoliteExecutor;

    const-string p4, "AndroidLanTcpPlugin"

    const/4 p5, 0x1

    invoke-direct {p3, p4, p1, p5}, Lorg/briarproject/bramble/PoliteExecutor;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;I)V

    iput-object p3, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->connectionStatusExecutor:Ljava/util/concurrent/Executor;

    const-string p1, "connectivity"

    .line 70
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 73
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wifi"

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 75
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->socketFactory:Ljavax/net/SocketFactory;

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private getSocketFactory()Ljavax/net/SocketFactory;
    .locals 6

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 130
    iget-object v4, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 131
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 132
    invoke-virtual {v3}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_2
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Could not find suitable socket factory"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method private intToInetAddress(I)Ljava/net/InetAddress;
    .locals 3

    const/4 v0, 0x4

    .line 112
    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 118
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 121
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic lambda$updateConnectionStatus$0(Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;)V
    .locals 2

    .line 145
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->getLocalIpAddresses()Ljava/util/Collection;

    move-result-object v0

    .line 147
    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->WIFI_AP_ADDRESS:Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Providing wifi hotspot"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->socketFactory:Ljavax/net/SocketFactory;

    .line 154
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->socket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->bind()V

    goto :goto_0

    .line 155
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Not connected to wifi"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->socketFactory:Ljavax/net/SocketFactory;

    .line 158
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->tryToClose(Ljava/net/ServerSocket;)V

    goto :goto_0

    .line 160
    :cond_3
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Connected to wifi"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->socketFactory:Ljavax/net/SocketFactory;

    .line 162
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->socket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->bind()V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateConnectionStatus()V
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->connectionStatusExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$AndroidLanTcpPlugin$F-EuLFBlWJiSlmlW2o9yqGRwjHY;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$AndroidLanTcpPlugin$F-EuLFBlWJiSlmlW2o9yqGRwjHY;-><init>(Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->socketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 0

    .line 140
    instance-of p1, p1, Lorg/briarproject/bramble/api/network/event/NetworkStatusEvent;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->updateConnectionStatus()V

    :cond_0
    return-void
.end method

.method protected getLocalIpAddresses()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 105
    :cond_1
    invoke-super {p0}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->getLocalIpAddresses()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->WIFI_AP_ADDRESS:Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->WIFI_AP_ADDRESS:Ljava/net/InetAddress;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 108
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iput-boolean v1, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->running:Z

    .line 82
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->updateConnectionStatus()V

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->running:Z

    .line 88
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->socket:Ljava/net/ServerSocket;

    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;->tryToClose(Ljava/net/ServerSocket;)V

    return-void
.end method
