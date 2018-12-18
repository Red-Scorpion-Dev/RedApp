.class public interface abstract Lorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;
.super Ljava/lang/Object;
.source "ValidationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/api/sync/ValidationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IncomingMessageHook"
.end annotation


# virtual methods
.method public abstract incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Metadata;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;
        }
    .end annotation
.end method
