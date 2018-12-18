.class public Lcom/vanniktech/emoji/EmojiEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "EmojiEditText.java"


# instance fields
.field private emojiSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/vanniktech/emoji/EmojiEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiEditText;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 25
    invoke-static {}, Lcom/vanniktech/emoji/EmojiManager;->getInstance()Lcom/vanniktech/emoji/EmojiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vanniktech/emoji/EmojiManager;->verifyInstalled()V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 29
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p1

    if-nez p2, :cond_1

    .line 32
    iput v0, p0, Lcom/vanniktech/emoji/EmojiEditText;->emojiSize:F

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/vanniktech/emoji/R$styleable;->EmojiEditText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 37
    :try_start_0
    sget p2, Lcom/vanniktech/emoji/R$styleable;->EmojiEditText_emojiSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/vanniktech/emoji/EmojiEditText;->emojiSize:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiEditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catchall_0
    move-exception p2

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public backspace()V
    .locals 13

    .line 51
    new-instance v12, Landroid/view/KeyEvent;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x43

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 52
    invoke-virtual {p0, v12}, Lcom/vanniktech/emoji/EmojiEditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public input(Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiEditText;->getSelectionStart()I

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiEditText;->getSelectionEnd()I

    move-result v1

    if-gez v0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/vanniktech/emoji/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiEditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1}, Lcom/vanniktech/emoji/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/vanniktech/emoji/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move-object v0, v2

    move v1, v3

    move v2, v4

    move-object v3, v5

    move v4, v6

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    iget p3, p0, Lcom/vanniktech/emoji/EmojiEditText;->emojiSize:F

    invoke-static {p1, p2, p3}, Lcom/vanniktech/emoji/EmojiManager;->replaceWithImages(Landroid/content/Context;Landroid/text/Spannable;F)V

    return-void
.end method

.method public final setEmojiSize(I)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/vanniktech/emoji/EmojiEditText;->setEmojiSize(IZ)V

    return-void
.end method

.method public final setEmojiSize(IZ)V
    .locals 0

    int-to-float p1, p1

    .line 75
    iput p1, p0, Lcom/vanniktech/emoji/EmojiEditText;->emojiSize:F

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setEmojiSizeRes(I)V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/vanniktech/emoji/EmojiEditText;->setEmojiSizeRes(IZ)V

    return-void
.end method

.method public final setEmojiSizeRes(IZ)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/vanniktech/emoji/EmojiEditText;->setEmojiSize(IZ)V

    return-void
.end method
