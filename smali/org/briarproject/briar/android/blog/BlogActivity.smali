.class public Lorg/briarproject/briar/android/blog/BlogActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "BlogActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field blogController:Lorg/briarproject/briar/android/blog/BlogController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lorg/briarproject/briar/android/blog/BlogActivity;Lorg/briarproject/bramble/api/sync/GroupId;Landroid/view/View;)V
    .locals 1

    .line 44
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/sharing/BlogSharingStatusActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "briar.GROUP_ID"

    .line 46
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/blog/BlogActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 58
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/blog/BlogActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "briar.GROUP_ID"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    new-instance v1, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogActivity;->blogController:Lorg/briarproject/briar/android/blog/BlogController;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/blog/BlogController;->setGroupId(Lorg/briarproject/bramble/api/sync/GroupId;)V

    const v0, 0x7f0c0022

    .line 38
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/BlogActivity;->setContentView(I)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/BlogActivity;->setUpCustomToolbar(Z)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v2, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogActivity$s45G0ziofpONWOuYS6Y_5H66Ofc;

    invoke-direct {v2, p0, v1}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogActivity$s45G0ziofpONWOuYS6Y_5H66Ofc;-><init>(Lorg/briarproject/briar/android/blog/BlogActivity;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-nez p1, :cond_1

    .line 52
    invoke-static {v1}, Lorg/briarproject/briar/android/blog/BlogFragment;->newInstance(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/android/blog/BlogFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogActivity;->showInitialFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    :cond_1
    return-void

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No group ID in intent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
