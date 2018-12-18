.class public abstract Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "ContactSelectorActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/contactselection/ContactSelectorListener;
.implements Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field protected static final CONTACTS:Ljava/lang/String; = "contacts"


# instance fields
.field protected contacts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation
.end field

.field protected groupId:Lorg/briarproject/bramble/api/sync/GroupId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method static getContactsFromIds(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/contact/ContactId;

    .line 83
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getContactsFromIntegers(Ljava/util/ArrayList;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 93
    new-instance v2, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v1}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public contactsSelected(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->contacts:Ljava/util/Collection;

    return-void
.end method

.method protected getLayout()I
    .locals 1

    const v0, 0x7f0c0021

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->getLayout()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->setContentView(I)V

    if-eqz p1, :cond_1

    const-string v0, "briar.GROUP_ID"

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v1, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    :cond_0
    const-string v0, "contacts"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 48
    invoke-static {p1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->getContactsFromIntegers(Ljava/util/ArrayList;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->contacts:Ljava/util/Collection;

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    if-eqz v0, :cond_0

    const-string v0, "briar.GROUP_ID"

    .line 63
    iget-object v1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->contacts:Ljava/util/Collection;

    if-eqz v0, :cond_1

    const-string v0, "contacts"

    .line 66
    iget-object v1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->contacts:Ljava/util/Collection;

    .line 67
    invoke-static {v1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->getContactsFromIds(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method
