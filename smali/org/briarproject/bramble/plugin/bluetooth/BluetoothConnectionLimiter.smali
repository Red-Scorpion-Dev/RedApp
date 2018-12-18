.class interface abstract Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;
.super Ljava/lang/Object;
.source "BluetoothConnectionLimiter.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract allConnectionsClosed()V
.end method

.method public abstract canOpenContactConnection()Z
.end method

.method public abstract connectionClosed(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
.end method

.method public abstract contactConnectionOpened(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)Z
.end method

.method public abstract keyAgreementConnectionOpened(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
.end method

.method public abstract keyAgreementEnded()V
.end method

.method public abstract keyAgreementStarted()V
.end method
