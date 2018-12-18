.class public Lorg/briarproject/briar/android/login/ChangePasswordActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private changePasswordButton:Landroid/widget/Button;

.field private currentPassword:Landroid/widget/EditText;

.field private currentPasswordEntryWrapper:Landroid/support/design/widget/TextInputLayout;

.field private newPassword:Landroid/widget/EditText;

.field private newPasswordConfirmation:Landroid/widget/EditText;

.field private newPasswordConfirmationWrapper:Landroid/support/design/widget/TextInputLayout;

.field private newPasswordEntryWrapper:Landroid/support/design/widget/TextInputLayout;

.field protected passwordController:Lorg/briarproject/briar/android/login/PasswordController;

.field private progress:Landroid/widget/ProgressBar;

.field private strengthMeter:Lorg/briarproject/briar/android/login/StrengthMeter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/login/ChangePasswordActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->enableOrDisableContinueButton()V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/login/ChangePasswordActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->tryAgain()V

    return-void
.end method

.method private enableOrDisableContinueButton()V
    .locals 9

    .line 94
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->progress:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->strengthMeter:Lorg/briarproject/briar/android/login/StrengthMeter;

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/login/StrengthMeter;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->strengthMeter:Lorg/briarproject/briar/android/login/StrengthMeter;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/briarproject/briar/android/login/StrengthMeter;->setVisibility(I)V

    .line 98
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 101
    iget-object v4, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->passwordController:Lorg/briarproject/briar/android/login/PasswordController;

    .line 102
    invoke-interface {v4, v0}, Lorg/briarproject/briar/android/login/PasswordController;->estimatePasswordStrength(Ljava/lang/String;)F

    move-result v4

    .line 103
    iget-object v5, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->strengthMeter:Lorg/briarproject/briar/android/login/StrengthMeter;

    invoke-virtual {v5, v4}, Lorg/briarproject/briar/android/login/StrengthMeter;->setStrength(F)V

    .line 104
    iget-object v5, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPasswordEntryWrapper:Landroid/support/design/widget/TextInputLayout;

    const v6, 0x7f110159

    .line 105
    invoke-virtual {p0, v6}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    if-lez v0, :cond_2

    cmpg-float v0, v4, v7

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 104
    :goto_1
    invoke-static {v5, v6, v0}, Lorg/briarproject/briar/android/util/UiUtils;->setError(Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;Z)V

    .line 107
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPasswordConfirmationWrapper:Landroid/support/design/widget/TextInputLayout;

    const v5, 0x7f11015a

    .line 108
    invoke-virtual {p0, v5}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 107
    :goto_2
    invoke-static {v0, v5, v2}, Lorg/briarproject/briar/android/util/UiUtils;->setError(Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;Z)V

    .line 110
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->changePasswordButton:Landroid/widget/Button;

    iget-object v2, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->currentPassword:Landroid/widget/EditText;

    .line 111
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    cmpl-float v2, v4, v7

    if-ltz v2, :cond_4

    const/4 v1, 0x1

    .line 110
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private tryAgain()V
    .locals 3

    .line 145
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->currentPasswordEntryWrapper:Landroid/support/design/widget/TextInputLayout;

    const v1, 0x7f1101d0

    .line 146
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 145
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/util/UiUtils;->setError(Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;Z)V

    .line 147
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->changePasswordButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->currentPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->currentPassword:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->showSoftKeyboard(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 90
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/login/ChangePasswordActivity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 124
    iget-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->changePasswordButton:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->passwordController:Lorg/briarproject/briar/android/login/PasswordController;

    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->currentPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPassword:Landroid/widget/EditText;

    .line 127
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/briarproject/briar/android/login/ChangePasswordActivity$2;

    invoke-direct {v2, p0, p0}, Lorg/briarproject/briar/android/login/ChangePasswordActivity$2;-><init>(Lorg/briarproject/briar/android/login/ChangePasswordActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    .line 126
    invoke-interface {p1, v0, v1, v2}, Lorg/briarproject/briar/android/login/PasswordController;->changePassword(Ljava/lang/String;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 49
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->setContentView(I)V

    const p1, 0x7f090080

    .line 52
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->currentPasswordEntryWrapper:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f090114

    .line 53
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPasswordEntryWrapper:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f090112

    .line 55
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPasswordConfirmationWrapper:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f09007f

    .line 56
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->currentPassword:Landroid/widget/EditText;

    const p1, 0x7f090113

    .line 57
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPassword:Landroid/widget/EditText;

    const p1, 0x7f090111

    .line 58
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPasswordConfirmation:Landroid/widget/EditText;

    const p1, 0x7f090180

    .line 59
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/login/StrengthMeter;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->strengthMeter:Lorg/briarproject/briar/android/login/StrengthMeter;

    const p1, 0x7f090062

    .line 60
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->changePasswordButton:Landroid/widget/Button;

    const p1, 0x7f090133

    .line 61
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->progress:Landroid/widget/ProgressBar;

    .line 63
    new-instance p1, Lorg/briarproject/briar/android/login/ChangePasswordActivity$1;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/login/ChangePasswordActivity$1;-><init>(Lorg/briarproject/briar/android/login/ChangePasswordActivity;)V

    .line 81
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->currentPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object v0, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    iget-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->newPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 85
    iget-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->changePasswordButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->hideSoftKeyboard(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
