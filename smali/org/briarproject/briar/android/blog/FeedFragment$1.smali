.class Lorg/briarproject/briar/android/blog/FeedFragment$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/FeedFragment;->loadPersonalBlog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Lorg/briarproject/briar/api/blog/Blog;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/FeedFragment;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/FeedFragment$1;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 128
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$1;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$100(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Lorg/briarproject/briar/api/blog/Blog;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment$1;->onResultUi(Lorg/briarproject/briar/api/blog/Blog;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/briar/api/blog/Blog;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment$1;->this$0:Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->access$002(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/briar/api/blog/Blog;)Lorg/briarproject/briar/api/blog/Blog;

    return-void
.end method
