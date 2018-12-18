.class Lorg/briarproject/briar/privategroup/invitation/PeerSession;
.super Lorg/briarproject/briar/privategroup/invitation/Session;
.source "PeerSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/privategroup/invitation/Session<",
        "Lorg/briarproject/briar/privategroup/invitation/PeerState;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final state:Lorg/briarproject/briar/privategroup/invitation/PeerState;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 8

    .line 29
    sget-object v7, Lorg/briarproject/briar/privategroup/invitation/PeerState;->START:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V
    .locals 9

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 23
    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/privategroup/invitation/Session;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    move-object/from16 v1, p7

    .line 25
    iput-object v1, v0, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->state:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    return-void
.end method


# virtual methods
.method getRole()Lorg/briarproject/briar/privategroup/invitation/Role;
    .locals 1

    .line 34
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/Role;->PEER:Lorg/briarproject/briar/privategroup/invitation/Role;

    return-object v0
.end method

.method getState()Lorg/briarproject/briar/privategroup/invitation/PeerState;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->state:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    return-object v0
.end method

.method bridge synthetic getState()Lorg/briarproject/briar/privategroup/invitation/State;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getState()Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-result-object v0

    return-object v0
.end method
