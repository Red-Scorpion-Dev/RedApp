.class Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;
.super Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;
.source "RevealableContactViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder<",
        "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901be

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;->icon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 0

    .line 19
    check-cast p1, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;->bind(Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-void
.end method

.method protected bridge synthetic bind(Lorg/briarproject/briar/android/contactselection/SelectableContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 0

    .line 19
    check-cast p1, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;->bind(Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-void
.end method

.method protected bind(Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->bind(Lorg/briarproject/briar/android/contactselection/SelectableContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    .line 37
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;->getVisibility()Lorg/briarproject/briar/api/privategroup/Visibility;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/briar/android/privategroup/VisibilityHelper;->getVisibilityIcon(Lorg/briarproject/briar/api/privategroup/Visibility;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object p2, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;->info:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;->info:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;->getVisibility()Lorg/briarproject/briar/api/privategroup/Visibility;

    move-result-object v1

    .line 40
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;->getContact()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/contact/Contact;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/privategroup/VisibilityHelper;->getVisibilityString(Landroid/content/Context;Lorg/briarproject/briar/api/privategroup/Visibility;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected grayOutItem(Z)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->grayOutItem(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 47
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
