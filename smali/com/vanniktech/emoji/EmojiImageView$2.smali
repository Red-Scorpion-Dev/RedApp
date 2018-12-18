.class Lcom/vanniktech/emoji/EmojiImageView$2;
.super Ljava/lang/Object;
.source "EmojiImageView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vanniktech/emoji/EmojiImageView;->setEmoji(Lcom/vanniktech/emoji/emoji/Emoji;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vanniktech/emoji/EmojiImageView;


# direct methods
.method constructor <init>(Lcom/vanniktech/emoji/EmojiImageView;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView$2;->this$0:Lcom/vanniktech/emoji/EmojiImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 114
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiImageView$2;->this$0:Lcom/vanniktech/emoji/EmojiImageView;

    iget-object p1, p1, Lcom/vanniktech/emoji/EmojiImageView;->longClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;

    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiImageView$2;->this$0:Lcom/vanniktech/emoji/EmojiImageView;

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiImageView$2;->this$0:Lcom/vanniktech/emoji/EmojiImageView;

    iget-object v1, v1, Lcom/vanniktech/emoji/EmojiImageView;->currentEmoji:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-interface {p1, v0, v1}, Lcom/vanniktech/emoji/listeners/OnEmojiLongClickListener;->onEmojiLongClick(Lcom/vanniktech/emoji/EmojiImageView;Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/4 p1, 0x1

    return p1
.end method
