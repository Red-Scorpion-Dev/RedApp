.class Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;
.super Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;
.source "ConversationNoticeViewHolder.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final msgText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;-><init>(Landroid/view/View;Z)V

    const p2, 0x7f0900f8

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;->msgText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method bind(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationListener;)V
    .locals 1

    .line 30
    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;

    .line 31
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationItemViewHolder;->bind(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationListener;)V

    .line 33
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;->getMsgText()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;->msgText:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;->isIncoming()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f08091a

    goto :goto_0

    :cond_0
    const p2, 0x7f08091c

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_2

    .line 39
    :cond_1
    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;->msgText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;->msgText:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;->isIncoming()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f08091b

    goto :goto_1

    :cond_2
    const p2, 0x7f08091d

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method
