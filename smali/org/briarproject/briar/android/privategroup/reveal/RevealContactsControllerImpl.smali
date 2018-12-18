.class Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;
.super Lorg/briarproject/briar/android/controller/DbControllerImpl;
.source "RevealContactsControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final SHOW_ONBOARDING_REVEAL_CONTACTS:Ljava/lang/String; = "showOnboardingRevealContacts"


# instance fields
.field private final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private final groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

.field private final groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

.field private final settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/settings/SettingsManager;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/controller/DbControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 56
    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 57
    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    .line 58
    iput-object p5, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 59
    iput-object p6, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    return-void
.end method

.method private getItems(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 79
    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->getMembers(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 81
    invoke-interface {v0}, Lorg/briarproject/bramble/api/contact/ContactManager;->getActiveContacts()Ljava/util/Collection;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    .line 83
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/api/privategroup/GroupMember;

    .line 85
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/api/contact/Contact;

    .line 86
    invoke-virtual {v2}, Lorg/briarproject/briar/api/privategroup/GroupMember;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v5

    invoke-virtual {v4}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    invoke-virtual {v2}, Lorg/briarproject/briar/api/privategroup/GroupMember;->getVisibility()Lorg/briarproject/briar/api/privategroup/Visibility;

    move-result-object v5

    sget-object v6, Lorg/briarproject/briar/api/privategroup/Visibility;->INVISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    .line 89
    invoke-virtual {v4}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 v7, 0x1

    .line 90
    :cond_4
    new-instance v6, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;

    .line 91
    invoke-virtual {v2}, Lorg/briarproject/briar/api/privategroup/GroupMember;->getVisibility()Lorg/briarproject/briar/api/privategroup/Visibility;

    move-result-object v8

    invoke-direct {v6, v4, v7, v5, v8}, Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;-><init>(Lorg/briarproject/bramble/api/contact/Contact;ZZLorg/briarproject/briar/api/privategroup/Visibility;)V

    .line 90
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public static synthetic lambda$isOnboardingNeeded$1(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
    .locals 3

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v1, "android-ui"

    .line 105
    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v0

    const-string v1, "showOnboardingRevealContacts"

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 106
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    sget-object v1, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 111
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadContacts$0(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;)V
    .locals 1

    .line 67
    :try_start_0
    invoke-direct {p0, p2, p3}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->getItems(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 69
    sget-object p3, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p3, v0, p2}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 70
    invoke-interface {p1, p2}, Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onboardingShown$2(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;)V
    .locals 3

    .line 121
    :try_start_0
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "showOnboardingRevealContacts"

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v2, "android-ui"

    invoke-interface {v1, v0, v2}, Lorg/briarproject/bramble/api/settings/SettingsManager;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$reveal$3(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 3

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactId;

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->revealRelationship(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)V
    :try_end_0
    .catch Lorg/briarproject/briar/api/client/ProtocolStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    sget-object p2, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 142
    invoke-interface {p3, p1}, Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;->onException(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 139
    sget-object v1, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public isOnboardingNeeded(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V
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

    .line 102
    new-instance v0, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$WrAfxNRdYHRjZdDjrfeq_BNOjuM;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$WrAfxNRdYHRjZdDjrfeq_BNOjuM;-><init>(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
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
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealableContactItem;",
            ">;",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$DR1mVDcMbXXha2O9KZbN1kPtp-I;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$DR1mVDcMbXXha2O9KZbN1kPtp-I;-><init>(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onboardingShown(Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 119
    new-instance p1, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$b2yBgPJ5d1Fch_l7qcUutBsWNpQ;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$b2yBgPJ5d1Fch_l7qcUutBsWNpQ;-><init>(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;)V

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reveal(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/Collection;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;",
            "Lorg/briarproject/briar/android/controller/handler/ExceptionHandler<",
            "Lorg/briarproject/bramble/api/db/DbException;",
            ">;)V"
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$pItEqHgHL1rTlF53Cbg23zZ1mCo;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/briarproject/briar/android/privategroup/reveal/-$$Lambda$RevealContactsControllerImpl$pItEqHgHL1rTlF53Cbg23zZ1mCo;-><init>(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;Ljava/util/Collection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method
