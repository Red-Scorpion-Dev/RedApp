.class Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothTransportConnection;
.super Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;
.source "AndroidBluetoothTransportConnection.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final connectionManager:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

.field private final socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/plugin/Plugin;Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/plugin/duplex/AbstractDuplexTransportConnection;-><init>(Lorg/briarproject/bramble/api/plugin/Plugin;)V

    .line 24
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothTransportConnection;->connectionManager:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    .line 25
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothTransportConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method protected closeConnection(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    :try_start_0
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothTransportConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothTransportConnection;->connectionManager:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {p1, p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->connectionClosed(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothTransportConnection;->connectionManager:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->connectionClosed(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    .line 44
    throw p1
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothTransportConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothTransportConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
