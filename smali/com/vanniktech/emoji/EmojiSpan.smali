.class final Lcom/vanniktech/emoji/EmojiSpan;
.super Landroid/text/style/ImageSpan;
.source "EmojiSpan.java"


# instance fields
.field private final size:F


# direct methods
.method constructor <init>(Landroid/content/Context;IF)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 15
    iput p3, p0, Lcom/vanniktech/emoji/EmojiSpan;->size:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 46
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p3

    .line 47
    iget p4, p3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p6, p3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p4, p6

    int-to-float p6, p7

    .line 48
    iget p3, p3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr p6, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p4, p3

    sub-float/2addr p6, p4

    .line 49
    iget p4, p0, Lcom/vanniktech/emoji/EmojiSpan;->size:F

    div-float/2addr p4, p3

    sub-float/2addr p6, p4

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    invoke-virtual {p1, p5, p6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 19
    invoke-super {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 21
    iget v1, p0, Lcom/vanniktech/emoji/EmojiSpan;->size:F

    float-to-int v1, v1

    iget v2, p0, Lcom/vanniktech/emoji/EmojiSpan;->size:F

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    if-eqz p5, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 30
    iget p2, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p3, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p2, p3

    .line 31
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    .line 33
    iget p2, p0, Lcom/vanniktech/emoji/EmojiSpan;->size:F

    div-float/2addr p2, p3

    sub-float p2, p1, p2

    float-to-int p2, p2

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 34
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 35
    iget p2, p0, Lcom/vanniktech/emoji/EmojiSpan;->size:F

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 36
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 39
    :cond_0
    iget p1, p0, Lcom/vanniktech/emoji/EmojiSpan;->size:F

    float-to-int p1, p1

    return p1
.end method
