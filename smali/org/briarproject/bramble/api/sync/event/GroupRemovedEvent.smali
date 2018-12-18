.class public Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "GroupRemovedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final group:Lorg/briarproject/bramble/api/sync/Group;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/Group;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;->group:Lorg/briarproject/bramble/api/sync/Group;

    return-void
.end method


# virtual methods
.method public getGroup()Lorg/briarproject/bramble/api/sync/Group;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;->group:Lorg/briarproject/bramble/api/sync/Group;

    return-object v0
.end method
