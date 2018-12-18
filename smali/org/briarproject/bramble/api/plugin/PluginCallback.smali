.class public interface abstract Lorg/briarproject/bramble/api/plugin/PluginCallback;
.super Ljava/lang/Object;
.source "PluginCallback.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getLocalProperties()Lorg/briarproject/bramble/api/properties/TransportProperties;
.end method

.method public abstract getSettings()Lorg/briarproject/bramble/api/settings/Settings;
.end method

.method public abstract mergeLocalProperties(Lorg/briarproject/bramble/api/properties/TransportProperties;)V
.end method

.method public abstract mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V
.end method

.method public abstract transportDisabled()V
.end method

.method public abstract transportEnabled()V
.end method
