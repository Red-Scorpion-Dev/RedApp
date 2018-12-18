.class Lorg/briarproject/briar/introduction/IntroduceeSession;
.super Lorg/briarproject/briar/introduction/Session;
.source "IntroduceeSession.java"

# interfaces
.implements Lorg/briarproject/briar/introduction/PeerSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;,
        Lorg/briarproject/briar/introduction/IntroduceeSession$Local;,
        Lorg/briarproject/briar/introduction/IntroduceeSession$Common;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/introduction/Session<",
        "Lorg/briarproject/briar/introduction/IntroduceeState;",
        ">;",
        "Lorg/briarproject/briar/introduction/PeerSession;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final introducer:Lorg/briarproject/bramble/api/identity/Author;

.field private final local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

.field private final masterKey:[B

.field private final remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

.field private final transportKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroduceeState;JLorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/client/SessionId;",
            "Lorg/briarproject/briar/introduction/IntroduceeState;",
            "J",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/identity/Author;",
            "Lorg/briarproject/briar/introduction/IntroduceeSession$Local;",
            "Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;",
            "[B",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/Session;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/State;J)V

    .line 43
    iput-object p5, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 44
    iput-object p6, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->introducer:Lorg/briarproject/bramble/api/identity/Author;

    .line 45
    iput-object p7, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    .line 46
    iput-object p8, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    .line 47
    iput-object p9, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->masterKey:[B

    .line 48
    iput-object p10, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->transportKeys:Ljava/util/Map;

    return-void
.end method

.method static addLocalAccept(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/Message;[B[BJLjava/util/Map;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroduceeSession;",
            "Lorg/briarproject/briar/introduction/IntroduceeState;",
            "Lorg/briarproject/bramble/api/sync/Message;",
            "[B[BJ",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;)",
            "Lorg/briarproject/briar/introduction/IntroduceeSession;"
        }
    .end annotation

    move-object v0, p0

    .line 76
    new-instance v12, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-boolean v2, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->alice:Z

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    .line 77
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v4

    const/4 v11, 0x0

    move-object v1, v12

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-wide/from16 v9, p5

    invoke-direct/range {v1 .. v11}, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;-><init>(ZLorg/briarproject/bramble/api/sync/MessageId;J[B[BLjava/util/Map;J[B)V

    .line 80
    new-instance v11, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRequestTimestamp()J

    move-result-wide v3

    iget-object v5, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v6, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->introducer:Lorg/briarproject/bramble/api/identity/Author;

    iget-object v8, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v9, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->masterKey:[B

    iget-object v10, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->transportKeys:Ljava/util/Map;

    move-object v0, v11

    move-object v2, p1

    move-object v7, v12

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/introduction/IntroduceeSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroduceeState;JLorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;[BLjava/util/Map;)V

    return-object v11
.end method

.method static addLocalAuth(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 22

    move-object/from16 v0, p0

    .line 100
    new-instance v12, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-boolean v2, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->alice:Z

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v4

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-object v6, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->ephemeralPublicKey:[B

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-object v7, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->ephemeralPrivateKey:[B

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-object v8, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->transportProperties:Ljava/util/Map;

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-wide v9, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->acceptTimestamp:J

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-boolean v1, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->alice:Z

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v1

    :goto_0
    move-object v11, v1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v1

    goto :goto_0

    :goto_1
    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;-><init>(ZLorg/briarproject/bramble/api/sync/MessageId;J[B[BLjava/util/Map;J[B)V

    .line 105
    new-instance v8, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-boolean v14, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->alice:Z

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v15, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v1, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->lastMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    iget-object v2, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v2, v2, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->ephemeralPublicKey:[B

    iget-object v3, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v3, v3, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->transportProperties:Ljava/util/Map;

    iget-object v4, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-wide v4, v4, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->acceptTimestamp:J

    iget-object v6, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-boolean v6, v6, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->alice:Z

    if-eqz v6, :cond_1

    .line 108
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v6

    :goto_2
    move-object/from16 v21, v6

    goto :goto_3

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v6

    goto :goto_2

    :goto_3
    move-object v13, v8

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    invoke-direct/range {v13 .. v21}, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;-><init>(ZLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[B)V

    .line 110
    new-instance v11, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual/range {p0 .. p0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRequestTimestamp()J

    move-result-wide v3

    iget-object v5, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v6, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->introducer:Lorg/briarproject/bramble/api/identity/Author;

    .line 112
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v9

    iget-object v10, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->transportKeys:Ljava/util/Map;

    move-object v0, v11

    move-object/from16 v2, p1

    move-object v7, v12

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/introduction/IntroduceeSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroduceeState;JLorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;[BLjava/util/Map;)V

    return-object v11
.end method

.method static addRemoteAccept(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 11

    .line 87
    new-instance v9, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-boolean v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->alice:Z

    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v2, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 88
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/AcceptMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    .line 89
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/AcceptMessage;->getEphemeralPublicKey()[B

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/AcceptMessage;->getTransportProperties()Ljava/util/Map;

    move-result-object v5

    .line 90
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/AcceptMessage;->getAcceptTimestamp()J

    move-result-wide v6

    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v8, p2, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->macKey:[B

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;-><init>(ZLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[B)V

    .line 91
    new-instance p2, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRequestTimestamp()J

    move-result-wide v3

    iget-object v5, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v6, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->introducer:Lorg/briarproject/bramble/api/identity/Author;

    iget-object v7, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-object v10, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->masterKey:[B

    iget-object p0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->transportKeys:Ljava/util/Map;

    move-object v0, p2

    move-object v2, p1

    move-object v8, v9

    move-object v9, v10

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/introduction/IntroduceeSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroduceeState;JLorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;[BLjava/util/Map;)V

    return-object p2
.end method

.method static addRemoteRequest(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 12

    .line 65
    new-instance v8, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/RequestMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v0, v1, v2}, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;-><init>(Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/IntroduceeSession$1;)V

    .line 66
    new-instance v11, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/RequestMessage;->getTimestamp()J

    move-result-wide v3

    iget-object v5, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v6, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->introducer:Lorg/briarproject/bramble/api/identity/Author;

    iget-object v7, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-object v9, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->masterKey:[B

    iget-object v10, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->transportKeys:Ljava/util/Map;

    move-object v0, v11

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/introduction/IntroduceeSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroduceeState;JLorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;[BLjava/util/Map;)V

    return-object v11
.end method

.method static awaitActivate(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AuthMessage;Lorg/briarproject/bramble/api/sync/Message;Ljava/util/Map;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroduceeSession;",
            "Lorg/briarproject/briar/introduction/AuthMessage;",
            "Lorg/briarproject/bramble/api/sync/Message;",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            ">;)",
            "Lorg/briarproject/briar/introduction/IntroduceeSession;"
        }
    .end annotation

    .line 117
    new-instance v7, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;-><init>(Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/introduction/IntroduceeSession$1;)V

    .line 118
    new-instance v8, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/AuthMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {v8, p2, p1, v0}, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;-><init>(Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/IntroduceeSession$1;)V

    .line 119
    new-instance p1, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    sget-object v2, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_ACTIVATE:Lorg/briarproject/briar/introduction/IntroduceeState;

    .line 120
    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRequestTimestamp()J

    move-result-wide v3

    iget-object v5, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v6, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->introducer:Lorg/briarproject/bramble/api/identity/Author;

    const/4 v9, 0x0

    move-object v0, p1

    move-object v10, p3

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/introduction/IntroduceeSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroduceeState;JLorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;[BLjava/util/Map;)V

    return-object p1
.end method

.method static clear(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 22

    move-object/from16 v0, p0

    .line 127
    new-instance v12, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-boolean v2, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->alice:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object v1, v12

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v11}, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;-><init>(ZLorg/briarproject/bramble/api/sync/MessageId;J[B[BLjava/util/Map;J[B)V

    .line 130
    new-instance v8, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-boolean v14, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->alice:Z

    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v15, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    move-object v13, v8

    move-object/from16 v16, p5

    invoke-direct/range {v13 .. v21}, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;-><init>(ZLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[B)V

    .line 133
    new-instance v11, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual/range {p0 .. p0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    .line 134
    invoke-virtual/range {p0 .. p0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRequestTimestamp()J

    move-result-wide v3

    iget-object v5, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v6, v0, Lorg/briarproject/briar/introduction/IntroduceeSession;->introducer:Lorg/briarproject/bramble/api/identity/Author;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object/from16 v2, p1

    move-object v7, v12

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/introduction/IntroduceeSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroduceeState;JLorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;[BLjava/util/Map;)V

    return-object v11
.end method

.method static getInitial(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/identity/Author;ZLorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 21

    .line 54
    new-instance v11, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move-object v0, v11

    move/from16 v1, p3

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;-><init>(ZLorg/briarproject/bramble/api/sync/MessageId;J[B[BLjava/util/Map;J[B)V

    .line 56
    new-instance v8, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    xor-int/lit8 v13, p3, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    move-object v12, v8

    move-object/from16 v14, p4

    invoke-direct/range {v12 .. v20}, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;-><init>(ZLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[B)V

    .line 59
    new-instance v12, Lorg/briarproject/briar/introduction/IntroduceeSession;

    sget-object v2, Lorg/briarproject/briar/introduction/IntroduceeState;->START:Lorg/briarproject/briar/introduction/IntroduceeState;

    const-wide/16 v3, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object v7, v11

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/introduction/IntroduceeSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroduceeState;JLorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;[BLjava/util/Map;)V

    return-object v12
.end method


# virtual methods
.method public getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method getIntroducer()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->introducer:Lorg/briarproject/bramble/api/identity/Author;

    return-object v0
.end method

.method public getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->lastMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->lastMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    return-object v0
.end method

.method public getLocalTimestamp()J
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->local:Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    iget-wide v0, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->lastMessageTimestamp:J

    return-wide v0
.end method

.method getMasterKey()[B
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->masterKey:[B

    return-object v0
.end method

.method public getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->remote:Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    return-object v0
.end method

.method getRole()Lorg/briarproject/briar/api/introduction/Role;
    .locals 1

    .line 140
    sget-object v0, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCEE:Lorg/briarproject/briar/api/introduction/Role;

    return-object v0
.end method

.method getTransportKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeSession;->transportKeys:Ljava/util/Map;

    return-object v0
.end method
