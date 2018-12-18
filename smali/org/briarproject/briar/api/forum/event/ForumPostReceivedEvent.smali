.class public Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "ForumPostReceivedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final header:Lorg/briarproject/briar/api/forum/ForumPostHeader;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/forum/ForumPostHeader;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 24
    iput-object p2, p0, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->header:Lorg/briarproject/briar/api/forum/ForumPostHeader;

    .line 25
    iput-object p3, p0, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method public getHeader()Lorg/briarproject/briar/api/forum/ForumPostHeader;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->header:Lorg/briarproject/briar/api/forum/ForumPostHeader;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->text:Ljava/lang/String;

    return-object v0
.end method
