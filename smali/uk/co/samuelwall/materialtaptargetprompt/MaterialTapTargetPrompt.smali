.class public Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;
.super Ljava/lang/Object;
.source "MaterialTapTargetPrompt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$AnimatorListener;,
        Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;,
        Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;,
        Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;
    }
.end annotation


# instance fields
.field mAnimationCurrent:Landroid/animation/ValueAnimator;

.field mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

.field mAnimationFocalRipple:Landroid/animation/ValueAnimator;

.field mFocalRippleProgress:F

.field final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mState:I

.field final mStatusBarHeight:F

.field final mTimeoutRunnable:Ljava/lang/Runnable;

.field mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;


# direct methods
.method constructor <init>(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;)V
    .locals 3

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$1;

    invoke-direct {v0, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$1;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;)V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 176
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object v0

    .line 177
    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-interface {v0}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    .line 178
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iput-object p0, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPrompt:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

    .line 179
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iput-object p1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    .line 180
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$2;

    invoke-direct {v1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$2;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;)V

    iput-object v1, p1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

    .line 209
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 210
    invoke-interface {v0}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getPromptParentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 211
    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mStatusBarHeight:F

    .line 213
    new-instance p1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$3;

    invoke-direct {p1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$3;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;)V

    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public static createDefault(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;)Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;
    .locals 1

    .line 730
    new-instance v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

    invoke-direct {v0, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;-><init>(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;)V

    return-object v0
.end method


# virtual methods
.method addGlobalLayoutListener()V
    .locals 2

    .line 354
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public cancelShowForTimer()V
    .locals 2

    .line 288
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method cleanUpAnimation()V
    .locals 2

    .line 485
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 488
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 489
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 490
    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    .line 492
    :cond_0
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalRipple:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalRipple:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 495
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalRipple:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 496
    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalRipple:Landroid/animation/ValueAnimator;

    .line 498
    :cond_1
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 501
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 502
    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method cleanUpPrompt(I)V
    .locals 2

    .line 467
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->cleanUpAnimation()V

    .line 468
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->removeGlobalLayoutListener()V

    .line 469
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 472
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 474
    :cond_0
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->isDismissing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {p0, p1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->onPromptStateChanged(I)V

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 431
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->cancelShowForTimer()V

    .line 436
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->cleanUpAnimation()V

    const/4 v0, 0x2

    .line 437
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    .line 438
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 440
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$6;

    invoke-direct {v1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$6;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 449
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$7;

    invoke-direct {v1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$7;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x5

    .line 458
    invoke-virtual {p0, v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->onPromptStateChanged(I)V

    .line 459
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public finish()V
    .locals 3

    .line 393
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->cancelShowForTimer()V

    .line 398
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->cleanUpAnimation()V

    const/4 v0, 0x2

    .line 399
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    .line 400
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 401
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$4;

    invoke-direct {v1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$4;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 411
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$5;

    invoke-direct {v1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$5;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x7

    .line 420
    invoke-virtual {p0, v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->onPromptStateChanged(I)V

    .line 421
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method isComplete()Z
    .locals 1

    .line 346
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mState:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->isDismissing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->isDismissed()Z

    move-result v0

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

.method isDismissed()Z
    .locals 2

    .line 336
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method isDismissing()Z
    .locals 2

    .line 326
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

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

.method isStarting()Z
    .locals 3

    .line 316
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected onPromptStateChanged(I)V
    .locals 1

    .line 716
    iput p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mState:I

    .line 717
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0, p0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->onPromptStateChanged(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;I)V

    .line 718
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0, p0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->onExtraPromptStateChanged(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;I)V

    return-void
.end method

.method prepare()V
    .locals 4

    .line 627
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTargetRenderView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTargetView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mTargetRenderView:Landroid/view/View;

    goto :goto_0

    .line 634
    :cond_0
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iput-object v0, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mTargetRenderView:Landroid/view/View;

    .line 636
    :goto_0
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->updateClipBounds()V

    .line 637
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTargetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 640
    new-array v1, v1, [I

    .line 641
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v2, v1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->getLocationInWindow([I)V

    .line 642
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v2, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v2

    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v3, v3, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v2, v3, v0, v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;Landroid/view/View;[I)V

    goto :goto_1

    .line 646
    :cond_1
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTargetPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 647
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v1

    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v2, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V

    .line 649
    :goto_1
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptText()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;

    move-result-object v0

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-boolean v2, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipToBounds:Z

    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v3, v3, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;ZLandroid/graphics/Rect;)V

    .line 650
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptBackground()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;

    move-result-object v0

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-boolean v2, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipToBounds:Z

    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v3, v3, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;->prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;ZLandroid/graphics/Rect;)V

    .line 651
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->updateIconPosition()V

    return-void
.end method

.method removeGlobalLayoutListener()V
    .locals 3

    .line 366
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 376
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 252
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object v0

    invoke-interface {v0}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getPromptParentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->isDismissing()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Luk/co/samuelwall/materialtaptargetprompt/R$id;->material_target_prompt_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 262
    :cond_1
    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mState:I

    invoke-virtual {p0, v1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->cleanUpPrompt(I)V

    .line 265
    :cond_2
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->addGlobalLayoutListener()V

    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0, v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->onPromptStateChanged(I)V

    .line 268
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->prepare()V

    .line 269
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->startRevealAnimation()V

    return-void
.end method

.method startIdleAnimations()V
    .locals 3

    .line 551
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->cleanUpAnimation()V

    const/4 v0, 0x3

    .line 552
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

    .line 553
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 554
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 555
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 556
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 557
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$10;

    invoke-direct {v1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$10;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 584
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalBreathing:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x2

    .line 586
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalRipple:Landroid/animation/ValueAnimator;

    .line 587
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalRipple:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 588
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalRipple:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 589
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationFocalRipple:Landroid/animation/ValueAnimator;

    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$11;

    invoke-direct {v1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$11;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3fcccccd    # 1.6f
    .end array-data
.end method

.method startRevealAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, v0, v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->updateAnimation(FF)V

    .line 512
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->cleanUpAnimation()V

    const/4 v0, 0x2

    .line 513
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    .line 514
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 515
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 516
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$8;

    invoke-direct {v1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$8;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 525
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$9;

    invoke-direct {v1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$9;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 543
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mAnimationCurrent:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method updateAnimation(FF)V
    .locals 2

    .line 608
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptText()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;

    move-result-object v0

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0, v1, p1, p2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->update(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V

    .line 613
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 617
    :cond_1
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v0

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0, v1, p1, p2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->update(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V

    .line 618
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptBackground()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;

    move-result-object v0

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0, v1, p1, p2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;->update(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V

    .line 619
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->invalidate()V

    return-void
.end method

.method updateClipBounds()V
    .locals 4

    .line 685
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getClipToView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 688
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipToBounds:Z

    .line 691
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v2, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 694
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 695
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v2, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 697
    iget v0, v1, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_1

    .line 699
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mStatusBarHeight:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 704
    :cond_0
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v2, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 705
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iput-boolean v1, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipToBounds:Z

    :cond_1
    :goto_0
    return-void
.end method

.method updateIconPosition()V
    .locals 5

    .line 659
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 660
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 663
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v4, v4, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 664
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, v1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableLeft:F

    .line 665
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v3, v3, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 666
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v1, v3

    sub-float/2addr v0, v1

    iput v0, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableTop:F

    goto :goto_0

    .line 668
    :cond_0
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mTargetRenderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 670
    new-array v0, v1, [I

    .line 671
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v2, v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->getLocationInWindow([I)V

    .line 672
    new-array v1, v1, [I

    .line 673
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v2, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mTargetRenderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 675
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    const/4 v3, 0x0

    aget v4, v1, v3

    aget v3, v0, v3

    sub-int/2addr v4, v3

    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v3, v3, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mTargetRenderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    iput v3, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableLeft:F

    .line 676
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    const/4 v3, 0x1

    aget v1, v1, v3

    aget v0, v0, v3

    sub-int/2addr v1, v0

    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->mView:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mTargetRenderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableTop:F

    :cond_1
    :goto_0
    return-void
.end method
