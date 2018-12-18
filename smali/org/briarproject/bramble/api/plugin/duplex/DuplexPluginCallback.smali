.class public interface abstract Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;
.super Ljava/lang/Object;
.source "DuplexPluginCallback.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/PluginCallback;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract incomingConnectionCreated(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
.end method

.method public abstract outgoingConnectionCreated(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
.end method
