.class public Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "GroupMessageAddedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final header:Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

.field private final local:Z

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;Ljava/lang/String;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->header:Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->text:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->local:Z

    return-void
.end method


# virtual methods
.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method public getHeader()Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->header:Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->local:Z

    return v0
.end method
