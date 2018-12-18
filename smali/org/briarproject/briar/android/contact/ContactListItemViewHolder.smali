.class Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;
.super Lorg/briarproject/briar/android/contact/ContactItemViewHolder;
.source "ContactListItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/contact/ContactItemViewHolder<",
        "Lorg/briarproject/briar/android/contact/ContactListItem;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final date:Landroid/widget/TextView;

.field private final unread:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901b1

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->unread:Landroid/widget/TextView;

    const v0, 0x7f090083

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->date:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 0

    .line 20
    check-cast p1, Lorg/briarproject/briar/android/contact/ContactListItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->bind(Lorg/briarproject/briar/android/contact/ContactListItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-void
.end method

.method protected bind(Lorg/briarproject/briar/android/contact/ContactListItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/contact/ContactListItem;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "Lorg/briarproject/briar/android/contact/ContactListItem;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->bind(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    .line 39
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactListItem;->getUnreadCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 41
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->unread:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->unread:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->unread:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    :goto_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactListItem;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 49
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->date:Landroid/widget/TextView;

    const v0, 0x7f110085

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactListItem;->getTimestamp()J

    move-result-wide v0

    .line 52
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->date:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_1
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactListItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-static {p1}, Lorg/briarproject/briar/android/util/UiUtils;->getAvatarTransitionName(Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListItemViewHolder;->bulb:Landroid/widget/ImageView;

    invoke-static {p1}, Lorg/briarproject/briar/android/util/UiUtils;->getBulbTransitionName(Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
