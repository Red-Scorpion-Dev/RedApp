.class Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;
.super Lorg/briarproject/briar/android/util/BriarAdapter;
.source "GroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/util/BriarAdapter<",
        "Lorg/briarproject/briar/android/privategroup/list/GroupItem;",
        "Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field private final listener:Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;)V
    .locals 1

    .line 24
    const-class v0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/util/BriarAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 17
    check-cast p1, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    check-cast p2, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->areContentsTheSame(Lorg/briarproject/briar/android/privategroup/list/GroupItem;Lorg/briarproject/briar/android/privategroup/list/GroupItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/briarproject/briar/android/privategroup/list/GroupItem;Lorg/briarproject/briar/android/privategroup/list/GroupItem;)Z
    .locals 5

    .line 55
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getMessageCount()I

    move-result v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getMessageCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 57
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getUnreadCount()I

    move-result v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getUnreadCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->isDissolved()Z

    move-result p1

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->isDissolved()Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 17
    check-cast p1, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    check-cast p2, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->areItemsTheSame(Lorg/briarproject/briar/android/privategroup/list/GroupItem;Lorg/briarproject/briar/android/privategroup/list/GroupItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/briarproject/briar/android/privategroup/list/GroupItem;Lorg/briarproject/briar/android/privategroup/list/GroupItem;)Z
    .locals 0

    .line 63
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    check-cast p2, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->compare(Lorg/briarproject/briar/android/privategroup/list/GroupItem;Lorg/briarproject/briar/android/privategroup/list/GroupItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/briar/android/privategroup/list/GroupItem;Lorg/briarproject/briar/android/privategroup/list/GroupItem;)I
    .locals 5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 44
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 p1, 0x1

    return p1

    .line 48
    :cond_2
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getName()Ljava/lang/String;

    move-result-object p2

    .line 50
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method findItemPosition(Lorg/briarproject/bramble/api/sync/GroupId;)I
    .locals 2

    const/4 v0, 0x0

    .line 67
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1}, Landroid/support/v7/util/SortedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 68
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, v0}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    .line 69
    invoke-virtual {v1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->onBindViewHolder(Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;I)V
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, p2}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;

    invoke-virtual {p1, v0, p2, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->bindView(Landroid/content/Context;Lorg/briarproject/briar/android/privategroup/list/GroupItem;Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;
    .locals 2

    .line 30
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0065

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance p2, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method removeItem(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 77
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->findItemPosition(Lorg/briarproject/bramble/api/sync/GroupId;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->removeItemAt(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method
