.class public final Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;
.super Ljava/lang/Object;
.source "GroupControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
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

.field private final groupMessageFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
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

.field private final messageTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
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

.field private final privateGroupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p4, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->cryptoExecutorProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p5, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->privateGroupManagerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p6, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->groupMessageFactoryProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p7, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p8, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p9, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p10, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;
    .locals 12
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
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;"
        }
    .end annotation

    .line 114
    new-instance v11, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static newGroupControllerImpl(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Ljava/util/concurrent/Executor;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;
    .locals 12

    .line 138
    new-instance v11, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Ljava/util/concurrent/Executor;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    return-object v11
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;
    .locals 12
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
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;"
        }
    .end annotation

    .line 90
    new-instance v11, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    .line 91
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 92
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 93
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 94
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 95
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 96
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    .line 97
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/bramble/api/event/EventBus;

    .line 98
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/briar/api/client/MessageTracker;

    .line 99
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/briarproject/bramble/api/system/Clock;

    .line 100
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Ljava/util/concurrent/Executor;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    return-object v11
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->get()Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;
    .locals 10

    .line 66
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->cryptoExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->privateGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->groupMessageFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v9}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    move-result-object v0

    return-object v0
.end method
