.class abstract Lorg/briarproject/briar/android/login/SetupFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "SetupFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field setupController:Lorg/briarproject/briar/android/login/SetupController;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected abstract getHelpText()Ljava/lang/String;
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d000b

    .line 34
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 35
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    .line 66
    invoke-static {p2, p3}, Lorg/briarproject/briar/android/util/UiUtils;->enterPressed(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/SetupFragment;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09002b

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/SetupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/SetupFragment;->getHelpText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/util/UiUtils;->showOnboardingDialog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_0
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
