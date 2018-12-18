.class abstract Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;
.super Ljava/lang/Object;
.source "AbstractProtocolEngine.java"

# interfaces
.implements Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/briarproject/briar/privategroup/invitation/Session;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field protected final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field protected final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

.field private final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field private final messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

.field private final messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

.field protected final messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

.field protected final privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

.field protected final privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 67
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 68
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 69
    iput-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 70
    iput-object p5, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 71
    iput-object p6, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    .line 72
    iput-object p7, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 73
    iput-object p8, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    .line 74
    iput-object p9, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    .line 75
    iput-object p10, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 76
    iput-object p11, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method

.method private sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    .line 223
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p3

    move-object v2, p4

    move v7, p5

    invoke-interface/range {v0 .. v9}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    .line 226
    :try_start_0
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    const/4 p5, 0x1

    invoke-interface {p4, p1, p2, p3, p5}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 228
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    .line 83
    new-instance p2, Lorg/briarproject/bramble/api/contact/ContactId;

    const-string v0, "contactId"

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    return-object p2
.end method

.method getLocalTimestamp(Lorg/briarproject/briar/privategroup/invitation/Session;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)J"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 215
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/Session;->getLocalTimestamp()J

    move-result-wide v2

    .line 216
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/Session;->getInviteTimestamp()J

    move-result-wide v4

    .line 215
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 214
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method isSubscribedPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object p1

    sget-object p2, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/sync/ClientId;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isValidDependency(Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")Z"
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/Session;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p2, p1}, Lorg/briarproject/bramble/api/sync/MessageId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method markInviteAccepted(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 188
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 189
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->setInvitationAccepted(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 191
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 193
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method markInvitesUnavailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 177
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    .line 179
    invoke-interface {v1, v0}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->getInvitesAvailableToAnswerQuery(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 182
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    .line 181
    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object p2

    .line 183
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0, p1, v0, v1}, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->markMessageAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method markMessageAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 166
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 167
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    invoke-interface {v1, v0, p3}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->setAvailableToAnswer(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 169
    :try_start_0
    iget-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p3, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 171
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 155
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 156
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->setVisibleInUi(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 158
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 160
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method sendAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;)",
            "Lorg/briarproject/bramble/api/sync/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    .line 147
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 148
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/privategroup/invitation/Session;)J

    move-result-wide v3

    .line 146
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->encodeAbortMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;J)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 149
    sget-object v8, Lorg/briarproject/briar/privategroup/invitation/MessageType;->ABORT:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, v0

    invoke-direct/range {v5 .. v10}, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-object v0
.end method

.method sendInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Ljava/lang/String;J[B)Lorg/briarproject/bramble/api/sync/Message;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Ljava/lang/String;",
            "J[B)",
            "Lorg/briarproject/bramble/api/sync/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 112
    iget-object v0, v7, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v0, v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 115
    :try_start_0
    iget-object v1, v7, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    invoke-interface {v1, v0}, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;->parsePrivateGroup(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object v0
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    iget-object v8, v7, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    .line 120
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v9

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v10

    .line 121
    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v14

    .line 122
    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getSalt()[B

    move-result-object v15

    move-wide/from16 v11, p4

    move-object/from16 v16, p3

    move-object/from16 v17, p6

    .line 119
    invoke-interface/range {v8 .. v17}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->encodeInviteMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLjava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[BLjava/lang/String;[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v8

    .line 123
    sget-object v4, Lorg/briarproject/briar/privategroup/invitation/MessageType;->INVITE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-object v8

    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method sendJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;Z)",
            "Lorg/briarproject/bramble/api/sync/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    .line 130
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 131
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/privategroup/invitation/Session;)J

    move-result-wide v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 129
    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->encodeJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 132
    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/MessageType;->JOIN:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v10

    move-object v6, p0

    move-object v7, p1

    move-object v8, v0

    move v11, p3

    invoke-direct/range {v6 .. v11}, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-object v0
.end method

.method sendLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Z)Lorg/briarproject/bramble/api/sync/Message;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;Z)",
            "Lorg/briarproject/bramble/api/sync/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    .line 139
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 140
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/privategroup/invitation/Session;)J

    move-result-wide v3

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 138
    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->encodeLeaveMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 141
    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/MessageType;->LEAVE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v10

    move-object v6, p0

    move-object v7, p1

    move-object v8, v0

    move v11, p3

    invoke-direct/range {v6 .. v11}, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-object v0
.end method

.method setPrivateGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;",
            "Lorg/briarproject/bramble/api/sync/Group$Visibility;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 102
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    sget-object v2, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v3, 0x0

    invoke-interface {v1, p1, v0, v2, v3}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->getClientVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    .line 105
    invoke-static {p3, v1}, Lorg/briarproject/bramble/api/sync/Group$Visibility;->min(Lorg/briarproject/bramble/api/sync/Group$Visibility;Lorg/briarproject/bramble/api/sync/Group$Visibility;)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object p3

    .line 106
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/Session;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-interface {v1, p1, v0, p2, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    return-void
.end method

.method subscribeToPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->getInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/privategroup/invitation/InviteMessage;

    move-result-object p2

    .line 200
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 201
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getSalt()[B

    move-result-object v3

    .line 200
    invoke-interface {v0, v1, v2, v3}, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;->createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 203
    invoke-interface {v1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 205
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v1, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v9

    .line 206
    iget-object v5, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    .line 207
    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v6

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getTimestamp()J

    move-result-wide v10

    .line 208
    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getSignature()[B

    move-result-object v12

    .line 206
    invoke-interface/range {v5 .. v12}, Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;->createJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/identity/LocalAuthor;J[B)Lorg/briarproject/briar/api/privategroup/GroupMessage;

    move-result-object p2

    .line 209
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/AbstractProtocolEngine;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    const/4 v2, 0x0

    .line 210
    invoke-interface {v1, p1, v0, p2, v2}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->addPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Z)V

    return-void
.end method
