.class Lorg/briarproject/bramble/battery/AndroidBatteryManager;
.super Ljava/lang/Object;
.source "AndroidBatteryManager.java"

# interfaces
.implements Lorg/briarproject/bramble/api/battery/BatteryManager;
.implements Lorg/briarproject/bramble/api/lifecycle/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/battery/AndroidBatteryManager$BatteryReceiver;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private volatile batteryReceiver:Landroid/content/BroadcastReceiver;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->appContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 28
    sget-object v0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/briarproject/bramble/battery/AndroidBatteryManager;)Lorg/briarproject/bramble/api/event/EventBus;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-object p0
.end method


# virtual methods
.method public isCharging()Z
    .locals 4

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "status"

    const/4 v3, -0x1

    .line 51
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public startService()V
    .locals 3

    .line 58
    iget-object v0, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lorg/briarproject/bramble/battery/AndroidBatteryManager$BatteryReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/briarproject/bramble/battery/AndroidBatteryManager$BatteryReceiver;-><init>(Lorg/briarproject/bramble/battery/AndroidBatteryManager;Lorg/briarproject/bramble/battery/AndroidBatteryManager$1;)V

    iput-object v0, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stopService()V
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->batteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
