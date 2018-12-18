.class final Lcom/vanniktech/emoji/EmojiPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmojiPagerAdapter.java"


# instance fields
.field private final listener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

.field private final longListener:Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;

.field private final recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

.field private recentEmojiGridView:Lcom/vanniktech/emoji/RecentEmojiGridView;

.field private final variantManager:Lcom/vanniktech/emoji/VariantEmoji;


# direct methods
.method constructor <init>(Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;Lcom/vanniktech/emoji/RecentEmoji;Lcom/vanniktech/emoji/VariantEmoji;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->listener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    .line 23
    iput-object p2, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->longListener:Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;

    .line 24
    iput-object p3, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

    .line 25
    iput-object p4, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->variantManager:Lcom/vanniktech/emoji/VariantEmoji;

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->recentEmojiGridView:Lcom/vanniktech/emoji/RecentEmojiGridView;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->recentEmojiGridView:Lcom/vanniktech/emoji/RecentEmojiGridView;

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 30
    invoke-static {}, Lcom/vanniktech/emoji/EmojiManager;->getInstance()Lcom/vanniktech/emoji/EmojiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiManager;->getCategories()[Lcom/vanniktech/emoji/emoji/EmojiCategory;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    if-nez p2, :cond_0

    .line 37
    new-instance p2, Lcom/vanniktech/emoji/RecentEmojiGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/vanniktech/emoji/RecentEmojiGridView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->listener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->longListener:Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;

    iget-object v2, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

    invoke-virtual {p2, v0, v1, v2}, Lcom/vanniktech/emoji/RecentEmojiGridView;->init(Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;Lcom/vanniktech/emoji/RecentEmoji;)Lcom/vanniktech/emoji/RecentEmojiGridView;

    move-result-object p2

    .line 38
    move-object v0, p2

    check-cast v0, Lcom/vanniktech/emoji/RecentEmojiGridView;

    iput-object v0, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->recentEmojiGridView:Lcom/vanniktech/emoji/RecentEmojiGridView;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/vanniktech/emoji/EmojiGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vanniktech/emoji/EmojiGridView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->listener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    iget-object v2, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->longListener:Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;

    .line 41
    invoke-static {}, Lcom/vanniktech/emoji/EmojiManager;->getInstance()Lcom/vanniktech/emoji/EmojiManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vanniktech/emoji/EmojiManager;->getCategories()[Lcom/vanniktech/emoji/emoji/EmojiCategory;

    move-result-object v3

    add-int/lit8 p2, p2, -0x1

    aget-object p2, v3, p2

    iget-object v3, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->variantManager:Lcom/vanniktech/emoji/VariantEmoji;

    .line 40
    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/vanniktech/emoji/EmojiGridView;->init(Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;Lcom/vanniktech/emoji/emoji/EmojiCategory;Lcom/vanniktech/emoji/VariantEmoji;)Lcom/vanniktech/emoji/EmojiGridView;

    move-result-object p2

    .line 44
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method invalidateRecentEmojis()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->recentEmojiGridView:Lcom/vanniktech/emoji/RecentEmojiGridView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->recentEmojiGridView:Lcom/vanniktech/emoji/RecentEmojiGridView;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/RecentEmojiGridView;->invalidateEmojis()V

    :cond_0
    return-void
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method numberOfRecentEmojis()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPagerAdapter;->recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

    invoke-interface {v0}, Lcom/vanniktech/emoji/RecentEmoji;->getRecentEmojis()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
