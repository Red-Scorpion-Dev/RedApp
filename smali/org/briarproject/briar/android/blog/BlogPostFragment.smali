.class public Lorg/briarproject/briar/android/blog/BlogPostFragment;
.super Lorg/briarproject/briar/android/blog/BasePostFragment;
.source "BlogPostFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/blog/BaseController$BlogListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.blog.BlogPostFragment"


# instance fields
.field blogController:Lorg/briarproject/briar/android/blog/BlogController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/BasePostFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/blog/BlogPostFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogPostFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static newInstance(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/android/blog/BlogPostFragment;
    .locals 3

    .line 28
    new-instance v0, Lorg/briarproject/briar/android/blog/BlogPostFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/blog/BlogPostFragment;-><init>()V

    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "briar.POST_ID"

    .line 31
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 33
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/blog/BlogPostFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lorg/briarproject/briar/android/blog/BlogPostFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 44
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/blog/BlogPostFragment;)V

    .line 45
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogPostFragment;->blogController:Lorg/briarproject/briar/android/blog/BlogController;

    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/blog/BlogController;->setBlogListener(Lorg/briarproject/briar/android/blog/BaseController$BlogListener;)V

    return-void
.end method

.method public onBlogPostAdded(Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V
    .locals 0

    return-void
.end method

.method public onBlogRemoved()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogPostFragment;->finish()V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 17
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/blog/BasePostFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 50
    invoke-super {p0}, Lorg/briarproject/briar/android/blog/BasePostFragment;->onStart()V

    .line 51
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogPostFragment;->blogController:Lorg/briarproject/briar/android/blog/BlogController;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogPostFragment;->postId:Lorg/briarproject/bramble/api/sync/MessageId;

    new-instance v2, Lorg/briarproject/briar/android/blog/BlogPostFragment$1;

    invoke-direct {v2, p0, p0}, Lorg/briarproject/briar/android/blog/BlogPostFragment$1;-><init>(Lorg/briarproject/briar/android/blog/BlogPostFragment;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/briar/android/blog/BlogController;->loadBlogPost(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .line 17
    invoke-super {p0}, Lorg/briarproject/briar/android/blog/BasePostFragment;->onStop()V

    return-void
.end method
