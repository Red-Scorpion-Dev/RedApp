.class Lcom/vanniktech/emoji/EmojiView$EmojiTabsClickListener;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vanniktech/emoji/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmojiTabsClickListener"
.end annotation


# instance fields
.field private final emojisPager:Landroid/support/v4/view/ViewPager;

.field private final position:I


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiView$EmojiTabsClickListener;->emojisPager:Landroid/support/v4/view/ViewPager;

    .line 139
    iput p2, p0, Lcom/vanniktech/emoji/EmojiView$EmojiTabsClickListener;->position:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiView$EmojiTabsClickListener;->emojisPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/vanniktech/emoji/EmojiView$EmojiTabsClickListener;->position:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
