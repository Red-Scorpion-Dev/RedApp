.class Lcom/vanniktech/emoji/listeners/RepeatListener$1;
.super Ljava/lang/Object;
.source "RepeatListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vanniktech/emoji/listeners/RepeatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vanniktech/emoji/listeners/RepeatListener;


# direct methods
.method constructor <init>(Lcom/vanniktech/emoji/listeners/RepeatListener;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/vanniktech/emoji/listeners/RepeatListener$1;->this$0:Lcom/vanniktech/emoji/listeners/RepeatListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/vanniktech/emoji/listeners/RepeatListener$1;->this$0:Lcom/vanniktech/emoji/listeners/RepeatListener;

    iget-object v0, v0, Lcom/vanniktech/emoji/listeners/RepeatListener;->downView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/vanniktech/emoji/listeners/RepeatListener$1;->this$0:Lcom/vanniktech/emoji/listeners/RepeatListener;

    iget-object v0, v0, Lcom/vanniktech/emoji/listeners/RepeatListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vanniktech/emoji/listeners/RepeatListener$1;->this$0:Lcom/vanniktech/emoji/listeners/RepeatListener;

    iget-object v1, v1, Lcom/vanniktech/emoji/listeners/RepeatListener;->downView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/vanniktech/emoji/listeners/RepeatListener$1;->this$0:Lcom/vanniktech/emoji/listeners/RepeatListener;

    iget-object v0, v0, Lcom/vanniktech/emoji/listeners/RepeatListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vanniktech/emoji/listeners/RepeatListener$1;->this$0:Lcom/vanniktech/emoji/listeners/RepeatListener;

    iget-object v1, v1, Lcom/vanniktech/emoji/listeners/RepeatListener;->downView:Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/vanniktech/emoji/listeners/RepeatListener$1;->this$0:Lcom/vanniktech/emoji/listeners/RepeatListener;

    iget-wide v4, v4, Lcom/vanniktech/emoji/listeners/RepeatListener;->normalInterval:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 22
    iget-object v0, p0, Lcom/vanniktech/emoji/listeners/RepeatListener$1;->this$0:Lcom/vanniktech/emoji/listeners/RepeatListener;

    iget-object v0, v0, Lcom/vanniktech/emoji/listeners/RepeatListener;->clickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/vanniktech/emoji/listeners/RepeatListener$1;->this$0:Lcom/vanniktech/emoji/listeners/RepeatListener;

    iget-object v1, v1, Lcom/vanniktech/emoji/listeners/RepeatListener;->downView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
