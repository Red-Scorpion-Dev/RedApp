.class Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;
.super Ljava/lang/Object;
.source "MessageMetadata.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final accepted:Z

.field private final available:Z

.field private final local:Z

.field private final privateGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final read:Z

.field private final timestamp:J

.field private final type:Lorg/briarproject/briar/privategroup/invitation/MessageType;

.field private final visible:Z


# direct methods
.method constructor <init>(Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->privateGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->type:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    .line 22
    iput-wide p3, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->timestamp:J

    .line 23
    iput-boolean p5, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->local:Z

    .line 24
    iput-boolean p6, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->read:Z

    .line 25
    iput-boolean p7, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->visible:Z

    .line 26
    iput-boolean p8, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->available:Z

    .line 27
    iput-boolean p9, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->accepted:Z

    return-void
.end method


# virtual methods
.method getMessageType()Lorg/briarproject/briar/privategroup/invitation/MessageType;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->type:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    return-object v0
.end method

.method getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->privateGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method getTimestamp()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->timestamp:J

    return-wide v0
.end method

.method isAvailableToAnswer()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->available:Z

    return v0
.end method

.method isLocal()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->local:Z

    return v0
.end method

.method isRead()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->read:Z

    return v0
.end method

.method isVisibleInConversation()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->visible:Z

    return v0
.end method

.method public wasAccepted()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->accepted:Z

    return v0
.end method
