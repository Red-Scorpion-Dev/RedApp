.class Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;
.super Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;
.source "CreateGroupControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private final cryptoExecutor:Ljava/util/concurrent/Executor;

.field private final groupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

.field private final groupInvitationFactory:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

.field private final groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

.field private final groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

.field private final groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

.field private final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p1, p3, p4}, Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;)V

    .line 66
    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->cryptoExecutor:Ljava/util/concurrent/Executor;

    .line 67
    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 68
    iput-object p5, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 69
    iput-object p6, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->groupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 70
    iput-object p7, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    .line 71
    iput-object p8, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 72
    iput-object p9, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->groupInvitationFactory:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

    .line 73
    iput-object p10, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    .line 74
    iput-object p11, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method

.method private createGroupAndMessages(Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->cryptoExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hUAvf3yYUN9jJIOlmli3gwPadrQ;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hUAvf3yYUN9jJIOlmli3gwPadrQ;-><init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/lang/String;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$createGroup$0(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 2

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0, p1, p2}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->createGroupAndMessages(Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    sget-object v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 86
    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$createGroupAndMessages$1(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/lang/String;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 4

    .line 94
    sget-object v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Creating group..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->groupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 96
    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;->createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object p1

    .line 97
    sget-object v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Creating new join announcement..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->groupMessageFactory:Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    .line 99
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 100
    invoke-interface {v2}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 99
    invoke-interface {v0, v1, v2, v3, p2}, Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;->createJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/identity/LocalAuthor;)Lorg/briarproject/briar/api/privategroup/GroupMessage;

    move-result-object p2

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->storeGroup(Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public static synthetic lambda$sendInvitation$3(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 7

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v3

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactId;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :try_start_1
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/contact/ContactManager;->getContact(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/briarproject/bramble/api/db/NoSuchContactException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 138
    :try_start_2
    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->signInvitations(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/util/Collection;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    :try_end_2
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 140
    sget-object p2, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, p3, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 141
    invoke-interface {p4, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$sendInvitations$5(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/lang/String;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 9

    .line 167
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    .line 168
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :catch_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :try_start_1
    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    .line 171
    invoke-static {v0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;->access$000(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v4

    invoke-static {v0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;->access$100(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;)J

    move-result-wide v6

    .line 172
    invoke-static {v0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;->access$200(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;)[B

    move-result-object v8

    move-object v3, p3

    move-object v5, p1

    .line 170
    invoke-interface/range {v2 .. v8}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->sendInvitation(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;J[B)V
    :try_end_1
    .catch Lorg/briarproject/bramble/api/db/NoSuchContactException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 178
    :cond_1
    :try_start_2
    invoke-interface {p4, v1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 180
    sget-object p2, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, p3, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 181
    invoke-interface {p4, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$signInvitations$4(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 13

    move-object v0, p0

    .line 150
    iget-object v1, v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v8

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lorg/briarproject/bramble/api/contact/Contact;

    .line 153
    iget-object v2, v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->groupInvitationFactory:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

    .line 154
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getPrivateKey()[B

    move-result-object v7

    move-object v3, v11

    move-object v4, p2

    move-wide v5, v8

    .line 153
    invoke-interface/range {v2 .. v7}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;->signInvitation(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/GroupId;J[B)[B

    move-result-object v6

    .line 155
    new-instance v12, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;

    invoke-virtual {v11}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    const/4 v7, 0x0

    move-object v2, v12

    move-wide v4, v8

    invoke-direct/range {v2 .. v7}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;J[BLorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$1;)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 158
    invoke-direct {p0, p2, v1, v3, v4}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->sendInvitations(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public static synthetic lambda$storeGroup$2(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 2

    .line 108
    sget-object v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Adding group to database..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->addPrivateGroup(Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Z)V

    .line 111
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    sget-object p2, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 114
    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private sendInvitations(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl$InvitationContext;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/lang/Void;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 165
    new-instance v6, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$7vtkH3lgxEZHJVi4MtApad9kHak;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$7vtkH3lgxEZHJVi4MtApad9kHak;-><init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/lang/String;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v6}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private signInvitations(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/util/Collection;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/lang/Void;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->cryptoExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$KVpcUcluhGM1ObPmUuj-KJs8itc;-><init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private storeGroup(Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroup;",
            "Lorg/briarproject/briar/api/privategroup/GroupMessage;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hVxYC3z9o6SmF4IjWB6mmHoHudM;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$hVxYC3z9o6SmF4IjWB6mmHoHudM;-><init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public createGroup(Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$1UONzCV_tMFjzsVJhJOWNMB_BBg;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$1UONzCV_tMFjzsVJhJOWNMB_BBg;-><init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected isDisabled(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    invoke-interface {v0, p2, p1}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->isInvitationAllowed(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public sendInvitation(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/lang/Void;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 127
    new-instance v6, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$VvmRtM8NXOnBwkGNrrA-BdCFiv4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/privategroup/creation/-$$Lambda$CreateGroupControllerImpl$VvmRtM8NXOnBwkGNrrA-BdCFiv4;-><init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v6}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method
