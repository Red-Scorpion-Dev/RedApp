.class public Lorg/briarproject/briar/android/widget/LinkDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "LinkDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.widget.LinkDialogFragment"


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lorg/briarproject/briar/android/widget/LinkDialogFragment;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$onCreateView$1(Lorg/briarproject/briar/android/widget/LinkDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/briarproject/briar/android/widget/LinkDialogFragment;
    .locals 3

    .line 27
    new-instance v0, Lorg/briarproject/briar/android/widget/LinkDialogFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    .line 30
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->url:Ljava/lang/String;

    const/4 p1, 0x1

    const v0, 0x7f1200ca

    .line 42
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0c0051

    .line 49
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901b7

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    invoke-virtual {p0}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 58
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 p3, 0x1

    :cond_0
    if-eqz p3, :cond_1

    const p3, 0x7f110111

    .line 62
    invoke-virtual {p0, p3}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 61
    invoke-static {p2, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    const p3, 0x7f09011d

    .line 64
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 65
    new-instance v0, Lorg/briarproject/briar/android/widget/-$$Lambda$LinkDialogFragment$CtxQ-RzzFNwlWk-vvrb4QHAEkGw;

    invoke-direct {v0, p0, p2}, Lorg/briarproject/briar/android/widget/-$$Lambda$LinkDialogFragment$CtxQ-RzzFNwlWk-vvrb4QHAEkGw;-><init>(Lorg/briarproject/briar/android/widget/LinkDialogFragment;Landroid/content/Intent;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09005c

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 71
    new-instance p3, Lorg/briarproject/briar/android/widget/-$$Lambda$LinkDialogFragment$59GqIGV30T5d_hVaKJwW6GK_sNA;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/widget/-$$Lambda$LinkDialogFragment$59GqIGV30T5d_hVaKJwW6GK_sNA;-><init>(Lorg/briarproject/briar/android/widget/LinkDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
