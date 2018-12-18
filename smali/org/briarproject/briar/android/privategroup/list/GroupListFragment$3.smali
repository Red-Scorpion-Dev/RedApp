.class Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "GroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->loadAvailableGroups()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Ljava/lang/Integer;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 214
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$700(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onResultUi(Ljava/lang/Integer;)V
    .locals 6

    .line 217
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$600(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->dismiss()V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$600(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-virtual {v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0005

    .line 221
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 220
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    .line 223
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$600(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->isShownOrQueued()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$600(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 214
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$3;->onResultUi(Ljava/lang/Integer;)V

    return-void
.end method
