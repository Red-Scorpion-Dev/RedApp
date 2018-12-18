.class Lorg/briarproject/briar/android/forum/ForumListAdapter;
.super Lorg/briarproject/briar/android/util/BriarAdapter;
.source "ForumListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/util/BriarAdapter<",
        "Lorg/briarproject/briar/android/forum/ForumListItem;",
        "Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    const-class v0, Lorg/briarproject/briar/android/forum/ForumListItem;

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/util/BriarAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lorg/briarproject/briar/android/forum/ForumListAdapter;Lorg/briarproject/briar/android/forum/ForumListItem;Landroid/view/View;)V
    .locals 2

    .line 72
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter;->ctx:Landroid/content/Context;

    const-class v1, Lorg/briarproject/briar/android/forum/ForumActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p1}, Lorg/briarproject/briar/android/forum/ForumListItem;->getForum()Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1

    const-string v0, "briar.GROUP_ID"

    .line 74
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/Forum;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "briar.GROUP_NAME"

    .line 75
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/Forum;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Lorg/briarproject/briar/android/forum/ForumListItem;

    check-cast p2, Lorg/briarproject/briar/android/forum/ForumListItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->areContentsTheSame(Lorg/briarproject/briar/android/forum/ForumListItem;Lorg/briarproject/briar/android/forum/ForumListItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/briarproject/briar/android/forum/ForumListItem;Lorg/briarproject/briar/android/forum/ForumListItem;)Z
    .locals 5

    .line 95
    invoke-virtual {p1}, Lorg/briarproject/briar/android/forum/ForumListItem;->isEmpty()Z

    move-result v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->isEmpty()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p1}, Lorg/briarproject/briar/android/forum/ForumListItem;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 97
    invoke-virtual {p1}, Lorg/briarproject/briar/android/forum/ForumListItem;->getUnreadCount()I

    move-result p1

    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getUnreadCount()I

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

    .line 24
    check-cast p1, Lorg/briarproject/briar/android/forum/ForumListItem;

    check-cast p2, Lorg/briarproject/briar/android/forum/ForumListItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->areItemsTheSame(Lorg/briarproject/briar/android/forum/ForumListItem;Lorg/briarproject/briar/android/forum/ForumListItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/briarproject/briar/android/forum/ForumListItem;Lorg/briarproject/briar/android/forum/ForumListItem;)Z
    .locals 0

    .line 102
    invoke-virtual {p1}, Lorg/briarproject/briar/android/forum/ForumListItem;->getForum()Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1

    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getForum()Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/api/forum/Forum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lorg/briarproject/briar/android/forum/ForumListItem;

    check-cast p2, Lorg/briarproject/briar/android/forum/ForumListItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->compare(Lorg/briarproject/briar/android/forum/ForumListItem;Lorg/briarproject/briar/android/forum/ForumListItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/briar/android/forum/ForumListItem;Lorg/briarproject/briar/android/forum/ForumListItem;)I
    .locals 5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 84
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/forum/ForumListItem;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getTimestamp()J

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

    .line 88
    :cond_2
    invoke-virtual {p1}, Lorg/briarproject/briar/android/forum/ForumListItem;->getForum()Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/Forum;->getName()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getForum()Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/briar/api/forum/Forum;->getName()Ljava/lang/String;

    move-result-object p2

    .line 90
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method findItemPosition(Lorg/briarproject/bramble/api/sync/GroupId;)I
    .locals 3

    .line 106
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 108
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/forum/ForumListItem;

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getForum()Lorg/briarproject/briar/api/forum/Forum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/briar/api/forum/Forum;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->onBindViewHolder(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;I)V
    .locals 7

    .line 40
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/forum/ForumListItem;

    if-nez p2, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->access$100(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Lorg/briarproject/briar/android/view/TextAvatarView;

    move-result-object v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getForum()Lorg/briarproject/briar/api/forum/Forum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/api/forum/Forum;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextAvatarView;->setText(Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->access$100(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Lorg/briarproject/briar/android/view/TextAvatarView;

    move-result-object v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getForum()Lorg/briarproject/briar/api/forum/Forum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/api/forum/Forum;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextAvatarView;->setBackgroundBytes([B)V

    .line 46
    invoke-static {p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->access$100(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Lorg/briarproject/briar/android/view/TextAvatarView;

    move-result-object v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getUnreadCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextAvatarView;->setUnreadCount(I)V

    .line 49
    invoke-static {p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->access$200(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getForum()Lorg/briarproject/briar/api/forum/Forum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/api/forum/Forum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getPostCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 54
    invoke-static {p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->access$300(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0008

    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 55
    invoke-virtual {v4, v5, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->access$300(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter;->ctx:Landroid/content/Context;

    const v2, 0x7f11012a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-static {p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->access$400(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p2}, Lorg/briarproject/briar/android/forum/ForumListItem;->getTimestamp()J

    move-result-wide v0

    .line 66
    invoke-static {p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->access$400(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter;->ctx:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->access$400(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :goto_1
    invoke-static {p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->access$500(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListAdapter$kAL6Ao0lW0KDG5V1g1qgxdCGy3I;

    invoke-direct {v0, p0, p2}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListAdapter$kAL6Ao0lW0KDG5V1g1qgxdCGy3I;-><init>(Lorg/briarproject/briar/android/forum/ForumListAdapter;Lorg/briarproject/briar/android/forum/ForumListItem;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;
    .locals 2

    .line 33
    iget-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0064

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;-><init>(Landroid/view/View;Lorg/briarproject/briar/android/forum/ForumListAdapter$1;)V

    return-object p2
.end method
