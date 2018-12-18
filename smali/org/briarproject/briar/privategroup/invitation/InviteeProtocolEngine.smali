.class Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;
.super Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;
.source "InviteeProtocolEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine<",
        "Lorg/briarproject/briar/privategroup/invitation/InviteeSession;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p11}, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)V

    return-void
.end method

.method private abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 314
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getState()Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->ERROR:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    if-ne v0, v1, :cond_0

    return-object p2

    .line 316
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->markInvitesUnavailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)V

    .line 318
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->isSubscribedPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 321
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->sendAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 323
    new-instance v10, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 324
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    .line 325
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getInviteTimestamp()J

    move-result-wide v7

    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->ERROR:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/InviteeState;)V

    return-object v10
.end method

.method private createInvitationRequest(Lorg/briarproject/briar/privategroup/invitation/InviteMessage;Lorg/briarproject/briar/api/privategroup/PrivateGroup;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;
    .locals 15

    .line 330
    new-instance v9, Lorg/briarproject/briar/api/client/SessionId;

    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    .line 331
    new-instance v14, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;

    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 332
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getTimestamp()J

    move-result-wide v3

    .line 333
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getText()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v0, v14

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v13}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Ljava/lang/String;ZZ)V

    return-object v14
.end method

.method private onLocalAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 173
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0, p1, v0, v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->markMessageAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    .line 177
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->markInviteAccepted(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    const/4 v1, 0x1

    .line 179
    invoke-virtual {p0, p1, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->sendJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v2, p1, v1}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 184
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->subscribeToPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 186
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->VISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 192
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    .line 193
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getInviteTimestamp()J

    move-result-wide v9

    sget-object v11, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->ACCEPTED:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/InviteeState;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 188
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private onLocalDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 199
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 201
    invoke-virtual {p0, p1, v0, v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->markMessageAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->sendLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 207
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 208
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    .line 209
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getInviteTimestamp()J

    move-result-wide v9

    sget-object v11, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->START:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/InviteeState;)V

    return-object p1

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private onLocalLeave(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->sendLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 218
    :try_start_0
    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 224
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    .line 225
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getInviteTimestamp()J

    move-result-wide v9

    sget-object v11, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->LEFT:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/InviteeState;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 220
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onRemoteInvite(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 231
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getTimestamp()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getInviteTimestamp()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object v1

    return-object v1

    .line 233
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v8

    .line 234
    iget-object v1, v0, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v7, v8}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/identity/AuthorId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object v1

    return-object v1

    .line 238
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v1, v2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->markMessageAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    .line 241
    iget-object v1, v0, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 242
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v2, p1

    .line 241
    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 244
    iget-object v1, v0, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 245
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getSalt()[B

    move-result-object v4

    .line 244
    invoke-interface {v1, v2, v3, v4}, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;->createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object v1

    .line 246
    new-instance v2, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationRequestReceivedEvent;

    move-object/from16 v3, p3

    .line 247
    invoke-direct {v0, v3, v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->createInvitationRequest(Lorg/briarproject/briar/privategroup/invitation/InviteMessage;Lorg/briarproject/briar/api/privategroup/PrivateGroup;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;

    move-result-object v1

    invoke-direct {v2, v1, v8}, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationRequestReceivedEvent;-><init>(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 246
    invoke-virtual {v7, v2}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 249
    new-instance v1, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v11

    .line 250
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLocalTimestamp()J

    move-result-wide v14

    .line 251
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getTimestamp()J

    move-result-wide v16

    sget-object v18, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->INVITED:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/InviteeState;)V

    return-object v1
.end method

.method private onRemoteJoin(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 257
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getInviteTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 259
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 263
    :cond_1
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 269
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLocalTimestamp()J

    move-result-wide v6

    .line 270
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getInviteTimestamp()J

    move-result-wide v8

    sget-object v10, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->JOINED:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/InviteeState;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 265
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onRemoteLeaveWhenNotSubscribed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 277
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getInviteTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 279
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 282
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->markInvitesUnavailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)V

    .line 284
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 285
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLocalTimestamp()J

    move-result-wide v5

    .line 286
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getInviteTimestamp()J

    move-result-wide v7

    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->DISSOLVED:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/InviteeState;)V

    return-object p1
.end method

.method private onRemoteLeaveWhenSubscribed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 293
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getInviteTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 295
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 299
    :cond_1
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->markGroupDissolved(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 306
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 307
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getLocalTimestamp()J

    move-result-wide v7

    .line 308
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getInviteTimestamp()J

    move-result-wide v9

    sget-object v11, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->DISSOLVED:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/InviteeState;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 301
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/AbortMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

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

    .line 40
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/AbortMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1
.end method

.method public onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 0

    .line 60
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual/range {p0 .. p6}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1
.end method

.method public onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 109
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$InviteeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getState()Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 121
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 117
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 111
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onRemoteInvite(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1
.end method

.method public onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 66
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$InviteeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getState()Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 75
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onLocalAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 73
    :pswitch_1
    new-instance p1, Lorg/briarproject/briar/api/client/ProtocolStateException;

    invoke-direct {p1}, Lorg/briarproject/briar/api/client/ProtocolStateException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1
.end method

.method public onJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 128
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$InviteeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getState()Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 136
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onRemoteJoin(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 134
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
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

    .line 40
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1
.end method

.method public onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 84
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$InviteeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getState()Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 91
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onLocalDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 94
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onLocalLeave(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    :pswitch_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 40
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1
.end method

.method public onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 147
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$InviteeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getState()Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 153
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onRemoteLeaveWhenNotSubscribed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 156
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onRemoteLeaveWhenSubscribed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
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

    .line 40
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1
.end method

.method public onMemberAddedAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
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

    .line 40
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeProtocolEngine;->onMemberAddedAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/InviteeSession;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    return-object p1
.end method
