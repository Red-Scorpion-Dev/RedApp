.class public Lorg/briarproject/briar/android/account/LockManagerImpl;
.super Ljava/lang/Object;
.source "LockManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/bramble/api/lifecycle/Service;
.implements Lorg/briarproject/briar/api/android/LockManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private activitiesRunning:I

.field private final alarmManager:Landroid/app/AlarmManager;

.field private alarmSet:Z

.field private final appContext:Landroid/content/Context;

.field private final dbExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end field

.field private idleTime:J

.field private final lockIntent:Landroid/app/PendingIntent;

.field private final lockable:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lockableSetting:Z

.field private volatile locked:Z

.field private final notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

.field private final settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

.field private final timeoutDefault:I

.field private volatile timeoutMinutes:I

.field private final timeoutNever:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/briarproject/briar/android/account/LockManagerImpl;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/account/LockManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->locked:Z

    .line 63
    iput-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockableSetting:Z

    .line 65
    iput v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->activitiesRunning:I

    .line 66
    iput-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->alarmSet:Z

    .line 71
    new-instance v1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockable:Landroid/arch/lifecycle/MutableLiveData;

    .line 77
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->appContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 79
    iput-object p3, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 80
    iput-object p4, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 81
    iget-object p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->appContext:Landroid/content/Context;

    const-string p2, "alarm"

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->alarmManager:Landroid/app/AlarmManager;

    .line 83
    new-instance p1, Landroid/content/Intent;

    const-string p2, "lock"

    iget-object p3, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->appContext:Landroid/content/Context;

    const-class p4, Lorg/briarproject/briar/android/BriarService;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    iget-object p2, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {p2, v0, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockIntent:Landroid/app/PendingIntent;

    .line 86
    iget-object p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->appContext:Landroid/content/Context;

    const p2, 0x7f110177

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutNever:I

    .line 88
    iget-object p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->appContext:Landroid/content/Context;

    const p2, 0x7f110176

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutDefault:I

    .line 90
    iget p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutNever:I

    iput p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutMinutes:I

    .line 93
    iget-object p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockable:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private applySettings(Lorg/briarproject/bramble/api/settings/Settings;)V
    .locals 2

    const-string v0, "pref_key_lock"

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p1, v0, v1}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockableSetting:Z

    .line 195
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/briarproject/briar/android/util/UiUtils;->hasScreenLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockableSetting:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockable:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const-string v0, "pref_key_lock_timeout"

    .line 198
    iget v1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutDefault:I

    invoke-virtual {p1, v0, v1}, Lorg/briarproject/bramble/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutMinutes:I

    return-void
.end method

.method public static synthetic lambda$loadSettings$0(Lorg/briarproject/briar/android/account/LockManagerImpl;)V
    .locals 3

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v1, "android-ui"

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/account/LockManagerImpl;->applySettings(Lorg/briarproject/bramble/api/settings/Settings;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 187
    sget-object v1, Lorg/briarproject/briar/android/account/LockManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private loadSettings()V
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/account/-$$Lambda$LockManagerImpl$h3sZsdF8UvA5ChWFOX_gp18Z4jc;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/account/-$$Lambda$LockManagerImpl$h3sZsdF8UvA5ChWFOX_gp18Z4jc;-><init>(Lorg/briarproject/briar/android/account/LockManagerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private timedOut()Z
    .locals 5

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->idleTime:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutMinutes:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private timeoutEnabled()Z
    .locals 2

    .line 203
    iget v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutMinutes:I

    iget v1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutNever:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockable:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public checkIfLockable()V
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockable:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 148
    iget-object v1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/briarproject/briar/android/util/UiUtils;->hasScreenLock(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockableSetting:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockable:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 174
    instance-of v0, p1, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    if-eqz v0, :cond_0

    .line 175
    check-cast p1, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    .line 176
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getSettings()Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/account/LockManagerImpl;->applySettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    :cond_0
    return-void
.end method

.method public isLockable()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockable:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public isLocked()Z
    .locals 3

    .line 156
    iget-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->locked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/briarproject/briar/android/util/UiUtils;->hasScreenLock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockable:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 158
    iput-boolean v1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->locked:Z

    goto :goto_0

    .line 159
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->locked:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->activitiesRunning:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0}, Lorg/briarproject/briar/android/account/LockManagerImpl;->timedOut()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/account/LockManagerImpl;->setLocked(Z)V

    .line 163
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->locked:Z

    return v0
.end method

.method public onActivityStart()V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->locked:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->activitiesRunning:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lorg/briarproject/briar/android/account/LockManagerImpl;->timedOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/account/LockManagerImpl;->setLocked(Z)V

    .line 116
    :cond_0
    iget v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->activitiesRunning:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->activitiesRunning:I

    .line 117
    iget-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->alarmSet:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->alarmSet:Z

    :cond_1
    return-void
.end method

.method public onActivityStop()V
    .locals 6

    .line 126
    iget v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->activitiesRunning:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->activitiesRunning:I

    .line 127
    iget v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->activitiesRunning:I

    if-nez v0, :cond_1

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->idleTime:J

    .line 129
    iget-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->locked:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->alarmSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->alarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 132
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v4, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutMinutes:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 133
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->alarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x3

    iget-object v5, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 134
    iput-boolean v1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->alarmSet:Z

    :cond_1
    return-void
.end method

.method public setLocked(Z)V
    .locals 1

    .line 168
    iput-boolean p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->locked:Z

    .line 169
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->updateForegroundNotification(Z)V

    return-void
.end method

.method public startService()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/briarproject/briar/android/account/LockManagerImpl;->loadSettings()V

    return-void
.end method

.method public stopService()V
    .locals 2

    .line 104
    iget v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutNever:I

    iput v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->timeoutMinutes:I

    .line 105
    iget-boolean v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->alarmSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl;->lockIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
