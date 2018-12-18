.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$7PPwIRZ1B7NRUOnmONkn3zHf8EI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

.field private final synthetic f$1:Lorg/briarproject/briar/android/blog/BlogCommentItem;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogCommentItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$7PPwIRZ1B7NRUOnmONkn3zHf8EI;->f$0:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$7PPwIRZ1B7NRUOnmONkn3zHf8EI;->f$1:Lorg/briarproject/briar/android/blog/BlogCommentItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$7PPwIRZ1B7NRUOnmONkn3zHf8EI;->f$0:Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogPostViewHolder$7PPwIRZ1B7NRUOnmONkn3zHf8EI;->f$1:Lorg/briarproject/briar/android/blog/BlogCommentItem;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->lambda$onBindComment$3(Lorg/briarproject/briar/android/blog/BlogPostViewHolder;Lorg/briarproject/briar/android/blog/BlogCommentItem;Landroid/view/View;)V

    return-void
.end method
