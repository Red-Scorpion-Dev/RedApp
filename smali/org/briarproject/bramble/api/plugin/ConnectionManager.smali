.class public interface abstract Lorg/briarproject/bramble/api/plugin/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# virtual methods
.method public abstract manageIncomingConnection(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)V
.end method

.method public abstract manageIncomingConnection(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
.end method

.method public abstract manageOutgoingConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)V
.end method

.method public abstract manageOutgoingConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
.end method
