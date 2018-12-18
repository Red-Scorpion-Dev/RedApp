.class final Lcom/vanniktech/emoji/RecentEmojiGridView;
.super Lcom/vanniktech/emoji/EmojiGridView;
.source "RecentEmojiGridView.java"


# instance fields
.field private recentEmojis:Lcom/vanniktech/emoji/RecentEmoji;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/vanniktech/emoji/EmojiGridView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;Lcom/vanniktech/emoji/RecentEmoji;)Lcom/vanniktech/emoji/RecentEmojiGridView;
    .locals 7

    .line 21
    iput-object p3, p0, Lcom/vanniktech/emoji/RecentEmojiGridView;->recentEmojis:Lcom/vanniktech/emoji/RecentEmoji;

    .line 23
    iget-object p3, p0, Lcom/vanniktech/emoji/RecentEmojiGridView;->recentEmojis:Lcom/vanniktech/emoji/RecentEmoji;

    invoke-interface {p3}, Lcom/vanniktech/emoji/RecentEmoji;->getRecentEmojis()Ljava/util/Collection;

    move-result-object p3

    .line 24
    new-instance v6, Lcom/vanniktech/emoji/EmojiArrayAdapter;

    invoke-virtual {p0}, Lcom/vanniktech/emoji/RecentEmojiGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, [Lcom/vanniktech/emoji/emoji/Emoji;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vanniktech/emoji/EmojiArrayAdapter;-><init>(Landroid/content/Context;[Lcom/vanniktech/emoji/emoji/Emoji;Lcom/vanniktech/emoji/VariantEmoji;Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;)V

    iput-object v6, p0, Lcom/vanniktech/emoji/RecentEmojiGridView;->emojiArrayAdapter:Lcom/vanniktech/emoji/EmojiArrayAdapter;

    .line 27
    iget-object p1, p0, Lcom/vanniktech/emoji/RecentEmojiGridView;->emojiArrayAdapter:Lcom/vanniktech/emoji/EmojiArrayAdapter;

    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/RecentEmojiGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p0
.end method

.method public invalidateEmojis()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/vanniktech/emoji/RecentEmojiGridView;->emojiArrayAdapter:Lcom/vanniktech/emoji/EmojiArrayAdapter;

    iget-object v1, p0, Lcom/vanniktech/emoji/RecentEmojiGridView;->recentEmojis:Lcom/vanniktech/emoji/RecentEmoji;

    invoke-interface {v1}, Lcom/vanniktech/emoji/RecentEmoji;->getRecentEmojis()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vanniktech/emoji/EmojiArrayAdapter;->updateEmojis(Ljava/util/Collection;)V

    return-void
.end method
