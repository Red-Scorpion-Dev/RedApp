.class public interface abstract Lorg/briarproject/briar/api/client/MessageTree$MessageNode;
.super Ljava/lang/Object;
.source "MessageTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/api/client/MessageTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageNode"
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getId()Lorg/briarproject/bramble/api/sync/MessageId;
.end method

.method public abstract getParentId()Lorg/briarproject/bramble/api/sync/MessageId;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract setLevel(I)V
.end method
