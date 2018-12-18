.class Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;
.super Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;
.source "PeerProtocolEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine<",
        "Lorg/briarproject/briar/privategroup/invitation/PeerSession;",
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

.method private abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 344
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getState()Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/PeerState;->ERROR:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    if-ne v0, v1, :cond_0

    return-object p2

    .line 346
    :cond_0
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->isSubscribedPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 349
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->sendAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 351
    new-instance v8, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 352
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    sget-object v7, Lorg/briarproject/briar/privategroup/invitation/PeerState;->ERROR:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object v8
.end method

.method private onLocalJoinFromLocalLeft(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->sendJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 192
    :try_start_0
    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 199
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/PeerState;->BOTH_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 194
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onLocalJoinFromNeitherJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->sendJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 176
    :try_start_0
    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->VISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 182
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/PeerState;->LOCAL_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 178
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onLocalLeaveFromBothJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->sendLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 209
    :try_start_0
    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 215
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/PeerState;->LOCAL_LEFT:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 211
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onLocalLeaveFromLocalJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->sendLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 225
    :try_start_0
    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 231
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/PeerState;->NEITHER_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 227
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onMemberAddedFromAwaitMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->sendJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 248
    :try_start_0
    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    .line 254
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->relationshipRevealed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Z)V
    :try_end_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 260
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/PeerState;->BOTH_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 256
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 250
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onMemberAddedFromStart(Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 9

    .line 237
    new-instance v8, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 238
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    .line 239
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLocalTimestamp()J

    move-result-wide v5

    sget-object v7, Lorg/briarproject/briar/privategroup/invitation/PeerState;->NEITHER_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object v8
.end method

.method private onRemoteJoinFromLocalJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 294
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 297
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->relationshipRevealed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Z)V

    .line 301
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 302
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLocalTimestamp()J

    move-result-wide v6

    sget-object v8, Lorg/briarproject/briar/privategroup/invitation/PeerState;->BOTH_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object p1
.end method

.method private onRemoteJoinFromNeitherJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 278
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->sendJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 283
    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    const/4 v1, 0x1

    .line 285
    invoke-direct {p0, p1, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->relationshipRevealed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Z)V

    .line 287
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 288
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/PeerState;->BOTH_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object p1
.end method

.method private onRemoteJoinFromStart(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 267
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 270
    :cond_0
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 271
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLocalTimestamp()J

    move-result-wide v5

    sget-object v7, Lorg/briarproject/briar/privategroup/invitation/PeerState;->AWAIT_MEMBER:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object p1
.end method

.method private onRemoteLeaveFromAwaitMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 309
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 312
    :cond_0
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 313
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLocalTimestamp()J

    move-result-wide v5

    sget-object v7, Lorg/briarproject/briar/privategroup/invitation/PeerState;->START:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object p1
.end method

.method private onRemoteLeaveFromBothJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 331
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 334
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->VISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 336
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 337
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLocalTimestamp()J

    move-result-wide v6

    sget-object v8, Lorg/briarproject/briar/privategroup/invitation/PeerState;->LOCAL_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object p1
.end method

.method private onRemoteLeaveFromLocalLeft(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 320
    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 323
    :cond_0
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 324
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p3}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getLocalTimestamp()J

    move-result-wide v5

    sget-object v7, Lorg/briarproject/briar/privategroup/invitation/PeerState;->NEITHER_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object p1
.end method

.method private relationshipRevealed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 358
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    .line 361
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    .line 360
    invoke-interface {v1, p1, p2, v0, p3}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->relationshipRevealed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/AuthorId;Z)V

    return-void
.end method


# virtual methods
.method public onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/AbortMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

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
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/AbortMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1
.end method

.method public onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 0

    .line 55
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

    .line 35
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual/range {p0 .. p6}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1
.end method

.method public onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

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
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1
.end method

.method public onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$PeerState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getState()Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/PeerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 71
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onLocalJoinFromLocalLeft(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 69
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onLocalJoinFromNeitherJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_2
    new-instance p1, Lorg/briarproject/briar/api/client/ProtocolStateException;

    invoke-direct {p1}, Lorg/briarproject/briar/api/client/ProtocolStateException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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

    .line 35
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1
.end method

.method public onJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 125
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$PeerState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getState()Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/PeerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 133
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onRemoteJoinFromNeitherJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    :pswitch_1
    return-object p2

    .line 135
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onRemoteJoinFromLocalJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 129
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 131
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onRemoteJoinFromStart(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
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
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1
.end method

.method public onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 80
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$PeerState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getState()Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/PeerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 90
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onLocalLeaveFromBothJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onLocalLeaveFromLocalJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    :pswitch_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1
.end method

.method public onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 146
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$PeerState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getState()Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/PeerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 154
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onRemoteLeaveFromLocalLeft(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    :pswitch_1
    return-object p2

    .line 156
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onRemoteLeaveFromBothJoined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 152
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onRemoteLeaveFromAwaitMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
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
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1
.end method

.method public onMemberAddedAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 99
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$PeerState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getState()Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/PeerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 108
    :pswitch_1
    new-instance p1, Lorg/briarproject/briar/api/client/ProtocolStateException;

    invoke-direct {p1}, Lorg/briarproject/briar/api/client/ProtocolStateException;-><init>()V

    throw p1

    .line 103
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onMemberAddedFromAwaitMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    .line 101
    :pswitch_3
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onMemberAddedFromStart(Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onMemberAddedAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 35
    check-cast p2, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerProtocolEngine;->onMemberAddedAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/PeerSession;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    return-object p1
.end method
