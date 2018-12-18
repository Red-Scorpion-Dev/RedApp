.class public Lorg/briarproject/briar/android/view/BriarRecyclerView;
.super Landroid/widget/FrameLayout;
.source "BriarRecyclerView.java"


# instance fields
.field private emptyAction:Landroid/widget/TextView;

.field private emptyImage:Landroid/support/v7/widget/AppCompatImageView;

.field private emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private emptyState:Landroid/support/constraint/Group;

.field private emptyText:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;

.field private isScrollingToEnd:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private refresher:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->handler:Landroid/os/Handler;

    const/4 p3, 0x0

    .line 37
    iput-object p3, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->refresher:Ljava/lang/Runnable;

    const/4 p3, 0x0

    .line 39
    iput-boolean p3, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->isScrollingToEnd:Z

    .line 53
    sget-object v0, Lorg/briarproject/briar/R$styleable;->BriarRecyclerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x3

    .line 56
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->isScrollingToEnd:Z

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyImage(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p2, 0x2

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 62
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyText(Ljava/lang/String;)V

    .line 64
    :cond_1
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyAction(Ljava/lang/String;)V

    .line 66
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addLayoutChangeListener()V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lorg/briarproject/briar/android/view/-$$Lambda$BriarRecyclerView$_wfqUP2SUiUiIWSFrudVy6hxRMU;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/view/-$$Lambda$BriarRecyclerView$_wfqUP2SUiUiIWSFrudVy6hxRMU;-><init>(Lorg/briarproject/briar/android/view/BriarRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0031

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090139

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f0900a1

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/Group;

    iput-object v1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyState:Landroid/support/constraint/Group;

    const v1, 0x7f0900a0

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyImage:Landroid/support/v7/widget/AppCompatImageView;

    const v1, 0x7f0900a2

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyText:Landroid/widget/TextView;

    const v1, 0x7f09009f

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyAction:Landroid/widget/TextView;

    const v1, 0x7f090130

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->progressBar:Landroid/widget/ProgressBar;

    .line 86
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showProgressBar()V

    .line 89
    iget-boolean v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->isScrollingToEnd:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->addLayoutChangeListener()V

    .line 93
    :cond_0
    new-instance v0, Lorg/briarproject/briar/android/view/BriarRecyclerView$1;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView$1;-><init>(Lorg/briarproject/briar/android/view/BriarRecyclerView;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public static synthetic lambda$addLayoutChangeListener$1(Lorg/briarproject/briar/android/view/BriarRecyclerView;Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ge p5, p9, :cond_0

    .line 112
    iget-object p1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lorg/briarproject/briar/android/view/-$$Lambda$BriarRecyclerView$hbJKxaG1wPBU9RxEZFxgQL-APHs;

    invoke-direct {p2, p0}, Lorg/briarproject/briar/android/view/-$$Lambda$BriarRecyclerView$hbJKxaG1wPBU9RxEZFxgQL-APHs;-><init>(Lorg/briarproject/briar/android/view/BriarRecyclerView;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$null$0(Lorg/briarproject/briar/android/view/BriarRecyclerView;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 113
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 112
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public static synthetic lambda$startPeriodicUpdate$2(Lorg/briarproject/briar/android/view/BriarRecyclerView;)V
    .locals 4

    .line 216
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 218
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->refresher:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 72
    invoke-virtual {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->stopPeriodicUpdate()V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_2

    .line 134
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 136
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 139
    iget-object p1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    :cond_2
    return-void
.end method

.method public setEmptyAction(I)V
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setEmptyAction(Ljava/lang/String;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEmptyImage(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyImage:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setEmptyImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyImage:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEmptyText(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setEmptyText(Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public showData()V
    .locals 3

    .line 182
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyState:Landroid/support/constraint/Group;

    invoke-virtual {v0, v2}, Landroid/support/constraint/Group;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyState:Landroid/support/constraint/Group;

    invoke-virtual {v0, v1}, Landroid/support/constraint/Group;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 193
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showProgressBar()V
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->emptyState:Landroid/support/constraint/Group;

    invoke-virtual {v0, v1}, Landroid/support/constraint/Group;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->initViews()V

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public startPeriodicUpdate()V
    .locals 4

    .line 212
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lorg/briarproject/briar/android/view/-$$Lambda$BriarRecyclerView$gicDeaiyrtl2R66GH5CHqvVJLYs;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/view/-$$Lambda$BriarRecyclerView$gicDeaiyrtl2R66GH5CHqvVJLYs;-><init>(Lorg/briarproject/briar/android/view/BriarRecyclerView;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->refresher:Ljava/lang/Runnable;

    .line 220
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->refresher:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Need to call setAdapter() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopPeriodicUpdate()V
    .locals 2

    .line 224
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->refresher:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->refresher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lorg/briarproject/briar/android/view/BriarRecyclerView;->refresher:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
