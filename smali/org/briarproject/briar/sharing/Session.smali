.class Lorg/briarproject/briar/sharing/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final inviteTimestamp:J

.field private final lastLocalMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final localTimestamp:J

.field private final shareableId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final state:Lorg/briarproject/briar/sharing/State;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 10

    .line 36
    sget-object v1, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-void
.end method

.method constructor <init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/briarproject/briar/sharing/Session;->state:Lorg/briarproject/briar/sharing/State;

    .line 27
    iput-object p2, p0, Lorg/briarproject/briar/sharing/Session;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 28
    iput-object p3, p0, Lorg/briarproject/briar/sharing/Session;->shareableId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 29
    iput-object p4, p0, Lorg/briarproject/briar/sharing/Session;->lastLocalMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 30
    iput-object p5, p0, Lorg/briarproject/briar/sharing/Session;->lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 31
    iput-wide p6, p0, Lorg/briarproject/briar/sharing/Session;->localTimestamp:J

    .line 32
    iput-wide p8, p0, Lorg/briarproject/briar/sharing/Session;->inviteTimestamp:J

    return-void
.end method


# virtual methods
.method getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/briarproject/briar/sharing/Session;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method getInviteTimestamp()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lorg/briarproject/briar/sharing/Session;->inviteTimestamp:J

    return-wide v0
.end method

.method getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/sharing/Session;->lastLocalMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/sharing/Session;->lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method getLocalTimestamp()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lorg/briarproject/briar/sharing/Session;->localTimestamp:J

    return-wide v0
.end method

.method getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/sharing/Session;->shareableId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method public getState()Lorg/briarproject/briar/sharing/State;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/briar/sharing/Session;->state:Lorg/briarproject/briar/sharing/State;

    return-object v0
.end method
