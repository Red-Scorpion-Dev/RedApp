.class abstract Lorg/briarproject/briar/sharing/MessageParserImpl;
.super Ljava/lang/Object;
.source "MessageParserImpl.java"

# interfaces
.implements Lorg/briarproject/briar/sharing/MessageParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/briarproject/briar/api/sharing/Shareable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/sharing/MessageParser<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/briarproject/briar/sharing/MessageParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method


# virtual methods
.method public getInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/sharing/InviteMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")",
            "Lorg/briarproject/briar/sharing/InviteMessage<",
            "TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/briarproject/briar/sharing/MessageParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lorg/briarproject/briar/sharing/MessageParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/sync/Message;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 82
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/sharing/MessageParserImpl;->parseInviteMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/sharing/InviteMessage;

    move-result-object p1

    return-object p1
.end method

.method public getInvitesAvailableToAnswerQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 5

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "availableToAnswer"

    const/4 v3, 0x1

    .line 47
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "messageType"

    sget-object v4, Lorg/briarproject/briar/sharing/MessageType;->INVITE:Lorg/briarproject/briar/sharing/MessageType;

    .line 48
    invoke-virtual {v4}, Lorg/briarproject/briar/sharing/MessageType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 46
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getInvitesAvailableToAnswerQuery(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 5

    const/4 v0, 0x3

    .line 54
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "availableToAnswer"

    const/4 v3, 0x1

    .line 55
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "messageType"

    sget-object v4, Lorg/briarproject/briar/sharing/MessageType;->INVITE:Lorg/briarproject/briar/sharing/MessageType;

    .line 56
    invoke-virtual {v4}, Lorg/briarproject/briar/sharing/MessageType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "shareableId"

    invoke-direct {v1, v2, p1}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    .line 54
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesVisibleInUiQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    const/4 v0, 0x1

    .line 41
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

.method public parseAbortMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/sharing/AbortMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 130
    new-instance v3, Lorg/briarproject/bramble/api/sync/GroupId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    const/4 v0, 0x2

    .line 131
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    move-object v6, p2

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object v6, v0

    .line 133
    :goto_0
    new-instance p2, Lorg/briarproject/briar/sharing/AbortMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 134
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v4

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/sharing/AbortMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    return-object p2
.end method

.method public parseAcceptMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/sharing/AcceptMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 100
    new-instance v4, Lorg/briarproject/bramble/api/sync/GroupId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    const/4 v0, 0x2

    .line 101
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object v2, v0

    .line 103
    :goto_0
    new-instance p2, Lorg/briarproject/briar/sharing/AcceptMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 104
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/sharing/AcceptMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;J)V

    return-object p2
.end method

.method public parseDeclineMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/sharing/DeclineMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 110
    new-instance v3, Lorg/briarproject/bramble/api/sync/GroupId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    const/4 v0, 0x2

    .line 111
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    move-object v6, p2

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object v6, v0

    .line 113
    :goto_0
    new-instance p2, Lorg/briarproject/briar/sharing/DeclineMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 114
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v4

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/sharing/DeclineMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    return-object p2
.end method

.method public parseInviteMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/sharing/InviteMessage;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/Message;",
            "Lorg/briarproject/bramble/api/data/BdfList;",
            ")",
            "Lorg/briarproject/briar/sharing/InviteMessage<",
            "TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object v4, v1

    :goto_0
    const/4 v0, 0x2

    .line 90
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/sharing/MessageParserImpl;->createShareable(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object v6

    const/4 v0, 0x3

    .line 92
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalString(I)Ljava/lang/String;

    move-result-object v7

    .line 93
    new-instance p2, Lorg/briarproject/briar/sharing/InviteMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    .line 94
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v8

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, Lorg/briarproject/briar/sharing/InviteMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/sharing/Shareable;Ljava/lang/String;J)V

    return-object p2
.end method

.method public parseLeaveMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/sharing/LeaveMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 120
    new-instance v3, Lorg/briarproject/bramble/api/sync/GroupId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    const/4 v0, 0x2

    .line 121
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    move-object v6, p2

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object v6, v0

    .line 123
    :goto_0
    new-instance p2, Lorg/briarproject/briar/sharing/LeaveMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 124
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v4

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/sharing/LeaveMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    return-object p2
.end method

.method public parseMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/MessageMetadata;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "messageType"

    .line 65
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/briarproject/briar/sharing/MessageType;->fromValue(I)Lorg/briarproject/briar/sharing/MessageType;

    move-result-object v2

    .line 66
    new-instance v3, Lorg/briarproject/bramble/api/sync/GroupId;

    const-string v0, "shareableId"

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    const-string v0, "timestamp"

    .line 67
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "local"

    .line 68
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v0, "read"

    const/4 v1, 0x0

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v0, v7}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v0, "visibleInUi"

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p1, v0, v8}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v0, "availableToAnswer"

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p1, v0, v9}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v0, "invitationAccepted"

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 73
    new-instance p1, Lorg/briarproject/briar/sharing/MessageMetadata;

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lorg/briarproject/briar/sharing/MessageMetadata;-><init>(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)V

    return-object p1
.end method
