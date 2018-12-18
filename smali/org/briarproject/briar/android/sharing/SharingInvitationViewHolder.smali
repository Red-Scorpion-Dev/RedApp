.class Lorg/briarproject/briar/android/sharing/SharingInvitationViewHolder;
.super Lorg/briarproject/briar/android/sharing/InvitationViewHolder;
.source "SharingInvitationViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/sharing/InvitationViewHolder<",
        "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Lorg/briarproject/briar/api/sharing/InvitationItem;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V
    .locals 0

    .line 18
    check-cast p1, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/SharingInvitationViewHolder;->onBind(Lorg/briarproject/briar/api/sharing/SharingInvitationItem;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V

    return-void
.end method

.method public onBind(Lorg/briarproject/briar/api/sharing/SharingInvitationItem;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener<",
            "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->onBind(Lorg/briarproject/briar/api/sharing/InvitationItem;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V

    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;->getNewSharers()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/Contact;

    .line 33
    invoke-static {v0}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/contact/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/SharingInvitationViewHolder;->sharedBy:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/SharingInvitationViewHolder;->sharedBy:Landroid/widget/TextView;

    .line 35
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1101ad

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ", "

    .line 36
    invoke-static {p2, v4}, Lorg/briarproject/bramble/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
