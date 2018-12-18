.class Lorg/briarproject/briar/android/blog/FeedControllerImpl;
.super Lorg/briarproject/briar/android/blog/BaseControllerImpl;
.source "FeedControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/blog/FeedController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private volatile listener:Lorg/briarproject/briar/android/blog/FeedController$FeedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/api/blog/BlogManager;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 50
    invoke-direct/range {p0 .. p6}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/api/blog/BlogManager;)V

    return-void
.end method

.method public static synthetic lambda$loadBlogPosts$1(Lorg/briarproject/briar/android/blog/FeedControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 7

    .line 104
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v3, p0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {v3}, Lorg/briarproject/briar/api/blog/BlogManager;->getBlogs()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/briar/api/blog/Blog;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :try_start_1
    invoke-virtual {v4}, Lorg/briarproject/briar/api/blog/Blog;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->loadItems(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/briarproject/bramble/api/db/NoSuchGroupException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/briarproject/bramble/api/db/NoSuchMessageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 110
    :try_start_2
    sget-object v5, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v5, v6, v4}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    :cond_0
    sget-object v3, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Loading all posts"

    invoke-static {v3, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 114
    invoke-interface {p1, v2}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 116
    sget-object v1, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 117
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$loadPersonalBlog$2(Lorg/briarproject/briar/android/blog/FeedControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 5

    .line 127
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 128
    iget-object v2, p0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {v3, v2}, Lorg/briarproject/briar/api/blog/BlogManager;->getPersonalBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v2

    .line 130
    sget-object v3, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Loading personal blog"

    invoke-static {v3, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 131
    invoke-interface {p1, v2}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    sget-object v1, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 134
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onBlogAdded$0(Lorg/briarproject/briar/android/blog/FeedControllerImpl;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->listener:Lorg/briarproject/briar/android/blog/FeedController$FeedListener;

    invoke-interface {v0}, Lorg/briarproject/briar/android/blog/FeedController$FeedListener;->onBlogAdded()V

    return-void
.end method

.method private onBlogAdded()V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->listener:Lorg/briarproject/briar/android/blog/FeedController$FeedListener;

    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$FeedControllerImpl$tSPo0xLKOj0sWgaCdiKeDO3dj28;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$FeedControllerImpl$tSPo0xLKOj0sWgaCdiKeDO3dj28;-><init>(Lorg/briarproject/briar/android/blog/FeedControllerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/blog/FeedController$FeedListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 76
    instance-of v0, p1, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;

    .line 78
    sget-object v0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Blog post added"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->getHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;->isLocal()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->onBlogPostAdded(Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V

    goto :goto_0

    .line 80
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;

    .line 82
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object p1

    sget-object v0, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/sync/ClientId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 83
    sget-object p1, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Blog added"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->onBlogAdded()V

    goto :goto_0

    .line 86
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    if-eqz v0, :cond_2

    .line 87
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    .line 88
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object p1

    sget-object v0, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/sync/ClientId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    sget-object p1, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Blog removed"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->onBlogRemoved()V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadBlogPosts(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$FeedControllerImpl$q_kCTQdfuqH1lfJBO4dOYZFPVGM;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$FeedControllerImpl$q_kCTQdfuqH1lfJBO4dOYZFPVGM;-><init>(Lorg/briarproject/briar/android/blog/FeedControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadPersonalBlog(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 125
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$FeedControllerImpl$mO0GKe10PSb1HB87Jt2hTvsdmHI;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/-$$Lambda$FeedControllerImpl$mO0GKe10PSb1HB87Jt2hTvsdmHI;-><init>(Lorg/briarproject/briar/android/blog/FeedControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 56
    invoke-super {p0}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->onStart()V

    .line 57
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->listener:Lorg/briarproject/briar/android/blog/FeedController$FeedListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->blockAllBlogPostNotifications()V

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearAllBlogPostNotifications()V

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onStop()V
    .locals 1

    .line 64
    invoke-super {p0}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->onStop()V

    .line 65
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->unblockAllBlogPostNotifications()V

    return-void
.end method

.method public setFeedListener(Lorg/briarproject/briar/android/blog/FeedController$FeedListener;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->setBlogListener(Lorg/briarproject/briar/android/blog/BaseController$BlogListener;)V

    .line 71
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/FeedControllerImpl;->listener:Lorg/briarproject/briar/android/blog/FeedController$FeedListener;

    return-void
.end method
