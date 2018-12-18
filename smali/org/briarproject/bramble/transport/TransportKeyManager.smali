.class interface abstract Lorg/briarproject/bramble/transport/TransportKeyManager;
.super Ljava/lang/Object;
.source "TransportKeyManager.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract activateKeys(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZ)Lorg/briarproject/bramble/api/transport/KeySetId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract canSendOutgoingStreams(Lorg/briarproject/bramble/api/contact/ContactId;)Z
.end method

.method public abstract getStreamContext(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/transport/StreamContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getStreamContext(Lorg/briarproject/bramble/api/db/Transaction;[B)Lorg/briarproject/bramble/api/transport/StreamContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removeContact(Lorg/briarproject/bramble/api/contact/ContactId;)V
.end method

.method public abstract start(Lorg/briarproject/bramble/api/db/Transaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
