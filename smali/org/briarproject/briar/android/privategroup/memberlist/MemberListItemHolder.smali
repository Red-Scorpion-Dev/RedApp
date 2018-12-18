.class Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MemberListItemHolder.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final author:Lorg/briarproject/briar/android/view/AuthorView;

.field private final bulb:Landroid/widget/ImageView;

.field private final creator:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090045

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/view/AuthorView;

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    const v0, 0x7f090056

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->bulb:Landroid/widget/ImageView;

    const v0, 0x7f09007e

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->creator:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected bind(Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;)V
    .locals 5

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getMember()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/briar/android/view/AuthorView;->setAuthor(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;)V

    .line 38
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->bulb:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->bulb:Landroid/widget/ImageView;

    const v3, 0x7f080065

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->bulb:Landroid/widget/ImageView;

    const v3, 0x7f080066

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->bulb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    :goto_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->isCreator()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->creator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    move-result-object v0

    sget-object v1, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->OURSELVES:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    if-ne v0, v1, :cond_2

    .line 53
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->creator:Landroid/widget/TextView;

    const v0, 0x7f1100df

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getMember()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {v0, p1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->creator:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->creator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1100de

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 58
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 61
    :cond_3
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItemHolder;->creator:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
