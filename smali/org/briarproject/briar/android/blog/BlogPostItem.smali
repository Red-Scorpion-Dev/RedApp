.class public Lorg/briarproject/briar/android/blog/BlogPostItem;
.super Ljava/lang/Object;
.source "BlogPostItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/briarproject/briar/android/blog/BlogPostItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

.field private read:Z

.field protected text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/api/blog/BlogPostHeader;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    .line 24
    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->text:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->isRead()Z

    move-result p1

    iput-boolean p1, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->read:Z

    return-void
.end method

.method protected static compare(Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/briar/api/blog/BlogPostHeader;)I
    .locals 3

    .line 77
    invoke-virtual {p0}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getTimeReceived()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getTimeReceived()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->compareTo(Lorg/briarproject/briar/android/blog/BlogPostItem;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/briarproject/briar/android/blog/BlogPostItem;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->compare(Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/briar/api/blog/BlogPostHeader;)I

    move-result p1

    return p1
.end method

.method public getAuthor()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    return-object v0
.end method

.method getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    return-object v0
.end method

.method getPostHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRead()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->read:Z

    return v0
.end method

.method public isRssFeed()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostItem;->header:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->isRssFeed()Z

    move-result v0

    return v0
.end method
