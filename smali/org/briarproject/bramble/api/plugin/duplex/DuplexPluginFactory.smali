.class public interface abstract Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;
.super Ljava/lang/Object;
.source "DuplexPluginFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createPlugin(Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;
.end method

.method public abstract getId()Lorg/briarproject/bramble/api/plugin/TransportId;
.end method

.method public abstract getMaxLatency()I
.end method
