.class Lorg/briarproject/briar/introduction/MessageEncoderImpl;
.super Ljava/lang/Object;
.source "MessageEncoderImpl.java"

# interfaces
.implements Lorg/briarproject/briar/introduction/MessageEncoder;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/sync/MessageFactory;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 46
    iput-object p2, p0, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    return-void
.end method

.method private createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 2

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 177
    invoke-interface {v1, p4}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p4

    .line 176
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 179
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private encodeMessage(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 2

    const/4 v0, 0x3

    .line 165
    new-array v0, v0, [Ljava/lang/Object;

    .line 166
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/MessageType;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p6, v0, p1

    .line 165
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    .line 170
    invoke-direct {p0, p2, p4, p5, p1}, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addSessionId(Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/briar/api/client/SessionId;)V
    .locals 1

    const-string v0, "sessionId"

    .line 76
    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public encodeAbortMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 7

    .line 158
    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->ABORT:Lorg/briarproject/briar/introduction/MessageType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p5

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->encodeMessage(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeAcceptMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[BJLjava/util/Map;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "J",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/briar/api/client/SessionId;",
            "[BJ",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;)",
            "Lorg/briarproject/bramble/api/sync/Message;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 110
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->ACCEPT:Lorg/briarproject/briar/introduction/MessageType;

    .line 111
    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/MessageType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p5, v0, v1

    const/4 p5, 0x2

    aput-object p4, v0, p5

    const/4 p4, 0x3

    aput-object p6, v0, p4

    .line 115
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const/4 p5, 0x4

    aput-object p4, v0, p5

    iget-object p4, p0, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 116
    invoke-interface {p4, p9}, Lorg/briarproject/bramble/api/client/ClientHelper;->toDictionary(Ljava/util/Map;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p4

    const/4 p5, 0x5

    aput-object p4, v0, p5

    .line 110
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p4

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeActivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[B)Lorg/briarproject/bramble/api/sync/Message;
    .locals 3

    const/4 v0, 0x4

    .line 146
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->ACTIVATE:Lorg/briarproject/briar/introduction/MessageType;

    .line 147
    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/MessageType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p5, v0, v1

    const/4 p5, 0x2

    aput-object p4, v0, p5

    const/4 p4, 0x3

    aput-object p6, v0, p4

    .line 146
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p4

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeAuthMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[B[B)Lorg/briarproject/bramble/api/sync/Message;
    .locals 3

    const/4 v0, 0x5

    .line 132
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->AUTH:Lorg/briarproject/briar/introduction/MessageType;

    .line 133
    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/MessageType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p5, v0, v1

    const/4 p5, 0x2

    aput-object p4, v0, p5

    const/4 p4, 0x3

    aput-object p6, v0, p4

    const/4 p4, 0x4

    aput-object p7, v0, p4

    .line 132
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p4

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeDeclineMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 7

    .line 124
    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->DECLINE:Lorg/briarproject/briar/introduction/MessageType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p5

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->encodeMessage(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeMetadata(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;JZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 3

    .line 61
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v1, "messageType"

    .line 62
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/MessageType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "sessionId"

    .line 64
    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    sget-object p2, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    if-ne p1, p2, :cond_1

    :goto_0
    const-string p1, "timestamp"

    .line 67
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "local"

    .line 68
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "read"

    .line 69
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "visibleInUi"

    .line 70
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public encodeRequestMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 3

    if-eqz p6, :cond_1

    .line 93
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x4

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    .line 97
    invoke-virtual {v2}, Lorg/briarproject/briar/introduction/MessageType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 p4, 0x2

    iget-object v1, p0, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 99
    invoke-interface {v1, p5}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p5

    aput-object p5, v0, p4

    const/4 p4, 0x3

    aput-object p6, v0, p4

    .line 96
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p4

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeRequestMetadata(J)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 8

    .line 51
    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v3, p1

    .line 52
    invoke-virtual/range {v0 .. v7}, Lorg/briarproject/briar/introduction/MessageEncoderImpl;->encodeMetadata(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;JZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    const-string p2, "availableToAnswer"

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public setAvailableToAnswer(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    .locals 1

    const-string v0, "availableToAnswer"

    .line 86
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVisibleInUi(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    .locals 1

    const-string v0, "visibleInUi"

    .line 81
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
