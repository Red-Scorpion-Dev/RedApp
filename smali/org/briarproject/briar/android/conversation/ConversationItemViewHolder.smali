.class abstract Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ConversationItemViewHolder.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field protected final layout:Landroid/view/ViewGroup;

.field private final outViewHolder:Lorg/briarproject/briar/android/conversation/OutItemViewHolder;

.field private final text:Landroid/widget/TextView;

.field private final time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Lorg/briarproject/briar/android/conversation/OutItemViewHolder;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/conversation/OutItemViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->outViewHolder:Lorg/briarproject/briar/android/conversation/OutItemViewHolder;

    const p2, 0x7f0900e4

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->layout:Landroid/view/ViewGroup;

    const p2, 0x7f090189

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->text:Landroid/widget/TextView;

    const p2, 0x7f09019d

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->time:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method bind(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationListener;)V
    .locals 3

    .line 37
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 38
    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/bramble/util/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getTime()J

    move-result-wide v0

    .line 42
    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->time:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->outViewHolder:Lorg/briarproject/briar/android/conversation/OutItemViewHolder;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->outViewHolder:Lorg/briarproject/briar/android/conversation/OutItemViewHolder;

    invoke-virtual {p2, p1}, Lorg/briarproject/briar/android/conversation/OutItemViewHolder;->bind(Lorg/briarproject/briar/android/conversation/ConversationItem;)V

    :cond_1
    return-void
.end method

.method isIncoming()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->outViewHolder:Lorg/briarproject/briar/android/conversation/OutItemViewHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
