.class Lorg/briarproject/briar/android/blog/BlogFragment$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "BlogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/BlogFragment;->onBlogPostAdded(Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

.field final synthetic val$local:Z


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/DestroyableContext;Z)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$1;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    iput-boolean p3, p0, Lorg/briarproject/briar/android/blog/BlogFragment$1;->val$local:Z

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 191
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment$1;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$300(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment$1;->onResultUi(Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment$1;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$000(Lorg/briarproject/briar/android/blog/BlogFragment;)Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->add(Ljava/lang/Object;)V

    .line 195
    iget-boolean p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$1;->val$local:Z

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$1;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$100(Lorg/briarproject/briar/android/blog/BlogFragment;)Lorg/briarproject/briar/android/view/BriarRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->scrollToPosition(I)V

    .line 197
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$1;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    const v1, 0x7f11002f

    invoke-static {p1, v1, v0}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$200(Lorg/briarproject/briar/android/blog/BlogFragment;IZ)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$1;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    const v0, 0x7f110030

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$200(Lorg/briarproject/briar/android/blog/BlogFragment;IZ)V

    :goto_0
    return-void
.end method
