.class public final Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SetupActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/login/SetupActivity;",
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

.field private final screenFilterMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final setupControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/login/SetupController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lorg/briarproject/briar/android/login/SetupController;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;->accountManagerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;->setupControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
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
            "Lorg/briarproject/briar/android/login/SetupController;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/login/SetupActivity;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAccountManager(Lorg/briarproject/briar/android/login/SetupActivity;Lorg/briarproject/bramble/api/account/AccountManager;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/briarproject/briar/android/login/SetupActivity;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    return-void
.end method

.method public static injectSetupController(Lorg/briarproject/briar/android/login/SetupActivity;Lorg/briarproject/briar/android/login/SetupController;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/briarproject/briar/android/login/SetupActivity;->setupController:Lorg/briarproject/briar/android/login/SetupController;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lorg/briarproject/briar/android/login/SetupActivity;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/login/SetupActivity;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/login/SetupActivity;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 40
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 42
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;->accountManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;->injectAccountManager(Lorg/briarproject/briar/android/login/SetupActivity;Lorg/briarproject/bramble/api/account/AccountManager;)V

    .line 43
    iget-object v0, p0, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;->setupControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/login/SetupController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;->injectSetupController(Lorg/briarproject/briar/android/login/SetupActivity;Lorg/briarproject/briar/android/login/SetupController;)V

    return-void
.end method
