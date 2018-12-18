.class Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "ThreadListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/threaded/ThreadListActivity;->loadItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Lorg/briarproject/briar/android/threaded/ThreadItemList<",
        "TI;>;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

.field final synthetic val$revision:I


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/DestroyableContext;I)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    iput p3, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->val$revision:I

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 179
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 179
    check-cast p1, Lorg/briarproject/briar/android/threaded/ThreadItemList;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->onResultUi(Lorg/briarproject/briar/android/threaded/ThreadItemList;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/briar/android/threaded/ThreadItemList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/threaded/ThreadItemList<",
            "TI;>;)V"
        }
    .end annotation

    .line 182
    iget v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->val$revision:I

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    iget-object v1, v1, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->getRevision()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    iget-object v0, v0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->incrementRevision()V

    .line 184
    invoke-interface {p1}, Lorg/briarproject/briar/android/threaded/ThreadItemList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    iget-object p1, p1, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->access$100(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/threaded/ThreadItemList;)V

    .line 188
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->access$200(Lorg/briarproject/briar/android/threaded/ThreadListActivity;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->access$300()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "Concurrent update, reloading"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->loadItems()V

    :goto_0
    return-void
.end method
