.class Lorg/briarproject/briar/android/blog/RssFeedAdapter;
.super Lorg/briarproject/briar/android/util/BriarAdapter;
.source "RssFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/blog/RssFeedAdapter$RssFeedListener;,
        Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/util/BriarAdapter<",
        "Lorg/briarproject/briar/api/feed/Feed;",
        "Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Lorg/briarproject/briar/android/blog/RssFeedAdapter$RssFeedListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/briarproject/briar/android/blog/RssFeedAdapter$RssFeedListener;)V
    .locals 1

    .line 24
    const-class v0, Lorg/briarproject/briar/api/feed/Feed;

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/util/BriarAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    iput-object p2, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->listener:Lorg/briarproject/briar/android/blog/RssFeedAdapter$RssFeedListener;

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lorg/briarproject/briar/android/blog/RssFeedAdapter;Lorg/briarproject/briar/api/feed/Feed;Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->listener:Lorg/briarproject/briar/android/blog/RssFeedAdapter$RssFeedListener;

    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$RssFeedListener;->onDeleteClick(Lorg/briarproject/briar/api/feed/Feed;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lorg/briarproject/briar/android/blog/RssFeedAdapter;Lorg/briarproject/briar/api/feed/Feed;Landroid/view/View;)V
    .locals 0

    .line 69
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->listener:Lorg/briarproject/briar/android/blog/RssFeedAdapter$RssFeedListener;

    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$RssFeedListener;->onFeedClick(Lorg/briarproject/briar/api/feed/Feed;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Lorg/briarproject/briar/api/feed/Feed;

    check-cast p2, Lorg/briarproject/briar/api/feed/Feed;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->areContentsTheSame(Lorg/briarproject/briar/api/feed/Feed;Lorg/briarproject/briar/api/feed/Feed;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/briarproject/briar/api/feed/Feed;Lorg/briarproject/briar/api/feed/Feed;)Z
    .locals 3

    .line 83
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getUpdated()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getUpdated()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Lorg/briarproject/briar/api/feed/Feed;

    check-cast p2, Lorg/briarproject/briar/api/feed/Feed;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->areItemsTheSame(Lorg/briarproject/briar/api/feed/Feed;Lorg/briarproject/briar/api/feed/Feed;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/briarproject/briar/api/feed/Feed;Lorg/briarproject/briar/api/feed/Feed;)Z
    .locals 3

    .line 88
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getBlogId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getBlogId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getAdded()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getAdded()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lorg/briarproject/briar/api/feed/Feed;

    check-cast p2, Lorg/briarproject/briar/api/feed/Feed;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->compare(Lorg/briarproject/briar/api/feed/Feed;Lorg/briarproject/briar/api/feed/Feed;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/briar/api/feed/Feed;Lorg/briarproject/briar/api/feed/Feed;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getAdded()J

    move-result-wide v1

    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getAdded()J

    move-result-wide p1

    cmp-long v3, v1, p1

    if-lez v3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    cmp-long v3, v1, p1

    if-gez v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->onBindViewHolder(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;I)V
    .locals 6

    .line 37
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/api/feed/Feed;

    if-nez p2, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$100(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$200(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedAdapter$gOtxJ3ferrjMKhgyLqCMrI9GaZk;

    invoke-direct {v1, p0, p2}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedAdapter$gOtxJ3ferrjMKhgyLqCMrI9GaZk;-><init>(Lorg/briarproject/briar/android/blog/RssFeedAdapter;Lorg/briarproject/briar/api/feed/Feed;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getRssAuthor()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$300(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getRssAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$300(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$400(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$300(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$400(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :goto_0
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$500(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getAdded()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/briarproject/briar/android/util/UiUtils;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$600(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getUpdated()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/briarproject/briar/android/util/UiUtils;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$700(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$700(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 65
    :cond_2
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$700(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :goto_1
    invoke-static {p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->access$800(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedAdapter$wgZr5wEkBkGrNW8lPBYcULrsroo;

    invoke-direct {v0, p0, p2}, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedAdapter$wgZr5wEkBkGrNW8lPBYcULrsroo;-><init>(Lorg/briarproject/briar/android/blog/RssFeedAdapter;Lorg/briarproject/briar/api/feed/Feed;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;
    .locals 2

    .line 30
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c006a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance p2, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;-><init>(Landroid/view/View;Lorg/briarproject/briar/android/blog/RssFeedAdapter$1;)V

    return-object p2
.end method
