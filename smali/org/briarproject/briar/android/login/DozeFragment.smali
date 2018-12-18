.class public Lorg/briarproject/briar/android/login/DozeFragment;
.super Lorg/briarproject/briar/android/login/SetupFragment;
.source "DozeFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/login/PowerView$OnCheckedChangedListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.login.DozeFragment"


# instance fields
.field private dozeView:Lorg/briarproject/briar/android/login/DozeView;

.field private huaweiView:Lorg/briarproject/briar/android/login/HuaweiView;

.field private next:Landroid/widget/Button;

.field private progressBar:Landroid/widget/ProgressBar;

.field private secondAttempt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/SetupFragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lorg/briarproject/briar/android/login/DozeFragment;->secondAttempt:Z

    return-void
.end method

.method private askForDozeWhitelisting()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BatteryLife"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/DozeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/DozeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/briar/android/util/UiUtils;->getDozeWhitelistingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x9

    .line 104
    invoke-virtual {p0, v0, v1}, Lorg/briarproject/briar/android/login/DozeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic lambda$IiKAcyQMEH-83En58rsyiRK8Yak(Lorg/briarproject/briar/android/login/DozeFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/login/DozeFragment;->askForDozeWhitelisting()V

    return-void
.end method

.method public static newInstance()Lorg/briarproject/briar/android/login/DozeFragment;
    .locals 1

    .line 39
    new-instance v0, Lorg/briarproject/briar/android/login/DozeFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/login/DozeFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/login/SetupFragment;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public bridge synthetic beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/android/login/SetupFragment;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected getHelpText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1101a2

    .line 75
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/DozeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lorg/briarproject/briar/android/login/DozeFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 70
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/login/DozeFragment;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/login/SetupFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x9

    if-ne p1, p2, :cond_2

    .line 82
    iget-object p1, p0, Lorg/briarproject/briar/android/login/DozeFragment;->dozeView:Lorg/briarproject/briar/android/login/DozeView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/login/DozeView;->needsToBeShown()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/briarproject/briar/android/login/DozeFragment;->secondAttempt:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/DozeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 85
    iput-boolean p2, p0, Lorg/briarproject/briar/android/login/DozeFragment;->secondAttempt:Z

    .line 86
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/DozeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/DozeFragment;->getHelpText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/briarproject/briar/android/util/UiUtils;->showOnboardingDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/android/login/DozeFragment;->dozeView:Lorg/briarproject/briar/android/login/DozeView;

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/login/DozeView;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCheckedChanged()V
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/briarproject/briar/android/login/DozeFragment;->dozeView:Lorg/briarproject/briar/android/login/DozeView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/login/DozeView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/login/DozeFragment;->huaweiView:Lorg/briarproject/briar/android/login/HuaweiView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/login/HuaweiView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/briarproject/briar/android/login/DozeFragment;->next:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/login/DozeFragment;->next:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lorg/briarproject/briar/android/login/DozeFragment;->next:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lorg/briarproject/briar/android/login/DozeFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lorg/briarproject/briar/android/login/DozeFragment;->setupController:Lorg/briarproject/briar/android/login/SetupController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/login/SetupController;->createAccount()V

    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/login/SetupFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/DozeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f1101a4

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/DozeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    .line 47
    invoke-virtual {p0, p3}, Lorg/briarproject/briar/android/login/DozeFragment;->setHasOptionsMenu(Z)V

    const v0, 0x7f0c0055

    .line 48
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090097

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/login/DozeView;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/DozeFragment;->dozeView:Lorg/briarproject/briar/android/login/DozeView;

    .line 51
    iget-object p2, p0, Lorg/briarproject/briar/android/login/DozeFragment;->dozeView:Lorg/briarproject/briar/android/login/DozeView;

    invoke-virtual {p2, p0}, Lorg/briarproject/briar/android/login/DozeView;->setOnCheckedChangedListener(Lorg/briarproject/briar/android/login/PowerView$OnCheckedChangedListener;)V

    const p2, 0x7f0900ca

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/login/HuaweiView;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/DozeFragment;->huaweiView:Lorg/briarproject/briar/android/login/HuaweiView;

    .line 53
    iget-object p2, p0, Lorg/briarproject/briar/android/login/DozeFragment;->huaweiView:Lorg/briarproject/briar/android/login/HuaweiView;

    invoke-virtual {p2, p0}, Lorg/briarproject/briar/android/login/HuaweiView;->setOnCheckedChangedListener(Lorg/briarproject/briar/android/login/PowerView$OnCheckedChangedListener;)V

    const p2, 0x7f090115

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/DozeFragment;->next:Landroid/widget/Button;

    const p2, 0x7f09012f

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/DozeFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 57
    iget-object p2, p0, Lorg/briarproject/briar/android/login/DozeFragment;->dozeView:Lorg/briarproject/briar/android/login/DozeView;

    new-instance p3, Lorg/briarproject/briar/android/login/-$$Lambda$DozeFragment$IiKAcyQMEH-83En58rsyiRK8Yak;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/login/-$$Lambda$DozeFragment$IiKAcyQMEH-83En58rsyiRK8Yak;-><init>(Lorg/briarproject/briar/android/login/DozeFragment;)V

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/login/DozeView;->setOnButtonClickListener(Ljava/lang/Runnable;)V

    .line 58
    iget-object p2, p0, Lorg/briarproject/briar/android/login/DozeFragment;->next:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public bridge synthetic onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/login/SetupFragment;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/login/SetupFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/android/login/SetupFragment;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method
