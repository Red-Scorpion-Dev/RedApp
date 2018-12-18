.class public Lorg/briarproject/briar/api/blog/BlogPostHeader;
.super Lorg/briarproject/briar/api/client/PostHeader;
.source "BlogPostHeader.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final rssFeed:Z

.field private final timeReceived:J

.field private final type:Lorg/briarproject/briar/api/blog/MessageType;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/api/blog/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;ZZ)V
    .locals 13

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    .line 35
    invoke-direct/range {v0 .. v12}, Lorg/briarproject/briar/api/blog/BlogPostHeader;-><init>(Lorg/briarproject/briar/api/blog/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;ZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/briarproject/briar/api/blog/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;ZZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-wide v3, p5

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move/from16 v7, p12

    .line 25
    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/api/client/PostHeader;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    move-object v0, p1

    .line 26
    iput-object v0, v8, Lorg/briarproject/briar/api/blog/BlogPostHeader;->type:Lorg/briarproject/briar/api/blog/MessageType;

    move-object v0, p2

    .line 27
    iput-object v0, v8, Lorg/briarproject/briar/api/blog/BlogPostHeader;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    move-wide/from16 v0, p7

    .line 28
    iput-wide v0, v8, Lorg/briarproject/briar/api/blog/BlogPostHeader;->timeReceived:J

    move/from16 v0, p11

    .line 29
    iput-boolean v0, v8, Lorg/briarproject/briar/api/blog/BlogPostHeader;->rssFeed:Z

    return-void
.end method


# virtual methods
.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/briarproject/briar/api/blog/BlogPostHeader;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method public getTimeReceived()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/briarproject/briar/api/blog/BlogPostHeader;->timeReceived:J

    return-wide v0
.end method

.method public getType()Lorg/briarproject/briar/api/blog/MessageType;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/briar/api/blog/BlogPostHeader;->type:Lorg/briarproject/briar/api/blog/MessageType;

    return-object v0
.end method

.method public isRssFeed()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/briarproject/briar/api/blog/BlogPostHeader;->rssFeed:Z

    return v0
.end method
