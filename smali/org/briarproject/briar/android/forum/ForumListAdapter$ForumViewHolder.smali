.class Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ForumListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/forum/ForumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForumViewHolder"
.end annotation


# instance fields
.field private final avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

.field private final date:Landroid/widget/TextView;

.field private final layout:Landroid/view/ViewGroup;

.field private final name:Landroid/widget/TextView;

.field private final postCount:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 124
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 126
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->layout:Landroid/view/ViewGroup;

    const v0, 0x7f09004d

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/view/TextAvatarView;

    iput-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

    const v0, 0x7f0900be

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f09012c

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->postCount:Landroid/widget/TextView;

    const v0, 0x7f090083

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->date:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lorg/briarproject/briar/android/forum/ForumListAdapter$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Lorg/briarproject/briar/android/view/TextAvatarView;
    .locals 0

    .line 115
    iget-object p0, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->avatar:Lorg/briarproject/briar/android/view/TextAvatarView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->postCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->date:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;)Landroid/view/ViewGroup;
    .locals 0

    .line 115
    iget-object p0, p0, Lorg/briarproject/briar/android/forum/ForumListAdapter$ForumViewHolder;->layout:Landroid/view/ViewGroup;

    return-object p0
.end method
