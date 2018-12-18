.class public Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;
.super Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;
.source "ThreadPostViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/android/threaded/ThreadItem;",
        ">",
        "Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder<",
        "TI;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final nestedLineIds:[I


# instance fields
.field private final lvlText:Landroid/widget/TextView;

.field private final lvls:[Landroid/view/View;

.field private final replyButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 25
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->nestedLineIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f09010a
        0x7f09010b
        0x7f09010c
        0x7f09010d
        0x7f09010e
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 31
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09010f

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->lvlText:Landroid/widget/TextView;

    .line 34
    sget-object v0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->nestedLineIds:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->lvls:[Landroid/view/View;

    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->lvls:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->lvls:[Landroid/view/View;

    sget-object v2, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->nestedLineIds:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f090053

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->replyButton:Landroid/view/View;

    return-void
.end method

.method static synthetic lambda$bind$0(Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;Lorg/briarproject/briar/android/threaded/ThreadItem;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-interface {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;->onReplyClick(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bind(Lorg/briarproject/briar/android/threaded/ThreadItem;Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener<",
            "TI;>;)V"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/threaded/BaseThreadItemViewHolder;->bind(Lorg/briarproject/briar/android/threaded/ThreadItem;Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    :goto_0
    iget-object v2, p0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->lvls:[Landroid/view/View;

    array-length v2, v2

    const/16 v3, 0x8

    if-ge v1, v2, :cond_1

    .line 46
    iget-object v2, p0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->lvls:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getLevel()I

    move-result v4

    if-ge v1, v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getLevel()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    .line 49
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->lvlText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->lvlText:Landroid/widget/TextView;

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 53
    :cond_2
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->lvlText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :goto_1
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadPostViewHolder;->replyButton:Landroid/view/View;

    new-instance v1, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadPostViewHolder$KHqirlQ-r5vk7KcrODbKXQuY3yo;

    invoke-direct {v1, p2, p1}, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadPostViewHolder$KHqirlQ-r5vk7KcrODbKXQuY3yo;-><init>(Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
