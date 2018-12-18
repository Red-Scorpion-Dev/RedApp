.class public Lorg/briarproject/briar/android/view/TrustIndicatorView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "TrustIndicatorView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setTrustLevel(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;)V
    .locals 1

    .line 30
    sget-object v0, Lorg/briarproject/briar/android/view/TrustIndicatorView$1;->$SwitchMap$org$briarproject$bramble$api$identity$AuthorInfo$Status:[I

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f08093f

    goto :goto_0

    :pswitch_0
    const p1, 0x7f080903

    goto :goto_0

    :pswitch_1
    const p1, 0x7f080941

    goto :goto_0

    :pswitch_2
    const p1, 0x7f080940

    goto :goto_0

    :pswitch_3
    const p1, 0x7f08093e

    .line 46
    :goto_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/TrustIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/view/TrustIndicatorView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/view/TrustIndicatorView;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/TrustIndicatorView;->invalidate()V

    .line 50
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/TrustIndicatorView;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
