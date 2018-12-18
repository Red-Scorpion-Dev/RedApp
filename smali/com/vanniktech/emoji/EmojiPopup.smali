.class public final Lcom/vanniktech/emoji/EmojiPopup;
.super Ljava/lang/Object;
.source "EmojiPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vanniktech/emoji/EmojiPopup$Builder;
    }
.end annotation


# instance fields
.field final context:Landroid/app/Activity;

.field final emojiEditText:Lcom/vanniktech/emoji/EmojiEditText;

.field isKeyboardOpen:Z

.field isPendingOpen:Z

.field onEmojiBackspaceClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;

.field onEmojiClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

.field onEmojiPopupDismissListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupDismissListener;

.field onEmojiPopupShownListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupShownListener;

.field final onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field onSoftKeyboardCloseListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardCloseListener;

.field onSoftKeyboardOpenListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardOpenListener;

.field final popupWindow:Landroid/widget/PopupWindow;

.field final recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

.field final rootView:Landroid/view/View;

.field final variantEmoji:Lcom/vanniktech/emoji/VariantEmoji;

.field final variantPopup:Lcom/vanniktech/emoji/EmojiVariantPopup;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/vanniktech/emoji/EmojiEditText;Lcom/vanniktech/emoji/RecentEmoji;Lcom/vanniktech/emoji/VariantEmoji;)V
    .locals 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/vanniktech/emoji/EmojiPopup$1;

    invoke-direct {v0, p0}, Lcom/vanniktech/emoji/EmojiPopup$1;-><init>(Lcom/vanniktech/emoji/EmojiPopup;)V

    iput-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vanniktech/emoji/Utils;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup;->rootView:Landroid/view/View;

    .line 90
    iput-object p2, p0, Lcom/vanniktech/emoji/EmojiPopup;->emojiEditText:Lcom/vanniktech/emoji/EmojiEditText;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance p3, Lcom/vanniktech/emoji/RecentEmojiManager;

    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    invoke-direct {p3, p1}, Lcom/vanniktech/emoji/RecentEmojiManager;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p3, p0, Lcom/vanniktech/emoji/EmojiPopup;->recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

    if-eqz p4, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    new-instance p4, Lcom/vanniktech/emoji/VariantEmojiManager;

    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    invoke-direct {p4, p1}, Lcom/vanniktech/emoji/VariantEmojiManager;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object p4, p0, Lcom/vanniktech/emoji/EmojiPopup;->variantEmoji:Lcom/vanniktech/emoji/VariantEmoji;

    .line 94
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    invoke-direct {p1, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    .line 96
    new-instance v3, Lcom/vanniktech/emoji/EmojiPopup$2;

    invoke-direct {v3, p0}, Lcom/vanniktech/emoji/EmojiPopup$2;-><init>(Lcom/vanniktech/emoji/EmojiPopup;)V

    .line 102
    new-instance v2, Lcom/vanniktech/emoji/EmojiPopup$3;

    invoke-direct {v2, p0, p2}, Lcom/vanniktech/emoji/EmojiPopup$3;-><init>(Lcom/vanniktech/emoji/EmojiPopup;Lcom/vanniktech/emoji/EmojiEditText;)V

    .line 118
    new-instance p1, Lcom/vanniktech/emoji/EmojiVariantPopup;

    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiPopup;->rootView:Landroid/view/View;

    invoke-direct {p1, p3, v2}, Lcom/vanniktech/emoji/EmojiVariantPopup;-><init>(Landroid/view/View;Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;)V

    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup;->variantPopup:Lcom/vanniktech/emoji/EmojiVariantPopup;

    .line 120
    new-instance p1, Lcom/vanniktech/emoji/EmojiView;

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    iget-object v4, p0, Lcom/vanniktech/emoji/EmojiPopup;->recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

    iget-object v5, p0, Lcom/vanniktech/emoji/EmojiPopup;->variantEmoji:Lcom/vanniktech/emoji/VariantEmoji;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/vanniktech/emoji/EmojiView;-><init>(Landroid/content/Context;Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;Lcom/vanniktech/emoji/RecentEmoji;Lcom/vanniktech/emoji/VariantEmoji;)V

    .line 121
    new-instance p3, Lcom/vanniktech/emoji/EmojiPopup$4;

    invoke-direct {p3, p0, p2}, Lcom/vanniktech/emoji/EmojiPopup$4;-><init>(Lcom/vanniktech/emoji/EmojiPopup;Lcom/vanniktech/emoji/EmojiEditText;)V

    invoke-virtual {p1, p3}, Lcom/vanniktech/emoji/EmojiView;->setOnEmojiBackspaceClickListener(Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;)V

    .line 131
    iget-object p2, p0, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 132
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 133
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p3, p0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/4 p4, 0x0

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-direct {p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    new-instance p2, Lcom/vanniktech/emoji/EmojiPopup$5;

    invoke-direct {p2, p0}, Lcom/vanniktech/emoji/EmojiPopup$5;-><init>(Lcom/vanniktech/emoji/EmojiPopup;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private showAtBottomPending()V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->isKeyboardOpen:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiPopup;->showAtBottom()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->isPendingOpen:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 176
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->variantPopup:Lcom/vanniktech/emoji/EmojiVariantPopup;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiVariantPopup;->dismiss()V

    .line 177
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

    invoke-interface {v0}, Lcom/vanniktech/emoji/RecentEmoji;->persist()V

    .line 178
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->variantEmoji:Lcom/vanniktech/emoji/VariantEmoji;

    invoke-interface {v0}, Lcom/vanniktech/emoji/VariantEmoji;->persist()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method showAtBottom()V
    .locals 6

    .line 182
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    invoke-static {v1}, Lcom/vanniktech/emoji/Utils;->screenHeight(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 184
    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/vanniktech/emoji/EmojiPopup;->rootView:Landroid/view/View;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 185
    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-static {v1, v0}, Lcom/vanniktech/emoji/Utils;->fixPopupLocation(Landroid/widget/PopupWindow;Landroid/graphics/Point;)V

    .line 187
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiPopupShownListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupShownListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiPopupShownListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupShownListener;

    invoke-interface {v0}, Lcom/vanniktech/emoji/listeners/OnEmojiPopupShownListener;->onEmojiPopupShown()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiPopup;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/vanniktech/emoji/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 147
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiPopup;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    iget-boolean v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->isKeyboardOpen:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiPopup;->showAtBottom()V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->emojiEditText:Lcom/vanniktech/emoji/EmojiEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vanniktech/emoji/EmojiEditText;->setFocusableInTouchMode(Z)V

    .line 155
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->emojiEditText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiEditText;->requestFocus()Z

    .line 157
    invoke-direct {p0}, Lcom/vanniktech/emoji/EmojiPopup;->showAtBottomPending()V

    .line 159
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 160
    iget-object v2, p0, Lcom/vanniktech/emoji/EmojiPopup;->emojiEditText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/vanniktech/emoji/EmojiPopup;->dismiss()V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    return-void
.end method
