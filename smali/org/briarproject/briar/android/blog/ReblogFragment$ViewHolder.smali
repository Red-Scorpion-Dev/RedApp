.class Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;
.super Ljava/lang/Object;
.source "ReblogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/blog/ReblogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private final input:Lorg/briarproject/briar/android/view/TextInputView;

.field private final post:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

.field private final progressBar:Landroid/widget/ProgressBar;

.field private final scrollView:Landroid/widget/ScrollView;

.field final synthetic this$0:Lorg/briarproject/briar/android/blog/ReblogFragment;


# direct methods
.method private constructor <init>(Lorg/briarproject/briar/android/blog/ReblogFragment;Landroid/view/View;)V
    .locals 4

    .line 157
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->this$0:Lorg/briarproject/briar/android/blog/ReblogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f090150

    .line 158
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->scrollView:Landroid/widget/ScrollView;

    const v0, 0x7f090130

    .line 159
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 160
    new-instance v0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    const v1, 0x7f09012d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder$1;

    invoke-direct {v2, p0, p1}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder$1;-><init>(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;Lorg/briarproject/briar/android/blog/ReblogFragment;)V

    .line 171
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/ReblogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2, p1}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;-><init>(Landroid/view/View;ZLorg/briarproject/briar/android/blog/OnBlogPostClickListener;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->post:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    const p1, 0x7f0900d9

    .line 172
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/view/TextInputView;

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->input:Lorg/briarproject/briar/android/view/TextInputView;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/android/blog/ReblogFragment;Landroid/view/View;Lorg/briarproject/briar/android/blog/ReblogFragment$1;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;-><init>(Lorg/briarproject/briar/android/blog/ReblogFragment;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/blog/BlogPostViewHolder;
    .locals 0

    .line 150
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->post:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;
    .locals 0

    .line 150
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->input:Lorg/briarproject/briar/android/view/TextInputView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Landroid/widget/ScrollView;
    .locals 0

    .line 150
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Landroid/widget/ProgressBar;
    .locals 0

    .line 150
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method
