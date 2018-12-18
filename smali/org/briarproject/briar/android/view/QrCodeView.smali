.class public Lorg/briarproject/briar/android/view/QrCodeView;
.super Landroid/widget/FrameLayout;
.source "QrCodeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/view/QrCodeView$FullscreenListener;
    }
.end annotation


# instance fields
.field private fullscreen:Z

.field private listener:Lorg/briarproject/briar/android/view/QrCodeView$FullscreenListener;

.field private final qrCodeImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Lorg/briarproject/briar/android/view/QrCodeView;->fullscreen:Z

    const-string p2, "layout_inflater"

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0c0094

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f090134

    .line 27
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/view/QrCodeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/briarproject/briar/android/view/QrCodeView;->qrCodeImageView:Landroid/widget/ImageView;

    const p1, 0x7f0900c2

    .line 28
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/view/QrCodeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 29
    new-instance p2, Lorg/briarproject/briar/android/view/-$$Lambda$QrCodeView$iB0lXct_FHWwWROlcQn2b0qf0KI;

    invoke-direct {p2, p0, p1}, Lorg/briarproject/briar/android/view/-$$Lambda$QrCodeView$iB0lXct_FHWwWROlcQn2b0qf0KI;-><init>(Lorg/briarproject/briar/android/view/QrCodeView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lorg/briarproject/briar/android/view/QrCodeView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 30
    iget-boolean p2, p0, Lorg/briarproject/briar/android/view/QrCodeView;->fullscreen:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lorg/briarproject/briar/android/view/QrCodeView;->fullscreen:Z

    .line 31
    iget-boolean p2, p0, Lorg/briarproject/briar/android/view/QrCodeView;->fullscreen:Z

    if-nez p2, :cond_0

    const p2, 0x7f0808f8

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0808f9

    .line 35
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/android/view/QrCodeView;->listener:Lorg/briarproject/briar/android/view/QrCodeView$FullscreenListener;

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lorg/briarproject/briar/android/view/QrCodeView;->listener:Lorg/briarproject/briar/android/view/QrCodeView$FullscreenListener;

    iget-boolean p2, p0, Lorg/briarproject/briar/android/view/QrCodeView;->fullscreen:Z

    invoke-interface {p1, p2}, Lorg/briarproject/briar/android/view/QrCodeView$FullscreenListener;->setFullscreen(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public setFullscreenListener(Lorg/briarproject/briar/android/view/QrCodeView$FullscreenListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/briarproject/briar/android/view/QrCodeView;->listener:Lorg/briarproject/briar/android/view/QrCodeView$FullscreenListener;

    return-void
.end method

.method public setQrCode(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/briarproject/briar/android/view/QrCodeView;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0xc8

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 50
    iget-object v0, p0, Lorg/briarproject/briar/android/view/QrCodeView;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
