.class Lorg/briarproject/briar/android/blog/BlogFragment$5;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "BlogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/BlogFragment;->deleteBlog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Ljava/lang/Void;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/BlogFragment;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$5;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 359
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment$5;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment$5;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$1200(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 359
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment$5;->onResultUi(Ljava/lang/Void;)V

    return-void
.end method

.method public onResultUi(Ljava/lang/Void;)V
    .locals 2

    .line 362
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$5;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110032

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 364
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 365
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$5;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$1100(Lorg/briarproject/briar/android/blog/BlogFragment;)V

    return-void
.end method
