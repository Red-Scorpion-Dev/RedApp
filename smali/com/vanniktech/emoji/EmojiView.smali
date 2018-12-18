.class final Lcom/vanniktech/emoji/EmojiView;
.super Landroid/widget/LinearLayout;
.source "EmojiView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vanniktech/emoji/EmojiView$EmojiTabsClickListener;
    }
.end annotation


# static fields
.field private static final INITIAL_INTERVAL:J


# instance fields
.field private final emojiPagerAdapter:Lcom/vanniktech/emoji/EmojiPagerAdapter;

.field private emojiTabLastSelectedIndex:I

.field private final emojiTabs:[Landroid/widget/ImageButton;

.field onEmojiBackspaceClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;

.field private final themeAccentColor:I

.field private final themeIconColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/vanniktech/emoji/EmojiView;->INITIAL_INTERVAL:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;Lcom/vanniktech/emoji/RecentEmoji;Lcom/vanniktech/emoji/VariantEmoji;)V
    .locals 8

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabLastSelectedIndex:I

    .line 45
    sget v0, Lcom/vanniktech/emoji/R$layout;->emoji_view:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/vanniktech/emoji/EmojiView;->setOrientation(I)V

    .line 48
    sget v1, Lcom/vanniktech/emoji/R$color;->emoji_background:I

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vanniktech/emoji/EmojiView;->setBackgroundColor(I)V

    .line 50
    sget v1, Lcom/vanniktech/emoji/R$color;->emoji_icons:I

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/vanniktech/emoji/EmojiView;->themeIconColor:I

    .line 51
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/vanniktech/emoji/R$attr;->colorAccent:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 53
    iget v1, v1, Landroid/util/TypedValue;->data:I

    iput v1, p0, Lcom/vanniktech/emoji/EmojiView;->themeAccentColor:I

    .line 55
    sget v1, Lcom/vanniktech/emoji/R$id;->emojis_pager:I

    invoke-virtual {p0, v1}, Lcom/vanniktech/emoji/EmojiView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 56
    sget v2, Lcom/vanniktech/emoji/R$id;->emojis_tab:I

    invoke-virtual {p0, v2}, Lcom/vanniktech/emoji/EmojiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 57
    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 59
    invoke-static {}, Lcom/vanniktech/emoji/EmojiManager;->getInstance()Lcom/vanniktech/emoji/EmojiManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vanniktech/emoji/EmojiManager;->getCategories()[Lcom/vanniktech/emoji/emoji/EmojiCategory;

    move-result-object v3

    .line 61
    array-length v4, v3

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    .line 62
    iget-object v4, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    sget v5, Lcom/vanniktech/emoji/R$drawable;->emoji_recent:I

    invoke-direct {p0, p1, v5, v2}, Lcom/vanniktech/emoji/EmojiView;->inflateButton(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/widget/ImageButton;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v4, 0x0

    .line 63
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 64
    iget-object v5, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    add-int/lit8 v7, v4, 0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Lcom/vanniktech/emoji/emoji/EmojiCategory;->getIcon()I

    move-result v4

    invoke-direct {p0, p1, v4, v2}, Lcom/vanniktech/emoji/EmojiView;->inflateButton(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/widget/ImageButton;

    move-result-object v4

    aput-object v4, v5, v7

    move v4, v7

    goto :goto_0

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    array-length v4, v4

    sub-int/2addr v4, v0

    sget v5, Lcom/vanniktech/emoji/R$drawable;->emoji_backspace:I

    invoke-direct {p0, p1, v5, v2}, Lcom/vanniktech/emoji/EmojiView;->inflateButton(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/widget/ImageButton;

    move-result-object p1

    aput-object p1, v3, v4

    .line 68
    invoke-direct {p0, v1}, Lcom/vanniktech/emoji/EmojiView;->handleOnClicks(Landroid/support/v4/view/ViewPager;)V

    .line 70
    new-instance p1, Lcom/vanniktech/emoji/EmojiPagerAdapter;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/vanniktech/emoji/EmojiPagerAdapter;-><init>(Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;Lcom/vanniktech/emoji/RecentEmoji;Lcom/vanniktech/emoji/VariantEmoji;)V

    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiView;->emojiPagerAdapter:Lcom/vanniktech/emoji/EmojiPagerAdapter;

    .line 71
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiView;->emojiPagerAdapter:Lcom/vanniktech/emoji/EmojiPagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiView;->emojiPagerAdapter:Lcom/vanniktech/emoji/EmojiPagerAdapter;

    invoke-virtual {p1}, Lcom/vanniktech/emoji/EmojiPagerAdapter;->numberOfRecentEmojis()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x0

    .line 74
    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/vanniktech/emoji/EmojiView;->onPageSelected(I)V

    return-void
.end method

.method private handleOnClicks(Landroid/support/v4/view/ViewPager;)V
    .locals 7

    const/4 v0, 0x0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    new-instance v2, Lcom/vanniktech/emoji/EmojiView$EmojiTabsClickListener;

    invoke-direct {v2, p1, v0}, Lcom/vanniktech/emoji/EmojiView$EmojiTabsClickListener;-><init>(Landroid/support/v4/view/ViewPager;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    new-instance v6, Lcom/vanniktech/emoji/listeners/RepeatListener;

    sget-wide v1, Lcom/vanniktech/emoji/EmojiView;->INITIAL_INTERVAL:J

    const-wide/16 v3, 0x32

    new-instance v5, Lcom/vanniktech/emoji/EmojiView$1;

    invoke-direct {v5, p0}, Lcom/vanniktech/emoji/EmojiView$1;-><init>(Lcom/vanniktech/emoji/EmojiView;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/vanniktech/emoji/listeners/RepeatListener;-><init>(JJLandroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private inflateButton(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/widget/ImageButton;
    .locals 3

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/vanniktech/emoji/R$layout;->emoji_category:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 99
    invoke-static {p1, p2}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget p1, p0, Lcom/vanniktech/emoji/EmojiView;->themeIconColor:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 102
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 108
    iget v0, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabLastSelectedIndex:I

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiView;->emojiPagerAdapter:Lcom/vanniktech/emoji/EmojiPagerAdapter;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiPagerAdapter;->invalidateRecentEmojis()V

    .line 113
    :cond_0
    iget v0, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabLastSelectedIndex:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabLastSelectedIndex:I

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    iget v1, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabLastSelectedIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 115
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    iget v1, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabLastSelectedIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/vanniktech/emoji/EmojiView;->themeIconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 119
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabs:[Landroid/widget/ImageButton;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/vanniktech/emoji/EmojiView;->themeAccentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 121
    iput p1, p0, Lcom/vanniktech/emoji/EmojiView;->emojiTabLastSelectedIndex:I

    :cond_2
    return-void
.end method

.method public setOnEmojiBackspaceClickListener(Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiView;->onEmojiBackspaceClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;

    return-void
.end method
