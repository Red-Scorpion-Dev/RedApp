.class Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;
.super Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;
.source "RevealableContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter<",
        "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;",
        "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;",
            ">;)V"
        }
    .end annotation

    .line 22
    const-class v0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;

    invoke-direct {p0, p1, v0, p2}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-void
.end method


# virtual methods
.method getDisabledContactIds()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 36
    :goto_0
    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2}, Landroid/support/v7/util/SortedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 37
    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2, v1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;

    .line 38
    invoke-virtual {v2}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;
    .locals 2

    .line 28
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0069

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 30
    new-instance p2, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
