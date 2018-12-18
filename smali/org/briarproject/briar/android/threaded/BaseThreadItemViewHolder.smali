.class public abstract Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseThreadItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/android/threaded/ThreadItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x1388


# instance fields
.field private final author:Lorg/briarproject/briar/android/view/AuthorView;

.field private final layout:Landroid/view/ViewGroup;

.field protected final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900e4

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->layout:Landroid/view/ViewGroup;

    const v0, 0x7f090189

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f090043

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/view/AuthorView;

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;)Landroid/view/ViewGroup;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->layout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private animateFadeOut()V
    .locals 4

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->setIsRecyclable(Z)V

    .line 62
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 63
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600b4

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x2

    .line 64
    new-array v3, v3, [I

    aput v2, v3, v0

    .line 65
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0600b3

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, 0x1

    aput v0, v3, v2

    .line 64
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 66
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 67
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    new-instance v0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder$1;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder$1;-><init>(Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    new-instance v0, Lorg/briarproject/briar/android/threaded/-$$Lambda$BaseThreadItemViewHolder$LYiBLIRfPj7tpSQSMNi07fYoSW0;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/threaded/-$$Lambda$BaseThreadItemViewHolder$LYiBLIRfPj7tpSQSMNi07fYoSW0;-><init>(Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x1388

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$animateFadeOut$0(Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->layout:Landroid/view/ViewGroup;

    .line 87
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 86
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public bind(Lorg/briarproject/briar/android/threaded/ThreadItem;Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener<",
            "TI;>;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/briar/android/view/AuthorView;->setAuthor(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;)V

    .line 47
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/briar/android/view/AuthorView;->setDate(J)V

    .line 49
    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->isHighlighted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setActivated(Z)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->isRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 53
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->animateFadeOut()V

    .line 54
    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;->onUnreadItemVisible(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->layout:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setActivated(Z)V

    :goto_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
