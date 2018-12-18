.class public Lcom/vanniktech/emoji/EmojiButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "EmojiButton.java"


# instance fields
.field private emojiSize:F


# virtual methods
.method public final setEmojiSize(I)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/vanniktech/emoji/EmojiButton;->setEmojiSize(IZ)V

    return-void
.end method

.method public final setEmojiSize(IZ)V
    .locals 0

    int-to-float p1, p1

    .line 59
    iput p1, p0, Lcom/vanniktech/emoji/EmojiButton;->emojiSize:F

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setEmojiSizeRes(I)V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/vanniktech/emoji/EmojiButton;->setEmojiSizeRes(IZ)V

    return-void
.end method

.method public final setEmojiSizeRes(IZ)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/vanniktech/emoji/EmojiButton;->setEmojiSize(IZ)V

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
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/vanniktech/emoji/EmojiButton;->emojiSize:F

    invoke-static {p1, v0, v1}, Lcom/vanniktech/emoji/EmojiManager;->replaceWithImages(Landroid/content/Context;Landroid/text/Spannable;F)V

    .line 49
    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
