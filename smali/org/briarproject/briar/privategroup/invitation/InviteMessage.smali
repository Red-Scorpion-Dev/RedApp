.class Lorg/briarproject/briar/privategroup/invitation/InviteMessage;
.super Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;
.source "InviteMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final creator:Lorg/briarproject/bramble/api/identity/Author;

.field private final groupName:Ljava/lang/String;

.field private final salt:[B

.field private final signature:[B

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLjava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[BLjava/lang/String;[B)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;J)V

    .line 25
    iput-object p6, p0, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->groupName:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->creator:Lorg/briarproject/bramble/api/identity/Author;

    .line 27
    iput-object p8, p0, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->salt:[B

    .line 28
    iput-object p9, p0, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->text:Ljava/lang/String;

    .line 29
    iput-object p10, p0, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->signature:[B

    return-void
.end method


# virtual methods
.method getCreator()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->creator:Lorg/briarproject/bramble/api/identity/Author;

    return-object v0
.end method

.method getGroupName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method getSalt()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->salt:[B

    return-object v0
.end method

.method getSignature()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->signature:[B

    return-object v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->text:Ljava/lang/String;

    return-object v0
.end method
