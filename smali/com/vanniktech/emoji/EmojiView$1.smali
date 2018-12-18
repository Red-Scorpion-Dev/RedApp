.class Lcom/vanniktech/emoji/EmojiView$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vanniktech/emoji/EmojiView;->handleOnClicks(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vanniktech/emoji/EmojiView;


# direct methods
.method constructor <init>(Lcom/vanniktech/emoji/EmojiView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiView$1;->this$0:Lcom/vanniktech/emoji/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiView$1;->this$0:Lcom/vanniktech/emoji/EmojiView;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiView;->onEmojiBackspaceClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiView$1;->this$0:Lcom/vanniktech/emoji/EmojiView;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiView;->onEmojiBackspaceClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;

    invoke-interface {v0, p1}, Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;->onEmojiBackspaceClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
