.class public interface abstract Lorg/briarproject/briar/android/blog/BlogController;
.super Ljava/lang/Object;
.source "BlogController.java"

# interfaces
.implements Lorg/briarproject/briar/android/blog/BaseController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract deleteBlog(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/lang/Void;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadBlog(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/blog/BlogItem;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadBlogPost(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadBlogPosts(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadSharingContacts(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBlogSharingListener(Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;)V
.end method

.method public abstract setGroupId(Lorg/briarproject/bramble/api/sync/GroupId;)V
.end method
