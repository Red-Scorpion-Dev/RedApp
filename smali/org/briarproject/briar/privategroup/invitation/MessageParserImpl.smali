.class Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;
.super Ljava/lang/Object;
.source "MessageParserImpl.java"

# interfaces
.implements Lorg/briarproject/briar/privategroup/invitation/MessageParser;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/identity/AuthorFactory;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    .line 46
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 47
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method


# virtual methods
.method public getInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/privategroup/invitation/InviteMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 94
    iget-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/sync/Message;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 95
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;->parseInviteMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/InviteMessage;

    move-result-object p1

    return-object p1
.end method

.method public getInvitesAvailableToAnswerQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 5

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "availableToAnswer"

    const/4 v3, 0x1

    .line 58
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "messageType"

    sget-object v4, Lorg/briarproject/briar/privategroup/invitation/MessageType;->INVITE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    .line 59
    invoke-virtual {v4}, Lorg/briarproject/briar/privategroup/invitation/MessageType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 57
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getInvitesAvailableToAnswerQuery(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 5

    const/4 v0, 0x3

    .line 66
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "availableToAnswer"

    const/4 v3, 0x1

    .line 67
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "messageType"

    sget-object v4, Lorg/briarproject/briar/privategroup/invitation/MessageType;->INVITE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    .line 68
    invoke-virtual {v4}, Lorg/briarproject/briar/privategroup/invitation/MessageType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "privateGroupId"

    invoke-direct {v1, v2, p1}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    .line 66
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesVisibleInUiQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    const/4 v0, 0x1

    .line 52
    new-array v1, v0, [Ljava/util/Map$Entry;

    new-instance v2, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v3, "visibleInUi"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    invoke-static {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public parseAbortMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/AbortMessage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 146
    new-instance v3, Lorg/briarproject/bramble/api/sync/GroupId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p2

    invoke-direct {v3, p2}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    .line 147
    new-instance p2, Lorg/briarproject/briar/privategroup/invitation/AbortMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 148
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v4

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/privategroup/invitation/AbortMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;J)V

    return-object p2
.end method

.method public parseInviteMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/InviteMessage;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    .line 102
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v3

    const/4 v4, 0x2

    .line 103
    invoke-virtual {v1, v4}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x3

    .line 104
    invoke-virtual {v1, v5}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v13

    const/4 v5, 0x4

    .line 105
    invoke-virtual {v1, v5}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v5, 0x5

    .line 106
    invoke-virtual {v1, v5}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v15

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v3, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 111
    invoke-virtual {v3, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {v3, v4}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v3

    .line 114
    iget-object v4, v0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    invoke-interface {v4, v1, v2, v3}, Lorg/briarproject/bramble/api/identity/AuthorFactory;->createAuthor(ILjava/lang/String;[B)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v12

    .line 116
    iget-object v1, v0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    invoke-interface {v1, v11, v12, v13}, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;->createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object v1

    .line 118
    new-instance v2, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;

    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v7

    .line 119
    invoke-virtual {v1}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v9

    move-object v5, v2

    invoke-direct/range {v5 .. v15}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLjava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[BLjava/lang/String;[B)V

    return-object v2

    .line 110
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v1
.end method

.method public parseJoinMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/JoinMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 126
    new-instance v3, Lorg/briarproject/bramble/api/sync/GroupId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    const/4 v0, 0x2

    .line 127
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    move-object v6, p2

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object v6, v0

    .line 129
    :goto_0
    new-instance p2, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 130
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v4

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/privategroup/invitation/JoinMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    return-object p2
.end method

.method public parseLeaveMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 136
    new-instance v3, Lorg/briarproject/bramble/api/sync/GroupId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    const/4 v0, 0x2

    .line 137
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    move-object v6, p2

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object v6, v0

    .line 139
    :goto_0
    new-instance p2, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 140
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v4

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    return-object p2
.end method

.method public parseMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "messageType"

    .line 77
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 76
    invoke-static {v0}, Lorg/briarproject/briar/privategroup/invitation/MessageType;->fromValue(I)Lorg/briarproject/briar/privategroup/invitation/MessageType;

    move-result-object v2

    .line 78
    new-instance v3, Lorg/briarproject/bramble/api/sync/GroupId;

    const-string v0, "privateGroupId"

    .line 79
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    const-string v0, "timestamp"

    .line 80
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "local"

    .line 81
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v0, "read"

    const/4 v1, 0x0

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v0, v7}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v0, "visibleInUi"

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p1, v0, v8}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v0, "availableToAnswer"

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p1, v0, v9}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v0, "invitationAccepted"

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 86
    new-instance p1, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;-><init>(Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)V

    return-object p1
.end method
