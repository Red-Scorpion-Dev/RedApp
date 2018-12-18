.class Lcom/vanniktech/emoji/EmojiPopup$3;
.super Ljava/lang/Object;
.source "EmojiPopup.java"

# interfaces
.implements Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;


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

    .line 102
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$3;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iput-object p2, p0, Lcom/vanniktech/emoji/EmojiPopup$3;->val$emojiEditText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmojiClick(Lcom/vanniktech/emoji/EmojiImageView;Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$3;->val$emojiEditText:Lcom/vanniktech/emoji/EmojiEditText;

    invoke-virtual {v0, p2}, Lcom/vanniktech/emoji/EmojiEditText;->input(Lcom/vanniktech/emoji/emoji/Emoji;)V

    .line 106
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$3;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

    invoke-interface {v0, p2}, Lcom/vanniktech/emoji/RecentEmoji;->addEmoji(Lcom/vanniktech/emoji/emoji/Emoji;)V

    .line 107
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$3;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->variantEmoji:Lcom/vanniktech/emoji/VariantEmoji;

    invoke-interface {v0, p2}, Lcom/vanniktech/emoji/VariantEmoji;->addVariant(Lcom/vanniktech/emoji/emoji/Emoji;)V

    .line 108
    invoke-virtual {p1, p2}, Lcom/vanniktech/emoji/EmojiImageView;->updateEmoji(Lcom/vanniktech/emoji/emoji/Emoji;)V

    .line 110
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$3;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$3;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    invoke-interface {v0, p1, p2}, Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;->onEmojiClick(Lcom/vanniktech/emoji/EmojiImageView;Lcom/vanniktech/emoji/emoji/Emoji;)V

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$3;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object p1, p1, Lcom/vanniktech/emoji/EmojiPopup;->variantPopup:Lcom/vanniktech/emoji/EmojiVariantPopup;

    invoke-virtual {p1}, Lcom/vanniktech/emoji/EmojiVariantPopup;->dismiss()V

    return-void
.end method
