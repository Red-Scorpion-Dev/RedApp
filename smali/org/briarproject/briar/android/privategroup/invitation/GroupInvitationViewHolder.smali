.class Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationViewHolder;
.super Lorg/briarproject/briar/android/sharing/InvitationViewHolder;
.source "GroupInvitationViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/sharing/InvitationViewHolder<",
        "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBind(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->onBind(Lorg/briarproject/briar/api/sharing/InvitationItem;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationViewHolder;->sharedBy:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationViewHolder;->sharedBy:Landroid/widget/TextView;

    .line 28
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100c5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 29
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;->getCreator()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/contact/Contact;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBind(Lorg/briarproject/briar/api/sharing/InvitationItem;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V
    .locals 0

    .line 14
    check-cast p1, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationViewHolder;->onBind(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V

    return-void
.end method
