.class public abstract Lorg/briarproject/briar/android/sharing/BaseMessageFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "BaseMessageFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;
    }
.end annotation


# instance fields
.field private listener:Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;

.field protected message:Lorg/briarproject/briar/android/view/LargeTextInputView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getButtonText()I
.end method

.method protected abstract getHintText()I
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 33
    check-cast p1, Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;

    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->listener:Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0052

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900f4

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/view/LargeTextInputView;

    iput-object p2, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    .line 44
    iget-object p2, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->getButtonText()I

    move-result p3

    invoke-virtual {p0, p3}, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/LargeTextInputView;->setButtonText(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->getHintText()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/LargeTextInputView;->setHint(I)V

    .line 46
    iget-object p2, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    invoke-virtual {p2, p0}, Lorg/briarproject/briar/android/view/LargeTextInputView;->setListener(Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 74
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 70
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/LargeTextInputView;->isKeyboardOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/LargeTextInputView;->hideSoftKeyboard()V

    .line 71
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->listener:Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;

    invoke-interface {p1}, Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSendClick(Ljava/lang/String;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->listener:Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;

    invoke-interface {v0}, Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;->getMaximumTextLength()I

    move-result v0

    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/StringUtils;->utf8IsTooLong(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    const v0, 0x7f1101c5

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/LargeTextInputView;->setSendButtonEnabled(Z)V

    .line 87
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/LargeTextInputView;->hideSoftKeyboard()V

    const/16 v0, 0x7c00

    .line 89
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/StringUtils;->truncateUtf8(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->listener:Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;->onButtonClick(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 91
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/LargeTextInputView;->setSendButtonEnabled(Z)V

    .line 92
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/LargeTextInputView;->showSoftKeyboard()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 62
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 63
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->message:Lorg/briarproject/briar/android/view/LargeTextInputView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/LargeTextInputView;->showSoftKeyboard()V

    return-void
.end method

.method protected setTitle(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->listener:Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;->setTitle(I)V

    return-void
.end method
