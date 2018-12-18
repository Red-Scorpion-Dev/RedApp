.class public final synthetic Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$TN6rj1ogfIehiWkS02iAd9qfIQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final synthetic f$2:Lorg/briarproject/briar/api/forum/ForumPostHeader;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/forum/ForumPostHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$TN6rj1ogfIehiWkS02iAd9qfIQQ;->f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$TN6rj1ogfIehiWkS02iAd9qfIQQ;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    iput-object p3, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$TN6rj1ogfIehiWkS02iAd9qfIQQ;->f$2:Lorg/briarproject/briar/api/forum/ForumPostHeader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$TN6rj1ogfIehiWkS02iAd9qfIQQ;->f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$TN6rj1ogfIehiWkS02iAd9qfIQQ;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v2, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$TN6rj1ogfIehiWkS02iAd9qfIQQ;->f$2:Lorg/briarproject/briar/api/forum/ForumPostHeader;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/forum/ForumListFragment;->lambda$updateItem$4(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/forum/ForumPostHeader;)V

    return-void
.end method
