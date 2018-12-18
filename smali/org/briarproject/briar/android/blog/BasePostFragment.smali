.class abstract Lorg/briarproject/briar/android/blog/BasePostFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "BasePostFragment.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field static final POST_ID:Ljava/lang/String; = "briar.POST_ID"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private post:Lorg/briarproject/briar/android/blog/BlogPostItem;

.field protected postId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refresher:Ljava/lang/Runnable;

.field private ui:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/briarproject/briar/android/blog/BasePostFragment;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/blog/BasePostFragment;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$startPeriodicUpdate$0(Lorg/briarproject/briar/android/blog/BasePostFragment;)V
    .locals 4

    .line 103
    sget-object v0, Lorg/briarproject/briar/android/blog/BasePostFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Updating Content..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->ui:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->post:Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-virtual {v1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->updateDate(J)V

    .line 105
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->refresher:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startPeriodicUpdate()V
    .locals 4

    .line 102
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$BasePostFragment$2Q_yRTA5SZC-IosvPW0JvJwHscA;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$BasePostFragment$2Q_yRTA5SZC-IosvPW0JvJwHscA;-><init>(Lorg/briarproject/briar/android/blog/BasePostFragment;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->refresher:Ljava/lang/Runnable;

    .line 107
    sget-object v0, Lorg/briarproject/briar/android/blog/BasePostFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Adding Handler Callback"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->refresher:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopPeriodicUpdate()V
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->refresher:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lorg/briarproject/briar/android/blog/BasePostFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Removing Handler Callback"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->refresher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onBlogPostLoaded(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->post:Lorg/briarproject/briar/android/blog/BlogPostItem;

    .line 98
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->ui:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->bindItem(Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 55
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BasePostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "briar.POST_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    if-eqz p3, :cond_0

    .line 57
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p3}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->postId:Lorg/briarproject/bramble/api/sync/MessageId;

    const p3, 0x7f0c004a

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090130

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 62
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    new-instance p2, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    const/4 p3, 0x1

    new-instance v0, Lorg/briarproject/briar/android/blog/BasePostFragment$1;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/BasePostFragment$1;-><init>(Lorg/briarproject/briar/android/blog/BasePostFragment;)V

    .line 76
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BasePostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {p2, p1, p3, v0, v1}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;-><init>(Landroid/view/View;ZLorg/briarproject/briar/android/blog/OnBlogPostClickListener;Landroid/support/v4/app/FragmentManager;)V

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BasePostFragment;->ui:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    return-object p1

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No post ID in args"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onStart()V
    .locals 0

    .line 83
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 84
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/BasePostFragment;->startPeriodicUpdate()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 90
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStop()V

    .line 91
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/BasePostFragment;->stopPeriodicUpdate()V

    return-void
.end method
