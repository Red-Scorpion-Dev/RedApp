.class Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;
.super Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;
.source "GroupControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/privategroup/conversation/GroupController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl<",
        "Lorg/briarproject/briar/api/privategroup/PrivateGroup;",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
        "Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;",
        "Lorg/briarproject/briar/api/privategroup/GroupMessage;",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;",
        ">;",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupController;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

.field private final privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Ljava/util/concurrent/Executor;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V
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

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p8

    .line 67
    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/briar/api/client/MessageTracker;)V

    move-object v0, p5

    .line 69
    iput-object v0, v9, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    move-object/from16 v0, p6

    .line 70
    iput-object v0, v9, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    return-void
.end method

.method private createMessage(Ljava/lang/String;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    .line 189
    iget-object v10, v9, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->cryptoExecutor:Ljava/util/concurrent/Executor;

    new-instance v11, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$cRsEXWKpe6zzdanltyiwFPxl8Zk;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$createAndStoreMessage$5(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 10

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v6

    const/4 v0, 0x0

    .line 169
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 170
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->getPreviousMsgId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v7

    .line 171
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 172
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->getGroupCount(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getLatestMsgTime()J

    move-result-wide v1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 175
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p2

    move-object v8, p3

    .line 176
    invoke-direct/range {v1 .. v8}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->createMessage(Ljava/lang/String;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 179
    sget-object p2, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 180
    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$createMessage$6(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 11

    move-object v0, p0

    .line 190
    sget-object v1, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Creating group message..."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 191
    iget-object v3, v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    .line 192
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    move-wide v5, p1

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;->createGroupMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/privategroup/GroupMessage;

    move-result-object v1

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    .line 194
    invoke-virtual {p0, v1, v2, v3}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->storePost(Lorg/briarproject/briar/api/client/ThreadedMessage;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public static synthetic lambda$eventOccurred$0(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;->onItemReceived(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$eventOccurred$1(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->getMemberId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->getVisibility()Lorg/briarproject/briar/api/privategroup/Visibility;

    move-result-object p1

    .line 96
    invoke-interface {v0, v1, v2, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;->onContactRelationshipRevealed(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/privategroup/Visibility;)V

    return-void
.end method

.method public static synthetic lambda$eventOccurred$2(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/api/privategroup/event/GroupInvitationResponseReceivedEvent;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationResponseReceivedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;->onInvitationAccepted(Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method

.method public static synthetic lambda$eventOccurred$3(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;

    invoke-interface {v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;->onGroupDissolved()V

    return-void
.end method

.method public static synthetic lambda$isDissolved$8(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 3

    .line 237
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 238
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->isDissolved(Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    .line 239
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 241
    sget-object v1, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 242
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadLocalAuthor$7(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 3

    .line 223
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v0

    .line 224
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 226
    sget-object v1, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 227
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadSharingContacts$4(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 4

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 147
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->getMembers(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/api/privategroup/GroupMember;

    .line 150
    invoke-virtual {v2}, Lorg/briarproject/briar/api/privategroup/GroupMember;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v2}, Lorg/briarproject/briar/api/privategroup/GroupMember;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_1
    invoke-interface {p1, v1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 155
    sget-object v1, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 156
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_1
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

    .line 47
    check-cast p1, Lorg/briarproject/briar/api/privategroup/GroupMessage;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->addLocalMessage(Lorg/briarproject/briar/api/privategroup/GroupMessage;)Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    move-result-object p1

    return-object p1
.end method

.method protected addLocalMessage(Lorg/briarproject/briar/api/privategroup/GroupMessage;)Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->addLocalMessage(Lorg/briarproject/briar/api/privategroup/GroupMessage;)Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    move-result-object p1

    return-object p1
.end method

.method protected buildItem(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;Ljava/lang/String;)Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;
    .locals 1

    .line 212
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;

    check-cast p1, Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/briar/android/privategroup/conversation/JoinMessageItem;-><init>(Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;Ljava/lang/String;)V

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;-><init>(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic buildItem(Lorg/briarproject/briar/api/client/PostHeader;Ljava/lang/String;)Lorg/briarproject/briar/android/threaded/ThreadItem;
    .locals 0

    .line 47
    check-cast p1, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->buildItem(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;Ljava/lang/String;)Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    move-result-object p1

    return-object p1
.end method

.method public createAndStoreMessage(Ljava/lang/String;Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 165
    new-instance v0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$lIjvx07LrTtevssn8LMq0V_ZCVM;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$lIjvx07LrTtevssn8LMq0V_ZCVM;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic createAndStoreMessage(Ljava/lang/String;Lorg/briarproject/briar/android/threaded/ThreadItem;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0

    .line 47
    check-cast p2, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->createAndStoreMessage(Ljava/lang/String;Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method protected bridge synthetic deleteNamedGroup(Lorg/briarproject/briar/api/client/NamedGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 47
    check-cast p1, Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->deleteNamedGroup(Lorg/briarproject/briar/api/privategroup/PrivateGroup;)V

    return-void
.end method

.method protected deleteNamedGroup(Lorg/briarproject/briar/api/privategroup/PrivateGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->removePrivateGroup(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V

    .line 83
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;

    .line 85
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->isLocal()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    sget-object v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Group message received, adding..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->getHeader()Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->buildItem(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;Ljava/lang/String;)Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$yz7uGD7kAPVQ-eJiLI_OBNlTmhs;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$yz7uGD7kAPVQ-eJiLI_OBNlTmhs;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 91
    :cond_0
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;

    if-eqz v0, :cond_1

    .line 92
    check-cast p1, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;

    .line 94
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$6s-tOKTowowu8eD2vO-YZ7i0nMo;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$6s-tOKTowowu8eD2vO-YZ7i0nMo;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 99
    :cond_1
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationResponseReceivedEvent;

    if-eqz v0, :cond_2

    .line 100
    check-cast p1, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationResponseReceivedEvent;

    .line 102
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationResponseReceivedEvent;->getMessageHeader()Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;

    .line 103
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;->wasAccepted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$qcEg2GPqP1XnXzSY04OMFarw50s;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$qcEg2GPqP1XnXzSY04OMFarw50s;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/api/privategroup/event/GroupInvitationResponseReceivedEvent;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 107
    :cond_2
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/event/GroupDissolvedEvent;

    if-eqz v0, :cond_3

    .line 108
    check-cast p1, Lorg/briarproject/briar/api/privategroup/event/GroupDissolvedEvent;

    .line 109
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/event/GroupDissolvedEvent;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->listener:Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;

    check-cast p1, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;

    new-instance v0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$9Ppc8AwJdAmpC0e8u4PPjuZZ5w4;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$9Ppc8AwJdAmpC0e8u4PPjuZZ5w4;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;)V

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupController$GroupListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public isDissolved(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/lang/Boolean;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 235
    new-instance v0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$I4jdYUVpvjyL1rp2ml2aLWb3_xI;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$I4jdYUVpvjyL1rp2ml2aLWb3_xI;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected loadHeaders()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->getHeaders(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public loadLocalAuthor(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 221
    new-instance v0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$SWWVAFbjsdXR2ul8IuG7m5u0PMQ;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$SWWVAFbjsdXR2ul8IuG7m5u0PMQ;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic loadMessageText(Lorg/briarproject/briar/api/client/PostHeader;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 47
    check-cast p1, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->loadMessageText(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected loadMessageText(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 129
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->getMessageText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;

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

    .line 47
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->loadNamedGroup()Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object v0

    return-object v0
.end method

.method protected loadNamedGroup()Lorg/briarproject/briar/api/privategroup/PrivateGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->getPrivateGroup(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

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

    .line 144
    new-instance v0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$ipnmy6cxIMHpJYkCoXkYZDVH-Uc;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$ipnmy6cxIMHpJYkCoXkYZDVH-Uc;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected markRead(Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->setReadFlag(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    return-void
.end method

.method public onActivityStart()V
    .locals 2

    .line 75
    invoke-super {p0}, Lorg/briarproject/briar/android/threaded/ThreadListControllerImpl;->onActivityStart()V

    .line 76
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearGroupMessageNotification(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method
