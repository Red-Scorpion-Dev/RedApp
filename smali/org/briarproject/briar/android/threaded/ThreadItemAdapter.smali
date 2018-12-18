.class public Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ThreadItemAdapter.java"

# interfaces
.implements Lorg/briarproject/briar/android/util/VersionedAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;,
        Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/android/threaded/ThreadItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder<",
        "TI;>;>;",
        "Lorg/briarproject/briar/android/util/VersionedAdapter;"
    }
.end annotation


# static fields
.field static final UNDEFINED:I = -0x1


# instance fields
.field protected final items:Lorg/briarproject/briar/android/threaded/NestedTreeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/android/threaded/NestedTreeList<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private final listener:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener<",
            "TI;>;"
        }
    .end annotation
.end field

.field private volatile revision:I


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener<",
            "TI;>;",
            "Landroid/support/v7/widget/LinearLayoutManager;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-direct {v0}, Lorg/briarproject/briar/android/threaded/NestedTreeList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->revision:I

    .line 36
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->listener:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;

    .line 37
    iput-object p2, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method public add(Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->add(Lorg/briarproject/briar/api/client/MessageTree$MessageNode;)V

    .line 90
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->findItemPosition(Lorg/briarproject/briar/android/threaded/ThreadItem;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method contains(Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->contains(Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result p1

    return p1
.end method

.method protected findItemPosition(Lorg/briarproject/briar/android/threaded/ThreadItem;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v1}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 103
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->get(I)Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/android/threaded/ThreadItem;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method getHighlightedItem()Lorg/briarproject/briar/android/threaded/ThreadItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/android/threaded/ThreadItem;

    .line 134
    invoke-virtual {v1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->isHighlighted()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemAt(I)Lorg/briarproject/briar/android/threaded/ThreadItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TI;"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->get(I)Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/threaded/ThreadItem;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->size()I

    move-result v0

    return v0
.end method

.method public getRevision()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->revision:I

    return v0
.end method

.method public getUnreadCount()Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;
    .locals 8

    .line 146
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 147
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    .line 149
    new-instance v0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;

    invoke-direct {v0, v4, v4, v2}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;-><init>(IILorg/briarproject/briar/android/threaded/ThreadItemAdapter$1;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 152
    :goto_0
    iget-object v6, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v6}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 153
    iget-object v6, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v6, v4}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->get(I)Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    move-result-object v6

    check-cast v6, Lorg/briarproject/briar/android/threaded/ThreadItem;

    if-ge v4, v0, :cond_1

    .line 154
    invoke-virtual {v6}, Lorg/briarproject/briar/android/threaded/ThreadItem;->isRead()Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-le v4, v1, :cond_2

    .line 156
    invoke-virtual {v6}, Lorg/briarproject/briar/android/threaded/ThreadItem;->isRead()Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    :cond_3
    new-instance v0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;

    invoke-direct {v0, v3, v5, v2}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;-><init>(IILorg/briarproject/briar/android/threaded/ThreadItemAdapter$1;)V

    return-object v0
.end method

.method getVisibleUnreadPosBottom()I
    .locals 3

    .line 167
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 169
    iget-object v2, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v2}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 170
    iget-object v2, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v2, v0}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->get(I)Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/threaded/ThreadItem;

    invoke-virtual {v2}, Lorg/briarproject/briar/android/threaded/ThreadItem;->isRead()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_1
    return v1
.end method

.method getVisibleUnreadPosTop()I
    .locals 5

    .line 179
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 181
    :goto_0
    iget-object v4, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v4}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    if-ge v2, v0, :cond_0

    .line 182
    iget-object v4, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v4, v2}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->get(I)Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    move-result-object v4

    check-cast v4, Lorg/briarproject/briar/android/threaded/ThreadItem;

    invoke-virtual {v4}, Lorg/briarproject/briar/android/threaded/ThreadItem;->isRead()Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    if-lt v2, v0, :cond_1

    return v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public incrementRevision()V
    .locals 1

    .line 68
    iget v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->revision:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->revision:I

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->onBindViewHolder(Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder<",
            "TI;>;I)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0, p2}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->get(I)Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/threaded/ThreadItem;

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->listener:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;

    invoke-virtual {p1, p2, v0}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->bind(Lorg/briarproject/briar/android/threaded/ThreadItem;Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder<",
            "TI;>;"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c006c

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method setHighlightedItem(Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 119
    :goto_0
    iget-object v2, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v2}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 120
    iget-object v2, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v2, v1}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->get(I)Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/threaded/ThreadItem;

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {v2}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/briarproject/bramble/api/sync/MessageId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 122
    invoke-virtual {v2, v3}, Lorg/briarproject/briar/android/threaded/ThreadItem;->setHighlighted(Z)V

    .line 123
    invoke-virtual {p0, v1, v2}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {v2}, Lorg/briarproject/briar/android/threaded/ThreadItem;->isHighlighted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-virtual {v2, v0}, Lorg/briarproject/briar/android/threaded/ThreadItem;->setHighlighted(Z)V

    .line 126
    invoke-virtual {p0, v1, v2}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method setItemWithIdVisible(Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/threaded/ThreadItem;

    .line 74
    invoke-virtual {v2}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/briarproject/bramble/api/sync/MessageId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setItems(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TI;>;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->clear()V

    .line 84
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->addAll(Ljava/util/Collection;)V

    .line 85
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
