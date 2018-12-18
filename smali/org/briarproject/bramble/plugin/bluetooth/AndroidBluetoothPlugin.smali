.class Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;
.super Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;
.source "AndroidBluetoothPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$DiscoveryReceiver;,
        Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin<",
        "Landroid/bluetooth/BluetoothServerSocket;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final MAX_DISCOVERY_MS:I = 0x2710


# instance fields
.field private volatile adapter:Landroid/bluetooth/BluetoothAdapter;

.field private final androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

.field private final appContext:Landroid/content/Context;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private volatile receiver:Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;

.field private volatile wasEnabledByUs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/system/AndroidExecutor;Landroid/content/Context;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;I)V
    .locals 8

    move-object v7, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    .line 80
    invoke-direct/range {v0 .. v6}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;Ljava/util/concurrent/Executor;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;I)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, v7, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->wasEnabledByUs:Z

    const/4 v0, 0x0

    .line 71
    iput-object v0, v7, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->receiver:Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;

    .line 74
    iput-object v0, v7, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    move-object v0, p3

    .line 82
    iput-object v0, v7, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    move-object v0, p4

    .line 83
    iput-object v0, v7, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->appContext:Landroid/content/Context;

    move-object v0, p6

    .line 84
    iput-object v0, v7, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .line 59
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private discoverDevices()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 226
    new-instance v2, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$DiscoveryReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$DiscoveryReceiver;-><init>(Ljava/util/concurrent/BlockingQueue;Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$1;)V

    .line 227
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 228
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 229
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.device.action.FOUND"

    .line 230
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v4, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->appContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    :try_start_0
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 234
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v3}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v3

    :goto_0
    cmp-long v7, v3, v5

    if-gez v7, :cond_6

    sub-long v3, v5, v3

    .line 237
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v7}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 239
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 240
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 241
    sget-object v3, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Discovery started"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v7, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 242
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 243
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Discovery finished"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v7, "android.bluetooth.device.action.FOUND"

    .line 245
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    .line 246
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 247
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 248
    sget-object v4, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 249
    sget-object v4, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discovered "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 250
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 251
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_4
    :goto_1
    iget-object v3, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v3}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    .line 256
    :cond_5
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Could not start discovery"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_6
    :goto_2
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Cancelling discovery"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 264
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 259
    :catch_0
    :try_start_1
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Interrupted while discovering devices"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 260
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 267
    :goto_3
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-object v0

    .line 262
    :goto_4
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Cancelling discovery"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 264
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    throw v0
.end method

.method private tryToClose(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 273
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private wrapSocket(Landroid/bluetooth/BluetoothSocket;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 2

    .line 178
    new-instance v0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothTransportConnection;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->connectionLimiter:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-direct {v0, p0, v1, p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothTransportConnection;-><init>(Lorg/briarproject/bramble/api/plugin/Plugin;Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method


# virtual methods
.method acceptConnection(Landroid/bluetooth/BluetoothServerSocket;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->wrapSocket(Landroid/bluetooth/BluetoothSocket;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic acceptConnection(Ljava/lang/Object;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    check-cast p1, Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->acceptConnection(Landroid/bluetooth/BluetoothServerSocket;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p1

    return-object p1
.end method

.method connectTo(Ljava/lang/String;Ljava/lang/String;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 191
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    .line 194
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 196
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->wrapSocket(Landroid/bluetooth/BluetoothSocket;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    const/4 p1, 0x0

    .line 198
    :goto_0
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->tryToClose(Ljava/io/Closeable;)V

    .line 199
    throw p2
.end method

.method disableAdapterIfEnabledByUs()V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->isAdapterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->wasEnabledByUs:Z

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Disabling Bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Could not disable Bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->wasEnabledByUs:Z

    :cond_1
    return-void
.end method

.method discoverAndConnect(Ljava/lang/String;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 6

    .line 206
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 207
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->discoverDevices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    :try_start_0
    sget-object v3, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    sget-object v3, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 211
    :cond_2
    invoke-virtual {p0, v2, p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->connectTo(Ljava/lang/String;Ljava/lang/String;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    nop

    .line 213
    sget-object v3, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    sget-object v3, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {v2}, Lorg/briarproject/bramble/util/PrivacyUtils;->scrubMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_3
    sget-object p1, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Could not connect to any devices"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v1
.end method

.method enableAdapter()V
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Enabling Bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->wasEnabledByUs:Z

    goto :goto_0

    .line 130
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Could not enable Bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method getBluetoothAddress()Ljava/lang/String;
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/AndroidUtils;->getBluetoothAddress(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method initialiseAdapter()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$5lNE8K_CsoGX3R5pn5gr1kOxdY8;->INSTANCE:Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$5lNE8K_CsoGX3R5pn5gr1kOxdY8;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bluetooth is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method isAdapterEnabled()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isValidAddress(Ljava/lang/String;)Z
    .locals 0

    .line 184
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method openServerSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "RFCOMM"

    .line 159
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    .line 158
    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic openServerSocket(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->openServerSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    return-object p1
.end method

.method setEnabledByUs()V
    .locals 1

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->wasEnabledByUs:Z

    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/plugin/PluginException;
        }
    .end annotation

    .line 89
    invoke-super {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->start()V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    new-instance v1, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$1;)V

    iput-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->receiver:Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;

    .line 95
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->receiver:Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 100
    invoke-super {p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->stop()V

    .line 101
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->receiver:Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->receiver:Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method tryToClose(Landroid/bluetooth/BluetoothServerSocket;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 165
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method bridge synthetic tryToClose(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->tryToClose(Landroid/bluetooth/BluetoothServerSocket;)V

    return-void
.end method
