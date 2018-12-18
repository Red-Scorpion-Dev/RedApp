.class Lcom/vanniktech/emoji/EmojiPopup$2;
.super Ljava/lang/Object;
.source "EmojiPopup.java"

# interfaces
.implements Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;


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

    .line 96
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$2;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmojiLongClick(Lcom/vanniktech/emoji/EmojiImageView;Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiPopup$2;->this$0:Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiPopup;->variantPopup:Lcom/vanniktech/emoji/EmojiVariantPopup;

    invoke-virtual {v0, p1, p2}, Lcom/vanniktech/emoji/EmojiVariantPopup;->show(Lcom/vanniktech/emoji/EmojiImageView;Lcom/vanniktech/emoji/emoji/Emoji;)V

    return-void
.end method
