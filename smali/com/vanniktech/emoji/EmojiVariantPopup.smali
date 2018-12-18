.class final Lcom/vanniktech/emoji/EmojiVariantPopup;
.super Ljava/lang/Object;
.source "EmojiVariantPopup.java"


# instance fields
.field final listener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

.field private popupWindow:Landroid/widget/PopupWindow;

.field rootImageView:Lcom/vanniktech/emoji/EmojiImageView;

.field private final rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->rootView:Landroid/view/View;

    .line 34
    iput-object p2, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->listener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    return-void
.end method

.method private initView(Landroid/content/Context;Lcom/vanniktech/emoji/emoji/Emoji;I)Landroid/view/View;
    .locals 8

    .line 73
    sget v0, Lcom/vanniktech/emoji/R$layout;->emoji_skin_popup:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    sget v1, Lcom/vanniktech/emoji/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 76
    invoke-virtual {p2}, Lcom/vanniktech/emoji/emoji/Emoji;->getBase()Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vanniktech/emoji/emoji/Emoji;->getVariants()Ljava/util/List;

    move-result-object v2

    .line 77
    invoke-virtual {p2}, Lcom/vanniktech/emoji/emoji/Emoji;->getBase()Lcom/vanniktech/emoji/emoji/Emoji;

    move-result-object p2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 81
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vanniktech/emoji/emoji/Emoji;

    .line 82
    sget v5, Lcom/vanniktech/emoji/R$layout;->emoji_item:I

    invoke-virtual {p2, v5, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 83
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v7, 0x40000000    # 2.0f

    .line 84
    invoke-static {p1, v7}, Lcom/vanniktech/emoji/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v7

    .line 87
    iput p3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 88
    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 89
    invoke-virtual {v4}, Lcom/vanniktech/emoji/emoji/Emoji;->getResource()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    new-instance v6, Lcom/vanniktech/emoji/EmojiVariantPopup$1;

    invoke-direct {v6, p0, v4}, Lcom/vanniktech/emoji/EmojiVariantPopup$1;-><init>(Lcom/vanniktech/emoji/EmojiVariantPopup;Lcom/vanniktech/emoji/emoji/Emoji;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method dismiss()V
    .locals 2

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->rootImageView:Lcom/vanniktech/emoji/EmojiImageView;

    .line 66
    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 68
    iput-object v0, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->popupWindow:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method show(Lcom/vanniktech/emoji/EmojiImageView;Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 7

    .line 38
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiVariantPopup;->dismiss()V

    .line 40
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->rootImageView:Lcom/vanniktech/emoji/EmojiImageView;

    .line 42
    invoke-virtual {p1}, Lcom/vanniktech/emoji/EmojiImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vanniktech/emoji/EmojiImageView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lcom/vanniktech/emoji/EmojiVariantPopup;->initView(Landroid/content/Context;Lcom/vanniktech/emoji/emoji/Emoji;I)Landroid/view/View;

    move-result-object p2

    .line 44
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {v0, p2, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->popupWindow:Landroid/widget/PopupWindow;

    .line 45
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 46
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 47
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 48
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/vanniktech/emoji/EmojiImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 50
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 52
    invoke-static {p1}, Lcom/vanniktech/emoji/Utils;->locationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v3

    .line 53
    new-instance v4, Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v2

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Lcom/vanniktech/emoji/EmojiImageView;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    add-int/2addr v5, p1

    iget p1, v3, Landroid/graphics/Point;->y:I

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-direct {v4, v5, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 58
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->popupWindow:Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->rootView:Landroid/view/View;

    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v3, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 59
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->rootImageView:Lcom/vanniktech/emoji/EmojiImageView;

    invoke-virtual {p1}, Lcom/vanniktech/emoji/EmojiImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 60
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-static {p1, v4}, Lcom/vanniktech/emoji/Utils;->fixPopupLocation(Landroid/widget/PopupWindow;Landroid/graphics/Point;)V

    return-void
.end method
