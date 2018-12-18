.class Lorg/briarproject/briar/android/conversation/ConversationAdapter;
.super Lorg/briarproject/briar/android/util/BriarAdapter;
.source "ConversationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/util/BriarAdapter<",
        "Lorg/briarproject/briar/android/conversation/ConversationItem;",
        "Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private listener:Lorg/briarproject/briar/android/conversation/ConversationListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/briarproject/briar/android/conversation/ConversationListener;)V
    .locals 1

    .line 24
    const-class v0, Lorg/briarproject/briar/android/conversation/ConversationItem;

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/util/BriarAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->listener:Lorg/briarproject/briar/android/conversation/ConversationListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationItem;

    check-cast p2, Lorg/briarproject/briar/android/conversation/ConversationItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->areContentsTheSame(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationItem;)Z
    .locals 0

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationItem;

    check-cast p2, Lorg/briarproject/briar/android/conversation/ConversationItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->areItemsTheSame(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationItem;)Z
    .locals 0

    .line 71
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-virtual {p2}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/sync/MessageId;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationItem;

    check-cast p2, Lorg/briarproject/briar/android/conversation/ConversationItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->compare(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationItem;)I
    .locals 3

    .line 65
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getTime()J

    move-result-wide p1

    cmp-long v2, v0, p1

    return v2
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationItem;

    .line 32
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getLayout()I

    move-result p1

    return p1
.end method

.method getLastItem()Lorg/briarproject/briar/android/conversation/ConversationItem;
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->items:Landroid/support/v7/util/SortedList;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1}, Landroid/support/v7/util/SortedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/conversation/ConversationItem;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getMessageItems()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lorg/briarproject/briar/android/conversation/ConversationMessageItem;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 104
    :goto_0
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2}, Landroid/support/v7/util/SortedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 105
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2, v1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/conversation/ConversationItem;

    .line 106
    instance-of v3, v2, Lorg/briarproject/briar/android/conversation/ConversationMessageItem;

    if-eqz v3, :cond_0

    .line 107
    check-cast v2, Lorg/briarproject/briar/android/conversation/ConversationMessageItem;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getOutgoingMessages()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lorg/briarproject/briar/android/conversation/ConversationItem;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 92
    :goto_0
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2}, Landroid/support/v7/util/SortedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 93
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2, v1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/conversation/ConversationItem;

    .line 94
    invoke-virtual {v2}, Lorg/briarproject/briar/android/conversation/ConversationItem;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->onBindViewHolder(Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->items:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p2}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/conversation/ConversationItem;

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->listener:Lorg/briarproject/briar/android/conversation/ConversationListener;

    invoke-virtual {p1, p2, v0}, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->bind(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationListener;)V

    .line 60
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->listener:Lorg/briarproject/briar/android/conversation/ConversationListener;

    invoke-interface {p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationListener;->onItemVisible(Lorg/briarproject/briar/android/conversation/ConversationItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;
    .locals 2

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    .line 52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown ConversationItem"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :pswitch_0
    new-instance p2, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;

    invoke-direct {p2, p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p2

    .line 48
    :pswitch_1
    new-instance p2, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;

    invoke-direct {p2, p1, v1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p2

    .line 46
    :pswitch_2
    new-instance p2, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;

    invoke-direct {p2, p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p2

    .line 44
    :pswitch_3
    new-instance p2, Lorg/briarproject/briar/android/conversation/ConversationMessageViewHolder;

    invoke-direct {p2, p1, v1}, Lorg/briarproject/briar/android/conversation/ConversationMessageViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p2

    .line 42
    :pswitch_4
    new-instance p2, Lorg/briarproject/briar/android/conversation/ConversationMessageViewHolder;

    invoke-direct {p2, p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationMessageViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c005e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
