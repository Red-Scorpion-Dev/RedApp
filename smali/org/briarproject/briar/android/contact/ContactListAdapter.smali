.class public Lorg/briarproject/briar/android/contact/ContactListAdapter;
.super Lorg/briarproject/briar/android/contact/BaseContactListAdapter;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/contact/BaseContactListAdapter<",
        "Lorg/briarproject/briar/android/contact/ContactListItem;",
        "Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "Lorg/briarproject/briar/android/contact/ContactListItem;",
            ">;)V"
        }
    .end annotation

    .line 15
    const-class v0, Lorg/briarproject/briar/android/contact/ContactListItem;

    invoke-direct {p0, p1, v0, p2}, Lorg/briarproject/briar/android/contact/BaseContactListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 10
    check-cast p1, Lorg/briarproject/briar/android/contact/ContactListItem;

    check-cast p2, Lorg/briarproject/briar/android/contact/ContactListItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->areContentsTheSame(Lorg/briarproject/briar/android/contact/ContactListItem;Lorg/briarproject/briar/android/contact/ContactListItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/briarproject/briar/android/contact/ContactListItem;Lorg/briarproject/briar/android/contact/ContactListItem;)Z
    .locals 6

    .line 31
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactListItem;->getUnreadCount()I

    move-result v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/contact/ContactListItem;->getUnreadCount()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 34
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactListItem;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/contact/ContactListItem;->getTimestamp()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    return v2

    .line 37
    :cond_1
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactListItem;->isConnected()Z

    move-result p1

    invoke-virtual {p2}, Lorg/briarproject/briar/android/contact/ContactListItem;->isConnected()Z

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lorg/briarproject/briar/android/contact/ContactListItem;

    check-cast p2, Lorg/briarproject/briar/android/contact/ContactListItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->compare(Lorg/briarproject/briar/android/contact/ContactListItem;Lorg/briarproject/briar/android/contact/ContactListItem;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/ContactItem;)I
    .locals 0

    .line 10
    check-cast p1, Lorg/briarproject/briar/android/contact/ContactListItem;

    check-cast p2, Lorg/briarproject/briar/android/contact/ContactListItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->compare(Lorg/briarproject/briar/android/contact/ContactListItem;Lorg/briarproject/briar/android/contact/ContactListItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/briar/android/contact/ContactListItem;Lorg/briarproject/briar/android/contact/ContactListItem;)I
    .locals 3

    .line 42
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactListItem;->getTimestamp()J

    move-result-wide v0

    .line 43
    invoke-virtual {p2}, Lorg/briarproject/briar/android/contact/ContactListItem;->getTimestamp()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contact/ContactListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;
    .locals 2

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c005c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 24
    new-instance p2, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
