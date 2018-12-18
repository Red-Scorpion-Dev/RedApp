.class public Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;
.super Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;
.source "JoinMessageHeader.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final isInitial:Z

.field private final visibility:Lorg/briarproject/briar/api/privategroup/Visibility;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;Lorg/briarproject/briar/api/privategroup/Visibility;Z)V
    .locals 9

    .line 16
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getParentId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getTimestamp()J

    move-result-wide v4

    .line 17
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v6

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v7

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->isRead()Z

    move-result v8

    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    .line 18
    iput-object p2, p0, Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;->visibility:Lorg/briarproject/briar/api/privategroup/Visibility;

    .line 19
    iput-boolean p3, p0, Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;->isInitial:Z

    return-void
.end method


# virtual methods
.method public getVisibility()Lorg/briarproject/briar/api/privategroup/Visibility;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;->visibility:Lorg/briarproject/briar/api/privategroup/Visibility;

    return-object v0
.end method

.method public isInitial()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;->isInitial:Z

    return v0
.end method
