.class public final Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;
.super Ljava/lang/Object;
.source "PasswordActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/login/PasswordActivity;",
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

.field private final briarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
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

.field private final passwordControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/login/PasswordController;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/login/PasswordController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->accountManagerProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->passwordControllerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
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
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/login/PasswordController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/login/PasswordActivity;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v6, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectAccountManager(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/bramble/api/account/AccountManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    return-void
.end method

.method public static injectBriarController(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/briar/android/controller/BriarController;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->briarController:Lorg/briarproject/briar/android/controller/BriarController;

    return-void
.end method

.method public static injectNotificationManager(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    return-void
.end method

.method public static injectPasswordController(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/briar/android/login/PasswordController;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity;->passwordController:Lorg/briarproject/briar/android/login/PasswordController;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lorg/briarproject/briar/android/login/PasswordActivity;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/login/PasswordActivity;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/login/PasswordActivity;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 56
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->accountManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->injectAccountManager(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/bramble/api/account/AccountManager;)V

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 60
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->passwordControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/login/PasswordController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->injectPasswordController(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/briar/android/login/PasswordController;)V

    .line 61
    iget-object v0, p0, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    return-void
.end method
