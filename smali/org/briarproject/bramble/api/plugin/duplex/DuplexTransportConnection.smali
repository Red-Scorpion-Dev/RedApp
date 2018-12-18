.class public interface abstract Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
.super Ljava/lang/Object;
.source "DuplexTransportConnection.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getReader()Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;
.end method

.method public abstract getWriter()Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;
.end method
