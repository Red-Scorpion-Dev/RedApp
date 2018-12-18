.class public Lorg/briarproject/briar/android/blog/FeedPostFragment;
.super Lorg/briarproject/briar/android/blog/BasePostFragment;
.source "FeedPostFragment.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.blog.FeedPostFragment"


# instance fields
.field private blogId:Lorg/briarproject/bramble/api/sync/GroupId;

.field feedController:Lorg/briarproject/briar/android/blog/FeedController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/BasePostFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/blog/FeedPostFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/FeedPostFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static newInstance(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/android/blog/FeedPostFragment;
    .locals 3

    .line 35
    new-instance v0, Lorg/briarproject/briar/android/blog/FeedPostFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/blog/FeedPostFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "briar.GROUP_ID"

    .line 38
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p0, "briar.POST_ID"

    .line 39
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 41
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/blog/FeedPostFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lorg/briarproject/briar/android/blog/FeedPostFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 66
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/blog/FeedPostFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 51
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "briar.GROUP_ID"

    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v1, p0, Lorg/briarproject/briar/android/blog/FeedPostFragment;->blogId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 56
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/blog/BasePostFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No group ID in args"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onStart()V
    .locals 4

    .line 71
    invoke-super {p0}, Lorg/briarproject/briar/android/blog/BasePostFragment;->onStart()V

    .line 72
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedPostFragment;->feedController:Lorg/briarproject/briar/android/blog/FeedController;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/FeedPostFragment;->blogId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v2, p0, Lorg/briarproject/briar/android/blog/FeedPostFragment;->postId:Lorg/briarproject/bramble/api/sync/MessageId;

    new-instance v3, Lorg/briarproject/briar/android/blog/FeedPostFragment$1;

    invoke-direct {v3, p0, p0}, Lorg/briarproject/briar/android/blog/FeedPostFragment$1;-><init>(Lorg/briarproject/briar/android/blog/FeedPostFragment;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1, v2, v3}, Lorg/briarproject/briar/android/blog/FeedController;->loadBlogPost(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .line 22
    invoke-super {p0}, Lorg/briarproject/briar/android/blog/BasePostFragment;->onStop()V

    return-void
.end method
