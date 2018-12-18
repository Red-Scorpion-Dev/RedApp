.class Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;
.super Landroid/view/View;
.source "MaterialTapTargetPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PromptView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;,
        Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;
    }
.end annotation


# instance fields
.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mClipBounds:Landroid/graphics/Rect;

.field mClipToBounds:Z

.field mIconDrawable:Landroid/graphics/drawable/Drawable;

.field mIconDrawableLeft:F

.field mIconDrawableTop:F

.field mPrompt:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

.field mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

.field mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

.field mTargetRenderView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 759
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 745
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    .line 760
    sget v0, Luk/co/samuelwall/materialtaptargetprompt/R$id;->material_target_prompt_view:I

    invoke-virtual {p0, v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->setId(I)V

    const/4 v0, 0x1

    .line 761
    invoke-virtual {p0, v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->setFocusableInTouchMode(Z)V

    .line 762
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->requestFocus()Z

    .line 764
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    .line 767
    invoke-virtual {p0, v0, v1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 774
    :cond_0
    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;

    invoke-direct {v1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;)V

    invoke-virtual {p0, v1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const-string v1, "accessibility"

    .line 775
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 777
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 778
    invoke-virtual {p0, v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->setClickable(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 894
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getBackButtonDismissEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 895
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 897
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 900
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 901
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 903
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v2

    .line 906
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 907
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 909
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

    invoke-interface {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;->onNonFocalPressed()V

    .line 913
    :cond_1
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getAutoDismiss()Z

    move-result v0

    if-nez v0, :cond_3

    .line 914
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2

    .line 919
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 932
    const-class v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 925
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 926
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPrompt:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->cleanUpAnimation()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 793
    iget-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipToBounds:Z

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 799
    :cond_0
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->getPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 803
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 806
    :cond_1
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptBackground()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;

    move-result-object v1

    invoke-virtual {v1, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_2

    .line 810
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 814
    :cond_2
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v0

    invoke-virtual {v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->draw(Landroid/graphics/Canvas;)V

    .line 821
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 823
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableLeft:F

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableTop:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 824
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 825
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableLeft:F

    neg-float v0, v0

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableTop:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 827
    :cond_3
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mTargetRenderView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 829
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableLeft:F

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableTop:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 830
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mTargetRenderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 831
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableLeft:F

    neg-float v0, v0

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableTop:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 835
    :cond_4
    :goto_0
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptText()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;

    move-result-object v0

    invoke-virtual {v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 840
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 850
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    .line 844
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 847
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 853
    :goto_0
    invoke-virtual {p0, p1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 855
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 786
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 862
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 864
    iget-boolean v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipToBounds:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    float-to-int v2, v0

    float-to-int v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    .line 865
    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptBackground()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 867
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 870
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getCaptureTouchEventOnFocal()Z

    move-result p1

    .line 871
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

    if-eqz v0, :cond_4

    .line 873
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

    invoke-interface {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;->onFocalPressed()V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 881
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getCaptureTouchEventOutsidePrompt()Z

    move-result v1

    :cond_3
    move p1, v1

    .line 883
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

    if-eqz v0, :cond_4

    .line 885
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

    invoke-interface {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;->onNonFocalPressed()V

    :cond_4
    :goto_1
    return p1
.end method
