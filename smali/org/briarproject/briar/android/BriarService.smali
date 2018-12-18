.class public Lorg/briarproject/briar/android/BriarService;
.super Landroid/app/Service;
.source "BriarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;,
        Lorg/briarproject/briar/android/BriarService$BriarBinder;
    }
.end annotation


# static fields
.field public static EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "org.briarproject.briar.FAILURE_NOTIFICATION_ID"

.field public static EXTRA_STARTUP_FAILED:Ljava/lang/String; = "org.briarproject.briar.STARTUP_FAILED"

.field public static EXTRA_START_RESULT:Ljava/lang/String; = "org.briarproject.briar.START_RESULT"

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

.field volatile androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

.field private final binder:Landroid/os/Binder;

.field private final created:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

.field lockManager:Lorg/briarproject/briar/api/android/LockManager;

.field notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private volatile started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lorg/briarproject/briar/android/BriarService;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/briar/android/BriarService;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Lorg/briarproject/briar/android/BriarService$BriarBinder;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/BriarService$BriarBinder;-><init>(Lorg/briarproject/briar/android/BriarService;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/BriarService;->binder:Landroid/os/Binder;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lorg/briarproject/briar/android/BriarService;->receiver:Landroid/content/BroadcastReceiver;

    .line 90
    iput-boolean v1, p0, Lorg/briarproject/briar/android/BriarService;->started:Z

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 60
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/BriarService;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/briarproject/briar/android/BriarService;->shutdownFromBackground()V

    return-void
.end method

.method private hideUi()V
    .locals 2

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/logout/HideUiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10818000

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/BriarService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/crypto/SecretKey;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->startServices(Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    move-result-object p1

    .line 135
    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->SUCCESS:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lorg/briarproject/briar/android/BriarService;->started:Z

    goto :goto_0

    .line 137
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->ALREADY_RUNNING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    if-ne p1, v0, :cond_1

    .line 138
    sget-object p1, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Already running"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lorg/briarproject/briar/android/BriarService;->stopSelf()V

    goto :goto_0

    .line 141
    :cond_1
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Startup failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 143
    :cond_2
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/BriarService;->showStartupFailureNotification(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;)V

    .line 144
    invoke-virtual {p0}, Lorg/briarproject/briar/android/BriarService;->stopSelf()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onDestroy$2(Lorg/briarproject/briar/android/BriarService;)V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lorg/briarproject/briar/android/BriarService;->started:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->stopServices()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$showStartupFailureNotification$1(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;)V
    .locals 4

    .line 169
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "zStartupFailure"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080078

    .line 171
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v1, 0x7f1101bf

    .line 172
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/BriarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v1, 0x7f1101be

    .line 174
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/BriarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/briarproject/briar/android/StartupFailureActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 178
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    sget-object v2, Lorg/briarproject/briar/android/BriarService;->EXTRA_START_RESULT:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 180
    sget-object p1, Lorg/briarproject/briar/android/BriarService;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 v3, 0x8000000

    .line 181
    invoke-static {p0, p1, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string p1, "notification"

    .line 183
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/BriarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 184
    check-cast p1, Landroid/app/NotificationManager;

    .line 185
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 187
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->EXTRA_STARTUP_FAILED:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/BriarService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$shutdownFromBackground$3(Lorg/briarproject/briar/android/BriarService;)V
    .locals 2

    .line 274
    :try_start_0
    iget-boolean v0, p0, Lorg/briarproject/briar/android/BriarService;->started:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->waitForShutdown()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Interrupted while waiting for shutdown"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Exiting"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 279
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private showStartupFailureNotification(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$BriarService$6JAJ1XgI2dZz-6ywdK90gzhIenI;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/-$$Lambda$BriarService$6JAJ1XgI2dZz-6ywdK90gzhIenI;-><init>(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/system/AndroidExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shutdownFromBackground()V
    .locals 2

    .line 268
    invoke-virtual {p0}, Lorg/briarproject/briar/android/BriarService;->stopSelf()V

    .line 270
    invoke-direct {p0}, Lorg/briarproject/briar/android/BriarService;->hideUi()V

    .line 272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$BriarService$BkJfLTeqW7E73GIT4qbbHMf1btM;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$BriarService$BkJfLTeqW7E73GIT4qbbHMf1btM;-><init>(Lorg/briarproject/briar/android/BriarService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 280
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 164
    invoke-static {}, Lorg/briarproject/briar/android/Localizer;->getInstance()Lorg/briarproject/briar/android/Localizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/Localizer;->setLocale(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 204
    iget-object p1, p0, Lorg/briarproject/briar/android/BriarService;->binder:Landroid/os/Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 8

    .line 94
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 96
    invoke-virtual {p0}, Lorg/briarproject/briar/android/BriarService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/BriarApplication;

    .line 97
    invoke-interface {v0}, Lorg/briarproject/briar/android/BriarApplication;->getApplicationComponent()Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/briarproject/briar/android/AndroidComponent;->inject(Lorg/briarproject/briar/android/BriarService;)V

    .line 99
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Created"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Already created"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lorg/briarproject/briar/android/BriarService;->stopSelf()V

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService;->accountManager:Lorg/briarproject/bramble/api/account/AccountManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/account/AccountManager;->getDatabaseKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v1, "No database key"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lorg/briarproject/briar/android/BriarService;->stopSelf()V

    return-void

    .line 113
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    const-string v2, "notification"

    .line 115
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/BriarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 116
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "zForegroundService"

    const v5, 0x7f110149

    .line 118
    invoke-virtual {p0, v5}, Lorg/briarproject/briar/android/BriarService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v4, -0x1

    .line 120
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 121
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 122
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v5, "zStartupFailure"

    const v6, 0x7f1101bf

    .line 124
    invoke-virtual {p0, v6}, Lorg/briarproject/briar/android/BriarService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v3, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 126
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 127
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 129
    :cond_2
    iget-object v2, p0, Lorg/briarproject/briar/android/BriarService;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 130
    invoke-interface {v2}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->getForegroundNotification()Landroid/app/Notification;

    move-result-object v2

    .line 131
    invoke-virtual {p0, v1, v2}, Lorg/briarproject/briar/android/BriarService;->startForeground(ILandroid/app/Notification;)V

    .line 133
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/briarproject/briar/android/-$$Lambda$BriarService$Ihm6XxaER2EMRlAKzUA1GpEtxZU;

    invoke-direct {v2, p0, v0}, Lorg/briarproject/briar/android/-$$Lambda$BriarService$Ihm6XxaER2EMRlAKzUA1GpEtxZU;-><init>(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/crypto/SecretKey;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 148
    new-instance v0, Lorg/briarproject/briar/android/BriarService$1;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/BriarService$1;-><init>(Lorg/briarproject/briar/android/BriarService;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/BriarService;->receiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lorg/briarproject/briar/android/BriarService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/briarproject/briar/android/BriarService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 209
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 210
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Destroyed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/BriarService;->stopForeground(Z)V

    .line 212
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/BriarService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/briarproject/briar/android/-$$Lambda$BriarService$wWUGaPmkF4KewCqZz1TQquKCYMw;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/-$$Lambda$BriarService$wWUGaPmkF4KewCqZz1TQquKCYMw;-><init>(Lorg/briarproject/briar/android/BriarService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 221
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 222
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Memory is low"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/BriarService;->hideUi()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "lock"

    .line 196
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lorg/briarproject/briar/android/BriarService;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lorg/briarproject/briar/api/android/LockManager;->setLocked(Z)V

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 3

    .line 229
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 231
    sget-object p1, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Trim memory: UI hidden"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x28

    if-ne p1, v0, :cond_1

    .line 233
    sget-object p1, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Trim memory: added to LRU list"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_2

    .line 235
    sget-object p1, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Trim memory: near middle of LRU list"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x50

    if-ne p1, v0, :cond_3

    .line 237
    sget-object p1, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Trim memory: near end of LRU list"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 240
    sget-object p1, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Trim memory: running moderately low"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    .line 242
    sget-object p1, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Trim memory: running low"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0xf

    if-ne p1, v0, :cond_6

    .line 244
    sget-object p1, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Trim memory: running critically low"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 246
    new-instance p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 247
    invoke-static {p1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 248
    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_8

    invoke-direct {p0}, Lorg/briarproject/briar/android/BriarService;->hideUi()V

    goto :goto_0

    .line 249
    :cond_6
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 250
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trim memory: unknown level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_7
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 253
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trim memory: unknown level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 301
    invoke-virtual {p0}, Lorg/briarproject/briar/android/BriarService;->stopSelf()V

    return-void
.end method

.method public waitForShutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->waitForShutdown()V

    return-void
.end method

.method public waitForStartup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->waitForStartup()V

    return-void
.end method
