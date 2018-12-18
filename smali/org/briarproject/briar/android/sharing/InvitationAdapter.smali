.class public abstract Lorg/briarproject/briar/android/sharing/InvitationAdapter;
.super Lorg/briarproject/briar/android/util/BriarAdapter;
.source "InvitationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/api/sharing/InvitationItem;",
        "VH:",
        "Lorg/briarproject/briar/android/sharing/InvitationViewHolder<",
        "TI;>;>",
        "Lorg/briarproject/briar/android/util/BriarAdapter<",
        "TI;TVH;>;"
    }
.end annotation


# instance fields
.field private final listener:Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener<",
            "TI;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/util/BriarAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    iput-object p3, p0, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->listener:Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, Lorg/briarproject/briar/api/sharing/InvitationItem;

    check-cast p2, Lorg/briarproject/briar/api/sharing/InvitationItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->areItemsTheSame(Lorg/briarproject/briar/api/sharing/InvitationItem;Lorg/briarproject/briar/api/sharing/InvitationItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/briarproject/briar/api/sharing/InvitationItem;Lorg/briarproject/briar/api/sharing/InvitationItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TI;)Z"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/InvitationItem;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object p1

    invoke-virtual {p2}, Lorg/briarproject/briar/api/sharing/InvitationItem;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lorg/briarproject/briar/api/sharing/InvitationItem;

    check-cast p2, Lorg/briarproject/briar/api/sharing/InvitationItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->compare(Lorg/briarproject/briar/api/sharing/InvitationItem;Lorg/briarproject/briar/api/sharing/InvitationItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/briar/api/sharing/InvitationItem;Lorg/briarproject/briar/api/sharing/InvitationItem;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TI;)I"
        }
    .end annotation

    .line 43
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 44
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/InvitationItem;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object p1

    invoke-interface {p1}, Lorg/briarproject/briar/api/sharing/Shareable;->getName()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p2}, Lorg/briarproject/briar/api/sharing/InvitationItem;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object p2

    invoke-interface {p2}, Lorg/briarproject/briar/api/sharing/Shareable;->getName()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected getView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0068

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->onBindViewHolder(Lorg/briarproject/briar/android/sharing/InvitationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/briarproject/briar/android/sharing/InvitationViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/api/sharing/InvitationItem;

    if-nez p2, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationAdapter;->listener:Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;

    invoke-virtual {p1, p2, v0}, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->onBind(Lorg/briarproject/briar/api/sharing/InvitationItem;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V

    return-void
.end method
