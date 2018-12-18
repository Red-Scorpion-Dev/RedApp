.class public Lorg/briarproject/briar/android/login/AuthorNameFragment;
.super Lorg/briarproject/briar/android/login/SetupFragment;
.source "AuthorNameFragment.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.login.AuthorNameFragment"


# instance fields
.field private authorNameInput:Landroid/support/design/widget/TextInputEditText;

.field private authorNameWrapper:Landroid/support/design/widget/TextInputLayout;

.field private nextButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/SetupFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/briarproject/briar/android/login/AuthorNameFragment;
    .locals 1

    .line 35
    new-instance v0, Lorg/briarproject/briar/android/login/AuthorNameFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/login/AuthorNameFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/login/SetupFragment;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public bridge synthetic beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/android/login/SetupFragment;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected getHelpText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1101a8

    .line 67
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/AuthorNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 62
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/login/AuthorNameFragment;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->setupController:Lorg/briarproject/briar/android/login/SetupController;

    iget-object v0, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->authorNameInput:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/login/SetupController;->setAuthorName(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->setupController:Lorg/briarproject/briar/android/login/SetupController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/login/SetupController;->showPasswordFragment()V

    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/login/SetupFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/AuthorNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f1101ac

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/AuthorNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p3, 0x7f0c0054

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090117

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TextInputLayout;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->authorNameWrapper:Landroid/support/design/widget/TextInputLayout;

    const p2, 0x7f090116

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TextInputEditText;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->authorNameInput:Landroid/support/design/widget/TextInputEditText;

    const p2, 0x7f090115

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->nextButton:Landroid/widget/Button;

    .line 49
    iget-object p2, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->authorNameInput:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {p2, p0}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 50
    iget-object p2, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->nextButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public bridge synthetic onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 24
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/login/SetupFragment;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/login/SetupFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 72
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 p4, 0x32

    if-le p1, p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 74
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->authorNameWrapper:Landroid/support/design/widget/TextInputLayout;

    const v1, 0x7f11011e

    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/login/AuthorNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lorg/briarproject/briar/android/util/UiUtils;->setError(Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;Z)V

    if-lez p1, :cond_1

    if-nez p4, :cond_1

    const/4 p2, 0x1

    .line 76
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->authorNameInput:Landroid/support/design/widget/TextInputEditText;

    if-eqz p2, :cond_2

    const/4 p3, 0x5

    .line 77
    :cond_2
    invoke-virtual {p1, p3}, Landroid/support/design/widget/TextInputEditText;->setImeOptions(I)V

    .line 78
    iget-object p1, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->authorNameInput:Landroid/support/design/widget/TextInputEditText;

    if-eqz p2, :cond_3

    move-object p3, p0

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p1, p3}, Landroid/support/design/widget/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 79
    iget-object p1, p0, Lorg/briarproject/briar/android/login/AuthorNameFragment;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
