.class Lorg/briarproject/briar/introduction/MessageParserImpl;
.super Ljava/lang/Object;
.source "MessageParserImpl.java"

# interfaces
.implements Lorg/briarproject/briar/introduction/MessageParser;


# annotations
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
    iput-object p1, p0, Lorg/briarproject/briar/introduction/MessageParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method


# virtual methods
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

.method public getRequestsAvailableToAnswerQuery(Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 5

    const/4 v0, 0x3

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

    sget-object v4, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    .line 48
    invoke-virtual {v4}, Lorg/briarproject/briar/introduction/MessageType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "sessionId"

    invoke-direct {v1, v2, p1}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    .line 46
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1
.end method

.method public parseAbortMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/AbortMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 135
    new-instance v6, Lorg/briarproject/briar/api/client/SessionId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    const/4 v0, 0x2

    .line 136
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    move-object v5, p2

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object v5, v0

    .line 139
    :goto_0
    new-instance p2, Lorg/briarproject/briar/introduction/AbortMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/introduction/AbortMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)V

    return-object p2
.end method

.method public parseAcceptMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/AcceptMessage;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 85
    new-instance v6, Lorg/briarproject/briar/api/client/SessionId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    const/4 v0, 0x2

    .line 86
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object v5, v1

    :goto_0
    const/4 v0, 0x3

    .line 89
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v7

    const/4 v0, 0x4

    .line 90
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 91
    iget-object v0, p0, Lorg/briarproject/briar/introduction/MessageParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    const/4 v1, 0x5

    .line 92
    invoke-virtual {p2, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateTransportPropertiesMap(Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v10

    .line 93
    new-instance p2, Lorg/briarproject/briar/introduction/AcceptMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/introduction/AcceptMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[BJLjava/util/Map;)V

    return-object p2
.end method

.method public parseActivateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/ActivateMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 124
    new-instance v6, Lorg/briarproject/briar/api/client/SessionId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    const/4 v0, 0x2

    .line 125
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    .line 126
    new-instance v5, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v5, v0}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    const/4 v0, 0x3

    .line 127
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v7

    .line 128
    new-instance p2, Lorg/briarproject/briar/introduction/ActivateMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/introduction/ActivateMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[B)V

    return-object p2
.end method

.method public parseAuthMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/AuthMessage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 112
    new-instance v6, Lorg/briarproject/briar/api/client/SessionId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    const/4 v0, 0x2

    .line 113
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    .line 114
    new-instance v5, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v5, v0}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    const/4 v0, 0x3

    .line 115
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v7

    const/4 v0, 0x4

    .line 116
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v8

    .line 117
    new-instance p2, Lorg/briarproject/briar/introduction/AuthMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/introduction/AuthMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[B[B)V

    return-object p2
.end method

.method public parseDeclineMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/DeclineMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 101
    new-instance v6, Lorg/briarproject/briar/api/client/SessionId;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    const/4 v0, 0x2

    .line 102
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    move-object v5, p2

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object v5, v0

    .line 105
    :goto_0
    new-instance p2, Lorg/briarproject/briar/introduction/DeclineMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/introduction/DeclineMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)V

    return-object p2
.end method

.method public parseMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/MessageMetadata;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "messageType"

    .line 57
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/briarproject/briar/introduction/MessageType;->fromValue(I)Lorg/briarproject/briar/introduction/MessageType;

    move-result-object v2

    const-string v0, "sessionId"

    .line 58
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Lorg/briarproject/briar/api/client/SessionId;

    invoke-direct {v1, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    move-object v3, v1

    :goto_0
    const-string v0, "timestamp"

    .line 61
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "local"

    .line 62
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v0, "read"

    .line 63
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v0, "visibleInUi"

    .line 64
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v0, "availableToAnswer"

    const/4 v1, 0x0

    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 66
    new-instance p1, Lorg/briarproject/briar/introduction/MessageMetadata;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/briarproject/briar/introduction/MessageMetadata;-><init>(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;JZZZZ)V

    return-object p1
.end method

.method public parseRequestMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/RequestMessage;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object v7, v1

    .line 76
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/introduction/MessageParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v8

    const/4 v0, 0x3

    .line 77
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalString(I)Ljava/lang/String;

    move-result-object v9

    .line 78
    new-instance p2, Lorg/briarproject/briar/introduction/RequestMessage;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 79
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, Lorg/briarproject/briar/introduction/RequestMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)V

    return-object p2
.end method
