.class Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;
.super Lorg/briarproject/briar/android/controller/DbControllerImpl;
.source "GroupListControllerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/briar/android/privategroup/list/GroupListController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

.field private final groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

.field protected volatile listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

.field private final notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/controller/DbControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 73
    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 74
    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    .line 75
    iput-object p5, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 76
    iput-object p6, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 77
    iput-object p7, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-void
.end method

.method public static synthetic lambda$loadAvailableGroups$7(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 3

    .line 212
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    .line 213
    invoke-interface {v0}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->getInvitations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 212
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    sget-object v1, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 216
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadGroups$5(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 10

    .line 160
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 162
    invoke-interface {v2}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->getPrivateGroups()Ljava/util/Collection;

    move-result-object v2

    .line 163
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 165
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/briarproject/briar/api/privategroup/PrivateGroup;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :try_start_1
    invoke-virtual {v5}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v6

    .line 168
    invoke-virtual {v5}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v7

    invoke-virtual {v7}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v7

    .line 170
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 171
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    goto :goto_1

    .line 173
    :cond_0
    iget-object v8, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-interface {v8, v7}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v8

    .line 174
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v8

    .line 176
    :goto_1
    iget-object v8, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-interface {v8, v6}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->getGroupCount(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    move-result-object v8

    .line 177
    iget-object v9, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-interface {v9, v6}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->isDissolved(Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v6

    .line 178
    new-instance v9, Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    invoke-direct {v9, v5, v7, v8, v6}, Lorg/briarproject/briar/android/privategroup/list/GroupItem;-><init>(Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/bramble/api/identity/AuthorInfo;Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;Z)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/briarproject/bramble/api/db/NoSuchGroupException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 184
    :cond_1
    :try_start_2
    sget-object v2, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Loading groups"

    invoke-static {v2, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 185
    invoke-interface {p1, v3}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 187
    sget-object v1, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 188
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public static synthetic lambda$onGroupAdded$2(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;->onGroupAdded(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method public static synthetic lambda$onGroupDissolved$4(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;->onGroupDissolved(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method public static synthetic lambda$onGroupInvitationReceived$1(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    invoke-interface {v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;->onGroupInvitationReceived()V

    return-void
.end method

.method public static synthetic lambda$onGroupMessageAdded$0(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;->onGroupMessageAdded(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;)V

    return-void
.end method

.method public static synthetic lambda$onGroupRemoved$3(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;->onGroupRemoved(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method public static synthetic lambda$removeGroup$6(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 3

    .line 197
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 198
    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-interface {v2, p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->removePrivateGroup(Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 199
    sget-object p1, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Removing group"

    invoke-static {p1, v2, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 201
    sget-object v0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 202
    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private onGroupAdded(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$lN0cHYOvnpVUDiFL6qRQarWmg3k;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$lN0cHYOvnpVUDiFL6qRQarWmg3k;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onGroupDissolved(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$1Xv5tpJpWbIvK8zHKG30yArsTmE;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$1Xv5tpJpWbIvK8zHKG30yArsTmE;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onGroupInvitationReceived()V
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$jGOMNUmINXheAdr7WYB2JhnQD_c;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$jGOMNUmINXheAdr7WYB2JhnQD_c;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onGroupMessageAdded(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$no8ya73tfeetPtrW_lmXOs7SZVQ;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$no8ya73tfeetPtrW_lmXOs7SZVQ;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onGroupRemoved(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$p5Lbl-dnbg2mYAiRJ7Lta8Z16Jg;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$p5Lbl-dnbg2mYAiRJ7Lta8Z16Jg;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 104
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;

    if-eqz v0, :cond_0

    .line 105
    check-cast p1, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;

    .line 106
    sget-object v0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Private group message added"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->getHeader()Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->onGroupMessageAdded(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;)V

    goto/16 :goto_0

    .line 108
    :cond_0
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationRequestReceivedEvent;

    if-eqz v0, :cond_1

    .line 109
    sget-object p1, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Private group invitation received"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->onGroupInvitationReceived()V

    goto :goto_0

    .line 111
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;

    if-eqz v0, :cond_2

    .line 112
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;

    .line 113
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v0

    .line 114
    sget-object v1, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/ClientId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    sget-object v0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Private group added"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->onGroupAdded(Lorg/briarproject/bramble/api/sync/GroupId;)V

    goto :goto_0

    .line 118
    :cond_2
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    if-eqz v0, :cond_3

    .line 119
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    .line 120
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v0

    .line 121
    sget-object v1, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/ClientId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    sget-object v0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Private group removed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->onGroupRemoved(Lorg/briarproject/bramble/api/sync/GroupId;)V

    goto :goto_0

    .line 125
    :cond_3
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/event/GroupDissolvedEvent;

    if-eqz v0, :cond_4

    .line 126
    check-cast p1, Lorg/briarproject/briar/api/privategroup/event/GroupDissolvedEvent;

    .line 127
    sget-object v0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Private group dissolved"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/GroupDissolvedEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->onGroupDissolved(Lorg/briarproject/bramble/api/sync/GroupId;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public loadAvailableGroups(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/lang/Integer;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 210
    new-instance v0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$4uYPF9dVb5O37U1JxUZlAt3uWkw;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$4uYPF9dVb5O37U1JxUZlAt3uWkw;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadGroups(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/privategroup/list/GroupItem;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 158
    new-instance v0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$55aPl1akxsRn9JiTOyvfMnt6G_o;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$55aPl1akxsRn9JiTOyvfMnt6G_o;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 92
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearAllGroupMessageNotifications()V

    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GroupListListener needs to be attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStop()V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method

.method public removeGroup(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 195
    new-instance v0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$9jvj4IeKVHFLYzNqAHkWPHMDtx0;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupListControllerImpl$9jvj4IeKVHFLYzNqAHkWPHMDtx0;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGroupListListener(Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;->listener:Lorg/briarproject/briar/android/privategroup/list/GroupListController$GroupListListener;

    return-void
.end method
