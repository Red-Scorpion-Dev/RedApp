.class Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GroupViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final ALPHA:F = 0.42f


# instance fields
.field private final avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

.field private final creator:Landroid/widget/TextView;

.field private final date:Landroid/widget/TextView;

.field private final layout:Landroid/view/ViewGroup;

.field private final name:Landroid/widget/TextView;

.field private final postCount:Landroid/widget/TextView;

.field private final remove:Landroid/widget/Button;

.field private final status:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 43
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->layout:Landroid/view/ViewGroup;

    const v0, 0x7f09004d

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/view/TextAvatarView;

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

    const v0, 0x7f090100

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f09007e

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->creator:Landroid/widget/TextView;

    const v0, 0x7f0900f3

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->postCount:Landroid/widget/TextView;

    const v0, 0x7f090083

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->date:Landroid/widget/TextView;

    const v0, 0x7f09017d

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->status:Landroid/widget/TextView;

    const v0, 0x7f09013b

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->remove:Landroid/widget/Button;

    return-void
.end method

.method static synthetic lambda$bindView$0(Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;Lorg/briarproject/briar/android/privategroup/list/GroupItem;Landroid/view/View;)V
    .locals 0

    .line 105
    invoke-interface {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;->onGroupRemoveClick(Lorg/briarproject/briar/android/privategroup/list/GroupItem;)V

    return-void
.end method

.method static synthetic lambda$bindView$1(Landroid/content/Context;Lorg/briarproject/briar/android/privategroup/list/GroupItem;Landroid/view/View;)V
    .locals 2

    .line 111
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    const-string v1, "briar.GROUP_ID"

    .line 113
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "briar.GROUP_NAME"

    .line 114
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method bindView(Landroid/content/Context;Lorg/briarproject/briar/android/privategroup/list/GroupItem;Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;)V
    .locals 7

    .line 56
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextAvatarView;->setText(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextAvatarView;->setBackgroundBytes([B)V

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getUnreadCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextAvatarView;->setUnreadCount(I)V

    .line 61
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    .line 65
    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getCreatorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->creator:Landroid/widget/TextView;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const v0, 0x7f1100c5

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->isDissolved()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 70
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Lorg/briarproject/briar/android/view/TextAvatarView;->setAlpha(F)V

    .line 71
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 72
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->creator:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 75
    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 76
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->postCount:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->status:Landroid/widget/TextView;

    const v0, 0x7f1100cd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getMessageCount()I

    move-result p3

    .line 83
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->postCount:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->postCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0007

    new-array v2, v2, [Ljava/lang/Object;

    .line 86
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 85
    invoke-virtual {v4, v5, p3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 84
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p2}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->getTimestamp()J

    move-result-wide v4

    .line 89
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->date:Landroid/widget/TextView;

    invoke-static {p1, v4, v5}, Lorg/briarproject/briar/android/util/UiUtils;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :goto_0
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->remove:Landroid/widget/Button;

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 96
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

    const v2, 0x3ed70a3d    # 0.42f

    invoke-virtual {v0, v2}, Lorg/briarproject/briar/android/view/TextAvatarView;->setAlpha(F)V

    .line 97
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 98
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->creator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 100
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->postCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->status:Landroid/widget/TextView;

    const v1, 0x7f1100cc

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->remove:Landroid/widget/Button;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$wLj5s-fWDGLuPGjfzFTGopnKJ2M;

    invoke-direct {v1, p3, p2}, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$wLj5s-fWDGLuPGjfzFTGopnKJ2M;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;Lorg/briarproject/briar/android/privategroup/list/GroupItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->remove:Landroid/widget/Button;

    invoke-virtual {p3, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    :goto_1
    iget-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$vk2QGwubOyCC96fgD8MdSFUU2yI;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$vk2QGwubOyCC96fgD8MdSFUU2yI;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/privategroup/list/GroupItem;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
