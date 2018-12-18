.class public final Lorg/briarproject/briar/android/BriarService_MembersInjector;
.super Ljava/lang/Object;
.source "BriarService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/BriarService;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;"
        }
    .end annotation
.end field

.field private final androidExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/android/BriarService_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lorg/briarproject/briar/android/BriarService_MembersInjector;->accountManagerProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lorg/briarproject/briar/android/BriarService_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lorg/briarproject/briar/android/BriarService_MembersInjector;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lorg/briarproject/briar/android/BriarService_MembersInjector;->androidExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/BriarService;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v6, Lorg/briarproject/briar/android/BriarService_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/BriarService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectAccountManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/account/AccountManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/briarproject/briar/android/BriarService;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    return-void
.end method

.method public static injectAndroidExecutor(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/briarproject/briar/android/BriarService;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    return-void
.end method

.method public static injectLifecycleManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/briarproject/briar/android/BriarService;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    return-void
.end method

.method public static injectLockManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/briar/api/android/LockManager;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/briarproject/briar/android/BriarService;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    return-void
.end method

.method public static injectNotificationManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/briarproject/briar/android/BriarService;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lorg/briarproject/briar/android/BriarService;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/BriarService_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/BriarService;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/BriarService;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/BriarService_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 57
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService_MembersInjector;->accountManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/BriarService_MembersInjector;->injectAccountManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/account/AccountManager;)V

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/BriarService_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService_MembersInjector;->lifecycleManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/BriarService_MembersInjector;->injectLifecycleManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 60
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService_MembersInjector;->androidExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/BriarService_MembersInjector;->injectAndroidExecutor(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V

    return-void
.end method
