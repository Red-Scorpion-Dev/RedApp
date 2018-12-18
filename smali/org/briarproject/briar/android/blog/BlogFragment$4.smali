.class Lorg/briarproject/briar/android/blog/BlogFragment$4;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "BlogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/BlogFragment;->loadSharedContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Ljava/util/Collection<",
        "Lorg/briarproject/bramble/api/contact/ContactId;",
        ">;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/BlogFragment;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$4;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 275
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment$4;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment$4;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$1000(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 275
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment$4;->onResultUi(Ljava/util/Collection;)V

    return-void
.end method

.method public onResultUi(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment$4;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    iget-object v0, v0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/controller/SharingController;->addAll(Ljava/util/Collection;)V

    .line 279
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment$4;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    iget-object v0, v0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/SharingController;->getOnlineCount()I

    move-result v0

    .line 280
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogFragment$4;->this$0:Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v1, p1, v0}, Lorg/briarproject/briar/android/blog/BlogFragment;->access$900(Lorg/briarproject/briar/android/blog/BlogFragment;II)V

    return-void
.end method
