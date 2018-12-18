.class abstract Lorg/briarproject/briar/android/blog/BaseControllerImpl;
.super Lorg/briarproject/briar/android/controller/DbControllerImpl;
.source "BaseControllerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/briar/android/blog/BaseController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected final blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

.field protected final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final headerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/briar/api/blog/BlogPostHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field private volatile listener:Lorg/briarproject/briar/android/blog/BaseController$BlogListener;

.field protected final notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

.field private final textCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/api/blog/BlogManager;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/controller/DbControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 54
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->textCache:Ljava/util/Map;

    .line 55
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->headerCache:Ljava/util/Map;

    .line 65
    iput-object p3, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 66
    iput-object p4, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 67
    iput-object p5, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 68
    iput-object p6, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    return-void
.end method

.method private getItem(Lorg/briarproject/briar/api/blog/BlogPostHeader;)Lorg/briarproject/briar/android/blog/BlogPostItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 204
    instance-of v0, p1, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    if-eqz v0, :cond_0

    .line 205
    check-cast p1, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    .line 206
    new-instance v0, Lorg/briarproject/briar/android/blog/BlogCommentItem;

    invoke-direct {v0, p1}, Lorg/briarproject/briar/android/blog/BlogCommentItem;-><init>(Lorg/briarproject/briar/api/blog/BlogCommentHeader;)V

    .line 207
    invoke-virtual {v0}, Lorg/briarproject/briar/android/blog/BlogCommentItem;->getPostHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->getPostText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/blog/BlogCommentItem;->setText(Ljava/lang/String;)V

    return-object v0

    .line 211
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->getPostText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-direct {v1, p1, v0}, Lorg/briarproject/briar/android/blog/BlogPostItem;-><init>(Lorg/briarproject/briar/api/blog/BlogPostHeader;Ljava/lang/String;)V

    return-object v1
.end method

.method private getPostHeader(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->headerCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogPostHeader;

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/api/blog/BlogManager;->getPostHeader(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v0

    .line 196
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->headerCache:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getPostText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->textCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/blog/BlogManager;->getPostText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/util/HtmlUtils;->ARTICLE:Lorg/jsoup/safety/Whitelist;

    invoke-static {v0, v1}, Lorg/briarproject/briar/util/HtmlUtils;->clean(Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->textCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$loadBlogPost$3(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 4

    .line 140
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 141
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->getItem(Lorg/briarproject/briar/api/blog/BlogPostHeader;)Lorg/briarproject/briar/android/blog/BlogPostItem;

    move-result-object p1

    .line 142
    sget-object v2, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Loading text"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 143
    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    sget-object v0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 146
    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadBlogPost$4(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 3

    .line 163
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 164
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->getPostHeader(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p1

    .line 165
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->getItem(Lorg/briarproject/briar/api/blog/BlogPostHeader;)Lorg/briarproject/briar/android/blog/BlogPostItem;

    move-result-object p1

    .line 166
    sget-object p2, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Loading post"

    invoke-static {p2, v2, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 167
    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    sget-object p2, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 170
    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadBlogPosts$2(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 2

    .line 103
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->loadItems(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object p1

    .line 104
    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    sget-object v0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 107
    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onBlogPostAdded$0(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->listener:Lorg/briarproject/briar/android/blog/BaseController$BlogListener;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/android/blog/BaseController$BlogListener;->onBlogPostAdded(Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V

    return-void
.end method

.method public static synthetic lambda$onBlogRemoved$1(Lorg/briarproject/briar/android/blog/BaseControllerImpl;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->listener:Lorg/briarproject/briar/android/blog/BaseController$BlogListener;

    invoke-interface {v0}, Lorg/briarproject/briar/android/blog/BaseController$BlogListener;->onBlogRemoved()V

    return-void
.end method

.method public static synthetic lambda$repeatPost$5(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/briar/android/blog/BlogPostItem;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 3

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {v1, v0}, Lorg/briarproject/briar/api/blog/BlogManager;->getPersonalBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getHeader()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p1

    .line 183
    iget-object v2, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/Blog;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v2, v0, v1, p2, p1}, Lorg/briarproject/briar/api/blog/BlogManager;->addLocalComment(Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;Lorg/briarproject/briar/api/blog/BlogPostHeader;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    sget-object p2, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 186
    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public loadBlogPost(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->headerCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogPostHeader;

    if-eqz v0, :cond_0

    .line 157
    sget-object p1, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Loaded header from cache"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v0, p3}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->loadBlogPost(Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void

    .line 161
    :cond_0
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$jSal4apUIV0-0fmGkqaBOHIUDRU;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$jSal4apUIV0-0fmGkqaBOHIUDRU;-><init>(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadBlogPost(Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/blog/BlogPostHeader;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->textCache:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 134
    sget-object v1, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Loaded text from cache"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 135
    new-instance v1, Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-direct {v1, p1, v0}, Lorg/briarproject/briar/android/blog/BlogPostItem;-><init>(Lorg/briarproject/briar/api/blog/BlogPostHeader;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V

    return-void

    .line 138
    :cond_0
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$Qegsp4fdZ-xcsPds_PSMuNFVBNA;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$Qegsp4fdZ-xcsPds_PSMuNFVBNA;-><init>(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadBlogPosts(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$Nrfs4l6JBG3ZjgV4CfNRjtMoH7o;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$Nrfs4l6JBG3ZjgV4CfNRjtMoH7o;-><init>(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method loadItems(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 113
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 114
    iget-object v2, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    .line 115
    invoke-interface {v2, p1}, Lorg/briarproject/briar/api/blog/BlogManager;->getPostHeaders(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object p1

    .line 116
    sget-object v2, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Loading headers"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v1

    .line 119
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/briar/api/blog/BlogPostHeader;

    .line 120
    iget-object v4, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->headerCache:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-direct {p0, v3}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->getItem(Lorg/briarproject/briar/api/blog/BlogPostHeader;)Lorg/briarproject/briar/android/blog/BlogPostItem;

    move-result-object v3

    .line 122
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_0
    sget-object p1, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Loading bodies"

    invoke-static {p1, v3, v1, v2}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    return-object v0
.end method

.method onBlogPostAdded(Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->listener:Lorg/briarproject/briar/android/blog/BaseController$BlogListener;

    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$qzI-ImcjniA0SwNxIxR5zeBL8Eg;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$qzI-ImcjniA0SwNxIxR5zeBL8Eg;-><init>(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/blog/BaseController$BlogListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method onBlogRemoved()V
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->listener:Lorg/briarproject/briar/android/blog/BaseController$BlogListener;

    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$CIc4VC5q3M3uYIHi4-BZ3y0P5iY;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$CIc4VC5q3M3uYIHi4-BZ3y0P5iY;-><init>(Lorg/briarproject/briar/android/blog/BaseControllerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/blog/BaseController$BlogListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->listener:Lorg/briarproject/briar/android/blog/BaseController$BlogListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onStop()V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method

.method public repeatPost(Lorg/briarproject/briar/android/blog/BlogPostItem;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/blog/BlogPostItem;",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 178
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$IFmn9PDrbOO30rMh2DPhJxSf8SY;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$IFmn9PDrbOO30rMh2DPhJxSf8SY;-><init>(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/briar/android/blog/BlogPostItem;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBlogListener(Lorg/briarproject/briar/android/blog/BaseController$BlogListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->listener:Lorg/briarproject/briar/android/blog/BaseController$BlogListener;

    return-void
.end method
