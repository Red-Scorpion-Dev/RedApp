.class public abstract Lorg/briarproject/briar/api/client/ThreadedMessage;
.super Lorg/briarproject/briar/api/messaging/PrivateMessage;
.source "ThreadedMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final author:Lorg/briarproject/bramble/api/identity/Author;

.field private final parent:Lorg/briarproject/bramble/api/sync/MessageId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/briarproject/briar/api/messaging/PrivateMessage;-><init>(Lorg/briarproject/bramble/api/sync/Message;)V

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/api/client/ThreadedMessage;->parent:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 24
    iput-object p3, p0, Lorg/briarproject/briar/api/client/ThreadedMessage;->author:Lorg/briarproject/bramble/api/identity/Author;

    return-void
.end method


# virtual methods
.method public getAuthor()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/api/client/ThreadedMessage;->author:Lorg/briarproject/bramble/api/identity/Author;

    return-object v0
.end method

.method public getParent()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/briar/api/client/ThreadedMessage;->parent:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method
