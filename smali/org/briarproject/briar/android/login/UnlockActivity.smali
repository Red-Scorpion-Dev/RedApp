.class public Lorg/briarproject/briar/android/login/UnlockActivity;
.super Lorg/briarproject/briar/android/activity/BaseActivity;
.source "UnlockActivity.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final KEYGUARD_SHOWN:Ljava/lang/String; = "keyguardShown"

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private keyguardShown:Z

.field lockManager:Lorg/briarproject/briar/api/android/LockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/briarproject/briar/android/login/UnlockActivity;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/login/UnlockActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lorg/briarproject/briar/android/login/UnlockActivity;->keyguardShown:Z

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/login/UnlockActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->requestKeyguardUnlock()V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/login/UnlockActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->unlock()V

    return-void
.end method

.method public static synthetic lambda$requestFingerprintUnlock$0(Lorg/briarproject/briar/android/login/UnlockActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->requestKeyguardUnlock()V

    return-void
.end method

.method private requestFingerprintUnlock()V
    .locals 4

    .line 119
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110117

    .line 120
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/login/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x7f110118

    .line 122
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/login/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x7f110119

    .line 123
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/login/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lorg/briarproject/briar/android/login/-$$Lambda$UnlockActivity$a1X5Dw2CI_XVTZCsfwBzqdVTdew;

    invoke-direct {v3, p0}, Lorg/briarproject/briar/android/login/-$$Lambda$UnlockActivity$a1X5Dw2CI_XVTZCsfwBzqdVTdew;-><init>(Lorg/briarproject/briar/android/login/UnlockActivity;)V

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    .line 127
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 128
    new-instance v2, Lorg/briarproject/briar/android/login/UnlockActivity$1;

    invoke-direct {v2, p0}, Lorg/briarproject/briar/android/login/UnlockActivity$1;-><init>(Lorg/briarproject/briar/android/login/UnlockActivity;)V

    .line 167
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method private requestKeyguardUnlock()V
    .locals 3

    const-string v0, "keyguard"

    .line 172
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/UnlockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_2

    .line 174
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    const v1, 0x7f11011a

    .line 175
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/login/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f110117

    .line 176
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/login/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 179
    sget-object v0, Lorg/briarproject/briar/android/login/UnlockActivity;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Unlocking without keyguard"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->unlock()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 182
    iput-boolean v1, p0, Lorg/briarproject/briar/android/login/UnlockActivity;->keyguardShown:Z

    const/16 v1, 0xc

    .line 183
    invoke-virtual {p0, v0, v1}, Lorg/briarproject/briar/android/login/UnlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0, v0}, Lorg/briarproject/briar/android/login/UnlockActivity;->overridePendingTransition(II)V

    :goto_1
    return-void

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private requestUnlock()V
    .locals 2

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lorg/briarproject/briar/android/util/UiUtils;->hasUsableFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->requestFingerprintUnlock()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->requestKeyguardUnlock()V

    :goto_0
    return-void
.end method

.method private unlock()V
    .locals 2

    .line 189
    iget-object v0, p0, Lorg/briarproject/briar/android/login/UnlockActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/LockManager;->setLocked(Z)V

    const/4 v0, -0x1

    .line 190
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/UnlockActivity;->setResult(I)V

    .line 191
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->finish()V

    .line 192
    invoke-virtual {p0, v1, v1}, Lorg/briarproject/briar/android/login/UnlockActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 50
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/login/UnlockActivity;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xc

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 82
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->unlock()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->finish()V

    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1, p1}, Lorg/briarproject/briar/android/login/UnlockActivity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/UnlockActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0, v0}, Lorg/briarproject/briar/android/login/UnlockActivity;->overridePendingTransition(II)V

    const v1, 0x7f0c002e

    .line 56
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/login/UnlockActivity;->setContentView(I)V

    .line 58
    invoke-static {p0}, Lorg/briarproject/briar/android/util/UiUtils;->hasUsableFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0900cf

    .line 60
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/login/UnlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "keyguardShown"

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/briarproject/briar/android/login/UnlockActivity;->keyguardShown:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->onResume()V

    .line 96
    iget-boolean v0, p0, Lorg/briarproject/briar/android/login/UnlockActivity;->keyguardShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/login/UnlockActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/LockManager;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->requestUnlock()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/login/UnlockActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/LockManager;->isLocked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 99
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/UnlockActivity;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/UnlockActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "keyguardShown"

    .line 74
    iget-boolean v1, p0, Lorg/briarproject/briar/android/login/UnlockActivity;->keyguardShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
