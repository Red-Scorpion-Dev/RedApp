.class public Lorg/briarproject/briar/android/blog/FeedFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "FeedFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/blog/FeedController$FeedListener;
.implements Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.blog.FeedFragment"


# instance fields
.field private adapter:Lorg/briarproject/briar/android/blog/BlogPostAdapter;

.field feedController:Lorg/briarproject/briar/android/blog/FeedController;

.field private layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

.field private personalBlog:Lorg/briarproject/briar/api/blog/Blog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget-object v0, Lorg/briarproject/briar/android/blog/FeedFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/blog/FeedFragment;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->personalBlog:Lorg/briarproject/briar/api/blog/Blog;

    return-void
.end method

.method static synthetic access$002(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/briar/api/blog/Blog;)Lorg/briarproject/briar/api/blog/Blog;
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->personalBlog:Lorg/briarproject/briar/api/blog/Blog;

    return-object p1
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/blog/FeedFragment;)Lorg/briarproject/briar/android/blog/BlogPostAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->adapter:Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/briarproject/briar/android/blog/FeedFragment;)Lorg/briarproject/briar/android/view/BriarRecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .locals 1

    .line 44
    sget-object v0, Lorg/briarproject/briar/android/blog/FeedFragment;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/blog/FeedFragment;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->loadBlogPosts(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static synthetic access$700(Lorg/briarproject/briar/android/blog/FeedFragment;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->showSnackBar(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public static synthetic lambda$showSnackBar$0(Lorg/briarproject/briar/android/blog/FeedFragment;Landroid/view/View;)V
    .locals 1

    .line 252
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private loadBlogPosts(Z)V
    .locals 3

    .line 142
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->adapter:Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->getRevision()I

    move-result v0

    .line 143
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->feedController:Lorg/briarproject/briar/android/blog/FeedController;

    new-instance v2, Lorg/briarproject/briar/android/blog/FeedFragment$2;

    invoke-direct {v2, p0, p0, v0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment$2;-><init>(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/briar/android/DestroyableContext;IZ)V

    invoke-interface {v1, v2}, Lorg/briarproject/briar/android/blog/FeedController;->loadBlogPosts(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method private loadPersonalBlog()V
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->feedController:Lorg/briarproject/briar/android/blog/FeedController;

    new-instance v1, Lorg/briarproject/briar/android/blog/FeedFragment$1;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/blog/FeedFragment$1;-><init>(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/blog/FeedController;->loadPersonalBlog(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public static newInstance()Lorg/briarproject/briar/android/blog/FeedFragment;
    .locals 2

    .line 59
    new-instance v0, Lorg/briarproject/briar/android/blog/FeedFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/blog/FeedFragment;-><init>()V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/blog/FeedFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showSnackBar(I)V
    .locals 4

    .line 243
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 244
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 245
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 246
    iget-object v2, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->adapter:Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    invoke-virtual {v2}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    const/4 v3, 0x0

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-static {v1, p1, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v0, :cond_1

    .line 252
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$FeedFragment$YTxZk4_pmO1FbnrjpenKMtJfj_Y;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$FeedFragment$YTxZk4_pmO1FbnrjpenKMtJfj_Y;-><init>(Lorg/briarproject/briar/android/blog/FeedFragment;)V

    .line 254
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06002e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 253
    invoke-virtual {p1, v1}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    const v1, 0x7f110031

    .line 256
    invoke-virtual {p1, v1, v0}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 258
    :cond_1
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 239
    sget-object v0, Lorg/briarproject/briar/android/blog/FeedFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 93
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/blog/FeedFragment;)V

    .line 94
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->feedController:Lorg/briarproject/briar/android/blog/FeedController;

    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/blog/FeedController;->setFeedListener(Lorg/briarproject/briar/android/blog/FeedController$FeedListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const p1, 0x7f11002f

    .line 103
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->showSnackBar(I)V

    :cond_0
    return-void
.end method

.method public onAuthorClick(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 3

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/briarproject/briar/android/blog/BlogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "briar.GROUP_ID"

    .line 232
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 233
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBlogAdded()V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->loadBlogPosts(Z)V

    return-void
.end method

.method public onBlogPostAdded(Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->feedController:Lorg/briarproject/briar/android/blog/FeedController;

    new-instance v1, Lorg/briarproject/briar/android/blog/FeedFragment$3;

    invoke-direct {v1, p0, p0, p2}, Lorg/briarproject/briar/android/blog/FeedFragment$3;-><init>(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/briar/android/DestroyableContext;Z)V

    invoke-interface {v0, p1, v1}, Lorg/briarproject/briar/android/blog/FeedController;->loadBlogPost(Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public onBlogPostClick(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 1

    .line 225
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/FeedPostFragment;->newInstance(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/android/blog/FeedPostFragment;

    move-result-object p1

    .line 226
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void
.end method

.method public onBlogRemoved()V
    .locals 1

    const/4 v0, 0x1

    .line 268
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->loadBlogPosts(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0001

    .line 168
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 169
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f110033

    invoke-virtual {p3, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    const p3, 0x7f0c0049

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    new-instance p2, Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    .line 78
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p2, p3, p0, v0}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;Landroid/support/v4/app/FragmentManager;)V

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->adapter:Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    .line 80
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const p2, 0x7f09012e

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 82
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object p3, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 83
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object p3, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->adapter:Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f0808f3

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyImage(I)V

    .line 85
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f110034

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyText(I)V

    .line 86
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f110035

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyAction(I)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 174
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->personalBlog:Lorg/briarproject/briar/api/blog/Blog;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 175
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090039

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 188
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    .line 189
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "briar.GROUP_ID"

    .line 190
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->personalBlog:Lorg/briarproject/briar/api/blog/Blog;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/Blog;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 183
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/briarproject/briar/android/blog/RssFeedImportActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedFragment;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 177
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "briar.GROUP_ID"

    .line 179
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->personalBlog:Lorg/briarproject/briar/api/blog/Blog;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/Blog;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 v0, 0x5

    .line 180
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f090033
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    .line 109
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 110
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->feedController:Lorg/briarproject/briar/android/blog/FeedController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/blog/FeedController;->onStart()V

    .line 111
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->startPeriodicUpdate()V

    .line 112
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/FeedFragment;->loadPersonalBlog()V

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/blog/FeedFragment;->loadBlogPosts(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 118
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStop()V

    .line 119
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->feedController:Lorg/briarproject/briar/android/blog/FeedController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/blog/FeedController;->onStop()V

    .line 120
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->adapter:Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->clear()V

    .line 121
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showProgressBar()V

    .line 122
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->stopPeriodicUpdate()V

    return-void
.end method
