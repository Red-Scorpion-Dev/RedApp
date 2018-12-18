.class Lorg/briarproject/briar/android/blog/BlogPostViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BlogPostViewHolder.java"


# instance fields
.field private final author:Lorg/briarproject/briar/android/view/AuthorView;

.field private final commentContainer:Landroid/view/ViewGroup;

.field private final ctx:Landroid/content/Context;

.field private final fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private final fullText:Z

.field private final layout:Landroid/view/ViewGroup;

.field private final listener:Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;

.field private final reblogButton:Landroid/widget/ImageButton;

.field private final reblogger:Lorg/briarproject/briar/android/view/AuthorView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;ZLorg/briarproject/briar/android/blog/OnBlogPostClickListener;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    iput-boolean p2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->fullText:Z

    .line 57
    iput-object p3, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->listener:Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;

    .line 58
    iput-object p4, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->ctx:Landroid/content/Context;

    const p2, 0x7f09012d

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->layout:Landroid/view/ViewGroup;

    const p2, 0x7f090138

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/view/AuthorView;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->reblogger:Lorg/briarproject/briar/android/view/AuthorView;

    const p2, 0x7f090045

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/view/AuthorView;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    const p2, 0x7f09006c

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->reblogButton:Landroid/widget/ImageButton;

    const p2, 0x7f090190

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->text:Landroid/widget/TextView;

    const p2, 0x7f09006b

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->commentContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method private getTransitionName(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blogPost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/MessageId;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$bindItem$0(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogPostItem;Landroid/view/View;)V
    .locals 0

    .line 95
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->listener:Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;

    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;->onBlogPostClick(Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    return-void
.end method

.method public static synthetic lambda$bindItem$1(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogPostItem;Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->listener:Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;

    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;->onAuthorClick(Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    return-void
.end method

.method public static synthetic lambda$bindItem$2(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogPostItem;Landroid/view/View;)V
    .locals 2

    .line 126
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->ctx:Landroid/content/Context;

    const-class v1, Lorg/briarproject/briar/android/blog/ReblogActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "briar.GROUP_ID"

    .line 127
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "briar.POST_ID"

    .line 128
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 129
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->ctx:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onBindComment$3(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogCommentItem;Landroid/view/View;)V
    .locals 0

    .line 146
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->listener:Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;

    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;->onAuthorClick(Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    return-void
.end method

.method private onBindComment(Lorg/briarproject/briar/android/blog/BlogCommentItem;)V
    .locals 8

    .line 143
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->reblogger:Lorg/briarproject/briar/android/view/AuthorView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogCommentItem;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogCommentItem;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/briar/android/view/AuthorView;->setAuthor(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;)V

    .line 144
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->reblogger:Lorg/briarproject/briar/android/view/AuthorView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogCommentItem;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/briar/android/view/AuthorView;->setDate(J)V

    .line 145
    iget-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->fullText:Z

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->reblogger:Lorg/briarproject/briar/android/view/AuthorView;

    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$7PPwIRZ1B7NRUOnmONkn3zHf8EI;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$7PPwIRZ1B7NRUOnmONkn3zHf8EI;-><init>(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogCommentItem;)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/AuthorView;->setAuthorClickable(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->reblogger:Lorg/briarproject/briar/android/view/AuthorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/AuthorView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->reblogger:Lorg/briarproject/briar/android/view/AuthorView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/briarproject/briar/android/view/AuthorView;->setPersona(I)V

    .line 151
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogCommentItem;->getHeader()Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getRootPost()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->isRssFeed()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v0, v3}, Lorg/briarproject/briar/android/view/AuthorView;->setPersona(I)V

    .line 156
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogCommentItem;->getComments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    .line 157
    iget-object v3, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->ctx:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c005a

    iget-object v5, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->commentContainer:Landroid/view/ViewGroup;

    .line 158
    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090045

    .line 161
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/briarproject/briar/android/view/AuthorView;

    const v5, 0x7f090190

    .line 162
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 164
    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v6

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/briarproject/briar/android/view/AuthorView;->setAuthor(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;)V

    .line 165
    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/briarproject/briar/android/view/AuthorView;->setDate(J)V

    .line 168
    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->fullText:Z

    if-eqz v0, :cond_2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 171
    :cond_2
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->commentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method bindItem(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->setTransitionName(Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 93
    iget-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->fullText:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v2, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$Is3-4UJAJ7qwkz22_-avsiwHR1s;

    invoke-direct {v2, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$Is3-4UJAJ7qwkz22_-avsiwHR1s;-><init>(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_1
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getPostHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v3

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/briarproject/briar/android/view/AuthorView;->setAuthor(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;)V

    .line 101
    iget-object v2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/briarproject/briar/android/view/AuthorView;->setDate(J)V

    .line 102
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    .line 103
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->isRssFeed()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 102
    :goto_0
    invoke-virtual {v0, v2}, Lorg/briarproject/briar/android/view/AuthorView;->setPersona(I)V

    .line 105
    iget-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->fullText:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getType()Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v0

    sget-object v2, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v0, v2, :cond_3

    .line 106
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    new-instance v2, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$rn8l3f9kOwrkS8YPd9VwtTPdXrw;

    invoke-direct {v2, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$rn8l3f9kOwrkS8YPd9VwtTPdXrw;-><init>(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    invoke-virtual {v0, v2}, Lorg/briarproject/briar/android/view/AuthorView;->setAuthorClickable(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/AuthorView;->setAuthorNotClickable()V

    .line 112
    :goto_1
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/briar/android/util/UiUtils;->getSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 113
    iget-boolean v2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->fullText:Z

    if-eqz v2, :cond_4

    .line 114
    iget-object v2, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 116
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->makeLinksClickable(Landroid/widget/TextView;Landroid/support/v4/app/FragmentManager;)V

    goto :goto_2

    .line 118
    :cond_4
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 119
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const/16 v2, 0x140

    if-le v1, v2, :cond_5

    .line 120
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->ctx:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/briarproject/briar/android/util/UiUtils;->getTeaser(Landroid/content/Context;Landroid/text/Spanned;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 121
    :cond_5
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_2
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->reblogButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$R7f0RAq0TS11Z7UxUckFtbKRXVU;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$R7f0RAq0TS11Z7UxUckFtbKRXVU;-><init>(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->commentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 134
    instance-of v0, p1, Lorg/briarproject/briar/android/blog/BlogCommentItem;

    if-eqz v0, :cond_6

    .line 135
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogCommentItem;

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->onBindComment(Lorg/briarproject/briar/android/blog/BlogCommentItem;)V

    goto :goto_3

    .line 137
    :cond_6
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->reblogger:Lorg/briarproject/briar/android/view/AuthorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/AuthorView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method hideReblogButton()V
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->reblogButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method setTransitionName(Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->getTransitionName(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method setVisibility(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method updateDate(J)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->author:Lorg/briarproject/briar/android/view/AuthorView;

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/briar/android/view/AuthorView;->setDate(J)V

    return-void
.end method
