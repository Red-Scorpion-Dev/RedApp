.class public Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ScreenFilterDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment$DismissListener;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.fragment.ScreenFilterDialogFragment"


# instance fields
.field dismissListener:Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment$DismissListener;

.field screenFilterMonitor:Lorg/briarproject/briar/api/android/ScreenFilterMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->dismissListener:Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment$DismissListener;

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$0(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;Landroid/widget/CheckBox;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 90
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->screenFilterMonitor:Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    invoke-interface {p1, p2}, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;->allowApps(Ljava/util/Collection;)V

    .line 91
    :cond_0
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static newInstance(Ljava/util/Collection;)Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;",
            ">;)",
            "Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;

    iget-object v4, v4, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "appNames"

    .line 46
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;

    iget-object v3, v3, Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p0, "packageNames"

    .line 49
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 50
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    check-cast p1, Lorg/briarproject/briar/android/activity/BaseActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->getActivityComponent()Lorg/briarproject/briar/android/activity/ActivityComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;)V

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 68
    invoke-virtual {p0}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 70
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200cc

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f110191

    .line 72
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {p0}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "appNames"

    .line 75
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "packageNames"

    .line 77
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0c0042

    const/4 v4, 0x0

    .line 83
    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f09014c

    .line 85
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f110190

    const/4 v5, 0x1

    .line 86
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "\n"

    .line 87
    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 86
    invoke-virtual {p0, v4, v5}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f09014b

    .line 88
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const v2, 0x7f11007c

    .line 89
    new-instance v3, Lorg/briarproject/briar/android/fragment/-$$Lambda$ScreenFilterDialogFragment$ZIwgyJ0Eo8u7r4Ym4VbA5LzRhIM;

    invoke-direct {v3, p0, p1, v1}, Lorg/briarproject/briar/android/fragment/-$$Lambda$ScreenFilterDialogFragment$ZIwgyJ0Eo8u7r4Ym4VbA5LzRhIM;-><init>(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;Landroid/widget/CheckBox;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 100
    iget-object p1, p0, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->dismissListener:Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment$DismissListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->dismissListener:Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment$DismissListener;

    invoke-interface {p1}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment$DismissListener;->onDialogDismissed()V

    :cond_0
    return-void
.end method

.method public setDismissListener(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment$DismissListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->dismissListener:Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment$DismissListener;

    return-void
.end method
