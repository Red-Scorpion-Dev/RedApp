.class Lorg/briarproject/briar/android/blog/BlogCommentItem;
.super Lorg/briarproject/briar/android/blog/BlogPostItem;
.source "BlogCommentItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/blog/BlogCommentItem$BlogCommentComparator;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Lorg/briarproject/briar/android/blog/BlogCommentItem$BlogCommentComparator;


# instance fields
.field private final comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/blog/BlogCommentHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final postHeader:Lorg/briarproject/briar/api/blog/BlogPostHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lorg/briarproject/briar/android/blog/BlogCommentItem$BlogCommentComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/blog/BlogCommentItem$BlogCommentComparator;-><init>(Lorg/briarproject/briar/android/blog/BlogCommentItem$1;)V

    sput-object v0, Lorg/briarproject/briar/android/blog/BlogCommentItem;->COMPARATOR:Lorg/briarproject/briar/android/blog/BlogCommentItem$BlogCommentComparator;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/briar/api/blog/BlogCommentHeader;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/blog/BlogPostItem;-><init>(Lorg/briarproject/briar/api/blog/BlogPostHeader;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/BlogCommentItem;->comments:Ljava/util/List;

    .line 22
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/BlogCommentItem;->collectComments(Lorg/briarproject/briar/api/blog/BlogPostHeader;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogCommentItem;->postHeader:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    .line 23
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogCommentItem;->comments:Ljava/util/List;

    sget-object v0, Lorg/briarproject/briar/android/blog/BlogCommentItem;->COMPARATOR:Lorg/briarproject/briar/android/blog/BlogCommentItem$BlogCommentComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private collectComments(Lorg/briarproject/briar/api/blog/BlogPostHeader;)Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 1

    .line 27
    instance-of v0, p1, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    if-eqz v0, :cond_1

    .line 28
    check-cast p1, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    .line 29
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogCommentItem;->comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getParent()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/BlogCommentItem;->collectComments(Lorg/briarproject/briar/api/blog/BlogPostHeader;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/blog/BlogCommentHeader;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogCommentItem;->comments:Ljava/util/List;

    return-object v0
.end method

.method public getHeader()Lorg/briarproject/briar/api/blog/BlogCommentHeader;
    .locals 1

    .line 43
    invoke-super {p0}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    return-object v0
.end method

.method public bridge synthetic getHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogCommentItem;->getHeader()Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    move-result-object v0

    return-object v0
.end method

.method getPostHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogCommentItem;->postHeader:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogCommentItem;->text:Ljava/lang/String;

    return-void
.end method
