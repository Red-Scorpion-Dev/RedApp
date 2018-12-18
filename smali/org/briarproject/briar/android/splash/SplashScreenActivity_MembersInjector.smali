.class public final Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SplashScreenActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/splash/SplashScreenActivity;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->accountManagerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->androidExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/splash/SplashScreenActivity;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAccountManager(Lorg/briarproject/briar/android/splash/SplashScreenActivity;Lorg/briarproject/bramble/api/account/AccountManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    return-void
.end method

.method public static injectAndroidExecutor(Lorg/briarproject/briar/android/splash/SplashScreenActivity;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    return-void
.end method

.method public static injectLockManager(Lorg/briarproject/briar/android/splash/SplashScreenActivity;Lorg/briarproject/briar/api/android/LockManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lorg/briarproject/briar/android/splash/SplashScreenActivity;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/splash/SplashScreenActivity;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/splash/SplashScreenActivity;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 51
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->accountManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->injectAccountManager(Lorg/briarproject/briar/android/splash/SplashScreenActivity;Lorg/briarproject/bramble/api/account/AccountManager;)V

    .line 54
    iget-object v0, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/splash/SplashScreenActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 55
    iget-object v0, p0, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->androidExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->injectAndroidExecutor(Lorg/briarproject/briar/android/splash/SplashScreenActivity;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V

    return-void
.end method
