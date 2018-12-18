.class Lorg/briarproject/briar/android/blog/BlogItem;
.super Ljava/lang/Object;
.source "BlogItem.java"


# instance fields
.field private final blog:Lorg/briarproject/briar/api/blog/Blog;

.field private final ours:Z

.field private final removable:Z


# direct methods
.method constructor <init>(Lorg/briarproject/briar/api/blog/Blog;ZZ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogItem;->blog:Lorg/briarproject/briar/api/blog/Blog;

    .line 12
    iput-boolean p2, p0, Lorg/briarproject/briar/android/blog/BlogItem;->ours:Z

    .line 13
    iput-boolean p3, p0, Lorg/briarproject/briar/android/blog/BlogItem;->removable:Z

    return-void
.end method


# virtual methods
.method canBeRemoved()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogItem;->removable:Z

    return v0
.end method

.method getBlog()Lorg/briarproject/briar/api/blog/Blog;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogItem;->blog:Lorg/briarproject/briar/api/blog/Blog;

    return-object v0
.end method

.method isOurs()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogItem;->ours:Z

    return v0
.end method
