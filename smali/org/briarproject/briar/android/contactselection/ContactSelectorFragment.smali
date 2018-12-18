.class public abstract Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;
.super Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;
.source "ContactSelectorFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment<",
        "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
        "Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;",
        ">;",
        "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
        "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.contactselection.ContactSelectorFragment"


# instance fields
.field private menu:Landroid/view/Menu;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
            ">;)",
            "Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0003

    .line 31
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 32
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->menu:Landroid/view/Menu;

    .line 35
    invoke-virtual {p0}, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->onSelectionChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09001d

    if-eq v0, v1, :cond_0

    .line 46
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    check-cast p1, Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;->getSelectedContactIds()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->selectedContacts:Ljava/util/Collection;

    .line 43
    iget-object p1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->listener:Lorg/briarproject/briar/android/contactselection/ContactSelectorListener;

    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->selectedContacts:Ljava/util/Collection;

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/contactselection/ContactSelectorListener;->contactsSelected(Ljava/util/Collection;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onSelectionChanged()V
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->menu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->menu:Landroid/view/Menu;

    const v1, 0x7f09001d

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    check-cast v1, Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;

    invoke-virtual {v1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorAdapter;->getSelectedContactIds()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->selectedContacts:Ljava/util/Collection;

    .line 57
    iget-object v1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->selectedContacts:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    .line 58
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 60
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method
