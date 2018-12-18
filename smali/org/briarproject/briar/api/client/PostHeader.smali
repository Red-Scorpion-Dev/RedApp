.class public abstract Lorg/briarproject/briar/api/client/PostHeader;
.super Ljava/lang/Object;
.source "PostHeader.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final author:Lorg/briarproject/bramble/api/identity/Author;

.field private final authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

.field private final id:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final parentId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final read:Z

.field private final timestamp:J


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/briarproject/briar/api/client/PostHeader;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 27
    iput-object p2, p0, Lorg/briarproject/briar/api/client/PostHeader;->parentId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 28
    iput-wide p3, p0, Lorg/briarproject/briar/api/client/PostHeader;->timestamp:J

    .line 29
    iput-object p5, p0, Lorg/briarproject/briar/api/client/PostHeader;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 30
    iput-object p6, p0, Lorg/briarproject/briar/api/client/PostHeader;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    .line 31
    iput-boolean p7, p0, Lorg/briarproject/briar/api/client/PostHeader;->read:Z

    return-void
.end method


# virtual methods
.method public getAuthor()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/briarproject/briar/api/client/PostHeader;->author:Lorg/briarproject/bramble/api/identity/Author;

    return-object v0
.end method

.method public getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/briarproject/briar/api/client/PostHeader;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    return-object v0
.end method

.method public getAuthorStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/briarproject/briar/api/client/PostHeader;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/api/client/PostHeader;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getParentId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/briarproject/briar/api/client/PostHeader;->parentId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/briarproject/briar/api/client/PostHeader;->timestamp:J

    return-wide v0
.end method

.method public isRead()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/briarproject/briar/api/client/PostHeader;->read:Z

    return v0
.end method
