.class Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;
.super Lorg/briarproject/briar/android/util/BriarAdapter;
.source "MemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/util/BriarAdapter<",
        "Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;",
        "Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    const-class v0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/util/BriarAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 14
    check-cast p1, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;

    check-cast p2, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;->areContentsTheSame(Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;)Z
    .locals 3

    .line 47
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->isOnline()Z

    move-result v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->isOnline()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 48
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return v2

    .line 49
    :cond_1
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    move-result-object p1

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    move-result-object p2

    if-eq p1, p2, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 14
    check-cast p1, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;

    check-cast p2, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;->areItemsTheSame(Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;)Z
    .locals 0

    .line 55
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getMember()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p1

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getMember()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;

    check-cast p2, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;->compare(Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;)I
    .locals 1

    .line 38
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getMember()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {v0, p1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getMember()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    .line 41
    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    .line 40
    invoke-static {v0, p2}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 14
    check-cast p1, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;->onBindViewHolder(Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p2}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->bind(Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;
    .locals 2

    .line 25
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0067

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 27
    new-instance p2, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
