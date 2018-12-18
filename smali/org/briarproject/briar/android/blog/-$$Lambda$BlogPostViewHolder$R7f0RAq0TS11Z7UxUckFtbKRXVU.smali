.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$R7f0RAq0TS11Z7UxUckFtbKRXVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

.field private final synthetic f$1:Lorg/briarproject/briar/android/blog/BlogPostItem;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$R7f0RAq0TS11Z7UxUckFtbKRXVU;->f$0:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$R7f0RAq0TS11Z7UxUckFtbKRXVU;->f$1:Lorg/briarproject/briar/android/blog/BlogPostItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$R7f0RAq0TS11Z7UxUckFtbKRXVU;->f$0:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$R7f0RAq0TS11Z7UxUckFtbKRXVU;->f$1:Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->lambda$bindItem$2(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogPostItem;Landroid/view/View;)V

    return-void
.end method
