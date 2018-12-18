.class Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;
.super Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;
.source "GroupMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/threaded/ThreadItemAdapter<",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private isCreator:Z


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener<",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
            ">;",
            "Landroid/support/v7/widget/LinearLayoutManager;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;-><init>(Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;Landroid/support/v7/widget/LinearLayoutManager;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->isCreator:Z

    return-void
.end method

.method private findItemPosition(Lorg/briarproject/bramble/api/identity/AuthorId;)I
    .locals 3

    .line 66
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 68
    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v2, v1}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->get(I)Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    .line 69
    invoke-virtual {v2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/briarproject/bramble/api/identity/AuthorId;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->get(I)Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    .line 35
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;->getLayout()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;

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
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0c0066

    if-ne p2, v0, :cond_0

    .line 44
    new-instance p2, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;

    iget-boolean v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->isCreator:Z

    invoke-direct {p2, p1, v0}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p2

    .line 46
    :cond_0
    new-instance p2, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method setPerspective(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->isCreator:Z

    .line 51
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method updateVisibility(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/briar/api/privategroup/Visibility;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->findItemPosition(Lorg/briarproject/bramble/api/identity/AuthorId;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->items:Lorg/briarproject/briar/android/threaded/NestedTreeList;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/NestedTreeList;->get(I)Lorg/briarproject/briar/api/client/MessageTree$MessageNode;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    .line 58
    instance-of v0, p1, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p1

    check-cast v0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;

    invoke-virtual {v0, p2}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;->setVisibility(Lorg/briarproject/briar/api/privategroup/Visibility;)V

    .line 60
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->findItemPosition(Lorg/briarproject/briar/android/threaded/ThreadItem;)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
