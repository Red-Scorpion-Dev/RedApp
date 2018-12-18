.class public interface abstract Lorg/briarproject/bramble/api/plugin/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getDuplexPlugins()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyAgreementPlugins()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlugin(Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/plugin/Plugin;
.end method

.method public abstract getSimplexPlugins()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;",
            ">;"
        }
    .end annotation
.end method
