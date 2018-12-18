.class Lorg/briarproject/briar/introduction/AcceptMessage;
.super Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;
.source "AcceptMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final acceptTimestamp:J

.field private final ephemeralPublicKey:[B

.field private final sessionId:Lorg/briarproject/briar/api/client/SessionId;

.field private final transportProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[BJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "J",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/briar/api/client/SessionId;",
            "[BJ",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    .line 31
    iput-object p6, p0, Lorg/briarproject/briar/introduction/AcceptMessage;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    .line 32
    iput-object p7, p0, Lorg/briarproject/briar/introduction/AcceptMessage;->ephemeralPublicKey:[B

    .line 33
    iput-wide p8, p0, Lorg/briarproject/briar/introduction/AcceptMessage;->acceptTimestamp:J

    .line 34
    iput-object p10, p0, Lorg/briarproject/briar/introduction/AcceptMessage;->transportProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAcceptTimestamp()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lorg/briarproject/briar/introduction/AcceptMessage;->acceptTimestamp:J

    return-wide v0
.end method

.method public getEphemeralPublicKey()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/briarproject/briar/introduction/AcceptMessage;->ephemeralPublicKey:[B

    return-object v0
.end method

.method public getSessionId()Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/introduction/AcceptMessage;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-object v0
.end method

.method public getTransportProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/briarproject/briar/introduction/AcceptMessage;->transportProperties:Ljava/util/Map;

    return-object v0
.end method
