.class public Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;
.super Lorg/briarproject/briar/android/sharing/SharingStatusActivity;
.source "ForumSharingStatusActivity.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field protected volatile forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;-><init>()V

    return-void
.end method


# virtual methods
.method getInfoText()I
    .locals 1

    const v0, 0x7f1101b1

    return v0
.end method

.method protected getSharedWith()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;->forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/forum/ForumSharingManager;->getSharedWith(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 26
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onStart()V
    .locals 0

    .line 16
    invoke-super {p0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->onStart()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .line 16
    invoke-super {p0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->onStop()V

    return-void
.end method
