.class public Lorg/briarproject/briar/android/login/PasswordFragment;
.super Lorg/briarproject/briar/android/login/SetupFragment;
.source "PasswordFragment.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.login.PasswordFragment"


# instance fields
.field private nextButton:Landroid/widget/Button;

.field private passwordConfirmation:Landroid/support/design/widget/TextInputEditText;

.field private passwordConfirmationWrapper:Landroid/support/design/widget/TextInputLayout;

.field private passwordEntry:Landroid/support/design/widget/TextInputEditText;

.field private passwordEntryWrapper:Landroid/support/design/widget/TextInputLayout;

.field private progressBar:Landroid/widget/ProgressBar;

.field private strengthMeter:Lorg/briarproject/briar/android/login/StrengthMeter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/SetupFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/briarproject/briar/android/login/PasswordFragment;
    .locals 1

    .line 43
    new-instance v0, Lorg/briarproject/briar/android/login/PasswordFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/login/PasswordFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/login/SetupFragment;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public bridge synthetic beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/android/login/SetupFragment;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected getHelpText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1101aa

    .line 88
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lorg/briarproject/briar/android/login/PasswordFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 1

    .line 77
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/login/PasswordFragment;)V

    .line 80
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->setupController:Lorg/briarproject/briar/android/login/SetupController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/login/SetupController;->needToShowDozeFragment()Z

    move-result p1

    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->nextButton:Landroid/widget/Button;

    const v0, 0x7f110080

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 82
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordConfirmation:Landroid/support/design/widget/TextInputEditText;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputEditText;->setImeOptions(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 117
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordEntry:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 120
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->setupController:Lorg/briarproject/briar/android/login/SetupController;

    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordEntry:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/login/SetupController;->setPassword(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->setupController:Lorg/briarproject/briar/android/login/SetupController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/login/SetupController;->needToShowDozeFragment()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->setupController:Lorg/briarproject/briar/android/login/SetupController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/login/SetupController;->showDozeFragment()V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->nextButton:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->setupController:Lorg/briarproject/briar/android/login/SetupController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/login/SetupController;->createAccount()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/login/SetupFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f1101ab

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p3, 0x7f0c0056

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090180

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/login/StrengthMeter;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->strengthMeter:Lorg/briarproject/briar/android/login/StrengthMeter;

    const p2, 0x7f090127

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TextInputLayout;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordEntryWrapper:Landroid/support/design/widget/TextInputLayout;

    const p2, 0x7f090126

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TextInputEditText;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordEntry:Landroid/support/design/widget/TextInputEditText;

    const p2, 0x7f090125

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TextInputLayout;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordConfirmationWrapper:Landroid/support/design/widget/TextInputLayout;

    const p2, 0x7f090124

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TextInputEditText;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordConfirmation:Landroid/support/design/widget/TextInputEditText;

    const p2, 0x7f090115

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->nextButton:Landroid/widget/Button;

    const p2, 0x7f09012f

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 63
    iget-object p2, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordEntry:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {p2, p0}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    iget-object p2, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordConfirmation:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {p2, p0}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    iget-object p2, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->nextButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public bridge synthetic onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/login/SetupFragment;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/login/SetupFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 93
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordEntry:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object p2, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordConfirmation:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {p2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 97
    iget-object p4, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->strengthMeter:Lorg/briarproject/briar/android/login/StrengthMeter;

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p4, v0}, Lorg/briarproject/briar/android/login/StrengthMeter;->setVisibility(I)V

    .line 99
    iget-object p4, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->setupController:Lorg/briarproject/briar/android/login/SetupController;

    invoke-interface {p4, p1}, Lorg/briarproject/briar/android/login/SetupController;->estimatePasswordStrength(Ljava/lang/String;)F

    move-result p4

    .line 100
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->strengthMeter:Lorg/briarproject/briar/android/login/StrengthMeter;

    invoke-virtual {v0, p4}, Lorg/briarproject/briar/android/login/StrengthMeter;->setStrength(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    cmpl-float p4, p4, v0

    if-ltz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 103
    :goto_1
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordEntryWrapper:Landroid/support/design/widget/TextInputLayout;

    const v3, 0x7f110159

    .line 104
    invoke-virtual {p0, v3}, Lorg/briarproject/briar/android/login/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    if-nez p4, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 103
    :goto_2
    invoke-static {v0, v3, p1}, Lorg/briarproject/briar/android/util/UiUtils;->setError(Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;Z)V

    .line 106
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordConfirmationWrapper:Landroid/support/design/widget/TextInputLayout;

    const v0, 0x7f11015a

    .line 107
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    if-nez p3, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    .line 106
    :goto_3
    invoke-static {p1, v0, p2}, Lorg/briarproject/briar/android/util/UiUtils;->setError(Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;Z)V

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    const/4 v1, 0x1

    .line 111
    :cond_4
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordFragment;->passwordConfirmation:Landroid/support/design/widget/TextInputEditText;

    if-eqz v1, :cond_5

    move-object p2, p0

    goto :goto_4

    :cond_5
    const/4 p2, 0x0

    :goto_4
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method
