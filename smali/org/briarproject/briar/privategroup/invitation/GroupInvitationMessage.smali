.class abstract Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;
.super Ljava/lang/Object;
.source "GroupInvitationMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final id:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final privateGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final timestamp:J


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;J)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 20
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 21
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->privateGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 22
    iput-wide p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->timestamp:J

    return-void
.end method


# virtual methods
.method getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method getId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->privateGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method getTimestamp()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;->timestamp:J

    return-wide v0
.end method
