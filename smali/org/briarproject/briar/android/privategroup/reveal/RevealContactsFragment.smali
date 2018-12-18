.class public Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;
.super Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;
.source "RevealContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment<",
        "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;",
        "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.privategroup.reveal.RevealContactsFragment"


# instance fields
.field controller:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/briarproject/briar/android/contactselection/BaseContactSelectorFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;
    .locals 2

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "briar.GROUP_ID"

    .line 33
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 34
    new-instance p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;

    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;-><init>()V

    .line 35
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;->getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener<",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/contact/BaseContactListAdapter$OnContactClickListener;)V

    return-object v0
.end method

.method protected getController()Lorg/briarproject/briar/android/contactselection/ContactSelectorController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/android/contactselection/ContactSelectorController<",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;->controller:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 41
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;)V

    return-void
.end method

.method protected onSelectionChanged()V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    check-cast v0, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;->getSelectedContactIds()Ljava/util/Collection;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;->adapter:Lorg/briarproject/briar/android/contactselection/BaseContactSelectorAdapter;

    check-cast v1, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;

    invoke-virtual {v1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactAdapter;->getDisabledContactIds()Ljava/util/Collection;

    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;->listener:Lorg/briarproject/briar/android/contactselection/ContactSelectorListener;

    invoke-interface {v1, v0}, Lorg/briarproject/briar/android/contactselection/ContactSelectorListener;->contactsSelected(Ljava/util/Collection;)V

    return-void
.end method
