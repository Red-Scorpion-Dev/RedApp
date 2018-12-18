.class Lorg/briarproject/briar/android/contactselection/SelectableContactHolder;
.super Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;
.source "SelectableContactHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder<",
        "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 0

    .line 14
    check-cast p1, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contactselection/SelectableContactHolder;->bind(Lorg/briarproject/briar/android/contactselection/SelectableContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-void
.end method

.method protected bind(Lorg/briarproject/briar/android/contactselection/SelectableContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->bind(Lorg/briarproject/briar/android/contactselection/SelectableContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    .line 28
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lorg/briarproject/briar/android/contactselection/SelectableContactHolder;->info:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/contactselection/SelectableContactHolder;->info:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
