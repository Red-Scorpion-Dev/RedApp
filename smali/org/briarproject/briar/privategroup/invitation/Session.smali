.class abstract Lorg/briarproject/briar/privategroup/invitation/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/briarproject/briar/privategroup/invitation/State;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final inviteTimestamp:J

.field private final lastLocalMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final localTimestamp:J

.field private final privateGroupId:Lorg/briarproject/bramble/api/sync/GroupId;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 24
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->privateGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 25
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->lastLocalMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 26
    iput-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 27
    iput-wide p5, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->localTimestamp:J

    .line 28
    iput-wide p7, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->inviteTimestamp:J

    return-void
.end method


# virtual methods
.method getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method getInviteTimestamp()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->inviteTimestamp:J

    return-wide v0
.end method

.method getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->lastLocalMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method getLocalTimestamp()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->localTimestamp:J

    return-wide v0
.end method

.method getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/Session;->privateGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method abstract getRole()Lorg/briarproject/briar/privategroup/invitation/Role;
.end method

.method abstract getState()Lorg/briarproject/briar/privategroup/invitation/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
