.class public Lorg/briarproject/briar/android/contact/ContactItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ContactItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/android/contact/ContactItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field protected final avatar:Landroid/widget/ImageView;

.field protected final bulb:Landroid/widget/ImageView;

.field protected final layout:Landroid/view/ViewGroup;

.field protected final name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->layout:Landroid/view/ViewGroup;

    const v0, 0x7f09004d

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->avatar:Landroid/widget/ImageView;

    const v0, 0x7f090100

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f090056

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->bulb:Landroid/widget/ImageView;

    return-void
.end method

.method public static synthetic lambda$bind$0(Lorg/briarproject/briar/android/contact/ContactItemViewHolder;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;Lorg/briarproject/briar/android/contact/ContactItem;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 58
    iget-object p3, p0, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-interface {p1, p3, p2}, Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;->onItemClick(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bind(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "TI;>;)V"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->avatar:Landroid/widget/ImageView;

    new-instance v2, Lim/delight/android/identicons/IdenticonDrawable;

    .line 45
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lim/delight/android/identicons/IdenticonDrawable;-><init>([B)V

    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/contact/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->bulb:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contact/ContactItem;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->bulb:Landroid/widget/ImageView;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->bulb:Landroid/widget/ImageView;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v1, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactItemViewHolder$M1B1WNtK1OEXOZpZndUVONB779k;

    invoke-direct {v1, p0, p2, p1}, Lorg/briarproject/briar/android/contact/-$$Lambda$ContactItemViewHolder$M1B1WNtK1OEXOZpZndUVONB779k;-><init>(Lorg/briarproject/briar/android/contact/ContactItemViewHolder;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;Lorg/briarproject/briar/android/contact/ContactItem;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
