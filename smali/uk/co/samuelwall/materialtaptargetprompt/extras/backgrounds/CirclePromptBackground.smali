.class public Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;
.super Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;
.source "CirclePromptBackground.java"


# instance fields
.field mBaseColourAlpha:I

.field mBasePosition:Landroid/graphics/PointF;

.field mBaseRadius:F

.field mPaint:Landroid/graphics/Paint;

.field mPosition:Landroid/graphics/PointF;

.field mRadius:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;-><init>()V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPosition:Landroid/graphics/PointF;

    .line 82
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBasePosition:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 2

    .line 236
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPosition:Landroid/graphics/PointF;

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mRadius:F

    invoke-static {p1, p2, v0, v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUtils;->isPointInCircle(FFLandroid/graphics/PointF;F)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 220
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mRadius:F

    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;ZLandroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v0, p0

    .line 100
    invoke-virtual/range {p1 .. p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptText()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;

    move-result-object v1

    .line 101
    invoke-virtual/range {p1 .. p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v2

    invoke-virtual {v2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 103
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .line 104
    invoke-virtual/range {p1 .. p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getFocalPadding()F

    move-result v5

    .line 105
    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 106
    invoke-virtual/range {p1 .. p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTextPadding()F

    move-result v6

    .line 107
    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v8, p3

    invoke-direct {v7, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 109
    invoke-virtual/range {p1 .. p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getResourceFinder()Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;

    move-result-object v8

    invoke-interface {v8}, Luk/co/samuelwall/materialtaptargetprompt/ResourceFinder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x42b00000    # 88.0f

    mul-float v8, v8, v9

    .line 110
    invoke-virtual {v7, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 113
    iget v8, v7, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x40000000    # 2.0f

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_0

    iget v8, v7, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v3, v8

    if-ltz v8, :cond_1

    :cond_0
    iget v8, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v4, v8

    if-lez v8, :cond_5

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    cmpg-float v7, v4, v7

    if-gez v7, :cond_5

    .line 125
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 127
    iget v7, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v7

    div-float v7, v4, v9

    add-float/2addr v3, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float v4, v7, v4

    mul-float v4, v4, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float/2addr v4, v7

    mul-float v4, v4, v3

    .line 135
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x43340000    # 180.0f

    cmpg-float v3, v3, v7

    if-gez v3, :cond_2

    sub-float/2addr v8, v4

    goto :goto_0

    :cond_2
    add-float/2addr v8, v4

    .line 143
    :goto_0
    invoke-virtual/range {p1 .. p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v3

    invoke-virtual {v3, v8, v5}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->calculateAngleEdgePoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    .line 145
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 146
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 149
    iget v7, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v6

    .line 152
    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 154
    iget v8, v1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 158
    :cond_3
    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    .line 164
    :goto_1
    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v6

    .line 167
    iget v6, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_4

    .line 169
    iget v1, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v5

    :cond_4
    float-to-double v5, v7

    .line 173
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    float-to-double v12, v8

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v5, v14

    float-to-double v14, v4

    .line 174
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    move/from16 v16, v8

    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v14, v8

    sub-double/2addr v14, v5

    div-double/2addr v14, v10

    float-to-double v8, v1

    .line 175
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v5, v8

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v5, v8

    div-double/2addr v5, v10

    sub-float/2addr v4, v7

    sub-float v8, v16, v16

    mul-float v2, v4, v8

    sub-float v1, v7, v1

    sub-float v3, v3, v16

    mul-float v9, v1, v3

    sub-float/2addr v2, v9

    float-to-double v12, v2

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 177
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v17, v17, v12

    .line 178
    iget-object v2, v0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBasePosition:Landroid/graphics/PointF;

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v14

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v5

    sub-double/2addr v8, v12

    mul-double v8, v8, v17

    double-to-float v3, v8

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v8

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v8

    sub-double/2addr v5, v14

    mul-double v5, v5, v17

    double-to-float v1, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 180
    iget-object v1, v0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBasePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    float-to-double v1, v7

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-object v3, v0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBasePosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v8, v16, v3

    float-to-double v3, v8

    .line 181
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 180
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBaseRadius:F

    goto :goto_2

    .line 188
    :cond_5
    iget-object v7, v0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBasePosition:Landroid/graphics/PointF;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 190
    iget v4, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v3

    .line 191
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v3

    .line 192
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 190
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v6

    .line 195
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v9

    add-float/2addr v2, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v2, v1

    float-to-double v3, v3

    .line 197
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v1, v2

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBaseRadius:F

    .line 201
    :goto_2
    iget-object v1, v0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPosition:Landroid/graphics/PointF;

    iget-object v2, v0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBasePosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setColour(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBaseColourAlpha:I

    .line 92
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBaseColourAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public update(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V
    .locals 3

    .line 207
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object p1

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->getBounds()Landroid/graphics/RectF;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 209
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    .line 210
    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBaseRadius:F

    mul-float v1, v1, p2

    iput v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mRadius:F

    .line 211
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBaseColourAlpha:I

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int p3, v2

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 213
    iget-object p3, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mPosition:Landroid/graphics/PointF;

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBasePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/backgrounds/CirclePromptBackground;->mBasePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    invoke-virtual {p3, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
