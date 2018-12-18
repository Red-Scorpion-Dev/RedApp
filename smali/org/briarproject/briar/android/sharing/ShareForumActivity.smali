.class public Lorg/briarproject/briar/android/sharing/ShareForumActivity;
.super Lorg/briarproject/briar/android/sharing/ShareActivity;
.source "ShareForumActivity.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field controller:Lorg/briarproject/briar/android/sharing/ShareForumController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/briarproject/briar/android/sharing/ShareActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaximumTextLength()I
    .locals 1

    const/16 v0, 0x7c00

    return v0
.end method

.method getMessageFragment()Lorg/briarproject/briar/android/sharing/BaseMessageFragment;
    .locals 1

    .line 31
    invoke-static {}, Lorg/briarproject/briar/android/sharing/ShareForumMessageFragment;->newInstance()Lorg/briarproject/briar/android/sharing/ShareForumMessageFragment;

    move-result-object v0

    return-object v0
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 36
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/sharing/ShareForumActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/sharing/ShareActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 44
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/ShareForumActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-static {p1}, Lorg/briarproject/briar/android/sharing/ShareForumFragment;->newInstance(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/android/sharing/ShareForumFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/ShareForumActivity;->showInitialFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    :cond_0
    return-void
.end method

.method share(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
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

    .line 55
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ShareForumActivity;->controller:Lorg/briarproject/briar/android/sharing/ShareForumController;

    iget-object v1, p0, Lorg/briarproject/briar/android/sharing/ShareForumActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    new-instance v2, Lorg/briarproject/briar/android/sharing/ShareForumActivity$1;

    invoke-direct {v2, p0, p0}, Lorg/briarproject/briar/android/sharing/ShareForumActivity$1;-><init>(Lorg/briarproject/briar/android/sharing/ShareForumActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lorg/briarproject/briar/android/sharing/ShareForumController;->share(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method
