.class interface abstract Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;
.super Ljava/lang/Object;
.source "MessageEncoder.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract encodeAbortMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;J)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract encodeInviteMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLjava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[BLjava/lang/String;[B)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract encodeJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract encodeLeaveMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract encodeMetadata(Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract setAvailableToAnswer(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
.end method

.method public abstract setInvitationAccepted(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
.end method

.method public abstract setVisibleInUi(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
.end method
