.class Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;
.super Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;
.source "JoinMessageItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder<",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final isCreator:Z


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    iput-boolean p2, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->isCreator:Z

    return-void
.end method

.method private bind(Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;)V
    .locals 5

    .line 46
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;->isInitial()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 50
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->textView:Landroid/widget/TextView;

    const v2, 0x7f1100de

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    .line 51
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    move-result-object p1

    sget-object v2, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->OURSELVES:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    if-ne p1, v2, :cond_1

    .line 54
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f1100e1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->textView:Landroid/widget/TextView;

    const v2, 0x7f1100e0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    .line 57
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private bindForCreator(Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;)V
    .locals 5

    .line 36
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;->isInitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f1100df

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;->getAuthorName()Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100e0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bind(Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
            "Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener<",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->bind(Lorg/briarproject/briar/android/threaded/ThreadItem;Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;)V

    .line 31
    iget-boolean p2, p0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->isCreator:Z

    if-eqz p2, :cond_0

    check-cast p1, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->bindForCreator(Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;)V

    goto :goto_0

    .line 32
    :cond_0
    check-cast p1, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->bind(Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Lorg/briarproject/briar/android/threaded/ThreadItem;Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;)V
    .locals 0

    .line 14
    check-cast p1, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItemViewHolder;->bind(Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;)V

    return-void
.end method
