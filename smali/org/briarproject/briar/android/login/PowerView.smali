.class abstract Lorg/briarproject/briar/android/login/PowerView;
.super Landroid/support/constraint/ConstraintLayout;
.source "PowerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/login/PowerView$OnCheckedChangedListener;,
        Lorg/briarproject/briar/android/login/PowerView$SavedState;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final button:Landroid/widget/Button;

.field private final checkImage:Landroid/widget/ImageView;

.field private checked:Z

.field private onCheckedChangedListener:Lorg/briarproject/briar/android/login/PowerView$OnCheckedChangedListener;

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/login/PowerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/android/login/PowerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lorg/briarproject/briar/android/login/PowerView;->checked:Z

    const-string p2, "layout_inflater"

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 p2, 0x1

    const p3, 0x7f0c0081

    .line 52
    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f090190

    .line 54
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lorg/briarproject/briar/android/login/PowerView;->textView:Landroid/widget/TextView;

    const p3, 0x7f090064

    .line 55
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/briarproject/briar/android/login/PowerView;->checkImage:Landroid/widget/ImageView;

    const p3, 0x7f090057

    .line 56
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lorg/briarproject/briar/android/login/PowerView;->button:Landroid/widget/Button;

    .line 57
    iget-object p3, p0, Lorg/briarproject/briar/android/login/PowerView;->button:Landroid/widget/Button;

    new-instance v0, Lorg/briarproject/briar/android/login/-$$Lambda$PowerView$YWxvYWrlOSc9zXgU-y6p914zKIU;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/login/-$$Lambda$PowerView$YWxvYWrlOSc9zXgU-y6p914zKIU;-><init>(Lorg/briarproject/briar/android/login/PowerView;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900c7

    .line 58
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 59
    new-instance p3, Lorg/briarproject/briar/android/login/-$$Lambda$PowerView$U4uVmEFVVa1XIDTGmj-Qx-FQEoI;

    invoke-direct {p3, p0}, Lorg/briarproject/briar/android/login/-$$Lambda$PowerView$U4uVmEFVVa1XIDTGmj-Qx-FQEoI;-><init>(Lorg/briarproject/briar/android/login/PowerView;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/login/PowerView;->setSaveFromParentEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PowerView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PowerView;->needsToBeShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 67
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PowerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lorg/briarproject/briar/android/login/PowerView;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PowerView;->onButtonClick()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lorg/briarproject/briar/android/login/PowerView;Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/briarproject/briar/android/login/PowerView;->onHelpButtonClick()V

    return-void
.end method

.method private onHelpButtonClick()V
    .locals 3

    .line 124
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PowerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PowerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PowerView;->getHelpText()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->showOnboardingDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract getHelpText()I
.end method

.method public isChecked()Z
    .locals 2

    .line 102
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/PowerView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/briarproject/briar/android/login/PowerView;->checked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract needsToBeShown()Z
.end method

.method protected abstract onButtonClick()V
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 82
    check-cast p1, Lorg/briarproject/briar/android/login/PowerView$SavedState;

    .line 83
    invoke-virtual {p1}, Lorg/briarproject/briar/android/login/PowerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/constraint/ConstraintLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 84
    invoke-static {p1}, Lorg/briarproject/briar/android/login/PowerView$SavedState;->access$100(Lorg/briarproject/briar/android/login/PowerView$SavedState;)[Z

    move-result-object p1

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PowerView;->setChecked(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 74
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 75
    new-instance v1, Lorg/briarproject/briar/android/login/PowerView$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/briarproject/briar/android/login/PowerView$SavedState;-><init>(Landroid/os/Parcelable;Lorg/briarproject/briar/android/login/PowerView$1;)V

    const/4 v0, 0x1

    .line 76
    new-array v0, v0, [Z

    iget-boolean v2, p0, Lorg/briarproject/briar/android/login/PowerView;->checked:Z

    const/4 v3, 0x0

    aput-boolean v2, v0, v3

    invoke-static {v1, v0}, Lorg/briarproject/briar/android/login/PowerView$SavedState;->access$102(Lorg/briarproject/briar/android/login/PowerView$SavedState;[Z)[Z

    return-object v1
.end method

.method protected setButtonText(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PowerView;->button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 90
    iput-boolean p1, p0, Lorg/briarproject/briar/android/login/PowerView;->checked:Z

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PowerView;->checkImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PowerView;->checkImage:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PowerView;->onCheckedChangedListener:Lorg/briarproject/briar/android/login/PowerView$OnCheckedChangedListener;

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PowerView;->onCheckedChangedListener:Lorg/briarproject/briar/android/login/PowerView$OnCheckedChangedListener;

    invoke-interface {p1}, Lorg/briarproject/briar/android/login/PowerView$OnCheckedChangedListener;->onCheckedChanged()V

    :cond_1
    return-void
.end method

.method public setOnCheckedChangedListener(Lorg/briarproject/briar/android/login/PowerView$OnCheckedChangedListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/briarproject/briar/android/login/PowerView;->onCheckedChangedListener:Lorg/briarproject/briar/android/login/PowerView$OnCheckedChangedListener;

    return-void
.end method

.method protected setText(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PowerView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
