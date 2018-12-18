.class public final synthetic Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$o05EM6pS0dVU9JJdbScp3RazwB0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/forum/ForumListFragment;ILjava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$o05EM6pS0dVU9JJdbScp3RazwB0;->f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

    iput p2, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$o05EM6pS0dVU9JJdbScp3RazwB0;->f$1:I

    iput-object p3, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$o05EM6pS0dVU9JJdbScp3RazwB0;->f$2:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$o05EM6pS0dVU9JJdbScp3RazwB0;->f$0:Lorg/briarproject/briar/android/forum/ForumListFragment;

    iget v1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$o05EM6pS0dVU9JJdbScp3RazwB0;->f$1:I

    iget-object v2, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListFragment$o05EM6pS0dVU9JJdbScp3RazwB0;->f$2:Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/forum/ForumListFragment;->lambda$displayForums$1(Lorg/briarproject/briar/android/forum/ForumListFragment;ILjava/util/Collection;)V

    return-void
.end method
