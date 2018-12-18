.class public final Lcom/vanniktech/emoji/EmojiImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "EmojiImageView.java"


# instance fields
.field clickListener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

.field currentEmoji:Lcom/vanniktech/emoji/emoji/Emoji;

.field private hasVariants:Z

.field private imageLoadingTask:Lcom/vanniktech/emoji/ImageLoadingTask;

.field longClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;

.field private final variantIndicatorBottomLeft:Landroid/graphics/Point;

.field private final variantIndicatorBottomRight:Landroid/graphics/Point;

.field private final variantIndicatorPaint:Landroid/graphics/Paint;

.field private final variantIndicatorPath:Landroid/graphics/Path;

.field private final variantIndicatorTop:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPaint:Landroid/graphics/Paint;

    .line 31
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPath:Landroid/graphics/Path;

    .line 33
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorTop:Landroid/graphics/Point;

    .line 34
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorBottomRight:Landroid/graphics/Point;

    .line 35
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorBottomLeft:Landroid/graphics/Point;

    .line 44
    iget-object p2, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPaint:Landroid/graphics/Paint;

    sget v0, Lcom/vanniktech/emoji/R$color;->emoji_divider:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 85
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiImageView;->imageLoadingTask:Lcom/vanniktech/emoji/ImageLoadingTask;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiImageView;->imageLoadingTask:Lcom/vanniktech/emoji/ImageLoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vanniktech/emoji/ImageLoadingTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/vanniktech/emoji/EmojiImageView;->imageLoadingTask:Lcom/vanniktech/emoji/ImageLoadingTask;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget-boolean v0, p0, Lcom/vanniktech/emoji/EmojiImageView;->hasVariants:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    .line 52
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiImageView;->getMeasuredWidth()I

    move-result p1

    .line 54
    invoke-virtual {p0, p1, p1}, Lcom/vanniktech/emoji/EmojiImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 60
    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorTop:Landroid/graphics/Point;

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 61
    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorTop:Landroid/graphics/Point;

    div-int/lit8 p4, p2, 0x6

    mul-int/lit8 p4, p4, 0x5

    iput p4, p3, Landroid/graphics/Point;->y:I

    .line 62
    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorBottomRight:Landroid/graphics/Point;

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 63
    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorBottomRight:Landroid/graphics/Point;

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 64
    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorBottomLeft:Landroid/graphics/Point;

    div-int/lit8 p1, p1, 0x6

    mul-int/lit8 p1, p1, 0x5

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 65
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorBottomLeft:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 67
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 68
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorTop:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorTop:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorBottomRight:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorBottomRight:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorBottomLeft:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorBottomLeft:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->variantIndicatorPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method setEmoji(Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiImageView;->currentEmoji:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-virtual {p1, v0}, Lcom/vanniktech/emoji/emoji/Emoji;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcom/vanniktech/emoji/EmojiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->currentEmoji:Lcom/vanniktech/emoji/emoji/Emoji;

    .line 96
    invoke-virtual {p1}, Lcom/vanniktech/emoji/emoji/Emoji;->getBase()Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vanniktech/emoji/emoji/Emoji;->hasVariants()Z

    move-result v1

    iput-boolean v1, p0, Lcom/vanniktech/emoji/EmojiImageView;->hasVariants:Z

    .line 98
    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiImageView;->imageLoadingTask:Lcom/vanniktech/emoji/ImageLoadingTask;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiImageView;->imageLoadingTask:Lcom/vanniktech/emoji/ImageLoadingTask;

    invoke-virtual {v1, v2}, Lcom/vanniktech/emoji/ImageLoadingTask;->cancel(Z)Z

    .line 102
    :cond_0
    new-instance v1, Lcom/vanniktech/emoji/EmojiImageView$1;

    invoke-direct {v1, p0}, Lcom/vanniktech/emoji/EmojiImageView$1;-><init>(Lcom/vanniktech/emoji/EmojiImageView;)V

    invoke-virtual {p0, v1}, Lcom/vanniktech/emoji/EmojiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-boolean v1, p0, Lcom/vanniktech/emoji/EmojiImageView;->hasVariants:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/vanniktech/emoji/EmojiImageView$2;

    invoke-direct {v0, p0}, Lcom/vanniktech/emoji/EmojiImageView$2;-><init>(Lcom/vanniktech/emoji/EmojiImageView;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/vanniktech/emoji/EmojiImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    new-instance v0, Lcom/vanniktech/emoji/ImageLoadingTask;

    invoke-direct {v0, p0}, Lcom/vanniktech/emoji/ImageLoadingTask;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/vanniktech/emoji/EmojiImageView;->imageLoadingTask:Lcom/vanniktech/emoji/ImageLoadingTask;

    .line 121
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiImageView;->imageLoadingTask:Lcom/vanniktech/emoji/ImageLoadingTask;

    new-array v1, v2, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/vanniktech/emoji/emoji/Emoji;->getResource()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/vanniktech/emoji/ImageLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method setOnEmojiClickListener(Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->clickListener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    return-void
.end method

.method setOnEmojiLongClickListener(Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->longClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;

    return-void
.end method

.method updateEmoji(Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiImageView;->currentEmoji:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-virtual {p1, v0}, Lcom/vanniktech/emoji/emoji/Emoji;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView;->currentEmoji:Lcom/vanniktech/emoji/emoji/Emoji;

    .line 136
    invoke-virtual {p1}, Lcom/vanniktech/emoji/emoji/Emoji;->getResource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
