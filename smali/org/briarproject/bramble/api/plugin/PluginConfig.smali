.class public interface abstract Lorg/briarproject/bramble/api/plugin/PluginConfig;
.super Ljava/lang/Object;
.source "PluginConfig.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getDuplexFactories()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSimplexFactories()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shouldPoll()Z
.end method
