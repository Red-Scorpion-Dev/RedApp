.class interface abstract Lorg/briarproject/briar/privategroup/invitation/MessageParser;
.super Ljava/lang/Object;
.source "MessageParser.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/privategroup/invitation/InviteMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract getInvitesAvailableToAnswerQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract getInvitesAvailableToAnswerQuery(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract getMessagesVisibleInUiQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract parseAbortMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/AbortMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract parseInviteMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/InviteMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract parseJoinMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/JoinMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract parseLeaveMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract parseMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method
