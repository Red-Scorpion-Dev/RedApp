.class public final synthetic Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadPostViewHolder$KHqirlQ-r5vk7KcrODbKXQuY3yo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;

.field private final synthetic f$1:Lorg/briarproject/briar/android/threaded/ThreadItem;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadPostViewHolder$KHqirlQ-r5vk7KcrODbKXQuY3yo;->f$0:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;

    iput-object p2, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadPostViewHolder$KHqirlQ-r5vk7KcrODbKXQuY3yo;->f$1:Lorg/briarproject/briar/android/threaded/ThreadItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadPostViewHolder$KHqirlQ-r5vk7KcrODbKXQuY3yo;->f$0:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadPostViewHolder$KHqirlQ-r5vk7KcrODbKXQuY3yo;->f$1:Lorg/briarproject/briar/android/threaded/ThreadItem;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->lambda$bind$0(Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;Lorg/briarproject/briar/android/threaded/ThreadItem;Landroid/view/View;)V

    return-void
.end method
