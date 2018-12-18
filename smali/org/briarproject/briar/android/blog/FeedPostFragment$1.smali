.class Lorg/briarproject/briar/android/blog/FeedPostFragment$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "FeedPostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/FeedPostFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Lorg/briarproject/briar/android/blog/BlogPostItem;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/FeedPostFragment;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/FeedPostFragment;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/FeedPostFragment$1;->this$0:Lorg/briarproject/briar/android/blog/FeedPostFragment;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 74
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedPostFragment$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedPostFragment$1;->this$0:Lorg/briarproject/briar/android/blog/FeedPostFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/FeedPostFragment;->access$000(Lorg/briarproject/briar/android/blog/FeedPostFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedPostFragment$1;->onResultUi(Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedPostFragment$1;->this$0:Lorg/briarproject/briar/android/blog/FeedPostFragment;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/blog/FeedPostFragment;->onBlogPostLoaded(Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    return-void
.end method
