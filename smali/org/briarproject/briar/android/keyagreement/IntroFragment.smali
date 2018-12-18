.class public Lorg/briarproject/briar/android/keyagreement/IntroFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "IntroFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/keyagreement/IntroFragment$IntroScreenSeenListener;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.keyagreement.IntroFragment"


# instance fields
.field private screenSeenListener:Lorg/briarproject/briar/android/keyagreement/IntroFragment$IntroScreenSeenListener;

.field private scrollView:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lorg/briarproject/briar/android/keyagreement/IntroFragment;Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/IntroFragment;->screenSeenListener:Lorg/briarproject/briar/android/keyagreement/IntroFragment$IntroScreenSeenListener;

    invoke-interface {p1}, Lorg/briarproject/briar/android/keyagreement/IntroFragment$IntroScreenSeenListener;->showNextScreen()V

    return-void
.end method

.method public static synthetic lambda$onStart$1(Lorg/briarproject/briar/android/keyagreement/IntroFragment;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/IntroFragment;->scrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method public static newInstance()Lorg/briarproject/briar/android/keyagreement/IntroFragment;
    .locals 2

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    new-instance v1, Lorg/briarproject/briar/android/keyagreement/IntroFragment;

    invoke-direct {v1}, Lorg/briarproject/briar/android/keyagreement/IntroFragment;-><init>()V

    .line 38
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/keyagreement/IntroFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/IntroFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 44
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/keyagreement/IntroFragment;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 50
    check-cast p1, Lorg/briarproject/briar/android/keyagreement/IntroFragment$IntroScreenSeenListener;

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/IntroFragment;->screenSeenListener:Lorg/briarproject/briar/android/keyagreement/IntroFragment$IntroScreenSeenListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c004f

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090150

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/IntroFragment;->scrollView:Landroid/widget/ScrollView;

    const p2, 0x7f090076

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance p3, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$IntroFragment$i1cXSU5I7XQ-sYup2vlco5FUUnc;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$IntroFragment$i1cXSU5I7XQ-sYup2vlco5FUUnc;-><init>(Lorg/briarproject/briar/android/keyagreement/IntroFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 74
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 75
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/IntroFragment;->scrollView:Landroid/widget/ScrollView;

    new-instance v1, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$IntroFragment$YjyoDcsKRlKs-oe0ufh1rBtjiYw;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$IntroFragment$YjyoDcsKRlKs-oe0ufh1rBtjiYw;-><init>(Lorg/briarproject/briar/android/keyagreement/IntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
