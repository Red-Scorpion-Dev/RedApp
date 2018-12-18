.class Lorg/briarproject/briar/sharing/AbortMessage;
.super Lorg/briarproject/briar/sharing/SharingMessage;
.source "AbortMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p6}, Lorg/briarproject/briar/sharing/SharingMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method
