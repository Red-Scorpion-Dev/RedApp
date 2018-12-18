.class public abstract Lorg/briarproject/briar/android/sharing/ShareActivity;
.super Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;
.source "ShareActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
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

    .line 36
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->contactsSelected(Ljava/util/Collection;)V

    .line 37
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/ShareActivity;->getMessageFragment()Lorg/briarproject/briar/android/sharing/BaseMessageFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/ShareActivity;->showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void
.end method

.method abstract getMessageFragment()Lorg/briarproject/briar/android/sharing/BaseMessageFragment;
.end method

.method public onButtonClick(Ljava/lang/String;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ShareActivity;->contacts:Ljava/util/Collection;

    invoke-virtual {p0, v0, p1}, Lorg/briarproject/briar/android/sharing/ShareActivity;->share(Ljava/util/Collection;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 46
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/ShareActivity;->setResult(I)V

    .line 47
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/ShareActivity;->supportFinishAfterTransition()V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "briar.GROUP_ID"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/briar/android/sharing/ShareActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No GroupId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract share(Ljava/util/Collection;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
