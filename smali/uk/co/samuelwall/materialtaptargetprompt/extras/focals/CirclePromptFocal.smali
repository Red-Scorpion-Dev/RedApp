.class public Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;
.super Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;
.source "CirclePromptFocal.java"


# instance fields
.field mBaseAlpha:I

.field mBaseRadius:F

.field mBounds:Landroid/graphics/RectF;

.field mPaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field mPosition:Landroid/graphics/PointF;

.field mRadius:F

.field mRippleAlpha:I

.field mRippleRadius:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPosition:Landroid/graphics/PointF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private calculateX(FFF)F
    .locals 2

    float-to-double v0, p1

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float p2, p2, p1

    add-float/2addr p3, p2

    return p3
.end method

.method private calculateY(FFF)F
    .locals 2

    float-to-double v0, p1

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float p2, p2, p1

    add-float/2addr p3, p2

    return p3
.end method


# virtual methods
.method public calculateAngleEdgePoint(FF)Landroid/graphics/PointF;
    .locals 2

    .line 91
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, p2

    .line 92
    iget-object p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->calculateX(FFF)F

    move-result p2

    .line 93
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->calculateY(FFF)F

    move-result p1

    .line 94
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public contains(FF)Z
    .locals 2

    .line 196
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPosition:Landroid/graphics/PointF;

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mRadius:F

    invoke-static {p1, p2, v0, v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->isPointInCircle(FFLandroid/graphics/PointF;F)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 174
    iget-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mDrawRipple:Z

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 177
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    :cond_0
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mRippleAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 183
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mRippleRadius:F

    iget-object v5, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 184
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 76
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 83
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V
    .locals 1

    .line 144
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPosition:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 145
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPosition:Landroid/graphics/PointF;

    iput p3, p1, Landroid/graphics/PointF;->y:F

    .line 146
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBounds:Landroid/graphics/RectF;

    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBaseRadius:F

    sub-float v0, p2, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 147
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBounds:Landroid/graphics/RectF;

    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBaseRadius:F

    sub-float v0, p3, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 148
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBounds:Landroid/graphics/RectF;

    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBaseRadius:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 149
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBounds:Landroid/graphics/RectF;

    iget p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBaseRadius:F

    add-float/2addr p3, p2

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;Landroid/view/View;[I)V
    .locals 4

    const/4 v0, 0x2

    .line 134
    new-array v1, v0, [I

    .line 135
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 137
    aget v3, v1, v2

    aget v2, p3, v2

    sub-int/2addr v3, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    add-int/2addr v3, v2

    int-to-float v2, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    aget p3, p3, v3

    sub-int/2addr v1, p3

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v0

    add-int/2addr v1, p2

    int-to-float p2, v1

    .line 137
    invoke-virtual {p0, p1, v2, p2}, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V

    return-void
.end method

.method public setColour(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBaseAlpha:I

    .line 128
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBaseAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setRadius(F)Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;
    .locals 0

    .line 68
    iput p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBaseRadius:F

    return-object p0
.end method

.method public update(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V
    .locals 2

    .line 156
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBaseAlpha:I

    int-to-float v0, v0

    mul-float v0, v0, p3

    float-to-int p3, v0

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    iget p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBaseRadius:F

    mul-float p1, p1, p2

    iput p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mRadius:F

    .line 159
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPath:Landroid/graphics/Path;

    .line 160
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPath:Landroid/graphics/Path;

    iget-object p2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mPosition:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mRadius:F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public updateRipple(FF)V
    .locals 1

    .line 166
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBaseRadius:F

    mul-float v0, v0, p1

    iput v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mRippleRadius:F

    .line 167
    iget p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mBaseRippleAlpha:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/focals/CirclePromptFocal;->mRippleAlpha:I

    return-void
.end method
