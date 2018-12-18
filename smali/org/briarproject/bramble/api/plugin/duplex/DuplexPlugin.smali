.class public interface abstract Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;
.super Ljava/lang/Object;
.source "DuplexPlugin.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/Plugin;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createConnection(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
.end method

.method public abstract createKeyAgreementConnection([BLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
.end method

.method public abstract createKeyAgreementListener([B)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementListener;
.end method

.method public abstract supportsKeyAgreement()Z
.end method
