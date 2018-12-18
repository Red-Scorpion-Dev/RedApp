.class Lorg/briarproject/briar/android/blog/BlogFragment$3;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "BlogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/BlogFragment;->loadBlog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Lorg/briarproject/briar/android/blog/BlogItem;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/BlogFragment;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$3;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 251
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment$3;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment$3;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$800(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 251
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment$3;->onResultUi(Lorg/briarproject/briar/android/blog/BlogItem;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/briar/android/blog/BlogItem;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment$3;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogItem;->getBlog()Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/Blog;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$500(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/identity/Author;)V

    .line 255
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogItem;->isOurs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment$3;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$600(Lorg/briarproject/briar/android/blog/BlogFragment;)V

    .line 257
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogItem;->canBeRemoved()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 258
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$3;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$700(Lorg/briarproject/briar/android/blog/BlogFragment;)V

    :cond_1
    return-void
.end method
