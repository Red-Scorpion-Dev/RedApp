.class public final Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;
.super Ljava/lang/Object;
.source "BriarControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/controller/BriarControllerImpl;",
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

.field private final activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final databaseExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeWatchdogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/DozeWatchdog;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceConnectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;",
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
            "Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/DozeWatchdog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->serviceConnectionProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->accountManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->databaseExecutorProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->dozeWatchdogProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p6, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->activityProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/DozeWatchdog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;)",
            "Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;"
        }
    .end annotation

    .line 79
    new-instance v7, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newBriarControllerImpl(Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;Lorg/briarproject/bramble/api/account/AccountManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/briar/api/android/DozeWatchdog;Landroid/app/Activity;)Lorg/briarproject/briar/android/controller/BriarControllerImpl;
    .locals 8

    .line 95
    new-instance v7, Lorg/briarproject/briar/android/controller/BriarControllerImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/android/controller/BriarControllerImpl;-><init>(Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;Lorg/briarproject/bramble/api/account/AccountManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/briar/api/android/DozeWatchdog;Landroid/app/Activity;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/BriarControllerImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/DozeWatchdog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;)",
            "Lorg/briarproject/briar/android/controller/BriarControllerImpl;"
        }
    .end annotation

    .line 63
    new-instance v7, Lorg/briarproject/briar/android/controller/BriarControllerImpl;

    .line 64
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

    .line 65
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lorg/briarproject/bramble/api/account/AccountManager;

    .line 66
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 67
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 68
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lorg/briarproject/briar/api/android/DozeWatchdog;

    .line 69
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/app/Activity;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/android/controller/BriarControllerImpl;-><init>(Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;Lorg/briarproject/bramble/api/account/AccountManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/briar/api/android/DozeWatchdog;Landroid/app/Activity;)V

    return-object v7
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->get()Lorg/briarproject/briar/android/controller/BriarControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/controller/BriarControllerImpl;
    .locals 6

    .line 47
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->serviceConnectionProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->accountManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->databaseExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->dozeWatchdogProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->activityProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/BriarControllerImpl;

    move-result-object v0

    return-object v0
.end method
