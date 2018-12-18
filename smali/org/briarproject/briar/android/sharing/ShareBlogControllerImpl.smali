.class Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;
.super Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;
.source "ShareBlogControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/sharing/ShareBlogController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/briar/api/blog/BlogSharingManager;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;)V

    .line 48
    iput-object p4, p0, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;->conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 49
    iput-object p5, p0, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;->blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

    .line 50
    iput-object p6, p0, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method

.method public static synthetic lambda$share$0(Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;Ljava/lang/String;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 7

    .line 63
    :try_start_0
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 64
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/contact/ContactId;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :try_start_1
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;->conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 67
    invoke-interface {v3, v2}, Lorg/briarproject/briar/api/conversation/ConversationManager;->getGroupCount(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getLatestMsgTime()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 66
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 69
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;->blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

    move-object v1, p3

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/api/blog/BlogSharingManager;->sendInvitation(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/briarproject/bramble/api/db/NoSuchContactException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/briarproject/bramble/api/db/NoSuchGroupException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    :try_start_2
    sget-object v1, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 75
    sget-object p2, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, p3, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 76
    invoke-interface {p4, p1}, Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;->onException(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected isDisabled(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;->blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/api/blog/BlogSharingManager;->canBeShared(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public share(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 61
    new-instance v6, Lorg/briarproject/briar/android/sharing/-$$Lambda$ShareBlogControllerImpl$m9uvcEPor3oHwy5hD--0IczuKLg;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/sharing/-$$Lambda$ShareBlogControllerImpl$m9uvcEPor3oHwy5hD--0IczuKLg;-><init>(Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;Ljava/lang/String;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    invoke-virtual {p0, v6}, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method
