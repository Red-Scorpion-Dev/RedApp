.class public Lorg/briarproject/briar/android/blog/ReblogActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "ReblogActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 54
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/blog/ReblogActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 21
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/ReblogActivity;->setSceneTransitionAnimation()V

    .line 22
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/ReblogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "briar.GROUP_ID"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "briar.POST_ID"

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    const v2, 0x7f0c0021

    .line 32
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/blog/ReblogActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {p1, v1}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    new-instance v1, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 36
    invoke-static {p1, v1}, Lorg/briarproject/briar/android/blog/ReblogFragment;->newInstance(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/android/blog/ReblogFragment;

    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/ReblogActivity;->showInitialFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No post message ID in intent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No group ID in intent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 43
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 48
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/ReblogActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
