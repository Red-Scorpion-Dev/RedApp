.class Lorg/briarproject/briar/android/blog/BlogCommentItem$BlogCommentComparator;
.super Ljava/lang/Object;
.source "BlogCommentItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/blog/BlogCommentItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlogCommentComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/briarproject/briar/api/blog/BlogCommentHeader;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/android/blog/BlogCommentItem$1;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/BlogCommentItem$BlogCommentComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 55
    check-cast p1, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    check-cast p2, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogCommentItem$BlogCommentComparator;->compare(Lorg/briarproject/briar/api/blog/BlogCommentHeader;Lorg/briarproject/briar/api/blog/BlogCommentHeader;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/briar/api/blog/BlogCommentHeader;Lorg/briarproject/briar/api/blog/BlogCommentHeader;)I
    .locals 0

    .line 60
    invoke-static {p2, p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->compare(Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/briar/api/blog/BlogPostHeader;)I

    move-result p1

    return p1
.end method
