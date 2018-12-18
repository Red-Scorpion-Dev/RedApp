.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedAdapter$wgZr5wEkBkGrNW8lPBYcULrsroo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

.field private final synthetic f$1:Lorg/briarproject/briar/api/feed/Feed;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/RssFeedAdapter;Lorg/briarproject/briar/api/feed/Feed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedAdapter$wgZr5wEkBkGrNW8lPBYcULrsroo;->f$0:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedAdapter$wgZr5wEkBkGrNW8lPBYcULrsroo;->f$1:Lorg/briarproject/briar/api/feed/Feed;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedAdapter$wgZr5wEkBkGrNW8lPBYcULrsroo;->f$0:Lorg/briarproject/briar/android/blog/RssFeedAdapter;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$RssFeedAdapter$wgZr5wEkBkGrNW8lPBYcULrsroo;->f$1:Lorg/briarproject/briar/api/feed/Feed;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/blog/RssFeedAdapter;->lambda$onBindViewHolder$1(Lorg/briarproject/briar/android/blog/RssFeedAdapter;Lorg/briarproject/briar/api/feed/Feed;Landroid/view/View;)V

    return-void
.end method
