.class Lorg/briarproject/briar/android/forum/ForumListItem;
.super Ljava/lang/Object;
.source "ForumListItem.java"


# instance fields
.field private final forum:Lorg/briarproject/briar/api/forum/Forum;

.field private postCount:I

.field private timestamp:J

.field private unread:I


# direct methods
.method constructor <init>(Lorg/briarproject/briar/api/forum/Forum;Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->forum:Lorg/briarproject/briar/api/forum/Forum;

    .line 16
    invoke-virtual {p2}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getMsgCount()I

    move-result p1

    iput p1, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->postCount:I

    .line 17
    invoke-virtual {p2}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getUnreadCount()I

    move-result p1

    iput p1, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->unread:I

    .line 18
    invoke-virtual {p2}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getLatestMsgTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->timestamp:J

    return-void
.end method


# virtual methods
.method addHeader(Lorg/briarproject/briar/api/forum/ForumPostHeader;)V
    .locals 5

    .line 22
    iget v0, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->postCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->postCount:I

    .line 23
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPostHeader;->isRead()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->unread:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->unread:I

    .line 24
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPostHeader;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->timestamp:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPostHeader;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->timestamp:J

    :cond_1
    return-void
.end method

.method getForum()Lorg/briarproject/briar/api/forum/Forum;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->forum:Lorg/briarproject/briar/api/forum/Forum;

    return-object v0
.end method

.method getPostCount()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->postCount:I

    return v0
.end method

.method getTimestamp()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->timestamp:J

    return-wide v0
.end method

.method getUnreadCount()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->unread:I

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 32
    iget v0, p0, Lorg/briarproject/briar/android/forum/ForumListItem;->postCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
