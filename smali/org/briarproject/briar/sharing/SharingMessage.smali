.class abstract Lorg/briarproject/briar/sharing/SharingMessage;
.super Ljava/lang/Object;
.source "SharingMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final id:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final previousMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final shareableId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final timestamp:J


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingMessage;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 23
    iput-object p6, p0, Lorg/briarproject/briar/sharing/SharingMessage;->previousMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 24
    iput-object p2, p0, Lorg/briarproject/briar/sharing/SharingMessage;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 25
    iput-object p3, p0, Lorg/briarproject/briar/sharing/SharingMessage;->shareableId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 26
    iput-wide p4, p0, Lorg/briarproject/briar/sharing/SharingMessage;->timestamp:J

    return-void
.end method


# virtual methods
.method getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingMessage;->contactGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method getId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingMessage;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingMessage;->previousMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingMessage;->shareableId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method getTimestamp()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/briarproject/briar/sharing/SharingMessage;->timestamp:J

    return-wide v0
.end method
