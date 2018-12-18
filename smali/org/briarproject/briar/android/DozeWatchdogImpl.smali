.class Lorg/briarproject/briar/android/DozeWatchdogImpl;
.super Ljava/lang/Object;
.source "DozeWatchdogImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/lifecycle/Service;
.implements Lorg/briarproject/briar/api/android/DozeWatchdog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/DozeWatchdogImpl$DozeBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final dozed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl;->dozed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance v0, Lorg/briarproject/briar/android/DozeWatchdogImpl$DozeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/briarproject/briar/android/DozeWatchdogImpl$DozeBroadcastReceiver;-><init>(Lorg/briarproject/briar/android/DozeWatchdogImpl;Lorg/briarproject/briar/android/DozeWatchdogImpl$1;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl;->receiver:Landroid/content/BroadcastReceiver;

    .line 26
    iput-object p1, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl;->appContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/DozeWatchdogImpl;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/DozeWatchdogImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl;->dozed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public getAndResetDozeFlag()Z
    .locals 2

    .line 31
    iget-object v0, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl;->dozed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method public startService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/lifecycle/ServiceException;
        }
    .end annotation

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/lifecycle/ServiceException;
        }
    .end annotation

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
