.class Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;
.super Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;
.source "ContactSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter<",
        "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
        "Lorg/briarproject/briar/android/contactselection/SelectableContactHolder;",
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
            "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
            ">;)V"
        }
    .end annotation

    .line 17
    const-class v0, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;

    invoke-direct {p0, p1, v0, p2}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/contactselection/SelectableContactHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/contactselection/SelectableContactHolder;
    .locals 2

    .line 23
    iget-object p2, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c006b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 25
    new-instance p2, Lorg/briarproject/briar/android/contactselection/SelectableContactHolder;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/contactselection/SelectableContactHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
