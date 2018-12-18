.class public Lorg/briarproject/briar/api/privategroup/event/GroupDissolvedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "GroupDissolvedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/api/privategroup/event/GroupDissolvedEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method


# virtual methods
.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/event/GroupDissolvedEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method
