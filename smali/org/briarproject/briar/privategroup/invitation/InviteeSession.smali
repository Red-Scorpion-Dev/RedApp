.class Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
.super Lorg/briarproject/briar/privategroup/invitation/Session;
.source "InviteeSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/privategroup/invitation/Session<",
        "Lorg/briarproject/briar/privategroup/invitation/InviteeState;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final state:Lorg/briarproject/briar/privategroup/invitation/InviteeState;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 10

    .line 29
    sget-object v9, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->START:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/InviteeState;)V

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/InviteeState;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p8}, Lorg/briarproject/briar/privategroup/invitation/Session;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    .line 25
    iput-object p9, p0, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->state:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    return-void
.end method


# virtual methods
.method getRole()Lorg/briarproject/briar/privategroup/invitation/Role;
    .locals 1

    .line 34
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/Role;->INVITEE:Lorg/briarproject/briar/privategroup/invitation/Role;

    return-object v0
.end method

.method getState()Lorg/briarproject/briar/privategroup/invitation/InviteeState;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->state:Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    return-object v0
.end method

.method bridge synthetic getState()Lorg/briarproject/briar/privategroup/invitation/State;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getState()Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-result-object v0

    return-object v0
.end method
