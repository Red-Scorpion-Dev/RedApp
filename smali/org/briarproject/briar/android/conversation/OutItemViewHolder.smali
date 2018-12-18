.class Lorg/briarproject/briar/android/conversation/OutItemViewHolder;
.super Ljava/lang/Object;
.source "OutItemViewHolder.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final status:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f09017c

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/OutItemViewHolder;->status:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method bind(Lorg/briarproject/briar/android/conversation/ConversationItem;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->isSeen()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f08090e

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->isSent()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f08090f

    goto :goto_0

    :cond_1
    const p1, 0x7f080910

    .line 29
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/OutItemViewHolder;->status:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
