.class Lorg/briarproject/briar/android/threaded/ThreadListActivity$4;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "ThreadListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/threaded/ThreadListActivity;->loadSharingContacts()V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$4;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 215
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$4;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$4;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$4;->onResultUi(Ljava/util/Collection;)V

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

    .line 218
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$4;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    iget-object v0, v0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/controller/SharingController;->addAll(Ljava/util/Collection;)V

    .line 219
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$4;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    iget-object v0, v0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/SharingController;->getOnlineCount()I

    move-result v0

    .line 220
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$4;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->setToolbarSubTitle(II)V

    return-void
.end method
