.class Lorg/briarproject/briar/android/sharing/SharingInvitationAdapter;
.super Lorg/briarproject/briar/android/sharing/InvitationAdapter;
.source "SharingInvitationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/sharing/InvitationAdapter<",
        "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
        "Lorg/briarproject/briar/android/sharing/SharingInvitationViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener<",
            "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
            ">;)V"
        }
    .end annotation

    .line 13
    const-class v0, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;

    invoke-direct {p0, p1, v0, p2}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;

    check-cast p2, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/SharingInvitationAdapter;->areContentsTheSame(Lorg/briarproject/briar/api/sharing/SharingInvitationItem;Lorg/briarproject/briar/api/sharing/SharingInvitationItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/briarproject/briar/api/sharing/SharingInvitationItem;Lorg/briarproject/briar/api/sharing/SharingInvitationItem;)Z
    .locals 2

    .line 26
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;->isSubscribed()Z

    move-result v0

    invoke-virtual {p2}, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;->isSubscribed()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 27
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;->getNewSharers()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p2}, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;->getNewSharers()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/SharingInvitationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/sharing/SharingInvitationViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/sharing/SharingInvitationViewHolder;
    .locals 0

    .line 20
    new-instance p2, Lorg/briarproject/briar/android/sharing/SharingInvitationViewHolder;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/SharingInvitationAdapter;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/sharing/SharingInvitationViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
