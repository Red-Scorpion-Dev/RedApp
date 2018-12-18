.class Lcom/vanniktech/emoji/EmojiPopup$1;
.super Ljava/lang/Object;
.source "EmojiPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vanniktech/emoji/EmojiPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vanniktech/emoji/EmojiPopup;


# direct methods
.method constructor <init>(Lcom/vanniktech/emoji/EmojiPopup;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vanniktech/emoji/Utils;->windowVisibleDisplayFrame(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v1, v1, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    invoke-static {v1}, Lcom/vanniktech/emoji/Utils;->screenHeight(Landroid/app/Activity;)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 57
    iget-object v2, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v2, v2, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lcom/vanniktech/emoji/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v2, v2, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 59
    iget-object v2, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v2, v2, Lcom/vanniktech/emoji/EmojiPopup;->popupWindow:Landroid/widget/PopupWindow;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 61
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-boolean v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->isKeyboardOpen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->onSoftKeyboardOpenListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardOpenListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->onSoftKeyboardOpenListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardOpenListener;

    invoke-interface {v0, v1}, Lcom/vanniktech/emoji/listeners/OnSoftKeyboardOpenListener;->onKeyboardOpen(I)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vanniktech/emoji/EmojiPopup;->isKeyboardOpen:Z

    .line 67
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-boolean v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->isPendingOpen:Z

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiPopup;->showAtBottom()V

    .line 69
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iput-boolean v3, v0, Lcom/vanniktech/emoji/EmojiPopup;->isPendingOpen:Z

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-boolean v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->isKeyboardOpen:Z

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iput-boolean v3, v0, Lcom/vanniktech/emoji/EmojiPopup;->isKeyboardOpen:Z

    .line 75
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->onSoftKeyboardCloseListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardCloseListener;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->onSoftKeyboardCloseListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardCloseListener;

    invoke-interface {v0}, Lcom/vanniktech/emoji/listeners/OnSoftKeyboardCloseListener;->onKeyboardClose()V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiPopup;->dismiss()V

    .line 80
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v1, v1, Lcom/vanniktech/emoji/EmojiPopup;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/vanniktech/emoji/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    :goto_0
    return-void
.end method
