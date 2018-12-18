.class Lorg/briarproject/briar/android/blog/FeedFragment$2;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/FeedFragment;->loadBlogPosts(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Ljava/util/Collection<",
        "Lorg/briarproject/briar/android/blog/BlogPostItem;",
        ">;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

.field final synthetic val$clear:Z

.field final synthetic val$revision:I


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/briar/android/DestroyableContext;IZ)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    iput p3, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->val$revision:I

    iput-boolean p4, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->val$clear:Z

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 145
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment$2;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$600(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 145
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment$2;->onResultUi(Ljava/util/Collection;)V

    return-void
.end method

.method public onResultUi(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->val$revision:I

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-static {v1}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$200(Lorg/briarproject/briar/android/blog/FeedFragment;)Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->getRevision()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$200(Lorg/briarproject/briar/android/blog/FeedFragment;)Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->incrementRevision()V

    .line 150
    iget-boolean v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->val$clear:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$200(Lorg/briarproject/briar/android/blog/FeedFragment;)Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->setItems(Ljava/util/Collection;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$200(Lorg/briarproject/briar/android/blog/FeedFragment;)Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->addAll(Ljava/util/Collection;)V

    .line 152
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$300(Lorg/briarproject/briar/android/blog/FeedFragment;)Lorg/briarproject/briar/android/view/BriarRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    goto :goto_1

    .line 154
    :cond_1
    invoke-static {}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$400()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "Concurrent update, reloading"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    iget-boolean v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$2;->val$clear:Z

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$500(Lorg/briarproject/briar/android/blog/FeedFragment;Z)V

    :cond_2
    :goto_1
    return-void
.end method
