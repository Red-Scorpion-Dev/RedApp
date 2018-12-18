.class Lorg/briarproject/briar/android/blog/BlogPostAdapter;
.super Lorg/briarproject/briar/android/util/BriarAdapter;
.source "BlogPostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/util/BriarAdapter<",
        "Lorg/briarproject/briar/android/blog/BlogPostItem;",
        "Lorg/briarproject/briar/android/blog/BlogPostViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# instance fields
.field private final fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private final listener:Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .line 25
    const-class v0, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/util/BriarAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->listener:Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogPostItem;

    check-cast p2, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->areContentsTheSame(Lorg/briarproject/briar/android/blog/BlogPostItem;Lorg/briarproject/briar/android/blog/BlogPostItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/briarproject/briar/android/blog/BlogPostItem;Lorg/briarproject/briar/android/blog/BlogPostItem;)Z
    .locals 0

    .line 50
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->isRead()Z

    move-result p1

    invoke-virtual {p2}, Lorg/briarproject/briar/android/blog/BlogPostItem;->isRead()Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogPostItem;

    check-cast p2, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->areItemsTheSame(Lorg/briarproject/briar/android/blog/BlogPostItem;Lorg/briarproject/briar/android/blog/BlogPostItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/briarproject/briar/android/blog/BlogPostItem;Lorg/briarproject/briar/android/blog/BlogPostItem;)Z
    .locals 0

    .line 55
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-virtual {p2}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/sync/MessageId;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogPostItem;

    check-cast p2, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->compare(Lorg/briarproject/briar/android/blog/BlogPostItem;Lorg/briarproject/briar/android/blog/BlogPostItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/briar/android/blog/BlogPostItem;Lorg/briarproject/briar/android/blog/BlogPostItem;)I
    .locals 0

    .line 45
    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/blog/BlogPostItem;->compareTo(Lorg/briarproject/briar/android/blog/BlogPostItem;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->onBindViewHolder(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;I)V
    .locals 0

    .line 40
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->bindItem(Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/blog/BlogPostViewHolder;
    .locals 3

    .line 33
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0c005b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->listener:Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;

    iget-object v2, p0, Lorg/briarproject/briar/android/blog/BlogPostAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p2, p1, v0, v1, v2}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;-><init>(Landroid/view/View;ZLorg/briarproject/briar/android/blog/OnBlogPostClickListener;Landroid/support/v4/app/FragmentManager;)V

    return-object p2
.end method
