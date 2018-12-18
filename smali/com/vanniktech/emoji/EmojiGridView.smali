.class Lcom/vanniktech/emoji/EmojiGridView;
.super Landroid/widget/GridView;
.source "EmojiGridView.java"


# instance fields
.field protected emojiArrayAdapter:Lcom/vanniktech/emoji/EmojiArrayAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiGridView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 19
    sget v0, Lcom/vanniktech/emoji/R$dimen;->emoji_grid_view_column_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 20
    sget v1, Lcom/vanniktech/emoji/R$dimen;->emoji_grid_view_spacing:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 22
    invoke-virtual {p0, v0}, Lcom/vanniktech/emoji/EmojiGridView;->setColumnWidth(I)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiGridView;->setHorizontalSpacing(I)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiGridView;->setVerticalSpacing(I)V

    .line 25
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/vanniktech/emoji/EmojiGridView;->setPadding(IIII)V

    const/4 p1, -0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiGridView;->setNumColumns(I)V

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiGridView;->setClipToPadding(Z)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiGridView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method


# virtual methods
.method public init(Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;Lcom/vanniktech/emoji/emoji/EmojiCategory;Lcom/vanniktech/emoji/VariantEmoji;)Lcom/vanniktech/emoji/EmojiGridView;
    .locals 7

    .line 34
    new-instance v6, Lcom/vanniktech/emoji/EmojiArrayAdapter;

    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p3}, Lcom/vanniktech/emoji/emoji/EmojiCategory;->getEmojis()[Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v2

    move-object v0, v6

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vanniktech/emoji/EmojiArrayAdapter;-><init>(Landroid/content/Context;[Lcom/vanniktech/emoji/emoji/Emoji;Lcom/vanniktech/emoji/VariantEmoji;Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;)V

    iput-object v6, p0, Lcom/vanniktech/emoji/EmojiGridView;->emojiArrayAdapter:Lcom/vanniktech/emoji/EmojiArrayAdapter;

    .line 37
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiGridView;->emojiArrayAdapter:Lcom/vanniktech/emoji/EmojiArrayAdapter;

    invoke-virtual {p0, p1}, Lcom/vanniktech/emoji/EmojiGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p0
.end method
