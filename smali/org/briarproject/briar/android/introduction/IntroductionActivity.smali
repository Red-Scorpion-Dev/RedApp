.class public Lorg/briarproject/briar/android/introduction/IntroductionActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "IntroductionActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 35
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/introduction/IntroductionActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 19
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "briar.CONTACT_ID"

    const/4 v2, -0x1

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 24
    new-instance v1, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    const v0, 0x7f0c0021

    .line 26
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 29
    invoke-static {v1}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->newInstance(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/briar/android/introduction/ContactChooserFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/introduction/IntroductionActivity;->showInitialFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    :cond_0
    return-void

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No ContactId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
