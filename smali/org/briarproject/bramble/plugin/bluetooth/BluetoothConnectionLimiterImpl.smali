.class Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;
.super Ljava/lang/Object;
.source "BluetoothConnectionLimiterImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final connections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;",
            ">;"
        }
    .end annotation
.end field

.field private keyAgreementInProgress:Z

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->lock:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->connections:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->keyAgreementInProgress:Z

    return-void
.end method

.method private tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
    .locals 2

    .line 93
    :try_start_0
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getWriter()Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->dispose(Z)V

    .line 94
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getReader()Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    move-result-object p1

    invoke-interface {p1, v1, v1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;->dispose(ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public allConnectionsClosed()V
    .locals 3

    .line 111
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->connections:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 113
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "All connections closed"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 114
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canOpenContactConnection()Z
    .locals 3

    .line 56
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-boolean v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->keyAgreementInProgress:Z

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Can\'t open contact connection during key agreement"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 59
    monitor-exit v0

    return v1

    .line 61
    :cond_0
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Can open contact connection"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 62
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectionClosed(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->connections:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 104
    sget-object p1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    sget-object p1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection closed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->connections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 106
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public contactConnectionOpened(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)Z
    .locals 3

    .line 70
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-boolean v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->keyAgreementInProgress:Z

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Refusing contact connection during key agreement"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 75
    :cond_0
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Accepting contact connection"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->connections:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 78
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 79
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public keyAgreementConnectionOpened(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Accepting key agreement connection"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->connections:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public keyAgreementEnded()V
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 49
    :try_start_0
    iput-boolean v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->keyAgreementInProgress:Z

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Key agreement ended"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public keyAgreementStarted()V
    .locals 4

    .line 34
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 35
    :try_start_0
    iput-boolean v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->keyAgreementInProgress:Z

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->connections:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    iget-object v2, p0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->connections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key agreement started, closing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " connections"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    invoke-direct {p0, v1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;->tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
