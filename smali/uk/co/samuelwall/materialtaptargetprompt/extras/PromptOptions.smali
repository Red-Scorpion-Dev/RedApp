.class public Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;
.super Ljava/lang/Object;
.source "PromptOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mAutoDismiss:Z

.field private mAutoFinish:Z

.field private mBackButtonDismissEnabled:Z

.field private mBackgroundColour:I

.field private mCaptureTouchEventOnFocal:Z

.field private mCaptureTouchEventOutsidePrompt:Z

.field private mClipToView:Landroid/view/View;

.field private mFocalColour:I

.field private mFocalPadding:F

.field private mFocalRadius:F

.field private mHasIconDrawableTint:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconDrawableColourFilter:I

.field private mIconDrawableTintList:Landroid/content/res/ColorStateList;

.field private mIconDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mIdleAnimationEnabled:Z

.field private mMaxTextWidth:F

.field private mPrimaryText:Ljava/lang/CharSequence;

.field private mPrimaryTextColour:I

.field private mPrimaryTextGravity:I

.field private mPrimaryTextSize:F

.field private mPrimaryTextTypeface:Landroid/graphics/Typeface;

.field private mPrimaryTextTypefaceStyle:I

.field private mPromptBackground:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;

.field private mPromptFocal:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

.field private mPromptStateChangeListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;

.field private mPromptText:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;

.field private mResourceFinder:Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

.field private mSecondaryText:Ljava/lang/CharSequence;

.field private mSecondaryTextColour:I

.field private mSecondaryTextGravity:I

.field private mSecondaryTextSize:F

.field private mSecondaryTextTypeface:Landroid/graphics/Typeface;

.field private mSecondaryTextTypefaceStyle:I

.field private mSequencePromptStateChangeListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;

.field private mTargetPosition:Landroid/graphics/PointF;

.field private mTargetRenderView:Landroid/view/View;

.field private mTargetSet:Z

.field private mTargetView:Landroid/view/View;

.field private mTextPadding:F

.field private mTextSeparation:F


# direct methods
.method public constructor <init>(Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;)V
    .locals 5

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextColour:I

    const/16 v1, 0xff

    const/16 v2, 0xb3

    .line 94
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextColour:I

    const/16 v1, 0xf4

    const/16 v2, 0x3f

    const/16 v3, 0x51

    const/16 v4, 0xb5

    .line 99
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mBackgroundColour:I

    .line 104
    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalColour:I

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mBackButtonDismissEnabled:Z

    .line 165
    iput-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mAutoDismiss:Z

    .line 166
    iput-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mAutoFinish:Z

    const/4 v1, 0x0

    .line 170
    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawableTintList:Landroid/content/res/ColorStateList;

    .line 171
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 175
    iput-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIdleAnimationEnabled:Z

    const v0, 0x800003

    .line 176
    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextGravity:I

    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextGravity:I

    .line 182
    new-instance v0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;

    invoke-direct {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptBackground:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;

    .line 187
    new-instance v0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;

    invoke-direct {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptFocal:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    .line 192
    new-instance v0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;

    invoke-direct {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptText:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;

    .line 201
    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mResourceFinder:Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    .line 202
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mResourceFinder:Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    invoke-interface {p1}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float v0, v0, p1

    .line 203
    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalRadius:F

    const/high16 v0, 0x41b00000    # 22.0f

    mul-float v0, v0, p1

    .line 204
    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextSize:F

    const/high16 v0, 0x41900000    # 18.0f

    mul-float v0, v0, p1

    .line 205
    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextSize:F

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float v0, v0, p1

    .line 206
    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mMaxTextWidth:F

    const/high16 v0, 0x42200000    # 40.0f

    mul-float v0, v0, p1

    .line 207
    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTextPadding:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v0, v0, p1

    .line 208
    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalPadding:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float p1, p1, v0

    .line 209
    iput p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTextSeparation:F

    return-void
.end method


# virtual methods
.method public create()Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;
    .locals 5

    .line 1447
    iget-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTargetSet:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1451
    :cond_0
    invoke-static {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->createDefault(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;)Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

    move-result-object v0

    .line 1453
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_1

    .line 1455
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1458
    :cond_1
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 1460
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1461
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1462
    iget-boolean v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mHasIconDrawableTint:Z

    if-eqz v1, :cond_3

    .line 1464
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawableTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 1466
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 1468
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawableTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1473
    :cond_2
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawableColourFilter:I

    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1474
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawableColourFilter:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1479
    :cond_3
    :goto_0
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptBackground:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;

    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getBackgroundColour()I

    move-result v2

    invoke-virtual {v1, v2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;->setColour(I)V

    .line 1481
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptFocal:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getFocalColour()I

    move-result v2

    invoke-virtual {v1, v2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->setColour(I)V

    .line 1482
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptFocal:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->setRippleAlpha(I)V

    .line 1483
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptFocal:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getIdleAnimationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->setDrawRipple(Z)V

    .line 1484
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptFocal:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    instance-of v1, v1, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;

    if-eqz v1, :cond_4

    .line 1486
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptFocal:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    check-cast v1, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;

    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getFocalRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->setRadius(F)Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 836
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getAutoDismiss()Z
    .locals 1

    .line 1183
    iget-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mAutoDismiss:Z

    return v0
.end method

.method public getAutoFinish()Z
    .locals 1

    .line 1212
    iget-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mAutoFinish:Z

    return v0
.end method

.method public getBackButtonDismissEnabled()Z
    .locals 1

    .line 1353
    iget-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mBackButtonDismissEnabled:Z

    return v0
.end method

.method public getBackgroundColour()I
    .locals 1

    .line 1092
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mBackgroundColour:I

    return v0
.end method

.method public getCaptureTouchEventOnFocal()Z
    .locals 1

    .line 1029
    iget-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mCaptureTouchEventOnFocal:Z

    return v0
.end method

.method public getCaptureTouchEventOutsidePrompt()Z
    .locals 1

    .line 1237
    iget-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mCaptureTouchEventOutsidePrompt:Z

    return v0
.end method

.method public getClipToView()Landroid/view/View;
    .locals 1

    .line 1329
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mClipToView:Landroid/view/View;

    return-object v0
.end method

.method public getFocalColour()I
    .locals 1

    .line 1116
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalColour:I

    return v0
.end method

.method public getFocalPadding()F
    .locals 1

    .line 812
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalPadding:F

    return v0
.end method

.method public getFocalRadius()F
    .locals 1

    .line 1153
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalRadius:F

    return v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 897
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIdleAnimationEnabled()Z
    .locals 1

    .line 860
    iget-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIdleAnimationEnabled:Z

    return v0
.end method

.method public getMaxTextWidth()F
    .locals 1

    .line 1067
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mMaxTextWidth:F

    return v0
.end method

.method public getPrimaryText()Ljava/lang/CharSequence;
    .locals 1

    .line 435
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPrimaryTextColour()I
    .locals 1

    .line 496
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextColour:I

    return v0
.end method

.method public getPrimaryTextGravity()I
    .locals 1

    .line 1276
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextGravity:I

    return v0
.end method

.method public getPrimaryTextSize()F
    .locals 1

    .line 472
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextSize:F

    return v0
.end method

.method public getPrimaryTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 533
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getPrimaryTextTypefaceStyle()I
    .locals 1

    .line 543
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextTypefaceStyle:I

    return v0
.end method

.method public getPromptBackground()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;
    .locals 1

    .line 1377
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptBackground:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;

    return-object v0
.end method

.method public getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;
    .locals 1

    .line 1401
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptFocal:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    return-object v0
.end method

.method public getPromptText()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;
    .locals 1

    .line 1425
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptText:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;

    return-object v0
.end method

.method public getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;
    .locals 1

    .line 281
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mResourceFinder:Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    return-object v0
.end method

.method public getSecondaryText()Ljava/lang/CharSequence;
    .locals 1

    .line 594
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSecondaryTextColour()I
    .locals 1

    .line 654
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextColour:I

    return v0
.end method

.method public getSecondaryTextGravity()I
    .locals 1

    .line 1300
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextGravity:I

    return v0
.end method

.method public getSecondaryTextSize()F
    .locals 1

    .line 631
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextSize:F

    return v0
.end method

.method public getSecondaryTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 691
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getSecondaryTextTypefaceStyle()I
    .locals 1

    .line 701
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextTypefaceStyle:I

    return v0
.end method

.method public getTargetPosition()Landroid/graphics/PointF;
    .locals 1

    .line 349
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTargetPosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getTargetRenderView()Landroid/view/View;
    .locals 1

    .line 374
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTargetRenderView:Landroid/view/View;

    return-object v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .line 322
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method public getTextPadding()F
    .locals 1

    .line 738
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTextPadding:F

    return v0
.end method

.method public getTextSeparation()F
    .locals 1

    .line 775
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTextSeparation:F

    return v0
.end method

.method public load(I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 222
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 223
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mResourceFinder:Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    invoke-interface {v1}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Luk/co/samuelwall/materialtaptargetprompt/R$attr;->MaterialTapTargetPromptTheme:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 224
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 227
    :cond_0
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mResourceFinder:Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    sget-object v2, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView:[I

    invoke-interface {v1, p1, v2}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 228
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_primaryTextColour:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextColour:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextColour:I

    .line 229
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_secondaryTextColour:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextColour:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextColour:I

    .line 230
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_primaryText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryText:Ljava/lang/CharSequence;

    .line 231
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_secondaryText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryText:Ljava/lang/CharSequence;

    .line 232
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_backgroundColour:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mBackgroundColour:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mBackgroundColour:I

    .line 233
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_focalColour:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalColour:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalColour:I

    .line 234
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_focalRadius:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalRadius:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalRadius:F

    .line 235
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_primaryTextSize:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextSize:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextSize:F

    .line 236
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_secondaryTextSize:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextSize:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextSize:F

    .line 237
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_maxTextWidth:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mMaxTextWidth:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mMaxTextWidth:F

    .line 238
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_textPadding:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTextPadding:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTextPadding:F

    .line 239
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_focalToTextPadding:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalPadding:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mFocalPadding:F

    .line 240
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_textSeparation:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTextSeparation:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTextSeparation:F

    .line 241
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_autoDismiss:I

    iget-boolean v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mAutoDismiss:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mAutoDismiss:Z

    .line 242
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_autoFinish:I

    iget-boolean v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mAutoFinish:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mAutoFinish:Z

    .line 243
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_captureTouchEventOutsidePrompt:I

    iget-boolean v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mCaptureTouchEventOutsidePrompt:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mCaptureTouchEventOutsidePrompt:Z

    .line 244
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_captureTouchEventOnFocal:I

    iget-boolean v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mCaptureTouchEventOnFocal:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mCaptureTouchEventOnFocal:Z

    .line 245
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_primaryTextStyle:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextTypefaceStyle:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextTypefaceStyle:I

    .line 246
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_secondaryTextStyle:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextTypefaceStyle:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextTypefaceStyle:I

    .line 247
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_primaryTextFontFamily:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_primaryTextTypeface:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget v4, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextTypefaceStyle:I

    invoke-static {v1, v2, v4}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->setTypefaceFromAttrs(Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryTextTypeface:Landroid/graphics/Typeface;

    .line 248
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_secondaryTextFontFamily:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_secondaryTextTypeface:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget v4, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextTypefaceStyle:I

    invoke-static {v1, v2, v4}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->setTypefaceFromAttrs(Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryTextTypeface:Landroid/graphics/Typeface;

    .line 250
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_iconColourFilter:I

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mBackgroundColour:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawableColourFilter:I

    .line 251
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_iconTint:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawableTintList:Landroid/content/res/ColorStateList;

    .line 252
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_iconTintMode:I

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 253
    iput-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mHasIconDrawableTint:Z

    .line 255
    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$styleable;->PromptView_mttp_target:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 256
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_1

    .line 260
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mResourceFinder:Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    invoke-interface {p1, v1}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTargetView:Landroid/view/View;

    .line 261
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTargetView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 263
    iput-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTargetSet:Z

    .line 266
    :cond_1
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mResourceFinder:Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    const v0, 0x1020002

    invoke-interface {p1, v0}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mClipToView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public onExtraPromptStateChanged(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;I)V
    .locals 1

    .line 1000
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSequencePromptStateChangeListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSequencePromptStateChangeListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;

    invoke-interface {v0, p1, p2}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;->onPromptStateChanged(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;I)V

    :cond_0
    return-void
.end method

.method public onPromptStateChanged(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;I)V
    .locals 1

    .line 986
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptStateChangeListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptStateChangeListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;

    invoke-interface {v0, p1, p2}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;->onPromptStateChanged(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;I)V

    :cond_0
    return-void
.end method

.method public setIcon(I)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mResourceFinder:Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    invoke-interface {v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setPrimaryText(I)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mResourceFinder:Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    invoke-interface {v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPrimaryText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPromptStateChangeListener(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;",
            ")TT;"
        }
    .end annotation

    .line 961
    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mPromptStateChangeListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;

    return-object p0
.end method

.method public setSecondaryText(I)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 555
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mResourceFinder:Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    invoke-interface {v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mSecondaryText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTarget(Landroid/view/View;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 293
    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTargetView:Landroid/view/View;

    const/4 p1, 0x0

    .line 294
    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTargetPosition:Landroid/graphics/PointF;

    .line 295
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTargetView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->mTargetSet:Z

    return-object p0
.end method

.method public show()Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;
    .locals 1

    .line 1513
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->create()Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->show()V

    :cond_0
    return-object v0
.end method
