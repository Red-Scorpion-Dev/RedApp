.class public abstract Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "BaseContactSelectorFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
        "A:",
        "Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter<",
        "TI;+",
        "Lorg/briarproject/briar/android/contact/ContactItemViewHolder<",
        "TI;>;>;>",
        "Lorg/briarproject/briar/android/fragment/BaseFragment;",
        "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
        "TI;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field protected adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field protected list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

.field protected listener:Lorg/briarproject/briar/android/contactselection/ContactSelectorListener;

.field protected selectedContacts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->selectedContacts:Ljava/util/Collection;

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method private loadContacts(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->getController()Lorg/briarproject/briar/android/contactselection/ContactSelectorController;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    new-instance v2, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment$1;

    invoke-direct {v2, p0, p0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment$1;-><init>(Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1, p1, v2}, Lorg/briarproject/briar/android/contactselection/ContactSelectorController;->loadContacts(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method


# virtual methods
.method protected abstract getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "TI;>;)TA;"
        }
    .end annotation
.end method

.method protected abstract getController()Lorg/briarproject/briar/android/contactselection/ContactSelectorController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/android/contactselection/ContactSelectorController<",
            "TI;>;"
        }
    .end annotation
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 49
    check-cast p1, Lorg/briarproject/briar/android/contactselection/ContactSelectorListener;

    iput-object p1, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->listener:Lorg/briarproject/briar/android/contactselection/ContactSelectorListener;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "briar.GROUP_ID"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    new-instance v0, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No GroupId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0059

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900eb

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p2, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 71
    iget-object p2, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 72
    iget-object p2, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const v0, 0x7f0808f4

    invoke-virtual {p2, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyImage(I)V

    .line 73
    iget-object p2, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const v0, 0x7f110124

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyText(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const v0, 0x7f110125

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyAction(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2, p0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    move-result-object p2

    iput-object p2, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    .line 76
    iget-object p2, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    invoke-virtual {p2, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    if-eqz p3, :cond_0

    const-string p2, "contacts"

    .line 81
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 83
    invoke-static {p2}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->getContactsFromIntegers(Ljava/util/ArrayList;)Ljava/util/Collection;

    move-result-object p2

    iput-object p2, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->selectedContacts:Ljava/util/Collection;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->onItemClick(Landroid/view/View;Lorg/briarproject/briar/android/contactselection/SelectableContactItem;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;Lorg/briarproject/briar/android/contactselection/SelectableContactItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TI;)V"
        }
    .end annotation

    .line 117
    invoke-virtual {p2}, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->toggleSelected()V

    .line 118
    iget-object p1, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    invoke-virtual {v0, p2}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;->findItemPosition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->onSelectionChanged()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;->getSelectedContactIds()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->selectedContacts:Ljava/util/Collection;

    const-string v0, "contacts"

    .line 110
    iget-object v1, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->selectedContacts:Ljava/util/Collection;

    .line 111
    invoke-static {v1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->getContactsFromIds(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected abstract onSelectionChanged()V
.end method

.method public onStart()V
    .locals 1

    .line 94
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->selectedContacts:Ljava/util/Collection;

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->loadContacts(Ljava/util/Collection;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 100
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStop()V

    .line 101
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;->clear()V

    .line 102
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showProgressBar()V

    return-void
.end method
