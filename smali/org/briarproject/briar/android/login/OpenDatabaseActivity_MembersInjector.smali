.class public final Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;
.super Ljava/lang/Object;
.source "OpenDatabaseActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/login/OpenDatabaseActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final briarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;"
        }
    .end annotation
.end field

.field private final dbControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
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

.field private final lifecycleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final screenFilterMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
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
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p4, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p6, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/login/OpenDatabaseActivity;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v7, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectEventBus(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-void
.end method

.method public static injectLifecycleManager(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lorg/briarproject/briar/android/login/OpenDatabaseActivity;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 66
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 68
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 69
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 70
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 71
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->lifecycleManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->injectLifecycleManager(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 72
    iget-object v0, p0, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-void
.end method
