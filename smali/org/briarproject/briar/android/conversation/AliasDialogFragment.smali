.class public Lorg/briarproject/briar/android/conversation/AliasDialogFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "AliasDialogFragment.java"


# static fields
.field static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.conversation.AliasDialogFragment"


# instance fields
.field private aliasEditText:Landroid/widget/EditText;

.field private viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

.field viewModelFactory:Landroid/arch/lifecycle/ViewModelProvider$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->aliasEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->setContactAlias(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$onCreateView$1(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public static newInstance()Lorg/briarproject/briar/android/conversation/AliasDialogFragment;
    .locals 1

    .line 33
    new-instance v0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x7f1200ca

    .line 40
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->setStyle(II)V

    .line 42
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/activity/BriarActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->getActivityComponent()Lorg/briarproject/briar/android/activity/ActivityComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;)V

    .line 44
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->viewModelFactory:Landroid/arch/lifecycle/ViewModelProvider$Factory;

    invoke-static {p1, v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    .line 45
    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0048

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09003e

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->aliasEditText:Landroid/widget/EditText;

    .line 56
    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    invoke-virtual {p2}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->getContact()Landroid/arch/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lorg/briarproject/bramble/api/contact/Contact;

    .line 57
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAlias()Ljava/lang/String;

    move-result-object p2

    .line 58
    iget-object p3, p0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->aliasEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 59
    iget-object p3, p0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->aliasEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const p2, 0x7f090167

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 62
    new-instance p3, Lorg/briarproject/briar/android/conversation/-$$Lambda$AliasDialogFragment$l9tAOx2wyI2SAQLAnCxJpbrm7qY;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$AliasDialogFragment$l9tAOx2wyI2SAQLAnCxJpbrm7qY;-><init>(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09005c

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 68
    new-instance p3, Lorg/briarproject/briar/android/conversation/-$$Lambda$AliasDialogFragment$tJG1tFkR90XxTlDYCnnAg8u_xB4;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$AliasDialogFragment$tJG1tFkR90XxTlDYCnnAg8u_xB4;-><init>(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
