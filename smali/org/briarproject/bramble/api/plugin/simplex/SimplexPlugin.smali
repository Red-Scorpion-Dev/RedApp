.class public interface abstract Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;
.super Ljava/lang/Object;
.source "SimplexPlugin.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/Plugin;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createReader(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;
.end method

.method public abstract createWriter(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;
.end method
