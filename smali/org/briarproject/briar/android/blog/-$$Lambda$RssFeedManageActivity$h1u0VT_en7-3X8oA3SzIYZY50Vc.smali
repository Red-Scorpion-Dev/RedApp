.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$h1u0VT_en7-3X8oA3SzIYZY50Vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

.field private final synthetic f$1:Lorg/briarproject/briar/api/feed/Feed;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;Lorg/briarproject/briar/api/feed/Feed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$h1u0VT_en7-3X8oA3SzIYZY50Vc;->f$0:Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$h1u0VT_en7-3X8oA3SzIYZY50Vc;->f$1:Lorg/briarproject/briar/api/feed/Feed;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$h1u0VT_en7-3X8oA3SzIYZY50Vc;->f$0:Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedManageActivity$h1u0VT_en7-3X8oA3SzIYZY50Vc;->f$1:Lorg/briarproject/briar/api/feed/Feed;

    invoke-static {v0, v1, p1, p2}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity;->lambda$onDeleteClick$0(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;Lorg/briarproject/briar/api/feed/Feed;Landroid/content/DialogInterface;I)V

    return-void
.end method
