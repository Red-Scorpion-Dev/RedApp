.class Lorg/briarproject/briar/android/blog/ReblogFragment$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "ReblogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/ReblogFragment;->onStart()V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/ReblogFragment;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$1;->this$0:Lorg/briarproject/briar/android/blog/ReblogFragment;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 93
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/ReblogFragment$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$1;->this$0:Lorg/briarproject/briar/android/blog/ReblogFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/ReblogFragment;->access$500(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/ReblogFragment$1;->onResultUi(Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$1;->this$0:Lorg/briarproject/briar/android/blog/ReblogFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/ReblogFragment;->access$302(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/briar/android/blog/BlogPostItem;)Lorg/briarproject/briar/android/blog/BlogPostItem;

    .line 97
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$1;->this$0:Lorg/briarproject/briar/android/blog/ReblogFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/blog/ReblogFragment;->access$400(Lorg/briarproject/briar/android/blog/ReblogFragment;)V

    return-void
.end method
