.class Lorg/briarproject/briar/android/blog/BlogFragment$2;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "BlogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/BlogFragment;->loadBlogPosts(Z)V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

.field final synthetic val$reload:Z


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/DestroyableContext;Z)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$2;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    iput-boolean p3, p0, Lorg/briarproject/briar/android/blog/BlogFragment$2;->val$reload:Z

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 231
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment$2;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment$2;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$400(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment$2;->onResultUi(Ljava/util/Collection;)V

    return-void
.end method

.method public onResultUi(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            ">;)V"
        }
    .end annotation

    .line 234
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$2;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$100(Lorg/briarproject/briar/android/blog/BlogFragment;)Lorg/briarproject/briar/android/view/BriarRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment$2;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$000(Lorg/briarproject/briar/android/blog/BlogFragment;)Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->addAll(Ljava/util/Collection;)V

    .line 238
    iget-boolean p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$2;->val$reload:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$2;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$100(Lorg/briarproject/briar/android/blog/BlogFragment;)Lorg/briarproject/briar/android/view/BriarRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method
