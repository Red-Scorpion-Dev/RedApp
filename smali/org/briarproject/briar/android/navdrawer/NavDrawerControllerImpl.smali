.class public Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;
.super Lorg/briarproject/briar/android/controller/DbControllerImpl;
.source "NavDrawerControllerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/briar/android/navdrawer/NavDrawerController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final EXPIRY_DATE_WARNING:Ljava/lang/String; = "expiryDateWarning"

.field private static final EXPIRY_SHOW_UPDATE:Ljava/lang/String; = "expiryShowUpdate"

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private volatile listener:Lorg/briarproject/briar/android/navdrawer/TransportStateListener;

.field private final pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

.field private final settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/plugin/PluginManager;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/controller/DbControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 63
    iput-object p3, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    .line 64
    iput-object p4, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 65
    iput-object p5, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-void
.end method

.method public static synthetic lambda$expiryWarningDismissed$2(Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;)V
    .locals 5

    .line 156
    :try_start_0
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    const-string v2, "expiryDateWarning"

    .line 158
    invoke-virtual {v0, v2, v1}, Lorg/briarproject/bramble/api/settings/Settings;->putInt(Ljava/lang/String;I)V

    const-string v1, "expiryShowUpdate"

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v2, "android-ui"

    invoke-interface {v1, v0, v2}, Lorg/briarproject/bramble/api/settings/SettingsManager;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    sget-object v1, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$shouldAskForDozeWhitelisting$3(Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 4

    const/4 v0, 0x1

    .line 177
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v2, "android-ui"

    .line 178
    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v1

    const-string v2, "dozeAskAgain"

    .line 179
    invoke-virtual {v1, v2, v0}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 180
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 182
    sget-object v2, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2, v3, v1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 183
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showExpiryWarning$1(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 14

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v1, "android-ui"

    .line 119
    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v0

    const-string v1, "expiryDateWarning"

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "expiryShowUpdate"

    const/4 v3, 0x1

    .line 122
    invoke-virtual {v0, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v1, :cond_0

    .line 126
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->SHOW:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long v1, v5, v1

    .line 130
    div-long/2addr v1, v3

    const-wide/16 v7, 0x3c

    div-long/2addr v1, v7

    div-long/2addr v1, v7

    const-wide/16 v9, 0x18

    div-long/2addr v1, v9

    .line 132
    sget-wide v11, Lorg/briarproject/briar/android/TestingConstants;->EXPIRY_DATE:J

    const/4 v13, 0x0

    sub-long/2addr v11, v5

    div-long/2addr v11, v3

    div-long/2addr v11, v7

    div-long/2addr v11, v7

    div-long/2addr v11, v9

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->UPDATE:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x1e

    cmp-long v0, v1, v3

    if-ltz v0, :cond_2

    .line 138
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->SHOW:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x3

    cmp-long v0, v11, v3

    if-gtz v0, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    .line 141
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->SHOW:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_3
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->NO:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$transportStateUpdate$0(Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->listener:Lorg/briarproject/briar/android/navdrawer/TransportStateListener;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/android/navdrawer/TransportStateListener;->stateUpdate(Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    return-void
.end method

.method private transportStateUpdate(Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->listener:Lorg/briarproject/briar/android/navdrawer/TransportStateListener;

    new-instance v1, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$JXDqTPAa26fXXxiNqFFhTro4FTo;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$JXDqTPAa26fXXxiNqFFhTro4FTo;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/navdrawer/TransportStateListener;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 3

    .line 90
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;

    if-eqz v0, :cond_1

    .line 91
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object p1

    .line 92
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransportEnabledEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->transportStateUpdate(Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    goto :goto_0

    .line 96
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/TransportDisabledEvent;

    if-eqz v0, :cond_3

    .line 97
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/TransportDisabledEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/TransportDisabledEvent;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object p1

    .line 98
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransportDisabledEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->transportStateUpdate(Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public expiryWarningDismissed()V
    .locals 1

    .line 154
    new-instance v0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$gISxB2USIZM8BZLkDrkJf6WRcGI;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$gISxB2USIZM8BZLkDrkJf6WRcGI;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isTransportRunning(Lorg/briarproject/bramble/api/plugin/TransportId;)Z
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/plugin/PluginManager;->getPlugin(Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/plugin/Plugin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/Plugin;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onActivityCreate(Landroid/app/Activity;)V
    .locals 0

    .line 70
    check-cast p1, Lorg/briarproject/briar/android/navdrawer/TransportStateListener;

    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->listener:Lorg/briarproject/briar/android/navdrawer/TransportStateListener;

    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    return-void
.end method

.method public onActivityStart()V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method

.method public shouldAskForDozeWhitelisting(Landroid/content/Context;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-static {p1}, Lorg/briarproject/briar/android/util/UiUtils;->needsDozeWhitelisting(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 172
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    return-void

    .line 175
    :cond_0
    new-instance p1, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$TPCS3HrgouDIEf_elc0-0npLK6M;

    invoke-direct {p1, p0, p2}, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$TPCS3HrgouDIEf_elc0-0npLK6M;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showExpiryWarning(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;",
            ">;)V"
        }
    .end annotation

    .line 113
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->NO:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    invoke-interface {p1, v0}, Lorg/briarproject/briar/android/controller/handler/ResultHandler;->onResult(Ljava/lang/Object;)V

    return-void
.end method
