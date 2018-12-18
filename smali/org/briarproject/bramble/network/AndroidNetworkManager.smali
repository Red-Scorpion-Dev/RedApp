.class Lorg/briarproject/bramble/network/AndroidNetworkManager;
.super Ljava/lang/Object;
.source "AndroidNetworkManager.java"

# interfaces
.implements Lorg/briarproject/bramble/api/lifecycle/Service;
.implements Lorg/briarproject/bramble/api/network/NetworkManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/network/AndroidNetworkManager$NetworkStateReceiver;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final connectivityCheck:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private volatile networkStateReceiver:Landroid/content/BroadcastReceiver;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/briarproject/bramble/network/AndroidNetworkManager;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/event/EventBus;Landroid/app/Application;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Lorg/briarproject/bramble/api/system/Scheduler;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->connectivityCheck:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->networkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p1, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    iput-object p2, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 66
    invoke-virtual {p3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->appContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 43
    sget-object v0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/briarproject/bramble/network/AndroidNetworkManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/briarproject/bramble/network/AndroidNetworkManager;->updateConnectionStatus()V

    return-void
.end method

.method static synthetic access$300(Lorg/briarproject/bramble/network/AndroidNetworkManager;ILjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/network/AndroidNetworkManager;->scheduleConnectionStatusUpdate(ILjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static synthetic lambda$pAWGgedx-6E7y9iTBl7deU4L-nA(Lorg/briarproject/bramble/network/AndroidNetworkManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/bramble/network/AndroidNetworkManager;->updateConnectionStatus()V

    return-void
.end method

.method private scheduleConnectionStatusUpdate(ILjava/util/concurrent/TimeUnit;)V
    .locals 4

    .line 106
    iget-object v0, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/briarproject/bramble/network/-$$Lambda$AndroidNetworkManager$pAWGgedx-6E7y9iTBl7deU4L-nA;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/network/-$$Lambda$AndroidNetworkManager$pAWGgedx-6E7y9iTBl7deU4L-nA;-><init>(Lorg/briarproject/bramble/network/AndroidNetworkManager;)V

    int-to-long v2, p1

    .line 107
    invoke-interface {v0, v1, v2, v3, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->connectivityCheck:Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 110
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private updateConnectionStatus()V
    .locals 3

    .line 102
    iget-object v0, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v1, Lorg/briarproject/bramble/api/network/event/NetworkStatusEvent;

    invoke-virtual {p0}, Lorg/briarproject/bramble/network/AndroidNetworkManager;->getNetworkStatus()Lorg/briarproject/bramble/api/network/NetworkStatus;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/api/network/event/NetworkStatusEvent;-><init>(Lorg/briarproject/bramble/api/network/NetworkStatus;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    return-void
.end method


# virtual methods
.method public getNetworkStatus()Lorg/briarproject/bramble/api/network/NetworkStatus;
    .locals 4

    .line 92
    iget-object v0, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->appContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 98
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/network/NetworkStatus;

    invoke-direct {v0, v3, v1}, Lorg/briarproject/bramble/api/network/NetworkStatus;-><init>(ZZ)V

    return-object v0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public startService()V
    .locals 3

    .line 71
    iget-object v0, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Lorg/briarproject/bramble/network/AndroidNetworkManager$NetworkStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/briarproject/bramble/network/AndroidNetworkManager$NetworkStateReceiver;-><init>(Lorg/briarproject/bramble/network/AndroidNetworkManager;Lorg/briarproject/bramble/network/AndroidNetworkManager$1;)V

    iput-object v0, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->networkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-object v1, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->networkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stopService()V
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->networkStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager;->networkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
