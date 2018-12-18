.class public abstract Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;
.super Lorg/briarproject/briar/android/controller/DbControllerImpl;
.source "InvitationControllerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/briar/android/sharing/InvitationController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/api/sharing/InvitationItem;",
        ">",
        "Lorg/briarproject/briar/android/controller/DbControllerImpl;",
        "Lorg/briarproject/bramble/api/event/EventListener;",
        "Lorg/briarproject/briar/android/sharing/InvitationController<",
        "TI;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field protected static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field protected listener:Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/controller/DbControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 47
    iput-object p3, p0, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-void
.end method

.method public static synthetic lambda$loadInvitations$0(Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 5

    .line 100
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->getInvitations()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    sget-object v3, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Loading invitations"

    invoke-static {v3, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 103
    invoke-interface {p1, v2}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    sget-object v1, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 106
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 73
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    if-eqz v0, :cond_0

    .line 74
    sget-object p1, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Contact removed, reloading..."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->listener:Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;->loadInvitations(Z)V

    goto :goto_0

    .line 76
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;

    .line 78
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/sync/ClientId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    sget-object p1, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Group added, reloading"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->listener:Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;

    invoke-interface {p1, v1}, Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;->loadInvitations(Z)V

    goto :goto_0

    .line 83
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    if-eqz v0, :cond_2

    .line 84
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    .line 85
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/sync/ClientId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 87
    sget-object p1, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Group removed, reloading"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->listener:Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;

    invoke-interface {p1, v1}, Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;->loadInvitations(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract getInvitations()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TI;>;"
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

.method protected abstract getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;
.end method

.method public loadInvitations(ZLorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "TI;>;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 98
    new-instance p1, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationControllerImpl$mn3haqFVG57RXFozSDr59_RqKIM;

    invoke-direct {p1, p0, p2}, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationControllerImpl$mn3haqFVG57RXFozSDr59_RqKIM;-><init>(Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityCreate(Landroid/app/Activity;)V
    .locals 0

    .line 52
    check-cast p1, Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;

    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->listener:Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;

    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    return-void
.end method

.method public onActivityStart()V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method
