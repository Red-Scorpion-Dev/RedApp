.class public Lorg/briarproject/briar/android/sharing/ForumInvitationActivity;
.super Lorg/briarproject/briar/android/sharing/InvitationActivity;
.source "ForumInvitationActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/sharing/InvitationActivity<",
        "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field controller:Lorg/briarproject/briar/android/sharing/ForumInvitationController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/briarproject/briar/android/sharing/InvitationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptRes()I
    .locals 1

    const v0, 0x7f1100b4

    return v0
.end method

.method protected getAdapter(Landroid/content/Context;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)Lorg/briarproject/briar/android/sharing/InvitationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener<",
            "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
            ">;)",
            "Lorg/briarproject/briar/android/sharing/InvitationAdapter<",
            "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
            "*>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/briar/android/sharing/SharingInvitationAdapter;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/briar/android/sharing/SharingInvitationAdapter;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;)V

    return-object v0
.end method

.method protected getController()Lorg/briarproject/briar/android/sharing/InvitationController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/android/sharing/InvitationController<",
            "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ForumInvitationActivity;->controller:Lorg/briarproject/briar/android/sharing/ForumInvitationController;

    return-object v0
.end method

.method protected getDeclineRes()I
    .locals 1

    const v0, 0x7f1100aa

    return v0
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 25
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/sharing/ForumInvitationActivity;)V

    return-void
.end method
