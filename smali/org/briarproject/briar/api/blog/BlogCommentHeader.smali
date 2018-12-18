.class public Lorg/briarproject/briar/api/blog/BlogCommentHeader;
.super Lorg/briarproject/briar/api/blog/BlogPostHeader;
.source "BlogCommentHeader.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final comment:Ljava/lang/String;

.field private final parent:Lorg/briarproject/briar/api/blog/BlogPostHeader;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/api/blog/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V
    .locals 15

    move-object v13, p0

    move-object/from16 v14, p1

    .line 28
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lorg/briarproject/briar/api/blog/BlogPostHeader;-><init>(Lorg/briarproject/briar/api/blog/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;ZZ)V

    .line 31
    sget-object v0, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-eq v14, v0, :cond_1

    sget-object v0, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v14, v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible Message Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    move-object/from16 v0, p3

    .line 34
    iput-object v0, v13, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->comment:Ljava/lang/String;

    move-object/from16 v0, p4

    .line 35
    iput-object v0, v13, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->parent:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->parent:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    return-object v0
.end method

.method public getRootPost()Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->parent:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    instance-of v0, v0, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->parent:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getRootPost()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->parent:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    return-object v0
.end method
