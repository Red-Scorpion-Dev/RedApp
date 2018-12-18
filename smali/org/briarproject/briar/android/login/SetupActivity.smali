.class public Lorg/briarproject/briar/android/login/SetupActivity;
.super Lorg/briarproject/briar/android/activity/BaseActivity;
.source "SetupActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final STATE_KEY_AUTHOR_NAME:Ljava/lang/String; = "authorName"

.field private static final STATE_KEY_PASSWORD:Ljava/lang/String; = "password"


# instance fields
.field accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

.field private authorName:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field setupController:Lorg/briarproject/briar/android/login/SetupController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method getAuthorName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupActivity;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupActivity;->password:Ljava/lang/String;

    return-object v0
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 56
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/login/SetupActivity;)V

    .line 57
    iget-object p1, p0, Lorg/briarproject/briar/android/login/SetupActivity;->setupController:Lorg/briarproject/briar/android/login/SetupController;

    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/login/SetupController;->setSetupActivity(Lorg/briarproject/briar/android/login/SetupActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 40
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f010010

    const v1, 0x7f010011

    .line 42
    invoke-virtual {p0, v0, v1}, Lorg/briarproject/briar/android/login/SetupActivity;->overridePendingTransition(II)V

    const v0, 0x7f0c0021

    .line 43
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/SetupActivity;->setContentView(I)V

    if-nez p1, :cond_1

    .line 46
    iget-object p1, p0, Lorg/briarproject/briar/android/login/SetupActivity;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/account/AccountManager;->accountExists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 47
    invoke-static {}, Lorg/briarproject/briar/android/login/AuthorNameFragment;->newInstance()Lorg/briarproject/briar/android/login/AuthorNameFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/SetupActivity;->showInitialFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    const-string v0, "authorName"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/login/SetupActivity;->authorName:Ljava/lang/String;

    const-string v0, "password"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/login/SetupActivity;->password:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupActivity;->authorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "authorName"

    .line 64
    iget-object v1, p0, Lorg/briarproject/briar/android/login/SetupActivity;->authorName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupActivity;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "password"

    .line 66
    iget-object v1, p0, Lorg/briarproject/briar/android/login/SetupActivity;->password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public runOnDbThread(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t use this deprecated method here."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setAuthorName(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/briarproject/briar/android/login/SetupActivity;->authorName:Ljava/lang/String;

    return-void
.end method

.method setPassword(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/briarproject/briar/android/login/SetupActivity;->password:Ljava/lang/String;

    return-void
.end method

.method showApp()V
    .locals 2

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10004000

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/SetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/SetupActivity;->supportFinishAfterTransition()V

    const v0, 0x7f010012

    const v1, 0x7f010015

    .line 104
    invoke-virtual {p0, v0, v1}, Lorg/briarproject/briar/android/login/SetupActivity;->overridePendingTransition(II)V

    return-void
.end method

.method showDozeFragment()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupActivity;->authorName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupActivity;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lorg/briarproject/briar/android/login/DozeFragment;->newInstance()Lorg/briarproject/briar/android/login/DozeFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/SetupActivity;->showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method showPasswordFragment()V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupActivity;->authorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lorg/briarproject/briar/android/login/PasswordFragment;->newInstance()Lorg/briarproject/briar/android/login/PasswordFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/SetupActivity;->showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
