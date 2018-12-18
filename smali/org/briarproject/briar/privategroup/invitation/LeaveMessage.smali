.class Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;
.super Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;
.source "LeaveMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final previousMessageId:Lorg/briarproject/bramble/api/sync/MessageId;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;J)V

    .line 20
    iput-object p6, p0, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->previousMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-void
.end method


# virtual methods
.method getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;->previousMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method
