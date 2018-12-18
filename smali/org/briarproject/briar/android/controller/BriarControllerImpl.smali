.class public Lorg/briarproject/briar/android/controller/BriarControllerImpl;
.super Ljava/lang/Object;
.source "BriarControllerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/BriarController;


# static fields
.field public static final DOZE_ASK_AGAIN:Ljava/lang/String; = "dozeAskAgain"

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

.field private final activity:Landroid/app/Activity;

.field private bound:Z

.field private final databaseExecutor:Ljava/util/concurrent/Executor;

.field private final dozeWatchdog:Lorg/briarproject/briar/api/android/DozeWatchdog;

.field private final serviceConnection:Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

.field private final settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;Lorg/briarproject/bramble/api/account/AccountManager;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/briar/api/android/DozeWatchdog;Landroid/app/Activity;)V
    .locals 1
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->bound:Z

    .line 50
    iput-object p1, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->serviceConnection:Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

    .line 51
    iput-object p2, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    .line 52
    iput-object p3, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->databaseExecutor:Ljava/util/concurrent/Executor;

    .line 53
    iput-object p4, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 54
    iput-object p5, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->dozeWatchdog:Lorg/briarproject/briar/api/android/DozeWatchdog;

    .line 55
    iput-object p6, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic lambda$doNotAskAgainForDozeWhiteListing$1(Lorg/briarproject/briar/android/controller/BriarControllerImpl;)V
    .locals 3

    .line 113
    :try_start_0
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "dozeAskAgain"

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    iget-object v1, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v2, "android-ui"

    invoke-interface {v1, v0, v2}, Lorg/briarproject/bramble/api/settings/SettingsManager;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$hasDozed$0(Lorg/briarproject/briar/android/controller/BriarControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 3

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v1, "android-ui"

    .line 100
    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v0

    const-string v1, "dozeAskAgain"

    const/4 v2, 0x1

    .line 101
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    sget-object v0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$signOut$2(Lorg/briarproject/briar/android/controller/BriarControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 3

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->serviceConnection:Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;->waitForBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 128
    check-cast v0, Lorg/briarproject/briar/android/BriarService$BriarBinder;

    .line 129
    invoke-virtual {v0}, Lorg/briarproject/briar/android/BriarService$BriarBinder;->getService()Lorg/briarproject/briar/android/BriarService;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lorg/briarproject/briar/android/BriarService;->waitForStartup()V

    .line 132
    sget-object v1, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Shutting down service"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lorg/briarproject/briar/android/BriarService;->shutdown()V

    .line 134
    invoke-virtual {v0}, Lorg/briarproject/briar/android/BriarService;->waitForShutdown()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    sget-object v0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Interrupted while waiting for service"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 138
    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private unbindService()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->bound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->serviceConnection:Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public accountSignedIn()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/account/AccountManager;->hasDatabaseKey()Z

    move-result v0

    return v0
.end method

.method public doNotAskAgainForDozeWhiteListing()V
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->databaseExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/controller/-$$Lambda$BriarControllerImpl$8ipVmmnSpPkdRJGkorCNmOWzIIA;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/controller/-$$Lambda$BriarControllerImpl$8ipVmmnSpPkdRJGkorCNmOWzIIA;-><init>(Lorg/briarproject/briar/android/controller/BriarControllerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasDozed(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->dozeWatchdog:Lorg/briarproject/briar/api/android/DozeWatchdog;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/DozeWatchdog;->getAndResetDozeFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->activity:Landroid/app/Activity;

    .line 93
    invoke-static {v0}, Lorg/briarproject/briar/android/util/UiUtils;->needsDozeWhitelisting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->databaseExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/controller/-$$Lambda$BriarControllerImpl$_kKTEEhMy51cyuYVlRSJ_nUucw8;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/controller/-$$Lambda$BriarControllerImpl$_kKTEEhMy51cyuYVlRSJ_nUucw8;-><init>(Lorg/briarproject/briar/android/controller/BriarControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 94
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityCreate(Landroid/app/Activity;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/account/AccountManager;->hasDatabaseKey()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->startAndBindService()V

    :cond_0
    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->unbindService()V

    return-void
.end method

.method public onActivityStart()V
    .locals 0

    return-void
.end method

.method public onActivityStop()V
    .locals 0

    return-void
.end method

.method public signOut(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/briarproject/briar/android/controller/-$$Lambda$BriarControllerImpl$I3f419T-6leJfLOt58BCIIa0UQk;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/controller/-$$Lambda$BriarControllerImpl$I3f419T-6leJfLOt58BCIIa0UQk;-><init>(Lorg/briarproject/briar/android/controller/BriarControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startAndBindService()V
    .locals 4

    .line 80
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->activity:Landroid/app/Activity;

    const-class v3, Lorg/briarproject/briar/android/BriarService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->activity:Landroid/app/Activity;

    const-class v3, Lorg/briarproject/briar/android/BriarService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->serviceConnection:Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/briarproject/briar/android/controller/BriarControllerImpl;->bound:Z

    return-void
.end method
