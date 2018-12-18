.class Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "GroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->loadGroups()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Ljava/util/Collection<",
        "Lorg/briarproject/briar/android/privategroup/list/GroupItem;",
        ">;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

.field final synthetic val$revision:I


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/briar/android/DestroyableContext;I)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    iput p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;->val$revision:I

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 192
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$500(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 192
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;->onResultUi(Ljava/util/Collection;)V

    return-void
.end method

.method public onResultUi(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/privategroup/list/GroupItem;",
            ">;)V"
        }
    .end annotation

    .line 195
    iget v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;->val$revision:I

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$100(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->getRevision()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$100(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->incrementRevision()V

    .line 197
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$200(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Lorg/briarproject/briar/android/view/BriarRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$100(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 200
    :cond_1
    invoke-static {}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$300()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "Concurrent update, reloading"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$2;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$400(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)V

    :goto_0
    return-void
.end method
