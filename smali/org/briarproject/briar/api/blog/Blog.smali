.class public Lorg/briarproject/briar/api/blog/Blog;
.super Lorg/briarproject/briar/api/client/BaseGroup;
.source "Blog.java"

# interfaces
.implements Lorg/briarproject/briar/api/sharing/Shareable;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final author:Lorg/briarproject/bramble/api/identity/Author;

.field private final rssFeed:Z


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/identity/Author;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/briarproject/briar/api/client/BaseGroup;-><init>(Lorg/briarproject/bramble/api/sync/Group;)V

    .line 20
    iput-object p2, p0, Lorg/briarproject/briar/api/blog/Blog;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 21
    iput-boolean p3, p0, Lorg/briarproject/briar/api/blog/Blog;->rssFeed:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Lorg/briarproject/briar/api/blog/Blog;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/briarproject/briar/api/client/BaseGroup;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAuthor()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/api/blog/Blog;->author:Lorg/briarproject/bramble/api/identity/Author;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/briarproject/briar/api/blog/Blog;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRssFeed()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lorg/briarproject/briar/api/blog/Blog;->rssFeed:Z

    return v0
.end method
