.class public abstract Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;
.super Ljava/lang/Object;
.source "PromptFocal.java"

# interfaces
.implements Luk/co/samuelwall/materialtaptargetprompt/extras/PromptUIElement;


# instance fields
.field protected mBaseRippleAlpha:I

.field protected mDrawRipple:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAngleEdgePoint(FF)Landroid/graphics/PointF;
    .locals 6

    .line 86
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    float-to-double v1, p1

    .line 87
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float p1, v1

    float-to-double v1, p1

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p1, v3

    .line 89
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 90
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, p2

    const/4 v3, -0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    :goto_0
    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 91
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v1, p2

    cmpl-float p1, p1, v5

    if-lez p1, :cond_1

    const/4 v3, 0x2

    :cond_1
    int-to-float p1, v3

    div-float/2addr v1, p1

    .line 99
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    add-float/2addr p2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    add-float/2addr v0, v1

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public abstract getBounds()Landroid/graphics/RectF;
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V
.end method

.method public abstract prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;Landroid/view/View;[I)V
.end method

.method public abstract setColour(I)V
.end method

.method public setDrawRipple(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->mDrawRipple:Z

    return-void
.end method

.method public setRippleAlpha(I)V
    .locals 0

    .line 60
    iput p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->mBaseRippleAlpha:I

    return-void
.end method

.method public abstract updateRipple(FF)V
.end method
