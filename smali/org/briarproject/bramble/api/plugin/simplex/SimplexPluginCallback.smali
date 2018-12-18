.class public interface abstract Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginCallback;
.super Ljava/lang/Object;
.source "SimplexPluginCallback.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/PluginCallback;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract readerCreated(Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;)V
.end method

.method public abstract writerCreated(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;)V
.end method
