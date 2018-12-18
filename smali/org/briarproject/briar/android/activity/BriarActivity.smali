.class public abstract Lorg/briarproject/briar/android/activity/BriarActivity;
.super Lorg/briarproject/briar/android/activity/BaseActivity;
.source "BriarActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field public static final GROUP_ID:Ljava/lang/String; = "briar.GROUP_ID"

.field public static final GROUP_NAME:Ljava/lang/String; = "briar.GROUP_NAME"

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field briarController:Lorg/briarproject/briar/android/controller/BriarController;

.field dbController:Lorg/briarproject/briar/android/controller/DbController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected lockManager:Lorg/briarproject/briar/api/android/LockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/briarproject/briar/android/activity/BriarActivity;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/activity/BriarActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private exit(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 186
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->startExitActivity()V

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->finishAndExit()V

    :goto_0
    return-void
.end method

.method private finishAndExit()V
    .locals 2

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->finishAndRemoveTask()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->supportFinishAfterTransition()V

    .line 202
    :goto_0
    sget-object v0, Lorg/briarproject/briar/android/activity/BriarActivity;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Exiting"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 203
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static synthetic lambda$null$3(Lorg/briarproject/briar/android/activity/BriarActivity;Z)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->exit(Z)V

    return-void
.end method

.method public static synthetic lambda$showDozeDialog$0(Lorg/briarproject/briar/android/activity/BriarActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 159
    invoke-static {p0}, Lorg/briarproject/briar/android/util/UiUtils;->getDozeWhitelistingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x9

    .line 160
    invoke-virtual {p0, p2, v0}, Lorg/briarproject/briar/android/activity/BriarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showDozeDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 164
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$showDozeDialog$2(Lorg/briarproject/briar/android/activity/BriarActivity;Landroid/content/DialogInterface;)V
    .locals 1

    .line 166
    check-cast p1, Landroid/support/v7/app/AlertDialog;

    const v0, 0x7f090065

    .line 167
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 168
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lorg/briarproject/briar/android/activity/BriarActivity;->briarController:Lorg/briarproject/briar/android/controller/BriarController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/controller/BriarController;->doNotAskAgainForDozeWhiteListing()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$signOut$4(Lorg/briarproject/briar/android/activity/BriarActivity;ZLjava/lang/Void;)V
    .locals 0

    .line 178
    new-instance p2, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$am0uXN-kJz7QZQTgMsZRwjnYLpo;

    invoke-direct {p2, p0, p1}, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$am0uXN-kJz7QZQTgMsZRwjnYLpo;-><init>(Lorg/briarproject/briar/android/activity/BriarActivity;Z)V

    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/activity/BriarActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startExitActivity()V
    .locals 2

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/logout/ExitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10818000

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/activity/BriarActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected finishOnUiThread()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    new-instance v0, Lorg/briarproject/briar/android/activity/-$$Lambda$gZNIoFM2wInoZ0Xps_zbDE5-Nwo;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/activity/-$$Lambda$gZNIoFM2wInoZ0Xps_zbDE5-Nwo;-><init>(Lorg/briarproject/briar/android/activity/BriarActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/activity/BriarActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 64
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-ne p2, p3, :cond_0

    .line 67
    iget-object p1, p0, Lorg/briarproject/briar/android/activity/BriarActivity;->briarController:Lorg/briarproject/briar/android/controller/BriarController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/controller/BriarController;->startAndBindService()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->finish()V

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    if-eq p2, p3, :cond_2

    .line 74
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->supportFinishAfterTransition()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 82
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->onResume()V

    .line 83
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BriarActivity;->briarController:Lorg/briarproject/briar/android/controller/BriarController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/BriarController;->accountSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/login/PasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p0, v0, v1}, Lorg/briarproject/briar/android/activity/BriarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BriarActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/LockManager;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/login/UnlockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xb

    .line 94
    invoke-virtual {p0, v0, v1}, Lorg/briarproject/briar/android/activity/BriarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 95
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 96
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BriarActivity;->briarController:Lorg/briarproject/briar/android/controller/BriarController;

    new-instance v1, Lorg/briarproject/briar/android/activity/BriarActivity$1;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/activity/BriarActivity$1;-><init>(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/controller/BriarController;->hasDozed(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 58
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->onStart()V

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BriarActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/LockManager;->onActivityStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 110
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->onStop()V

    .line 111
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BriarActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/LockManager;->onActivityStop()V

    return-void
.end method

.method public runOnDbThread(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BriarActivity;->dbController:Lorg/briarproject/briar/android/controller/DbController;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/controller/DbController;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSceneTransitionAnimation()V
    .locals 4

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-static {}, Lorg/briarproject/briar/android/util/UiUtils;->isSamsung7()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 120
    :cond_1
    new-instance v0, Landroid/transition/Slide;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/transition/Slide;-><init>(I)V

    const v1, 0x102002f

    const/4 v2, 0x1

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    const v1, 0x1020030

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 123
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0xc

    .line 124
    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 125
    invoke-virtual {v1, v0}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 126
    invoke-virtual {v1, v0}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 127
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0002

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setTransitionBackgroundFadeDuration(J)V

    return-void
.end method

.method protected setUpCustomToolbar(Z)Landroid/support/v7/widget/Toolbar;
    .locals 3

    const v0, 0x7f0901a2

    .line 140
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/activity/BriarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 141
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/activity/BriarActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 142
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 145
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 146
    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    xor-int/2addr p1, v2

    .line 147
    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    return-object v0
.end method

.method protected showDozeDialog(Ljava/lang/String;)V
    .locals 2

    .line 153
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200ca

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 155
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0c0032

    .line 156
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 157
    new-instance p1, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$dvSDUbtDW97A6-lk-BGMLFNLBtc;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$dvSDUbtDW97A6-lk-BGMLFNLBtc;-><init>(Lorg/briarproject/briar/android/activity/BriarActivity;)V

    const v1, 0x7f1100a7

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 163
    sget-object p1, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$_a3Tqcb-RM_ZWJD4LGGb23Vdp-Q;->INSTANCE:Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$_a3Tqcb-RM_ZWJD4LGGb23Vdp-Q;

    const v1, 0x7f110062

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 165
    new-instance p1, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$i1EyX0_pQd5mPQ83KgQV7O2yE8E;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$i1EyX0_pQd5mPQ83KgQV7O2yE8E;-><init>(Lorg/briarproject/briar/android/activity/BriarActivity;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method protected signOut(Z)V
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BriarActivity;->briarController:Lorg/briarproject/briar/android/controller/BriarController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/BriarController;->accountSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BriarActivity;->briarController:Lorg/briarproject/briar/android/controller/BriarController;

    new-instance v1, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$itOCpi91k1b_lOtonj9q8X6BkBw;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/activity/-$$Lambda$BriarActivity$itOCpi91k1b_lOtonj9q8X6BkBw;-><init>(Lorg/briarproject/briar/android/activity/BriarActivity;Z)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/controller/BriarController;->signOut(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->exit(Z)V

    :goto_0
    return-void
.end method
