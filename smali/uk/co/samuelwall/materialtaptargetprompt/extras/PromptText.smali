.class public Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;
.super Ljava/lang/Object;
.source "PromptText.java"

# interfaces
.implements Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUIElement;


# instance fields
.field mClipBounds:Landroid/graphics/Rect;

.field mClipToBounds:Z

.field mPaintPrimaryText:Landroid/text/TextPaint;

.field mPaintSecondaryText:Landroid/text/TextPaint;

.field mPrimaryTextAlignment:Landroid/text/Layout$Alignment;

.field mPrimaryTextLayout:Landroid/text/Layout;

.field mPrimaryTextLeft:F

.field mPrimaryTextLeftChange:F

.field mPrimaryTextTop:F

.field mSecondaryTextAlignment:Landroid/text/Layout$Alignment;

.field mSecondaryTextLayout:Landroid/text/Layout;

.field mSecondaryTextLeft:F

.field mSecondaryTextLeftChange:F

.field mSecondaryTextOffsetTop:F

.field mTextBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mTextBounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1

    .line 288
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mTextBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method createTextLayout(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V
    .locals 5

    .line 238
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPrimaryText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPrimaryText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintPrimaryText:Landroid/text/TextPaint;

    float-to-int v3, p2

    iget-object v4, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextAlignment:Landroid/text/Layout$Alignment;

    invoke-static {v0, v2, v3, v4, p3}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->createStaticTextLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;F)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    goto :goto_0

    .line 245
    :cond_0
    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    .line 247
    :goto_0
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getSecondaryText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getSecondaryText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintSecondaryText:Landroid/text/TextPaint;

    float-to-int p2, p2

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextAlignment:Landroid/text/Layout$Alignment;

    invoke-static {p1, v0, p2, v1, p3}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->createStaticTextLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;F)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLayout:Landroid/text/Layout;

    goto :goto_1

    .line 254
    :cond_1
    iput-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLayout:Landroid/text/Layout;

    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 272
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeftChange:F

    sub-float/2addr v0, v1

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextTop:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 273
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 277
    :cond_0
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 279
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeftChange:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLeft:F

    add-float/2addr v0, v1

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLeftChange:F

    sub-float/2addr v0, v1

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextOffsetTop:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 281
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 76
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mTextBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;ZLandroid/graphics/Rect;)V
    .locals 11

    .line 85
    iput-boolean p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mClipToBounds:Z

    .line 86
    iput-object p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mClipBounds:Landroid/graphics/Rect;

    .line 87
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPrimaryText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 90
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintPrimaryText:Landroid/text/TextPaint;

    .line 91
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPrimaryTextColour()I

    move-result v2

    .line 92
    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintPrimaryText:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 93
    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintPrimaryText:Landroid/text/TextPaint;

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 94
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintPrimaryText:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 95
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintPrimaryText:Landroid/text/TextPaint;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPrimaryTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 96
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintPrimaryText:Landroid/text/TextPaint;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPrimaryTextTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPrimaryTextTypefaceStyle()I

    move-result v4

    invoke-static {v2, v3, v4}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->setTypeface(Landroid/text/TextPaint;Landroid/graphics/Typeface;I)V

    .line 97
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object v2

    invoke-interface {v2}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPrimaryTextGravity()I

    move-result v3

    .line 97
    invoke-static {v2, v3, v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->getTextAlignment(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Landroid/text/Layout$Alignment;

    move-result-object v0

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextAlignment:Landroid/text/Layout$Alignment;

    .line 101
    :cond_0
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getSecondaryText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintSecondaryText:Landroid/text/TextPaint;

    .line 105
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getSecondaryTextColour()I

    move-result v2

    .line 106
    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintSecondaryText:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 107
    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintSecondaryText:Landroid/text/TextPaint;

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 108
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintSecondaryText:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 109
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintSecondaryText:Landroid/text/TextPaint;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getSecondaryTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 110
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPaintSecondaryText:Landroid/text/TextPaint;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getSecondaryTextTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .line 111
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getSecondaryTextTypefaceStyle()I

    move-result v4

    .line 110
    invoke-static {v2, v3, v4}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->setTypeface(Landroid/text/TextPaint;Landroid/graphics/Typeface;I)V

    .line 112
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object v2

    invoke-interface {v2}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 113
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getSecondaryTextGravity()I

    move-result v3

    .line 112
    invoke-static {v2, v3, v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->getTextAlignment(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Landroid/text/Layout$Alignment;

    move-result-object v0

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextAlignment:Landroid/text/Layout$Alignment;

    .line 115
    :cond_1
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 117
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 119
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 120
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 122
    :goto_1
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getMaxTextWidth()F

    move-result v5

    if-eqz p2, :cond_4

    move-object v6, p3

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 124
    :goto_2
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object v7

    invoke-interface {v7}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getPromptParentView()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    .line 125
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTextPadding()F

    move-result v8

    .line 122
    invoke-static {v5, v6, v7, v8}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->calculateMaxWidth(FLandroid/graphics/Rect;IF)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    .line 126
    invoke-virtual {p0, p1, v5, v6}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->createTextLayout(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V

    .line 127
    iget-object v6, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    invoke-static {v6}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->calculateMaxTextWidth(Landroid/text/Layout;)F

    move-result v6

    .line 128
    iget-object v7, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLayout:Landroid/text/Layout;

    invoke-static {v7}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->calculateMaxTextWidth(Landroid/text/Layout;)F

    move-result v7

    .line 129
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 130
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getFocalPadding()F

    move-result v7

    .line 131
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTextPadding()F

    move-result v8

    const/high16 v9, 0x42b00000    # 88.0f

    .line 134
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object v10

    invoke-interface {v10}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v10, v9

    float-to-int v9, v10

    float-to-int v10, v2

    float-to-int v3, v3

    .line 133
    invoke-static {p3, v9, v10, v3}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->containsInset(Landroid/graphics/Rect;III)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 137
    iget p2, p3, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iput p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    .line 138
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    if-eqz v1, :cond_5

    sub-float/2addr v2, p2

    add-float/2addr v2, v7

    .line 141
    iput v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    goto :goto_3

    :cond_5
    sub-float/2addr v2, p2

    sub-float/2addr v2, v7

    .line 145
    iput v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    .line 147
    :goto_3
    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 149
    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    .line 151
    :cond_6
    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    add-float/2addr v1, p2

    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v8

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    .line 153
    iget p3, p3, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    sub-float/2addr p3, v8

    sub-float/2addr p3, p2

    iput p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    goto :goto_6

    :cond_7
    if-eqz v1, :cond_9

    if-eqz p2, :cond_8

    .line 160
    iget p2, p3, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 161
    :cond_8
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object p2

    invoke-interface {p2}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getPromptParentView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result p2

    :goto_4
    int-to-float p2, p2

    sub-float/2addr p2, v8

    sub-float/2addr p2, v6

    iput p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    goto :goto_6

    :cond_9
    if-eqz p2, :cond_a

    .line 165
    iget p2, p3, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 166
    :cond_a
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object p2

    invoke-interface {p2}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getPromptParentView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p2

    :goto_5
    int-to-float p2, p2

    add-float/2addr p2, v8

    iput p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    :cond_b
    :goto_6
    if-eqz v4, :cond_c

    .line 172
    iget p2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v7

    iput p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextTop:F

    .line 173
    iget-object p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    if-eqz p2, :cond_d

    .line 175
    iget p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextTop:F

    iget-object p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    invoke-virtual {p3}, Landroid/text/Layout;->getHeight()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iput p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextTop:F

    goto :goto_7

    .line 180
    :cond_c
    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, v7

    iput p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextTop:F

    .line 184
    :cond_d
    :goto_7
    iget-object p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    const/4 p3, 0x0

    if-eqz p2, :cond_e

    .line 186
    iget-object p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    goto :goto_8

    :cond_e
    const/4 p2, 0x0

    .line 189
    :goto_8
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_11

    .line 191
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    if-eqz v4, :cond_f

    .line 194
    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextTop:F

    sub-float/2addr v1, v0

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextTop:F

    .line 195
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    if-eqz v1, :cond_f

    .line 197
    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextTop:F

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTextSeparation()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextTop:F

    .line 201
    :cond_f
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    if-eqz v1, :cond_10

    .line 203
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTextSeparation()F

    move-result v1

    add-float/2addr p2, v1

    iput p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextOffsetTop:F

    .line 205
    :cond_10
    iget p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextOffsetTop:F

    add-float/2addr p2, v0

    .line 212
    :cond_11
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLeft:F

    .line 213
    iput p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeftChange:F

    .line 214
    iput p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLeftChange:F

    sub-float/2addr v5, v6

    .line 216
    iget-object p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLayout:Landroid/text/Layout;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object v0

    invoke-interface {v0}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p3, v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->isRtlText(Landroid/text/Layout;Landroid/content/res/Resources;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 218
    iput v5, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeftChange:F

    .line 220
    :cond_12
    iget-object p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLayout:Landroid/text/Layout;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object p1

    invoke-interface {p1}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p3, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->isRtlText(Landroid/text/Layout;Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 222
    iput v5, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mSecondaryTextLeftChange:F

    .line 224
    :cond_13
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mTextBounds:Landroid/graphics/RectF;

    iget p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextLeft:F

    iput p3, p1, Landroid/graphics/RectF;->left:F

    .line 225
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mTextBounds:Landroid/graphics/RectF;

    iget p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mPrimaryTextTop:F

    iput p3, p1, Landroid/graphics/RectF;->top:F

    .line 226
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mTextBounds:Landroid/graphics/RectF;

    iget-object p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mTextBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr p3, v6

    iput p3, p1, Landroid/graphics/RectF;->right:F

    .line 227
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mTextBounds:Landroid/graphics/RectF;

    iget-object p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mTextBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p2

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public update(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V
    .locals 3

    .line 262
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getMaxTextWidth()F

    move-result p2

    iget-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mClipToBounds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->mClipBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 264
    :goto_0
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object v1

    invoke-interface {v1}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getPromptParentView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 265
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTextPadding()F

    move-result v2

    .line 262
    invoke-static {p2, v0, v1, v2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->calculateMaxWidth(FLandroid/graphics/Rect;IF)F

    move-result p2

    .line 266
    invoke-virtual {p0, p1, p2, p3}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->createTextLayout(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V

    return-void
.end method
