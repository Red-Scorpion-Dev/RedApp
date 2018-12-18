.class public Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;
.super Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;
.source "GroupInviteFragment.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.privategroup.creation.GroupInviteFragment"


# instance fields
.field controller:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;
    .locals 2

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "briar.GROUP_ID"

    .line 29
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 30
    new-instance p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;

    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;-><init>()V

    .line 31
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected getController()Lorg/briarproject/briar/android/contactselection/ContactSelectorController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/android/contactselection/ContactSelectorController<",
            "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;->controller:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 43
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/contactselection/ContactSelectorFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100d8

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    return-void
.end method
