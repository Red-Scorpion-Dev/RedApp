.class Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;
.super Ljava/lang/Object;
.source "MessageEncoderImpl.java"

# interfaces
.implements Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/sync/MessageFactory;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 42
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    return-void
.end method


# virtual methods
.method public encodeAbortMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;J)Lorg/briarproject/bramble/api/sync/Message;
    .locals 3

    const/4 v0, 0x2

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/MessageType;->ABORT:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    .line 136
    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/MessageType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 135
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 141
    invoke-interface {v1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p2

    .line 140
    invoke-interface {v0, p1, p3, p4, p2}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 143
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public encodeInviteMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLjava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[BLjava/lang/String;[B)Lorg/briarproject/bramble/api/sync/Message;
    .locals 2

    .line 81
    iget-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p2, p6}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    const/4 p6, 0x6

    .line 82
    new-array p6, p6, [Ljava/lang/Object;

    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/MessageType;->INVITE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    .line 83
    invoke-virtual {v0}, Lorg/briarproject/briar/privategroup/invitation/MessageType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p6, v1

    const/4 v0, 0x1

    aput-object p2, p6, v0

    const/4 p2, 0x2

    aput-object p5, p6, p2

    const/4 p2, 0x3

    aput-object p7, p6, p2

    const/4 p2, 0x4

    aput-object p8, p6, p2

    const/4 p2, 0x5

    aput-object p9, p6, p2

    .line 82
    invoke-static {p6}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 91
    :try_start_0
    iget-object p5, p0, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    iget-object p6, p0, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 92
    invoke-interface {p6, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p2

    .line 91
    invoke-interface {p5, p1, p3, p4, p2}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 94
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public encodeJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 3

    const/4 v0, 0x3

    .line 102
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/MessageType;->JOIN:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    .line 103
    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/MessageType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    aput-object p5, v0, p2

    .line 102
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 108
    :try_start_0
    iget-object p5, p0, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 109
    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p2

    .line 108
    invoke-interface {p5, p1, p3, p4, p2}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 111
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public encodeLeaveMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 3

    const/4 v0, 0x3

    .line 119
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/MessageType;->LEAVE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    .line 120
    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/MessageType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    aput-object p5, v0, p2

    .line 119
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 125
    :try_start_0
    iget-object p5, p0, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 126
    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p2

    .line 125
    invoke-interface {p5, p1, p3, p4, p2}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 128
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public encodeMetadata(Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 2

    .line 49
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v1, "messageType"

    .line 50
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/MessageType;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "privateGroupId"

    .line 51
    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timestamp"

    .line 52
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "local"

    .line 53
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "read"

    .line 54
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "visibleInUi"

    .line 55
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "availableToAnswer"

    .line 56
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "invitationAccepted"

    .line 57
    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public setAvailableToAnswer(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    .locals 1

    const-string v0, "availableToAnswer"

    .line 68
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInvitationAccepted(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    .locals 1

    const-string v0, "invitationAccepted"

    .line 73
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVisibleInUi(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    .locals 1

    const-string v0, "visibleInUi"

    .line 63
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
