.class public Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "ContactExchangeErrorFragment.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final ERROR_MSG:Ljava/lang/String; = "errorMessage"

.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.keyagreement.ContactExchangeErrorFragment"


# instance fields
.field androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onCreateView$1(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->finish()V

    return-void
.end method

.method public static synthetic lambda$qDpqpDOfiSfDpHdC-46caXbzwEE(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->triggerFeedback()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;
    .locals 3

    .line 32
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "errorMessage"

    .line 34
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private triggerFeedback()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->finish()V

    .line 84
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    invoke-static {v0}, Lorg/briarproject/briar/android/util/UiUtils;->triggerFeedback(Lorg/briarproject/bramble/api/system/AndroidExecutor;)V

    return-void
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 79
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c004d

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900a9

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "errorMessage"

    .line 61
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090165

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 65
    new-instance p3, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeErrorFragment$qDpqpDOfiSfDpHdC-46caXbzwEE;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeErrorFragment$qDpqpDOfiSfDpHdC-46caXbzwEE;-><init>(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;)V

    invoke-static {p2, p3}, Lorg/briarproject/briar/android/util/UiUtils;->onSingleLinkClick(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    const p2, 0x7f0901ae

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 69
    new-instance p3, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeErrorFragment$BF3Hix5Z4igavSKqsn0TjyJME2A;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeErrorFragment$BF3Hix5Z4igavSKqsn0TjyJME2A;-><init>(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09005c

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 73
    new-instance p3, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeErrorFragment$Tt3lG6JNHwDKPHun6Yvxc_j5ci0;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$ContactExchangeErrorFragment$Tt3lG6JNHwDKPHun6Yvxc_j5ci0;-><init>(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Use newInstance()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
