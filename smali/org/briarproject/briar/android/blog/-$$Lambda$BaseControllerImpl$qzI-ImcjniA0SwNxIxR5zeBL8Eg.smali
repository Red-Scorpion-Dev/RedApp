.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$qzI-ImcjniA0SwNxIxR5zeBL8Eg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/BaseControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/api/blog/BlogPostHeader;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$qzI-ImcjniA0SwNxIxR5zeBL8Eg;->f$0:Lorg/briarproject/briar/android/blog/BaseControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$qzI-ImcjniA0SwNxIxR5zeBL8Eg;->f$1:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    iput-boolean p3, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$qzI-ImcjniA0SwNxIxR5zeBL8Eg;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$qzI-ImcjniA0SwNxIxR5zeBL8Eg;->f$0:Lorg/briarproject/briar/android/blog/BaseControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$qzI-ImcjniA0SwNxIxR5zeBL8Eg;->f$1:Lorg/briarproject/briar/api/blog/BlogPostHeader;

    iget-boolean v2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$qzI-ImcjniA0SwNxIxR5zeBL8Eg;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->lambda$onBlogPostAdded$0(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V

    return-void
.end method
