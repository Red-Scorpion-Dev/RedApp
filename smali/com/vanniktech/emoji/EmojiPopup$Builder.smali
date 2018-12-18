.class public final Lcom/vanniktech/emoji/EmojiPopup$Builder;
.super Ljava/lang/Object;
.source "EmojiPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vanniktech/emoji/EmojiPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private onEmojiBackspaceClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;

.field private onEmojiClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

.field private onEmojiPopupDismissListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupDismissListener;

.field private onEmojiPopupShownListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupShownListener;

.field private onSoftKeyboardCloseListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardCloseListener;

.field private onSoftKeyboardOpenListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardOpenListener;

.field private recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

.field private final rootView:Landroid/view/View;

.field private variantEmoji:Lcom/vanniktech/emoji/VariantEmoji;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The root View can\'t be null"

    .line 212
    invoke-static {p1, v0}, Lcom/vanniktech/emoji/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->rootView:Landroid/view/View;

    return-void
.end method

.method public static fromRootView(Landroid/view/View;)Lcom/vanniktech/emoji/EmojiPopup$Builder;
    .locals 1

    .line 221
    new-instance v0, Lcom/vanniktech/emoji/EmojiPopup$Builder;

    invoke-direct {v0, p0}, Lcom/vanniktech/emoji/EmojiPopup$Builder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public build(Lcom/vanniktech/emoji/EmojiEditText;)Lcom/vanniktech/emoji/EmojiPopup;
    .locals 4

    .line 277
    invoke-static {}, Lcom/vanniktech/emoji/EmojiManager;->getInstance()Lcom/vanniktech/emoji/EmojiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vanniktech/emoji/EmojiManager;->verifyInstalled()V

    const-string v0, "EmojiEditText can\'t be null"

    .line 278
    invoke-static {p1, v0}, Lcom/vanniktech/emoji/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    new-instance v0, Lcom/vanniktech/emoji/EmojiPopup;

    iget-object v1, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

    iget-object v3, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->variantEmoji:Lcom/vanniktech/emoji/VariantEmoji;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/vanniktech/emoji/EmojiPopup;-><init>(Landroid/view/View;Lcom/vanniktech/emoji/EmojiEditText;Lcom/vanniktech/emoji/RecentEmoji;Lcom/vanniktech/emoji/VariantEmoji;)V

    .line 281
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->onSoftKeyboardCloseListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardCloseListener;

    iput-object p1, v0, Lcom/vanniktech/emoji/EmojiPopup;->onSoftKeyboardCloseListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardCloseListener;

    .line 282
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->onEmojiClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    iput-object p1, v0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiClickListener;

    .line 283
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->onSoftKeyboardOpenListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardOpenListener;

    iput-object p1, v0, Lcom/vanniktech/emoji/EmojiPopup;->onSoftKeyboardOpenListener:Lcom/vanniktech/emoji/listeners/OnSoftKeyboardOpenListener;

    .line 284
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->onEmojiPopupShownListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupShownListener;

    iput-object p1, v0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiPopupShownListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupShownListener;

    .line 285
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->onEmojiPopupDismissListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupDismissListener;

    iput-object p1, v0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiPopupDismissListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupDismissListener;

    .line 286
    iget-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->onEmojiBackspaceClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;

    iput-object p1, v0, Lcom/vanniktech/emoji/EmojiPopup;->onEmojiBackspaceClickListener:Lcom/vanniktech/emoji/listeners/OnEmojiBackspaceClickListener;

    return-object v0
.end method

.method public setOnEmojiPopupDismissListener(Lcom/vanniktech/emoji/listeners/OnEmojiPopupDismissListener;)Lcom/vanniktech/emoji/EmojiPopup$Builder;
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->onEmojiPopupDismissListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupDismissListener;

    return-object p0
.end method

.method public setOnEmojiPopupShownListener(Lcom/vanniktech/emoji/listeners/OnEmojiPopupShownListener;)Lcom/vanniktech/emoji/EmojiPopup$Builder;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->onEmojiPopupShownListener:Lcom/vanniktech/emoji/listeners/OnEmojiPopupShownListener;

    return-object p0
.end method

.method public setRecentEmoji(Lcom/vanniktech/emoji/RecentEmoji;)Lcom/vanniktech/emoji/EmojiPopup$Builder;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/vanniktech/emoji/EmojiPopup$Builder;->recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

    return-object p0
.end method
