.class Lorg/briarproject/briar/sharing/MessageEncoderImpl;
.super Ljava/lang/Object;
.source "MessageEncoderImpl.java"

# interfaces
.implements Lorg/briarproject/briar/sharing/MessageEncoder;


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
    iput-object p1, p0, Lorg/briarproject/briar/sharing/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 42
    iput-object p2, p0, Lorg/briarproject/briar/sharing/MessageEncoderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    return-void
.end method

.method private encodeMessage(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 2

    const/4 v0, 0x3

    .line 131
    new-array v0, v0, [Ljava/lang/Object;

    .line 132
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/MessageType;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p6, v0, p1

    .line 131
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    .line 137
    :try_start_0
    iget-object p3, p0, Lorg/briarproject/briar/sharing/MessageEncoderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    iget-object p6, p0, Lorg/briarproject/briar/sharing/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 138
    invoke-interface {p6, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p1

    .line 137
    invoke-interface {p3, p2, p4, p5, p1}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 140
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public encodeAbortMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 7

    .line 124
    sget-object v1, Lorg/briarproject/briar/sharing/MessageType;->ABORT:Lorg/briarproject/briar/sharing/MessageType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/sharing/MessageEncoderImpl;->encodeMessage(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeAcceptMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 7

    .line 100
    sget-object v1, Lorg/briarproject/briar/sharing/MessageType;->ACCEPT:Lorg/briarproject/briar/sharing/MessageType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/sharing/MessageEncoderImpl;->encodeMessage(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeDeclineMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 7

    .line 108
    sget-object v1, Lorg/briarproject/briar/sharing/MessageType;->DECLINE:Lorg/briarproject/briar/sharing/MessageType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/sharing/MessageEncoderImpl;->encodeMessage(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeInviteMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfList;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 3

    if-eqz p6, :cond_1

    .line 80
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x4

    .line 82
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lorg/briarproject/briar/sharing/MessageType;->INVITE:Lorg/briarproject/briar/sharing/MessageType;

    .line 83
    invoke-virtual {v2}, Lorg/briarproject/briar/sharing/MessageType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 p4, 0x2

    aput-object p5, v0, p4

    const/4 p4, 0x3

    aput-object p6, v0, p4

    .line 82
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p4

    .line 89
    :try_start_0
    iget-object p5, p0, Lorg/briarproject/briar/sharing/MessageEncoderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    iget-object p6, p0, Lorg/briarproject/briar/sharing/MessageEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 90
    invoke-interface {p6, p4}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object p4

    .line 89
    invoke-interface {p5, p1, p2, p3, p4}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 92
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public encodeLeaveMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 7

    .line 116
    sget-object v1, Lorg/briarproject/briar/sharing/MessageType;->LEAVE:Lorg/briarproject/briar/sharing/MessageType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/sharing/MessageEncoderImpl;->encodeMessage(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public encodeMetadata(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 2

    .line 49
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v1, "messageType"

    .line 50
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/MessageType;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "shareableId"

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
