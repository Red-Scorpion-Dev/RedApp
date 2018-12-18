.class Lcom/vanniktech/emoji/EmojiPopup$5;
.super Ljava/lang/Object;
.source "EmojiPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vanniktech/emoji/EmojiPopup;-><init>(Landroid/view/View;Lcom/vanniktech/emoji/EmojiEditText;Lcom/vanniktech/emoji/RecentEmoji;Lcom/vanniktech/emoji/VariantEmoji;)V
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

    .line 134
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$5;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$5;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiPopupDismissListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupDismissListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$5;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiPopupDismissListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupDismissListener;

    invoke-interface {v0}, Lcom/vanniktech/emoji/listeners/OnEmojiPopupDismissListener;->onEmojiPopupDismiss()V

    :cond_0
    return-void
.end method
