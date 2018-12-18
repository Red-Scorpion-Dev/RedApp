.class Lorg/briarproject/briar/android/login/UnlockActivity$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "UnlockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/login/UnlockActivity;->requestFingerprintUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/login/UnlockActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/login/UnlockActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/briarproject/briar/android/login/UnlockActivity$1;->this$0:Lorg/briarproject/briar/android/login/UnlockActivity;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/login/UnlockActivity$1;->this$0:Lorg/briarproject/briar/android/login/UnlockActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/util/UiUtils;->hasKeyguardLock(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lorg/briarproject/briar/android/login/UnlockActivity$1;->this$0:Lorg/briarproject/briar/android/login/UnlockActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/login/UnlockActivity;->access$000(Lorg/briarproject/briar/android/login/UnlockActivity;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 145
    iget-object p1, p0, Lorg/briarproject/briar/android/login/UnlockActivity$1;->this$0:Lorg/briarproject/briar/android/login/UnlockActivity;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 148
    :cond_2
    iget-object p1, p0, Lorg/briarproject/briar/android/login/UnlockActivity$1;->this$0:Lorg/briarproject/briar/android/login/UnlockActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/login/UnlockActivity;->finish()V

    goto :goto_1

    .line 135
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/android/login/UnlockActivity$1;->this$0:Lorg/briarproject/briar/android/login/UnlockActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/login/UnlockActivity;->finish()V

    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lorg/briarproject/briar/android/login/UnlockActivity$1;->this$0:Lorg/briarproject/briar/android/login/UnlockActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/login/UnlockActivity;->access$100(Lorg/briarproject/briar/android/login/UnlockActivity;)V

    return-void
.end method
