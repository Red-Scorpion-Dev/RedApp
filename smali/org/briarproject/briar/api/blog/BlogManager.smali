.class public interface abstract Lorg/briarproject/briar/api/blog/BlogManager;
.super Ljava/lang/Object;
.source "BlogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

.field public static final MAJOR_VERSION:I

.field public static final MINOR_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lorg/briarproject/bramble/api/sync/ClientId;

    const-string v1, "org.briarproject.briar.blog"

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/ClientId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-void
.end method


# virtual methods
.method public abstract addBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addBlog(Lorg/briarproject/briar/api/blog/Blog;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addLocalComment(Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;Lorg/briarproject/briar/api/blog/BlogPostHeader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addLocalPost(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/BlogPost;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addLocalPost(Lorg/briarproject/briar/api/blog/BlogPost;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract canBeRemoved(Lorg/briarproject/briar/api/blog/Blog;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/blog/Blog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getBlog(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/blog/Blog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getBlogs()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getBlogs(Lorg/briarproject/bramble/api/identity/LocalAuthor;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getPersonalBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;
.end method

.method public abstract getPostHeader(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getPostHeaders(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/blog/BlogPostHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getPostText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract registerRemoveBlogHook(Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;)V
.end method

.method public abstract removeBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removeBlog(Lorg/briarproject/briar/api/blog/Blog;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract setReadFlag(Lorg/briarproject/bramble/api/sync/MessageId;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
