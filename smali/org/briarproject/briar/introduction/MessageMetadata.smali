.class Lorg/briarproject/briar/introduction/MessageMetadata;
.super Ljava/lang/Object;
.source "MessageMetadata.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final available:Z

.field private final local:Z

.field private final read:Z

.field private final sessionId:Lorg/briarproject/briar/api/client/SessionId;

.field private final timestamp:J

.field private final type:Lorg/briarproject/briar/introduction/MessageType;

.field private final visible:Z


# direct methods
.method constructor <init>(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;JZZZZ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->type:Lorg/briarproject/briar/introduction/MessageType;

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    .line 24
    iput-wide p3, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->timestamp:J

    .line 25
    iput-boolean p5, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->local:Z

    .line 26
    iput-boolean p6, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->read:Z

    .line 27
    iput-boolean p7, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->visible:Z

    .line 28
    iput-boolean p8, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->available:Z

    return-void
.end method


# virtual methods
.method getMessageType()Lorg/briarproject/briar/introduction/MessageType;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->type:Lorg/briarproject/briar/introduction/MessageType;

    return-object v0
.end method

.method public getSessionId()Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-object v0
.end method

.method getTimestamp()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->timestamp:J

    return-wide v0
.end method

.method isAvailableToAnswer()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->available:Z

    return v0
.end method

.method isLocal()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->local:Z

    return v0
.end method

.method isRead()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->read:Z

    return v0
.end method

.method isVisibleInConversation()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lorg/briarproject/briar/introduction/MessageMetadata;->visible:Z

    return v0
.end method
