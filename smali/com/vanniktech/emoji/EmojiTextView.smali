.class public Lcom/vanniktech/emoji/EmojiTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "EmojiTextView.java"


# instance fields
.field private emojiSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/vanniktech/emoji/EmojiTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiTextView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 24
    invoke-static {}, Lcom/vanniktech/emoji/EmojiManager;->getInstance()Lcom/vanniktech/emoji/EmojiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vanniktech/emoji/EmojiManager;->verifyInstalled()V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 28
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p1

    if-nez p2, :cond_1

    .line 31
    iput v0, p0, Lcom/vanniktech/emoji/EmojiTextView;->emojiSize:F

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/vanniktech/emoji/R$styleable;->EmojiTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    :try_start_0
    sget p2, Lcom/vanniktech/emoji/R$styleable;->EmojiTextView_emojiSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/vanniktech/emoji/EmojiTextView;->emojiSize:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catchall_0
    move-exception p2

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public final setEmojiSize(I)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/vanniktech/emoji/EmojiTextView;->setEmojiSize(IZ)V

    return-void
.end method

.method public final setEmojiSize(IZ)V
    .locals 0

    int-to-float p1, p1

    .line 59
    iput p1, p0, Lcom/vanniktech/emoji/EmojiTextView;->emojiSize:F

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setEmojiSizeRes(I)V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/vanniktech/emoji/EmojiTextView;->setEmojiSizeRes(IZ)V

    return-void
.end method

.method public final setEmojiSizeRes(IZ)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/vanniktech/emoji/EmojiTextView;->setEmojiSize(IZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 47
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/vanniktech/emoji/EmojiTextView;->emojiSize:F

    invoke-static {p1, v0, v1}, Lcom/vanniktech/emoji/EmojiManager;->replaceWithImages(Landroid/content/Context;Landroid/text/Spannable;F)V

    .line 49
    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
