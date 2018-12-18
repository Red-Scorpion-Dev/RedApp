.class public interface abstract Lorg/briarproject/bramble/api/sync/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract createMessage([B)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract getRawMessage(Lorg/briarproject/bramble/api/sync/Message;)[B
.end method
