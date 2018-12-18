.class Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;
.super Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;
.source "ConversationRequestViewHolder.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final acceptButton:Landroid/widget/Button;

.field private final declineButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;-><init>(Landroid/view/View;Z)V

    const p2, 0x7f09000f

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->acceptButton:Landroid/widget/Button;

    const p2, 0x7f090084

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->declineButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic lambda$bind$0(Lorg/briarproject/briar/android/conversation/ConversationListener;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-interface {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationListener;->openRequestedShareable(Lorg/briarproject/briar/android/conversation/ConversationRequestItem;)V

    return-void
.end method

.method public static synthetic lambda$bind$1(Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;Lorg/briarproject/briar/android/conversation/ConversationListener;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object p3, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->acceptButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 45
    iget-object p3, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->declineButton:Landroid/widget/Button;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 p3, 0x1

    .line 46
    invoke-interface {p1, p2, p3}, Lorg/briarproject/briar/android/conversation/ConversationListener;->respondToRequest(Lorg/briarproject/briar/android/conversation/ConversationRequestItem;Z)V

    return-void
.end method

.method public static synthetic lambda$bind$2(Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;Lorg/briarproject/briar/android/conversation/ConversationListener;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object p3, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->acceptButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 51
    iget-object p3, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->declineButton:Landroid/widget/Button;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 52
    invoke-interface {p1, p2, v0}, Lorg/briarproject/briar/android/conversation/ConversationListener;->respondToRequest(Lorg/briarproject/briar/android/conversation/ConversationRequestItem;Z)V

    return-void
.end method


# virtual methods
.method bind(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationListener;)V
    .locals 3

    .line 28
    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;

    .line 29
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationNoticeViewHolder;->bind(Lorg/briarproject/briar/android/conversation/ConversationItem;Lorg/briarproject/briar/android/conversation/ConversationListener;)V

    .line 31
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->wasAnswered()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->canBeOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->acceptButton:Landroid/widget/Button;

    const v2, 0x7f11014b

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->acceptButton:Landroid/widget/Button;

    new-instance v2, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationRequestViewHolder$Y6XUQB6fRoTzgDOqj2egSAqhjfo;

    invoke-direct {v2, p2, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationRequestViewHolder$Y6XUQB6fRoTzgDOqj2egSAqhjfo;-><init>(Lorg/briarproject/briar/android/conversation/ConversationListener;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->declineButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->wasAnswered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->declineButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->acceptButton:Landroid/widget/Button;

    const v1, 0x7f110027

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 43
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->acceptButton:Landroid/widget/Button;

    new-instance v1, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationRequestViewHolder$0Vrv1hzcY3icLgV-cZUhD_x3p9Q;

    invoke-direct {v1, p0, p2, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationRequestViewHolder$0Vrv1hzcY3icLgV-cZUhD_x3p9Q;-><init>(Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;Lorg/briarproject/briar/android/conversation/ConversationListener;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->declineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;->declineButton:Landroid/widget/Button;

    new-instance v1, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationRequestViewHolder$MsIk8j5COvwYDye84Xu6uPOX-Wg;

    invoke-direct {v1, p0, p2, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationRequestViewHolder$MsIk8j5COvwYDye84Xu6uPOX-Wg;-><init>(Lorg/briarproject/briar/android/conversation/ConversationRequestViewHolder;Lorg/briarproject/briar/android/conversation/ConversationListener;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
