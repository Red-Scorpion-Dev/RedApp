.class public final Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;
.super Ljava/lang/Object;
.source "NavDrawerActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;",
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

.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/navdrawer/NavDrawerController;",
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
            "Lorg/briarproject/briar/android/navdrawer/NavDrawerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->controllerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->lifecycleManagerProvider:Ljavax/inject/Provider;

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
            "Lorg/briarproject/briar/android/navdrawer/NavDrawerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v7, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectController(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/briar/android/navdrawer/NavDrawerController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->controller:Lorg/briarproject/briar/android/navdrawer/NavDrawerController;

    return-void
.end method

.method public static injectLifecycleManager(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 64
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 66
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 67
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 68
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 69
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->controllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/briar/android/navdrawer/NavDrawerController;)V

    .line 70
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->lifecycleManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->injectLifecycleManager(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    return-void
.end method
