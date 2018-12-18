.class Lcom/vanniktech/emoji/EmojiPopup$4;
.super Ljava/lang/Object;
.source "EmojiPopup.java"

# interfaces
.implements Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;


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

.field final synthetic val$emojiEditText:Lcom/vanniktech/emoji/EmojiEditText;


# direct methods
.method constructor <init>(Lcom/vanniktech/emoji/EmojiPopup;Lcom/vanniktech/emoji/EmojiEditText;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$4;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iput-object p2, p0, Lcom/vanniktech/emoji/EmojiPopup$4;->val$emojiEditText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmojiBackspaceClick(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$4;->val$emojiEditText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiEditText;->backspace()V

    .line 125
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$4;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiBackspaceClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$4;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiBackspaceClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;

    invoke-interface {v0, p1}, Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;->onEmojiBackspaceClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
