.class public final Lcom/vanniktech/emoji/listeners/RepeatListener;
.super Ljava/lang/Object;
.source "RepeatListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final clickListener:Landroid/view/View$OnClickListener;

.field downView:Landroid/view/View;

.field final handler:Landroid/os/Handler;

.field private final handlerRunnable:Ljava/lang/Runnable;

.field private final initialInterval:J

.field final normalInterval:J


# direct methods
.method public constructor <init>(JJLandroid/view/View$OnClickListener;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->handler:Landroid/os/Handler;

    .line 17
    new-instance v0, Lcom/vanniktech/emoji/listeners/RepeatListener$1;

    invoke-direct {v0, p0}, Lcom/vanniktech/emoji/listeners/RepeatListener$1;-><init>(Lcom/vanniktech/emoji/listeners/RepeatListener;)V

    iput-object v0, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    if-eqz p5, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    .line 37
    iput-wide p1, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->initialInterval:J

    .line 38
    iput-wide p3, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->normalInterval:J

    .line 39
    iput-object p5, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->clickListener:Landroid/view/View$OnClickListener;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative interval"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null runnable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    return v0

    .line 54
    :pswitch_1
    iget-object p1, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->downView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->downView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->downView:Landroid/view/View;

    return v1

    .line 45
    :pswitch_2
    iget-object p2, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    iget-object p2, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->downView:Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->initialInterval:J

    add-long/2addr v3, v5

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 47
    iput-object p1, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->downView:Landroid/view/View;

    .line 48
    iget-object p2, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->downView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 49
    iget-object p2, p0, Lcom/vanniktech/emoji/listeners/RepeatListener;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
