.class Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationAdapter;
.super Lorg/briarproject/briar/android/sharing/InvitationAdapter;
.source "GroupInvitationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/sharing/InvitationAdapter<",
        "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
        "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationViewHolder;",
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
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
            ">;)V"
        }
    .end annotation

    .line 14
    const-class v0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;

    invoke-direct {p0, p1, v0, p2}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 9
    check-cast p1, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;

    check-cast p2, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationAdapter;->areContentsTheSame(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;)Z
    .locals 0

    .line 26
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;->isSubscribed()Z

    move-result p1

    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;->isSubscribed()Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationViewHolder;
    .locals 0

    .line 20
    new-instance p2, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationViewHolder;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationAdapter;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
