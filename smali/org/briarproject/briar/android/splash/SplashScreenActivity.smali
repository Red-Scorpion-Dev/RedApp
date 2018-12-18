.class public Lorg/briarproject/briar/android/splash/SplashScreenActivity;
.super Lorg/briarproject/briar/android/activity/BaseActivity;
.source "SplashScreenActivity.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

.field protected androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

.field protected lockManager:Lorg/briarproject/briar/api/android/LockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lorg/briarproject/briar/android/splash/SplashScreenActivity;)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->startNextActivity()V

    .line 65
    invoke-virtual {p0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public static synthetic lambda$setPreferencesDefaults$1(Lorg/briarproject/briar/android/splash/SplashScreenActivity;)V
    .locals 2

    const/high16 v0, 0x7f140000

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    return-void
.end method

.method private setPreferencesDefaults()V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/splash/-$$Lambda$SplashScreenActivity$DAQQQa9VGq41Eqb5IHmMIKWeUQ4;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/splash/-$$Lambda$SplashScreenActivity$DAQQQa9VGq41Eqb5IHmMIKWeUQ4;-><init>(Lorg/briarproject/briar/android/splash/SplashScreenActivity;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 72
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/splash/SplashScreenActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 46
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->setPreferencesDefaults()V

    const p1, 0x7f0c0098

    .line 48
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->setContentView(I)V

    .line 50
    iget-object p1, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/account/AccountManager;->hasDatabaseKey()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 52
    iget-object p1, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    invoke-interface {p1}, Lorg/briarproject/briar/api/android/LockManager;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 58
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->finish()V

    goto :goto_1

    .line 63
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lorg/briarproject/briar/android/splash/-$$Lambda$SplashScreenActivity$KPoQeENQNPCou2oWqt2CDnWR61c;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/splash/-$$Lambda$SplashScreenActivity$KPoQeENQNPCou2oWqt2CDnWR61c;-><init>(Lorg/briarproject/briar/android/splash/SplashScreenActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public shouldAllowTap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected startNextActivity()V
    .locals 5

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/briarproject/briar/android/TestingConstants;->EXPIRY_DATE:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 77
    sget-object v0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Expired"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/splash/ExpiredActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/account/AccountManager;->accountExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Account exists"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Account does not exist"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/account/AccountManager;->deleteAccount()V

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/login/SetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
