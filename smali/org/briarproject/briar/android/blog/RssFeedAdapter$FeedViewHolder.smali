.class Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RssFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/blog/RssFeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeedViewHolder"
.end annotation


# instance fields
.field private final author:Landroid/widget/TextView;

.field private final authorLabel:Landroid/widget/TextView;

.field private final delete:Landroid/widget/ImageButton;

.field private final description:Landroid/widget/TextView;

.field private final imported:Landroid/widget/TextView;

.field private final layout:Landroid/view/View;

.field private final title:Landroid/widget/TextView;

.field private final updated:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 106
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->layout:Landroid/view/View;

    const v0, 0x7f0901a0

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f090087

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->delete:Landroid/widget/ImageButton;

    const v0, 0x7f0900d3

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->imported:Landroid/widget/TextView;

    const v0, 0x7f0901b5

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->updated:Landroid/widget/TextView;

    const v0, 0x7f090045

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->author:Landroid/widget/TextView;

    const v0, 0x7f090043

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->authorLabel:Landroid/widget/TextView;

    const v0, 0x7f090088

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->description:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lorg/briarproject/briar/android/blog/RssFeedAdapter$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->delete:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$300(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->author:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->authorLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->imported:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->updated:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->description:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;)Landroid/view/View;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/RssFeedAdapter$FeedViewHolder;->layout:Landroid/view/View;

    return-object p0
.end method
