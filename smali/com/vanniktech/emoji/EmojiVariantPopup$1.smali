.class Lcom/vanniktech/emoji/EmojiVariantPopup$1;
.super Ljava/lang/Object;
.source "EmojiVariantPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vanniktech/emoji/EmojiVariantPopup;->initView(Landroid/content/Context;Lcom/vanniktech/emoji/emoji/Emoji;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vanniktech/emoji/EmojiVariantPopup;

.field final synthetic val$variant:Lcom/vanniktech/emoji/emoji/Emoji;


# direct methods
.method constructor <init>(Lcom/vanniktech/emoji/EmojiVariantPopup;Lcom/vanniktech/emoji/emoji/Emoji;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiVariantPopup;

    iput-object p2, p0, Lcom/vanniktech/emoji/EmojiVariantPopup$1;->val$variant:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiVariantPopup;

    iget-object p1, p1, Lcom/vanniktech/emoji/EmojiVariantPopup;->listener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiVariantPopup;

    iget-object p1, p1, Lcom/vanniktech/emoji/EmojiVariantPopup;->rootImageView:Lcom/vanniktech/emoji/EmojiImageView;

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiVariantPopup;

    iget-object p1, p1, Lcom/vanniktech/emoji/EmojiVariantPopup;->listener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    iget-object v0, p0, Lcom/vanniktech/emoji/EmojiVariantPopup$1;->this$0:Lcom/vanniktech/emoji/EmojiVariantPopup;

    iget-object v0, v0, Lcom/vanniktech/emoji/EmojiVariantPopup;->rootImageView:Lcom/vanniktech/emoji/EmojiImageView;

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiVariantPopup$1;->val$variant:Lcom/vanniktech/emoji/emoji/Emoji;

    invoke-interface {p1, v0, v1}, Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;->onEmojiClick(Lcom/vanniktech/emoji/EmojiImageView;Lcom/vanniktech/emoji/emoji/Emoji;)V

    :cond_0
    return-void
.end method
