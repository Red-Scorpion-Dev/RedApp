.class public final Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;
.super Ljava/lang/Object;
.source "GroupListControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;",
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

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
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

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->groupInvitationManagerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p7, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;
    .locals 9
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
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;"
        }
    .end annotation

    .line 88
    new-instance v8, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static newGroupListControllerImpl(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/bramble/api/event/EventBus;)Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;
    .locals 9

    .line 106
    new-instance v8, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-object v8
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;
    .locals 9
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
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;"
        }
    .end annotation

    .line 70
    new-instance v8, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

    .line 71
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 72
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 73
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 74
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    .line 75
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 76
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 77
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lorg/briarproject/bramble/api/event/EventBus;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-object v8
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->get()Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;
    .locals 7

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->groupInvitationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

    move-result-object v0

    return-object v0
.end method
