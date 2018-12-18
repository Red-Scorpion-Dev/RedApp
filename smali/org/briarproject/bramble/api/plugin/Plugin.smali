.class public interface abstract Lorg/briarproject/bramble/api/plugin/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getId()Lorg/briarproject/bramble/api/plugin/TransportId;
.end method

.method public abstract getMaxIdleTime()I
.end method

.method public abstract getMaxLatency()I
.end method

.method public abstract getPollingInterval()I
.end method

.method public abstract isRunning()Z
.end method

.method public abstract poll(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shouldPoll()Z
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/plugin/PluginException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/plugin/PluginException;
        }
    .end annotation
.end method
