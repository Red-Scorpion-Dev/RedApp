.class public Lorg/briarproject/briar/api/feed/Feed;
.super Ljava/lang/Object;
.source "Feed.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final added:J

.field private final blog:Lorg/briarproject/briar/api/blog/Blog;

.field private final description:Ljava/lang/String;

.field private final lastEntryTime:J

.field private final localAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

.field private final rssAuthor:Ljava/lang/String;

.field private final updated:J

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/briarproject/briar/api/blog/Blog;Lorg/briarproject/bramble/api/identity/LocalAuthor;J)V
    .locals 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v6, p4

    .line 42
    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/api/feed/Feed;-><init>(Ljava/lang/String;Lorg/briarproject/briar/api/blog/Blog;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/briarproject/briar/api/blog/Blog;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    .line 38
    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/api/feed/Feed;-><init>(Ljava/lang/String;Lorg/briarproject/briar/api/blog/Blog;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/briarproject/briar/api/blog/Blog;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/api/feed/Feed;->url:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/api/feed/Feed;->blog:Lorg/briarproject/briar/api/blog/Blog;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/api/feed/Feed;->localAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    .line 28
    iput-object p4, p0, Lorg/briarproject/briar/api/feed/Feed;->description:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lorg/briarproject/briar/api/feed/Feed;->rssAuthor:Ljava/lang/String;

    .line 30
    iput-wide p6, p0, Lorg/briarproject/briar/api/feed/Feed;->added:J

    .line 31
    iput-wide p8, p0, Lorg/briarproject/briar/api/feed/Feed;->updated:J

    .line 32
    iput-wide p10, p0, Lorg/briarproject/briar/api/feed/Feed;->lastEntryTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_0
    instance-of v0, p1, Lorg/briarproject/briar/api/feed/Feed;

    if-eqz v0, :cond_1

    .line 91
    check-cast p1, Lorg/briarproject/briar/api/feed/Feed;

    .line 92
    iget-object v0, p0, Lorg/briarproject/briar/api/feed/Feed;->blog:Lorg/briarproject/briar/api/blog/Blog;

    iget-object p1, p1, Lorg/briarproject/briar/api/feed/Feed;->blog:Lorg/briarproject/briar/api/blog/Blog;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/api/blog/Blog;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAdded()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lorg/briarproject/briar/api/feed/Feed;->added:J

    return-wide v0
.end method

.method public getBlog()Lorg/briarproject/briar/api/blog/Blog;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/briarproject/briar/api/feed/Feed;->blog:Lorg/briarproject/briar/api/blog/Blog;

    return-object v0
.end method

.method public getBlogId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/briarproject/briar/api/feed/Feed;->blog:Lorg/briarproject/briar/api/blog/Blog;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/Blog;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/briarproject/briar/api/feed/Feed;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLastEntryTime()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lorg/briarproject/briar/api/feed/Feed;->lastEntryTime:J

    return-wide v0
.end method

.method public getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/api/feed/Feed;->localAuthor:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    return-object v0
.end method

.method public getRssAuthor()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/briarproject/briar/api/feed/Feed;->rssAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/api/feed/Feed;->blog:Lorg/briarproject/briar/api/blog/Blog;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/Blog;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdated()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lorg/briarproject/briar/api/feed/Feed;->updated:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/briarproject/briar/api/feed/Feed;->url:Ljava/lang/String;

    return-object v0
.end method
