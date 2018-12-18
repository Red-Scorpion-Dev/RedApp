.class interface abstract Lorg/briarproject/briar/introduction/PeerSession;
.super Ljava/lang/Object;
.source "PeerSession.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
.end method

.method public abstract getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
.end method

.method public abstract getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
.end method

.method public abstract getLocalTimestamp()J
.end method

.method public abstract getSessionId()Lorg/briarproject/briar/api/client/SessionId;
.end method
