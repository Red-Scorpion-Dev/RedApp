.class Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;
.super Lorg/briarproject/briar/android/controller/DbControllerImpl;
.source "GroupMemberListControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

.field private final privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/controller/DbControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 39
    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 40
    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    return-void
.end method

.method public static synthetic lambda$loadMembers$0(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 4

    .line 48
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 50
    invoke-interface {v1, p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->getMembers(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/api/privategroup/GroupMember;

    .line 52
    invoke-virtual {v1}, Lorg/briarproject/briar/api/privategroup/GroupMember;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 55
    iget-object v3, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    invoke-interface {v3, v2}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->isConnected(Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v3

    .line 56
    :cond_0
    new-instance v2, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;

    invoke-direct {v2, v1, v3}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;-><init>(Lorg/briarproject/briar/api/privategroup/GroupMember;Z)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {p2, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 60
    sget-object v0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 61
    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public loadMembers(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/briarproject/briar/android/privategroup/memberlist/-$$Lambda$GroupMemberListControllerImpl$WAs97PPfmfv-QH7fMGuJHzRE4w0;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/memberlist/-$$Lambda$GroupMemberListControllerImpl$WAs97PPfmfv-QH7fMGuJHzRE4w0;-><init>(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method
