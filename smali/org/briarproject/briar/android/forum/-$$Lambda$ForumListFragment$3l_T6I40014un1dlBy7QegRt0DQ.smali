.class public final synthetic Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$3l_T6I40014un1dlBy7QegRt0DQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/GroupId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$3l_T6I40014un1dlBy7QegRt0DQ;->f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$3l_T6I40014un1dlBy7QegRt0DQ;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$3l_T6I40014un1dlBy7QegRt0DQ;->f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$3l_T6I40014un1dlBy7QegRt0DQ;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/forum/ForumListFragment;->lambda$removeForum$5(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method
