.class public interface abstract Lorg/briarproject/bramble/api/sync/ValidationManager;
.super Ljava/lang/Object;
.source "ValidationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;,
        Lorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;,
        Lorg/briarproject/bramble/api/sync/ValidationManager$State;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V
.end method

.method public abstract registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V
.end method
