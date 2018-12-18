.class public interface abstract Lorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;
.super Ljava/lang/Object;
.source "ValidationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/api/sync/ValidationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageValidator"
.end annotation


# virtual methods
.method public abstract validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/bramble/api/sync/MessageContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;
        }
    .end annotation
.end method
