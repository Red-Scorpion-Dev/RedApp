.class public Lorg/briarproject/briar/android/sharing/InvitationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "InvitationViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/api/sharing/InvitationItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field private final accept:Landroid/widget/Button;

.field private final avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

.field private final decline:Landroid/widget/Button;

.field private final name:Landroid/widget/TextView;

.field protected final sharedBy:Landroid/widget/TextView;

.field private final subscribed:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09004d

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/view/TextAvatarView;

    iput-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

    const v0, 0x7f0900be

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f090168

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->sharedBy:Landroid/widget/TextView;

    const v0, 0x7f0900bf

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->subscribed:Landroid/widget/TextView;

    const v0, 0x7f09000f

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->accept:Landroid/widget/Button;

    const v0, 0x7f090084

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->decline:Landroid/widget/Button;

    return-void
.end method

.method static synthetic lambda$onBind$0(Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;Lorg/briarproject/briar/api/sharing/InvitationItem;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    .line 55
    invoke-interface {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;->onItemClick(Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic lambda$onBind$1(Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;Lorg/briarproject/briar/api/sharing/InvitationItem;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 56
    invoke-interface {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;->onItemClick(Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public onBind(Lorg/briarproject/briar/api/sharing/InvitationItem;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener<",
            "TI;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/InvitationItem;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object v1

    invoke-interface {v1}, Lorg/briarproject/briar/api/sharing/Shareable;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextAvatarView;->setText(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/InvitationItem;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object v1

    invoke-interface {v1}, Lorg/briarproject/briar/api/sharing/Shareable;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextAvatarView;->setBackgroundBytes([B)V

    .line 47
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/InvitationItem;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object v1

    invoke-interface {v1}, Lorg/briarproject/briar/api/sharing/Shareable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/InvitationItem;->isSubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->subscribed:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->subscribed:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->accept:Landroid/widget/Button;

    new-instance v1, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationViewHolder$bplX8LStyRHn0uesLEu-EYVci0A;

    invoke-direct {v1, p2, p1}, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationViewHolder$bplX8LStyRHn0uesLEu-EYVci0A;-><init>(Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;Lorg/briarproject/briar/api/sharing/InvitationItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->decline:Landroid/widget/Button;

    new-instance v1, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationViewHolder$Jb4UVSLtVTtFDUh6PBopDRShPIw;

    invoke-direct {v1, p2, p1}, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationViewHolder$Jb4UVSLtVTtFDUh6PBopDRShPIw;-><init>(Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;Lorg/briarproject/briar/api/sharing/InvitationItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
