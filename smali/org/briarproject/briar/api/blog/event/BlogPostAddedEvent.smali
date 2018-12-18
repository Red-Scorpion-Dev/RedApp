.class public Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "BlogPostAddedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

.field private final local:Z


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 25
    iput-object p2, p0, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    .line 26
    iput-boolean p3, p0, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->local:Z

    return-void
.end method


# virtual methods
.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method public getHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->local:Z

    return v0
.end method
