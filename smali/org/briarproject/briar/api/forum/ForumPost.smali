.class public Lorg/briarproject/briar/api/forum/ForumPost;
.super Lorg/briarproject/briar/api/client/ThreadedMessage;
.source "ForumPost.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/api/client/ThreadedMessage;-><init>(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;)V

    return-void
.end method
