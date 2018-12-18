.class public abstract Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;
.super Lorg/briarproject/briar/android/contact/BaseContactListAdapter;
.source "BaseContactSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
        "H:",
        "Lorg/briarproject/briar/android/contact/ContactItemViewHolder<",
        "TI;>;>",
        "Lorg/briarproject/briar/android/contact/BaseContactListAdapter<",
        "TI;TH;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "TI;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-void
.end method


# virtual methods
.method public getSelectedContactIds()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v2, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2}, Landroid/support/v7/util/SortedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 26
    iget-object v2, p0, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2, v1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;

    .line 27
    invoke-virtual {v2}, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

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
