.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$ZoY2MPpZO8dq5iF6KBIRd7WqNPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

.field private final synthetic f$1:Lorg/briarproject/briar/api/feed/Feed;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;Lorg/briarproject/briar/api/feed/Feed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$ZoY2MPpZO8dq5iF6KBIRd7WqNPE;->f$0:Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$ZoY2MPpZO8dq5iF6KBIRd7WqNPE;->f$1:Lorg/briarproject/briar/api/feed/Feed;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$ZoY2MPpZO8dq5iF6KBIRd7WqNPE;->f$0:Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$ZoY2MPpZO8dq5iF6KBIRd7WqNPE;->f$1:Lorg/briarproject/briar/api/feed/Feed;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->lambda$deleteFeed$3(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;Lorg/briarproject/briar/api/feed/Feed;)V

    return-void
.end method
