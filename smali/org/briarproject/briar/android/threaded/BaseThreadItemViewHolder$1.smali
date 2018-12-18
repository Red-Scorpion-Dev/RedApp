.class Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder$1;
.super Ljava/lang/Object;
.source "BaseThreadItemViewHolder.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->animateFadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder$1;->this$0:Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder$1;->this$0:Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;

    invoke-static {p1}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->access$000(Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;)Landroid/view/ViewGroup;

    move-result-object p1

    const v0, 0x7f08090d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 76
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder$1;->this$0:Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;

    invoke-static {p1}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->access$000(Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 77
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder$1;->this$0:Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->setIsRecyclable(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
