.class public interface abstract Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;
.super Ljava/lang/Object;
.source "ConnectionRegistry.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getConnectedContacts(Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isConnected(Lorg/briarproject/bramble/api/contact/ContactId;)Z
.end method

.method public abstract isConnected(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)Z
.end method

.method public abstract registerConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
.end method

.method public abstract unregisterConnection(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
.end method
