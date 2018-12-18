.class Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;
.super Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;
.source "GroupInvitationControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/sharing/InvitationControllerImpl<",
        "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
        ">;",
        "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 40
    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    return-void
.end method

.method public static synthetic lambda$respondToInvitation$0(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 2

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    .line 73
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;->getCreator()Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    .line 74
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    invoke-interface {v1, p1, v0, p2}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->respondToInvitation(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    sget-object p2, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 77
    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V

    .line 47
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationRequestReceivedEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 48
    sget-object p1, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Group invitation request received, reloading"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;->listener:Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;

    invoke-interface {p1, v1}, Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;->loadInvitations(Z)V

    goto :goto_0

    .line 50
    :cond_0
    instance-of p1, p1, Lorg/briarproject/briar/api/privategroup/event/GroupInvitationResponseReceivedEvent;

    if-eqz p1, :cond_1

    .line 51
    sget-object p1, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Group invitation response received, reloading"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;->listener:Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;

    invoke-interface {p1, v1}, Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;->loadInvitations(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getInvitations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->getInvitations()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;
    .locals 1

    .line 58
    sget-object v0, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-object v0
.end method

.method public respondToInvitation(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
            "Z",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/briarproject/briar/android/privategroup/invitation/-$$Lambda$GroupInvitationControllerImpl$rCrs6lENyJl1_1NdxSJ3wTpKFhY;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/privategroup/invitation/-$$Lambda$GroupInvitationControllerImpl$rCrs6lENyJl1_1NdxSJ3wTpKFhY;-><init>(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic respondToInvitation(Lorg/briarproject/briar/api/sharing/InvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 0

    .line 28
    check-cast p1, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;->respondToInvitation(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method
