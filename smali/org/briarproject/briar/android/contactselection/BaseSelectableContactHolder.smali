.class public Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;
.super Lorg/briarproject/briar/android/contact/ContactItemViewHolder;
.source "BaseSelectableContactHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
        ">",
        "Lorg/briarproject/briar/android/contact/ContactItemViewHolder<",
        "TI;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final checkBox:Landroid/widget/CheckBox;

.field protected final info:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090063

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->checkBox:Landroid/widget/CheckBox;

    const v0, 0x7f0900d7

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->info:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 0

    .line 17
    check-cast p1, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->bind(Lorg/briarproject/briar/android/contactselection/SelectableContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-void
.end method

.method protected bind(Lorg/briarproject/briar/android/contactselection/SelectableContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "TI;>;)V"
        }
    .end annotation

    .line 34
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/contact/ContactItemViewHolder;->bind(Lorg/briarproject/briar/android/contact/ContactItem;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    .line 36
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->isSelected()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 37
    iget-object p2, p0, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p2, p0, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 42
    :goto_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    iget-object p1, p0, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 44
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->grayOutItem(Z)V

    goto :goto_1

    .line 46
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 47
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->grayOutItem(Z)V

    :goto_1
    return-void
.end method

.method protected grayOutItem(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 53
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 54
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 55
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 56
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/BaseSelectableContactHolder;->info:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
