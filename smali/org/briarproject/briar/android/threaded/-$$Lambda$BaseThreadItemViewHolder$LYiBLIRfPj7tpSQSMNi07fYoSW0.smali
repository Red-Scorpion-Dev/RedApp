.class public final synthetic Lorg/briarproject/briar/android/threaded/-$$Lambda$BaseThreadItemViewHolder$LYiBLIRfPj7tpSQSMNi07fYoSW0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$BaseThreadItemViewHolder$LYiBLIRfPj7tpSQSMNi07fYoSW0;->f$0:Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/-$$Lambda$BaseThreadItemViewHolder$LYiBLIRfPj7tpSQSMNi07fYoSW0;->f$0:Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->lambda$animateFadeOut$0(Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method
