.class Lorg/briarproject/briar/android/login/DozeView;
.super Lorg/briarproject/briar/android/login/PowerView;
.source "DozeView.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private onButtonClickListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/login/DozeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/android/login/DozeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/login/PowerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f1101a3

    .line 32
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/DozeView;->setText(I)V

    const p1, 0x7f1101a1

    .line 33
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/DozeView;->setButtonText(I)V

    return-void
.end method

.method public static needsToBeShown(Landroid/content/Context;)Z
    .locals 0

    .line 42
    invoke-static {p0}, Lorg/briarproject/briar/android/util/UiUtils;->needsDozeWhitelisting(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getHelpText()I
    .locals 1

    const v0, 0x7f1101a2

    return v0
.end method

.method public needsToBeShown()Z
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/DozeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/briar/android/login/DozeView;->needsToBeShown(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onButtonClick()V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/android/login/DozeView;->onButtonClickListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/android/login/DozeView;->onButtonClickListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setOnButtonClickListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/briarproject/briar/android/login/DozeView;->onButtonClickListener:Ljava/lang/Runnable;

    return-void
.end method
