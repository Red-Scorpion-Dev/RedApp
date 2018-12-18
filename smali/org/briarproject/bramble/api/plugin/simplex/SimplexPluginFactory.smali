.class public interface abstract Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginFactory;
.super Ljava/lang/Object;
.source "SimplexPluginFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createPlugin(Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginCallback;)Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;
.end method

.method public abstract getId()Lorg/briarproject/bramble/api/plugin/TransportId;
.end method

.method public abstract getMaxLatency()I
.end method
