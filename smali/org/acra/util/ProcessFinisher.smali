.class public final Lorg/acra/util/ProcessFinisher;
.super Ljava/lang/Object;
.source "ProcessFinisher.java"


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;

.field private final context:Landroid/content/Context;

.field private final lastActivityManager:Lorg/acra/builder/LastActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Lorg/acra/builder/LastActivityManager;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/acra/util/ProcessFinisher;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lorg/acra/util/ProcessFinisher;->config:Lorg/acra/config/ACRAConfiguration;

    .line 51
    iput-object p3, p0, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Lorg/acra/builder/LastActivityManager;

    return-void
.end method

.method private killProcessAndExit()V
    .locals 1

    .line 106
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    .line 107
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private stopServices()V
    .locals 7

    .line 86
    iget-object v0, p0, Lorg/acra/util/ProcessFinisher;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->stopServicesOnCrash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lorg/acra/util/ProcessFinisher;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 88
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 91
    iget v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v3, v1, :cond_0

    const-class v3, Lorg/acra/sender/SenderService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 94
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    iget-object v4, p0, Lorg/acra/util/ProcessFinisher;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 97
    sget-boolean v3, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v3, :cond_0

    .line 98
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to stop Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Permission denied"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public endApplication(Ljava/lang/Thread;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/acra/util/ProcessFinisher;->finishLastActivity(Ljava/lang/Thread;)V

    .line 56
    invoke-direct {p0}, Lorg/acra/util/ProcessFinisher;->stopServices()V

    .line 57
    invoke-direct {p0}, Lorg/acra/util/ProcessFinisher;->killProcessAndExit()V

    return-void
.end method

.method public finishLastActivity(Ljava/lang/Thread;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Lorg/acra/builder/LastActivityManager;

    invoke-virtual {v0}, Lorg/acra/builder/LastActivityManager;->getLastActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_0

    .line 67
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Finishing the last Activity prior to killing the Process"

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    new-instance v1, Lorg/acra/util/ProcessFinisher$1;

    invoke-direct {v1, p0, v0}, Lorg/acra/util/ProcessFinisher$1;-><init>(Lorg/acra/util/ProcessFinisher;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 79
    iget-object p1, p0, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Lorg/acra/builder/LastActivityManager;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lorg/acra/builder/LastActivityManager;->waitForActivityStop(I)V

    .line 81
    :cond_1
    iget-object p1, p0, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Lorg/acra/builder/LastActivityManager;

    invoke-virtual {p1}, Lorg/acra/builder/LastActivityManager;->clearLastActivity()V

    :cond_2
    return-void
.end method
