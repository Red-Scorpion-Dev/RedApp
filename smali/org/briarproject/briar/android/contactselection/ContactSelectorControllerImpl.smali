.class public abstract Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;
.super Lorg/briarproject/briar/android/controller/DbControllerImpl;
.source "ContactSelectorControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/contactselection/ContactSelectorController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/DbControllerImpl;",
        "Lorg/briarproject/briar/android/contactselection/ContactSelectorController<",
        "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/controller/DbControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 38
    iput-object p3, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    return-void
.end method

.method public static synthetic lambda$loadContacts$0(Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 6

    .line 46
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v1, p0, Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/contact/ContactManager;->getActiveContacts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/contact/Contact;

    .line 49
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 51
    invoke-virtual {p0, p2, v2}, Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;->isDisabled(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)Z

    move-result v4

    .line 52
    new-instance v5, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;

    invoke-direct {v5, v2, v3, v4}, Lorg/briarproject/briar/android/contactselection/SelectableContactItem;-><init>(Lorg/briarproject/bramble/api/contact/Contact;ZZ)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p3, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 57
    sget-object p2, Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 58
    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected abstract isDisabled(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end method

.method public loadContacts(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler<",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/contactselection/SelectableContactItem;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/briarproject/briar/android/contactselection/-$$Lambda$ContactSelectorControllerImpl$YImVDGbqrDzhKFXJeUh9cO3Xi0k;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/briarproject/briar/android/contactselection/-$$Lambda$ContactSelectorControllerImpl$YImVDGbqrDzhKFXJeUh9cO3Xi0k;-><init>(Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/contactselection/ContactSelectorControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method
