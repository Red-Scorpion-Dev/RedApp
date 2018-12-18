.class public Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;
.super Lorg/briarproject/briar/android/sharing/InvitationActivity;
.source "GroupInvitationActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/sharing/InvitationActivity<",
        "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field protected controller:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/briarproject/briar/android/sharing/InvitationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptRes()I
    .locals 1

    const v0, 0x7f1100d2

    return v0
.end method

.method protected getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)Lorg/briarproject/briar/android/sharing/InvitationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
            ">;)",
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
            "*>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationAdapter;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationAdapter;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V

    return-object v0
.end method

.method protected getController()Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;->controller:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;

    return-object v0
.end method

.method protected bridge synthetic getController()Lorg/briarproject/briar/android/sharing/InvitationController;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;->getController()Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;

    move-result-object v0

    return-object v0
.end method

.method protected getDeclineRes()I
    .locals 1

    const v0, 0x7f1100cf

    return v0
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 27
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;)V

    return-void
.end method
