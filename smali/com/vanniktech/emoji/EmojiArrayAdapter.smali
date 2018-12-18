.class final Lcom/vanniktech/emoji/EmojiArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EmojiArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/vanniktech/emoji/emoji/Emoji;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

.field private final longListener:Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;

.field private final variantManager:Lcom/vanniktech/emoji/VariantEmoji;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lcom/vanniktech/emoji/emoji/Emoji;Lcom/vanniktech/emoji/VariantEmoji;Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;)V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    iput-object p3, p0, Lcom/vanniktech/emoji/EmojiArrayAdapter;->variantManager:Lcom/vanniktech/emoji/VariantEmoji;

    .line 30
    iput-object p4, p0, Lcom/vanniktech/emoji/EmojiArrayAdapter;->listener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    .line 31
    iput-object p5, p0, Lcom/vanniktech/emoji/EmojiArrayAdapter;->longListener:Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 35
    check-cast p2, Lcom/vanniktech/emoji/EmojiImageView;

    .line 37
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    .line 40
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/vanniktech/emoji/R$layout;->emoji_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/vanniktech/emoji/EmojiImageView;

    .line 42
    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiArrayAdapter;->listener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    invoke-virtual {p2, p3}, Lcom/vanniktech/emoji/EmojiImageView;->setOnEmojiClickListener(Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;)V

    .line 43
    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiArrayAdapter;->longListener:Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;

    invoke-virtual {p2, p3}, Lcom/vanniktech/emoji/EmojiImageView;->setOnEmojiLongClickListener(Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;)V

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "emoji == null"

    invoke-static {p1, p3}, Lcom/vanniktech/emoji/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vanniktech/emoji/emoji/Emoji;

    .line 47
    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiArrayAdapter;->variantManager:Lcom/vanniktech/emoji/VariantEmoji;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiArrayAdapter;->variantManager:Lcom/vanniktech/emoji/VariantEmoji;

    invoke-interface {p3, p1}, Lcom/vanniktech/emoji/VariantEmoji;->getVariant(Lcom/vanniktech/emoji/emoji/Emoji;)Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object p1

    .line 48
    :goto_0
    invoke-virtual {p2, p1}, Lcom/vanniktech/emoji/EmojiImageView;->setEmoji(Lcom/vanniktech/emoji/emoji/Emoji;)V

    return-object p2
.end method

.method updateEmojis(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/vanniktech/emoji/emoji/Emoji;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiArrayAdapter;->clear()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 56
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
