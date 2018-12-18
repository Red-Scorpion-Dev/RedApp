.class Lorg/briarproject/briar/privategroup/invitation/AbortMessage;
.super Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;
.source "AbortMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;J)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;J)V

    return-void
.end method
