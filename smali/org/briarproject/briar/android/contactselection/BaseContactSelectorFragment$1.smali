.class Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "BaseContactSelectorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->loadContacts(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Ljava/util/Collection<",
        "TI;>;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment$1;->this$0:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 125
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment$1;->this$0:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->access$000(Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 125
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment$1;->onResultUi(Ljava/util/Collection;)V

    return-void
.end method

.method public onResultUi(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TI;>;)V"
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment$1;->this$0:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;

    iget-object p1, p1, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment$1;->this$0:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;

    iget-object v0, v0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;->addAll(Ljava/util/Collection;)V

    .line 130
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment$1;->this$0:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->onSelectionChanged()V

    return-void
.end method
