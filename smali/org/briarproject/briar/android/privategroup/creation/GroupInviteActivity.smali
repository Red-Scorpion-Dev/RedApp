.class public Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;
.super Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;
.source "GroupInviteActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field controller:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;-><init>()V

    return-void
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

    .line 52
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->contactsSelected(Ljava/util/Collection;)V

    .line 54
    new-instance p1, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupMessageFragment;

    invoke-direct {p1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupMessageFragment;-><init>()V

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void
.end method

.method public getMaximumTextLength()I
    .locals 1

    const/16 v0, 0x7c00

    return v0
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 33
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;)V

    return-void
.end method

.method public onButtonClick(Ljava/lang/String;)Z
    .locals 4

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->controller:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->contacts:Ljava/util/Collection;

    new-instance v3, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity$1;

    invoke-direct {v3, p0, p0}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity$1;-><init>(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1, v2, p1, v3}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;->sendInvitation(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GroupId was not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "briar.GROUP_ID"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    new-instance v1, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v1, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-static {p1}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;->newInstance(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->showInitialFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    :cond_0
    return-void

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No GroupId in intent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
