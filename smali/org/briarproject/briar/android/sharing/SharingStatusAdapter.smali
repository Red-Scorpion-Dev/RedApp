.class Lorg/briarproject/briar/android/sharing/SharingStatusAdapter;
.super Lorg/briarproject/briar/android/contact/BaseContactListAdapter;
.source "SharingStatusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/contact/BaseContactListAdapter<",
        "Lorg/briarproject/briar/android/contact/ContactItem;",
        "Lorg/briarproject/briar/android/contact/ContactItemViewHolder<",
        "Lorg/briarproject/briar/android/contact/ContactItem;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    const-class v0, Lorg/briarproject/briar/android/contact/ContactItem;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/SharingStatusAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/contact/ContactItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/contact/ContactItemViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lorg/briarproject/briar/android/contact/ContactItemViewHolder<",
            "Lorg/briarproject/briar/android/contact/ContactItem;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c005d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 25
    new-instance p2, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
