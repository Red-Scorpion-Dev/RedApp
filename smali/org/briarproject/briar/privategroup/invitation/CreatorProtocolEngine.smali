.class Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;
.super Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;
.source "CreatorProtocolEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine<",
        "Lorg/briarproject/briar/privategroup/invitation/CreatorSession;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p11}, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)V

    return-void
.end method

.method private abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 243
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getState()Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->ERROR:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    if-ne v0, v1, :cond_0

    return-object p2

    .line 245
    :cond_0
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->isSubscribedPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 248
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->sendAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 250
    new-instance v10, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 251
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    .line 252
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getInviteTimestamp()J

    move-result-wide v7

    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->ERROR:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/CreatorState;)V

    return-object v10
.end method

.method private createInvitationResponse(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;Z)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;
    .locals 13

    .line 257
    new-instance v9, Lorg/briarproject/briar/api/client/SessionId;

    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    .line 258
    new-instance v12, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;

    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 259
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->getTimestamp()J

    move-result-wide v3

    .line 260
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v12

    move v10, p2

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;ZLorg/briarproject/bramble/api/sync/GroupId;)V

    return-object v12
.end method

.method private onLocalInvite(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v0, p0

    .line 151
    invoke-virtual/range {p0 .. p6}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->sendInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Ljava/lang/String;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    .line 153
    iget-object v2, v0, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    move-object/from16 v3, p1

    invoke-interface {v2, v3, v1}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    move-object/from16 v2, p2

    .line 155
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/privategroup/invitation/Session;)J

    move-result-wide v3

    move-wide/from16 v12, p4

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 156
    new-instance v3, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v7

    .line 157
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v9

    sget-object v14, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->INVITED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-object v5, v3

    invoke-direct/range {v5 .. v14}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/CreatorState;)V

    return-object v3
.end method

.method private onLocalLeave(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 165
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->sendLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 172
    new-instance v10, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 173
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    .line 174
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getInviteTimestamp()J

    move-result-wide v7

    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->DISSOLVED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/CreatorState;)V

    return-object v10

    :catch_0
    move-exception p1

    .line 167
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onRemoteAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 180
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getTimestamp()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getInviteTimestamp()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object v1

    return-object v1

    .line 182
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v7, v8, v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->sendJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v9

    .line 187
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 189
    iget-object v1, v0, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 190
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v2, p1

    .line 189
    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 192
    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {v0, v7, v8, v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    .line 195
    new-instance v2, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationResponseReceivedEvent;

    const/4 v3, 0x1

    move-object/from16 v4, p3

    .line 196
    invoke-direct {v0, v4, v3}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->createInvitationResponse(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;Z)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationResponseReceivedEvent;-><init>(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 195
    invoke-virtual {v7, v2}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 198
    new-instance v1, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v12

    .line 199
    invoke-virtual {v9}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v14

    invoke-virtual {v9}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v15

    .line 200
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getInviteTimestamp()J

    move-result-wide v17

    sget-object v19, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->JOINED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-object v10, v1

    invoke-direct/range {v10 .. v19}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/CreatorState;)V

    return-object v1
.end method

.method private onRemoteDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object v0, p0

    move-object v7, p1

    .line 206
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getTimestamp()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getInviteTimestamp()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object v1

    return-object v1

    .line 208
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    move-object/from16 v8, p2

    invoke-virtual {p0, v8, v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object v1

    return-object v1

    .line 211
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 213
    iget-object v1, v0, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 214
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p1

    .line 213
    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    .line 217
    new-instance v2, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationResponseReceivedEvent;

    const/4 v3, 0x0

    move-object/from16 v4, p3

    .line 218
    invoke-direct {p0, v4, v3}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->createInvitationResponse(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;Z)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationResponseReceivedEvent;-><init>(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 217
    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 220
    new-instance v1, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v6

    .line 221
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getLocalTimestamp()J

    move-result-wide v9

    .line 222
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getInviteTimestamp()J

    move-result-wide v11

    sget-object v13, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->START:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-object v4, v1

    move-object v8, v2

    invoke-direct/range {v4 .. v13}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/CreatorState;)V

    return-object v1
.end method

.method private onRemoteLeave(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 228
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getInviteTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1

    .line 230
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1

    .line 233
    :cond_1
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 235
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 236
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getLocalTimestamp()J

    move-result-wide v6

    .line 237
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getInviteTimestamp()J

    move-result-wide v8

    sget-object v10, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->LEFT:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/CreatorState;)V

    return-object p1
.end method


# virtual methods
.method public onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/AbortMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/AbortMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 35
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/AbortMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1
.end method

.method public onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$CreatorState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getState()Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 64
    :pswitch_0
    new-instance p1, Lorg/briarproject/briar/api/client/ProtocolStateException;

    invoke-direct {p1}, Lorg/briarproject/briar/api/client/ProtocolStateException;-><init>()V

    throw p1

    .line 58
    :pswitch_1
    invoke-direct/range {p0 .. p6}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onLocalInvite(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 35
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual/range {p0 .. p6}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1
.end method

.method public onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 35
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1
.end method

.method public onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 0

    .line 72
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 35
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1
.end method

.method public onJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 107
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$CreatorState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getState()Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 118
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 113
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onRemoteAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1

    .line 111
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 35
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1
.end method

.method public onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 78
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$CreatorState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getState()Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 86
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onLocalLeave(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1

    :pswitch_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 35
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1
.end method

.method public onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 125
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$CreatorState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getState()Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 132
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onRemoteLeave(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1

    .line 130
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onRemoteDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1

    .line 128
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 35
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1
.end method

.method public onMemberAddedAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 0

    return-object p2
.end method

.method public bridge synthetic onMemberAddedAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 35
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorProtocolEngine;->onMemberAddedAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/CreatorSession;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    return-object p1
.end method
