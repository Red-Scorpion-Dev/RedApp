.class Lorg/briarproject/briar/android/blog/FeedFragment$3;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/FeedFragment;->onBlogPostAdded(Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

.field final synthetic val$local:Z


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/briar/android/DestroyableContext;Z)V
    .locals 0

    .line 202
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/FeedFragment$3;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    iput-boolean p3, p0, Lorg/briarproject/briar/android/blog/FeedFragment$3;->val$local:Z

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 202
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment$3;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$3;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$800(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 202
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment$3;->onResultUi(Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$3;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$200(Lorg/briarproject/briar/android/blog/FeedFragment;)Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->incrementRevision()V

    .line 206
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$3;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$200(Lorg/briarproject/briar/android/blog/FeedFragment;)Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->add(Ljava/lang/Object;)V

    .line 207
    iget-boolean p1, p0, Lorg/briarproject/briar/android/blog/FeedFragment$3;->val$local:Z

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/FeedFragment$3;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    const v0, 0x7f11002f

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$700(Lorg/briarproject/briar/android/blog/FeedFragment;I)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/FeedFragment$3;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    const v0, 0x7f110030

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$700(Lorg/briarproject/briar/android/blog/FeedFragment;I)V

    :goto_0
    return-void
.end method
