.class public Lorg/briarproject/briar/android/login/PasswordActivity;
.super Lorg/briarproject/briar/android/activity/BaseActivity;
.source "PasswordActivity.java"


# instance fields
.field accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

.field briarController:Lorg/briarproject/briar/android/controller/BriarController;

.field private input:Landroid/support/design/widget/TextInputLayout;

.field notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

.field private password:Landroid/widget/EditText;

.field passwordController:Lorg/briarproject/briar/android/login/PasswordController;

.field private progress:Landroid/widget/ProgressBar;

.field private signInButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/login/PasswordActivity;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->input:Landroid/support/design/widget/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/login/PasswordActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/PasswordActivity;->tryAgain()V

    return-void
.end method

.method private deleteAccount()V
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/account/AccountManager;->deleteAccount()V

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/login/SetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/PasswordActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/PasswordActivity;->setResult(I)V

    .line 122
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PasswordActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lorg/briarproject/briar/android/login/PasswordActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    .line 68
    invoke-static {p2, p3}, Lorg/briarproject/briar/android/util/UiUtils;->enterPressed(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 69
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/PasswordActivity;->validatePassword()V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$onForgottenPasswordClick$1(Lorg/briarproject/briar/android/login/PasswordActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/PasswordActivity;->deleteAccount()V

    return-void
.end method

.method private tryAgain()V
    .locals 3

    .line 165
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->input:Landroid/support/design/widget/TextInputLayout;

    const v1, 0x7f1101d0

    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/login/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/util/UiUtils;->setError(Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;Z)V

    .line 166
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->signInButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->password:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->password:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/PasswordActivity;->showSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private validatePassword()V
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->password:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/PasswordActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->signInButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->passwordController:Lorg/briarproject/briar/android/login/PasswordController;

    iget-object v1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/briarproject/briar/android/login/PasswordActivity$2;

    invoke-direct {v2, p0, p0}, Lorg/briarproject/briar/android/login/PasswordActivity$2;-><init>(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/briar/android/login/PasswordController;->validatePassword(Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 108
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/login/PasswordActivity;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/PasswordActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f010010

    const v0, 0x7f010011

    .line 54
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/android/login/PasswordActivity;->overridePendingTransition(II)V

    .line 56
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/account/AccountManager;->accountExists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PasswordActivity;->setResult(I)V

    .line 58
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PasswordActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c0026

    .line 62
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PasswordActivity;->setContentView(I)V

    const p1, 0x7f090055

    .line 63
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->signInButton:Landroid/widget/Button;

    const p1, 0x7f090133

    .line 64
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->progress:Landroid/widget/ProgressBar;

    const p1, 0x7f090128

    .line 65
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->input:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f090099

    .line 66
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->password:Landroid/widget/EditText;

    .line 67
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->password:Landroid/widget/EditText;

    new-instance v0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordActivity$OlbX_kVQgqQlh4HxVKTOBnRA3EA;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordActivity$OlbX_kVQgqQlh4HxVKTOBnRA3EA;-><init>(Lorg/briarproject/briar/android/login/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 74
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->password:Landroid/widget/EditText;

    new-instance v0, Lorg/briarproject/briar/android/login/PasswordActivity$1;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/login/PasswordActivity$1;-><init>(Lorg/briarproject/briar/android/login/PasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onForgottenPasswordClick(Landroid/view/View;)V
    .locals 2

    .line 131
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f1200ca

    invoke-direct {p1, p0, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f110094

    .line 133
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f110090

    .line 134
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f110062

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 136
    new-instance v0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordActivity$aZEN6roscdfTH5wKATCTz_i5HDw;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordActivity$aZEN6roscdfTH5wKATCTz_i5HDw;-><init>(Lorg/briarproject/briar/android/login/PasswordActivity;)V

    const v1, 0x7f110088

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public onSignInClick(Landroid/view/View;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/PasswordActivity;->validatePassword()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 95
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->onStart()V

    .line 97
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->briarController:Lorg/briarproject/briar/android/controller/BriarController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/BriarController;->accountSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 98
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/PasswordActivity;->setResult(I)V

    .line 99
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PasswordActivity;->finish()V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->blockSignInNotification()V

    .line 102
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearSignInNotification()V

    :goto_0
    return-void
.end method
