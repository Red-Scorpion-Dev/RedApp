.class public Lorg/briarproject/briar/api/privategroup/GroupMessage;
.super Lorg/briarproject/briar/api/client/ThreadedMessage;
.source "GroupMessage.java"


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


# virtual methods
.method public getMember()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 22
    invoke-super {p0}, Lorg/briarproject/briar/api/client/ThreadedMessage;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    return-object v0
.end method
