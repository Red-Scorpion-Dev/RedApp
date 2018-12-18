.class public final Lcom/vanniktech/emoji/EmojiRange;
.super Ljava/lang/Object;
.source "EmojiRange.java"


# instance fields
.field public final emoji:Lcom/vanniktech/emoji/emoji/Emoji;

.field public final end:I

.field public final start:I


# direct methods
.method constructor <init>(IILcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/vanniktech/emoji/EmojiRange;->start:I

    .line 13
    iput p2, p0, Lcom/vanniktech/emoji/EmojiRange;->end:I

    .line 14
    iput-object p3, p0, Lcom/vanniktech/emoji/EmojiRange;->emoji:Lcom/vanniktech/emoji/emoji/Emoji;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    check-cast p1, Lcom/vanniktech/emoji/EmojiRange;

    .line 28
    iget v2, p0, Lcom/vanniktech/emoji/EmojiRange;->start:I

    iget v3, p1, Lcom/vanniktech/emoji/EmojiRange;->start:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/vanniktech/emoji/EmojiRange;->end:I

    iget v3, p1, Lcom/vanniktech/emoji/EmojiRange;->end:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/vanniktech/emoji/EmojiRange;->emoji:Lcom/vanniktech/emoji/emoji/Emoji;

    iget-object p1, p1, Lcom/vanniktech/emoji/EmojiRange;->emoji:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-virtual {v2, p1}, Lcom/vanniktech/emoji/emoji/Emoji;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 32
    iget v0, p0, Lcom/vanniktech/emoji/EmojiRange;->start:I

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget v1, p0, Lcom/vanniktech/emoji/EmojiRange;->end:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiRange;->emoji:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-virtual {v1}, Lcom/vanniktech/emoji/emoji/Emoji;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
