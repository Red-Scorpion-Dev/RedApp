.class Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;
.super Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;
.source "BlogInvitationControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/sharing/BlogInvitationController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/sharing/InvitationControllerImpl<",
        "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
        ">;",
        "Lorg/briarproject/briar/android/sharing/BlogInvitationController;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/blog/BlogSharingManager;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 38
    iput-object p4, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;->blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

    return-void
.end method

.method public static synthetic lambda$respondToInvitation$0(Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;Lorg/briarproject/briar/api/sharing/SharingInvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 3

    .line 66
    :try_start_0
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/Blog;

    .line 67
    invoke-virtual {p1}, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;->getNewSharers()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/contact/Contact;

    .line 69
    iget-object v2, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;->blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

    invoke-interface {v2, v0, v1, p2}, Lorg/briarproject/briar/api/blog/BlogSharingManager;->respondToInvitation(Lorg/briarproject/briar/api/sharing/Shareable;Lorg/briarproject/bramble/api/contact/Contact;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    sget-object p2, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 73
    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;->onException(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/sharing/InvitationControllerImpl;->eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V

    .line 45
    instance-of p1, p1, Lorg/briarproject/briar/api/blog/event/BlogInvitationRequestReceivedEvent;

    if-eqz p1, :cond_0

    .line 46
    sget-object p1, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Blog invitation received, reloading"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;->listener:Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/sharing/InvitationController$InvitationListener;->loadInvitations(Z)V

    :cond_0
    return-void
.end method

.method protected getInvitations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;->blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/blog/BlogSharingManager;->getInvitations()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;
    .locals 1

    .line 53
    sget-object v0, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-object v0
.end method

.method public bridge synthetic respondToInvitation(Lorg/briarproject/briar/api/sharing/InvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 0

    .line 26
    check-cast p1, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;->respondToInvitation(Lorg/briarproject/briar/api/sharing/SharingInvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method

.method public respondToInvitation(Lorg/briarproject/briar/api/sharing/SharingInvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
            "Z",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/briarproject/briar/android/sharing/-$$Lambda$BlogInvitationControllerImpl$2Tr96gOCcPa6hMXzWedQxbXzSEs;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/sharing/-$$Lambda$BlogInvitationControllerImpl$2Tr96gOCcPa6hMXzWedQxbXzSEs;-><init>(Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;Lorg/briarproject/briar/api/sharing/SharingInvitationItem;ZLorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method
