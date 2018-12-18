.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$kItaEdUOQABB8DHOFDahYjzWBqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$kItaEdUOQABB8DHOFDahYjzWBqk;->f$0:Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

    iput p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$kItaEdUOQABB8DHOFDahYjzWBqk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$kItaEdUOQABB8DHOFDahYjzWBqk;->f$0:Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

    iget v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$kItaEdUOQABB8DHOFDahYjzWBqk;->f$1:I

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->lambda$loadFeeds$1(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;I)V

    return-void
.end method
