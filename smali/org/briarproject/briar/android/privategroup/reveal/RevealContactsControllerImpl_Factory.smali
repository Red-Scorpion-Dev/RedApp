.class public final Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;
.super Ljava/lang/Object;
.source "RevealContactsControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final contactManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;"
        }
    .end annotation
.end field

.field private final dbExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final groupInvitationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final groupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->groupInvitationManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;"
        }
    .end annotation

    .line 80
    new-instance v7, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newRevealContactsControllerImpl(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/settings/SettingsManager;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;
    .locals 8

    .line 96
    new-instance v7, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/settings/SettingsManager;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;"
        }
    .end annotation

    .line 64
    new-instance v7, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;

    .line 65
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 66
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 67
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 68
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    .line 69
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 70
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lorg/briarproject/bramble/api/settings/SettingsManager;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/settings/SettingsManager;)V

    return-object v7
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->get()Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;
    .locals 6

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->groupInvitationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;

    move-result-object v0

    return-object v0
.end method
