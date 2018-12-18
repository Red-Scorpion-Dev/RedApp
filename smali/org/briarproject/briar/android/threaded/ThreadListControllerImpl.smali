.class public abstract Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;
.super Lorg/briarproject/briar/android/controller/DbControllerImpl;
.source "ThreadListControllerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/briar/android/threaded/ThreadListController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<G:",
        "Lorg/briarproject/briar/api/client/NamedGroup;",
        "I:",
        "Lorg/briarproject/briar/android/threaded/ThreadItem;",
        "H:",
        "Lorg/briarproject/briar/api/client/PostHeader;",
        "M:",
        "Lorg/briarproject/briar/api/client/ThreadedMessage;",
        "L::Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener<",
        "TI;>;>",
        "Lorg/briarproject/briar/android/controller/DbControllerImpl;",
        "Lorg/briarproject/bramble/api/event/EventListener;",
        "Lorg/briarproject/briar/android/threaded/ThreadListController<",
        "TG;TI;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected final clock:Lorg/briarproject/bramble/api/system/Clock;

.field protected final cryptoExecutor:Ljava/util/concurrent/Executor;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private volatile groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field protected final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field protected volatile listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

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

    .line 49
    const-class v0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/briar/api/client/MessageTracker;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/controller/DbControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 53
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->textCache:Ljava/util/Map;

    .line 69
    iput-object p3, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 70
    iput-object p4, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->cryptoExecutor:Ljava/util/concurrent/Executor;

    .line 71
    iput-object p7, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 72
    iput-object p6, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 73
    iput-object p5, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 74
    iput-object p8, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    return-void
.end method

.method private buildItems(Ljava/util/Collection;)Lorg/briarproject/briar/android/threaded/ThreadItemList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TH;>;)",
            "Lorg/briarproject/briar/android/threaded/ThreadItemList<",
            "TI;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 248
    new-instance v0, Lorg/briarproject/briar/android/threaded/ThreadItemListImpl;

    invoke-direct {v0}, Lorg/briarproject/briar/android/threaded/ThreadItemListImpl;-><init>()V

    .line 249
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/api/client/PostHeader;

    .line 250
    iget-object v2, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->textCache:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/client/PostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->buildItem(Lorg/briarproject/briar/api/client/PostHeader;Ljava/lang/String;)Lorg/briarproject/briar/android/threaded/ThreadItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/threaded/ThreadItemList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {p1, v1}, Lorg/briarproject/briar/api/client/MessageTracker;->loadStoredMessageId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    .line 253
    sget-object v1, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    sget-object v1, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded last top visible message id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 255
    :cond_1
    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadItemList;->setFirstVisibleId(Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-object v0
.end method

.method private checkGroupId()V
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static synthetic lambda$deleteNamedGroup$6(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 4

    .line 232
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 233
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->loadNamedGroup()Lorg/briarproject/briar/api/client/NamedGroup;

    move-result-object v2

    .line 234
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->deleteNamedGroup(Lorg/briarproject/briar/api/client/NamedGroup;)V

    .line 235
    sget-object v2, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Removing group"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    sget-object v1, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 238
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$eventOccurred$1(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    invoke-interface {v0}, Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;->onGroupRemoved()V

    return-void
.end method

.method public static synthetic lambda$loadItems$3(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 7

    .line 157
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 158
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->loadHeaders()Ljava/util/Collection;

    move-result-object v2

    .line 159
    sget-object v3, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Loading headers"

    invoke-static {v3, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 162
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 163
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/briar/api/client/PostHeader;

    .line 164
    iget-object v5, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->textCache:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/briarproject/briar/api/client/PostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 165
    iget-object v5, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->textCache:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/briarproject/briar/api/client/PostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    .line 166
    invoke-virtual {p0, v4}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->loadMessageText(Lorg/briarproject/briar/api/client/PostHeader;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_1
    sget-object v3, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Loading bodies"

    invoke-static {v3, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 172
    invoke-direct {p0, v2}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->buildItems(Ljava/util/Collection;)Lorg/briarproject/briar/android/threaded/ThreadItemList;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 174
    sget-object v1, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 175
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$loadNamedGroup$2(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 5

    .line 136
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 137
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->loadNamedGroup()Lorg/briarproject/briar/api/client/NamedGroup;

    move-result-object v2

    .line 138
    sget-object v3, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Loading group"

    invoke-static {v3, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 139
    invoke-interface {p1, v2}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    sget-object v1, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 142
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$markItemsRead$4(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Ljava/util/Collection;)V
    .locals 3

    .line 195
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 196
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/threaded/ThreadItem;

    .line 197
    invoke-virtual {v2}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->markRead(Lorg/briarproject/bramble/api/sync/MessageId;)V

    goto :goto_0

    .line 199
    :cond_0
    sget-object p1, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Marking read"

    invoke-static {p1, v2, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 201
    sget-object v0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$onActivityDestroy$0(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 2

    .line 109
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v0, v1, p1}, Lorg/briarproject/briar/api/client/MessageTracker;->storeMessageId(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    sget-object v0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$storePost$5(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/api/client/ThreadedMessage;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 4

    .line 213
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 214
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->addLocalMessage(Lorg/briarproject/briar/api/client/ThreadedMessage;)Lorg/briarproject/briar/api/client/PostHeader;

    move-result-object v2

    .line 215
    iget-object v3, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->textCache:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/client/ThreadedMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object p1, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Storing message"

    invoke-static {p1, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 217
    invoke-virtual {p0, v2, p2}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->buildItem(Lorg/briarproject/briar/api/client/PostHeader;Ljava/lang/String;)Lorg/briarproject/briar/android/threaded/ThreadItem;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    sget-object p2, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 220
    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract addLocalMessage(Lorg/briarproject/briar/api/client/ThreadedMessage;)Lorg/briarproject/briar/api/client/PostHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TH;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end method

.method protected abstract buildItem(Lorg/briarproject/briar/api/client/PostHeader;Ljava/lang/String;)Lorg/briarproject/briar/android/threaded/ThreadItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation
.end method

.method public deleteNamedGroup(Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 230
    new-instance v0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$x4PaBoqzMiunBeUF4xSbxSZBs1M;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$x4PaBoqzMiunBeUF4xSbxSZBs1M;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract deleteNamedGroup(Lorg/briarproject/briar/api/client/NamedGroup;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TG;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 120
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    if-eqz v0, :cond_0

    .line 121
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    .line 122
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    sget-object p1, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Group removed"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    new-instance v0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$oCkBMIbclm21XrD3vo5JmUgkV9s;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$oCkBMIbclm21XrD3vo5JmUgkV9s;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;)V

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 262
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->checkGroupId()V

    .line 263
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method protected abstract loadHeaders()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TH;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end method

.method public loadItems(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/threaded/ThreadItemList<",
            "TI;>;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->checkGroupId()V

    .line 154
    new-instance v0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$IBwHdAH9JGNkrAuXCRQ3zykJ1gc;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$IBwHdAH9JGNkrAuXCRQ3zykJ1gc;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract loadMessageText(Lorg/briarproject/briar/api/client/PostHeader;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end method

.method protected abstract loadNamedGroup()Lorg/briarproject/briar/api/client/NamedGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TG;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end method

.method public loadNamedGroup(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "TG;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->checkGroupId()V

    .line 134
    new-instance v0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$AUgJDbScc10m0lPhN2J-Y1nItkg;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$AUgJDbScc10m0lPhN2J-Y1nItkg;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public markItemRead(Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 188
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->markItemsRead(Ljava/util/Collection;)V

    return-void
.end method

.method public markItemsRead(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TI;>;)V"
        }
    .end annotation

    .line 193
    new-instance v0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$xeR7vlCyG2PF2ZIe0dk502tfErw;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$xeR7vlCyG2PF2ZIe0dk502tfErw;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract markRead(Lorg/briarproject/bramble/api/sync/MessageId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end method

.method public onActivityCreate(Landroid/app/Activity;)V
    .locals 0

    .line 86
    check-cast p1, Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    return-void
.end method

.method public onActivityDestroy()V
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    invoke-interface {v0}, Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;->getFirstVisibleMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$eb9fgxAJVcxMQ_j2wJqS5W0yC8U;

    invoke-direct {v2, p0, v0}, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$eb9fgxAJVcxMQ_j2wJqS5W0yC8U;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/bramble/api/sync/MessageId;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onActivityStart()V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->blockNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 93
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method

.method public onActivityStop()V
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->unblockNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 100
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method

.method public setGroupId(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method

.method protected storePost(Lorg/briarproject/briar/api/client/ThreadedMessage;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "TI;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 211
    new-instance v0, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$gsUTEhc79C4OM-dSIr5EtS224S0;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListControllerImpl$gsUTEhc79C4OM-dSIr5EtS224S0;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;Lorg/briarproject/briar/api/client/ThreadedMessage;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method
