.class Lorg/briarproject/briar/android/forum/ForumControllerImpl;
.super Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;
.source "ForumControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/forum/ForumController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl<",
        "Lorg/briarproject/briar/api/forum/Forum;",
        "Lorg/briarproject/briar/android/forum/ForumItem;",
        "Lorg/briarproject/briar/api/forum/ForumPostHeader;",
        "Lorg/briarproject/briar/api/forum/ForumPost;",
        "Lorg/briarproject/briar/android/forum/ForumController$ForumListener;",
        ">;",
        "Lorg/briarproject/briar/android/forum/ForumController;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

.field private final forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Ljava/util/concurrent/Executor;Lorg/briarproject/briar/api/forum/ForumManager;Lorg/briarproject/briar/api/forum/ForumSharingManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V
    .locals 10
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
        .end annotation
    .end param

    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    move-object/from16 v8, p9

    .line 62
    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/briar/api/client/MessageTracker;)V

    move-object v0, p5

    .line 64
    iput-object v0, v9, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    move-object/from16 v0, p6

    .line 65
    iput-object v0, v9, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;

    return-void
.end method

.method private createMessage(Ljava/lang/String;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/forum/ForumItem;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    .line 162
    iget-object v9, v8, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->cryptoExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$arM0GTUSN-G1EGWVSqOBHFzERuk;-><init>(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Ljava/lang/String;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$createAndStoreMessage$1(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/briar/android/forum/ForumItem;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 8

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v6

    .line 146
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/forum/ForumManager;->getGroupCount(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getLatestMsgTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 148
    invoke-interface {v2}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 147
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Lorg/briarproject/briar/android/forum/ForumItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    move-object v1, p0

    move-object v2, p2

    move-object v7, p3

    .line 151
    invoke-direct/range {v1 .. v7}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->createMessage(Ljava/lang/String;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 153
    sget-object p2, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 154
    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$createMessage$2(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Ljava/lang/String;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 9

    .line 163
    sget-object v0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Creating forum post..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lorg/briarproject/briar/api/forum/ForumManager;->createLocalPost(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;)Lorg/briarproject/briar/api/forum/ForumPost;

    move-result-object p2

    .line 166
    invoke-virtual {p0, p2, p1, p6}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->storePost(Lorg/briarproject/briar/api/client/ThreadedMessage;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public static synthetic lambda$loadSharingContacts$0(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 3

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;

    .line 127
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/forum/ForumSharingManager;->getSharedWith(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    .line 129
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/contact/Contact;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {p1, v1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 133
    sget-object v1, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 134
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$onForumInvitationAccepted$4(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;->onInvitationAccepted(Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method

.method public static synthetic lambda$onForumLeft$5(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;->onForumLeft(Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method

.method public static synthetic lambda$onForumPostReceived$3(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/briar/android/forum/ForumItem;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;->onItemReceived(Ljava/lang/Object;)V

    return-void
.end method

.method private onForumInvitationAccepted(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;

    new-instance v1, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$_pA_caPptCd-pBGvcGN2NoCsSU8;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$_pA_caPptCd-pBGvcGN2NoCsSU8;-><init>(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onForumLeft(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;

    new-instance v1, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$MmV1634DxLr1Riyh0MI7DRx_JQs;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$MmV1634DxLr1Riyh0MI7DRx_JQs;-><init>(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onForumPostReceived(Lorg/briarproject/briar/api/forum/ForumPostHeader;Ljava/lang/String;)V
    .locals 1

    .line 187
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->buildItem(Lorg/briarproject/briar/api/forum/ForumPostHeader;Ljava/lang/String;)Lorg/briarproject/briar/android/forum/ForumItem;

    move-result-object p1

    .line 188
    iget-object p2, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast p2, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;

    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$gLwuFOFOMnyMdOAz6X2ffRZkFhg;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$gLwuFOFOMnyMdOAz6X2ffRZkFhg;-><init>(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/briar/android/forum/ForumItem;)V

    invoke-interface {p2, v0}, Lorg/briarproject/briar/android/forum/ForumController$ForumListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic addLocalMessage(Lorg/briarproject/briar/api/client/ThreadedMessage;)Lorg/briarproject/briar/api/client/PostHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 44
    check-cast p1, Lorg/briarproject/briar/api/forum/ForumPost;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->addLocalMessage(Lorg/briarproject/briar/api/forum/ForumPost;)Lorg/briarproject/briar/api/forum/ForumPostHeader;

    move-result-object p1

    return-object p1
.end method

.method protected addLocalMessage(Lorg/briarproject/briar/api/forum/ForumPost;)Lorg/briarproject/briar/api/forum/ForumPostHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/forum/ForumManager;->addLocalPost(Lorg/briarproject/briar/api/forum/ForumPost;)Lorg/briarproject/briar/api/forum/ForumPostHeader;

    move-result-object p1

    return-object p1
.end method

.method protected buildItem(Lorg/briarproject/briar/api/forum/ForumPostHeader;Ljava/lang/String;)Lorg/briarproject/briar/android/forum/ForumItem;
    .locals 1

    .line 183
    new-instance v0, Lorg/briarproject/briar/android/forum/ForumItem;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/briar/android/forum/ForumItem;-><init>(Lorg/briarproject/briar/api/forum/ForumPostHeader;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic buildItem(Lorg/briarproject/briar/api/client/PostHeader;Ljava/lang/String;)Lorg/briarproject/briar/android/threaded/ThreadItem;
    .locals 0

    .line 44
    check-cast p1, Lorg/briarproject/briar/api/forum/ForumPostHeader;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->buildItem(Lorg/briarproject/briar/api/forum/ForumPostHeader;Ljava/lang/String;)Lorg/briarproject/briar/android/forum/ForumItem;

    move-result-object p1

    return-object p1
.end method

.method public createAndStoreMessage(Ljava/lang/String;Lorg/briarproject/briar/android/forum/ForumItem;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/forum/ForumItem;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/forum/ForumItem;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 143
    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$qQPuHYDx5s53e6lqud3Wn8ZziXk;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$qQPuHYDx5s53e6lqud3Wn8ZziXk;-><init>(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/briar/android/forum/ForumItem;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic createAndStoreMessage(Ljava/lang/String;Lorg/briarproject/briar/android/threaded/ThreadItem;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    .line 44
    check-cast p2, Lorg/briarproject/briar/android/forum/ForumItem;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->createAndStoreMessage(Ljava/lang/String;Lorg/briarproject/briar/android/forum/ForumItem;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method protected bridge synthetic deleteNamedGroup(Lorg/briarproject/briar/api/client/NamedGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 44
    check-cast p1, Lorg/briarproject/briar/api/forum/Forum;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->deleteNamedGroup(Lorg/briarproject/briar/api/forum/Forum;)V

    return-void
.end method

.method protected deleteNamedGroup(Lorg/briarproject/briar/api/forum/Forum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/forum/ForumManager;->removeForum(Lorg/briarproject/briar/api/forum/Forum;)V

    return-void
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V

    .line 78
    instance-of v0, p1, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;

    .line 80
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    sget-object v0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Forum post received, adding..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->getHeader()Lorg/briarproject/briar/api/forum/ForumPostHeader;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->onForumPostReceived(Lorg/briarproject/briar/api/forum/ForumPostHeader;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    instance-of v0, p1, Lorg/briarproject/briar/api/forum/event/ForumInvitationResponseReceivedEvent;

    if-eqz v0, :cond_1

    .line 85
    check-cast p1, Lorg/briarproject/briar/api/forum/event/ForumInvitationResponseReceivedEvent;

    .line 87
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/event/ForumInvitationResponseReceivedEvent;->getMessageHeader()Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumInvitationResponse;

    .line 88
    invoke-virtual {v0}, Lorg/briarproject/briar/api/forum/ForumInvitationResponse;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/briarproject/briar/api/forum/ForumInvitationResponse;->wasAccepted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    sget-object v0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Forum invitation was accepted"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/event/ForumInvitationResponseReceivedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->onForumInvitationAccepted(Lorg/briarproject/bramble/api/contact/ContactId;)V

    goto :goto_0

    .line 92
    :cond_1
    instance-of v0, p1, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;

    if-eqz v0, :cond_2

    .line 93
    check-cast p1, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;

    .line 94
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    sget-object v0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Forum left by contact"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->onForumLeft(Lorg/briarproject/bramble/api/contact/ContactId;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected loadHeaders()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/forum/ForumPostHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/forum/ForumManager;->getPostHeaders(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadMessageText(Lorg/briarproject/briar/api/client/PostHeader;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 44
    check-cast p1, Lorg/briarproject/briar/api/forum/ForumPostHeader;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->loadMessageText(Lorg/briarproject/briar/api/forum/ForumPostHeader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected loadMessageText(Lorg/briarproject/briar/api/forum/ForumPostHeader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/forum/ForumManager;->getPostText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic loadNamedGroup()Lorg/briarproject/briar/api/client/NamedGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->loadNamedGroup()Lorg/briarproject/briar/api/forum/Forum;

    move-result-object v0

    return-object v0
.end method

.method protected loadNamedGroup()Lorg/briarproject/briar/api/forum/Forum;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/forum/ForumManager;->getForum(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object v0

    return-object v0
.end method

.method public loadSharingContacts(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$l1uO0jglFLeHfbMbvzZsbewGthU;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumControllerImpl$l1uO0jglFLeHfbMbvzZsbewGthU;-><init>(Lorg/briarproject/briar/android/forum/ForumControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected markRead(Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lorg/briarproject/briar/api/forum/ForumManager;->setReadFlag(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    return-void
.end method

.method public onActivityStart()V
    .locals 2

    .line 70
    invoke-super {p0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->onActivityStart()V

    .line 71
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearForumPostNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method
