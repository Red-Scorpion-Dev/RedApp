.class Lorg/briarproject/bramble/network/AndroidNetworkManager$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/network/AndroidNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/bramble/network/AndroidNetworkManager;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/network/AndroidNetworkManager;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager$NetworkStateReceiver;->this$0:Lorg/briarproject/bramble/network/AndroidNetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/network/AndroidNetworkManager;Lorg/briarproject/bramble/network/AndroidNetworkManager$1;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/network/AndroidNetworkManager$NetworkStateReceiver;-><init>(Lorg/briarproject/bramble/network/AndroidNetworkManager;)V

    return-void
.end method

.method private isApEvent(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isSleepOrDozeEvent(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 133
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    const-string v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 134
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {}, Lorg/briarproject/bramble/network/AndroidNetworkManager;->access$100()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/briarproject/bramble/network/AndroidNetworkManager;->access$100()Ljava/util/logging/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object p2, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager$NetworkStateReceiver;->this$0:Lorg/briarproject/bramble/network/AndroidNetworkManager;

    invoke-static {p2}, Lorg/briarproject/bramble/network/AndroidNetworkManager;->access$200(Lorg/briarproject/bramble/network/AndroidNetworkManager;)V

    .line 120
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/network/AndroidNetworkManager$NetworkStateReceiver;->isSleepOrDozeEvent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 122
    iget-object p1, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager$NetworkStateReceiver;->this$0:Lorg/briarproject/bramble/network/AndroidNetworkManager;

    const/4 p2, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lorg/briarproject/bramble/network/AndroidNetworkManager;->access$300(Lorg/briarproject/bramble/network/AndroidNetworkManager;ILjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/network/AndroidNetworkManager$NetworkStateReceiver;->isApEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 126
    iget-object p1, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager$NetworkStateReceiver;->this$0:Lorg/briarproject/bramble/network/AndroidNetworkManager;

    const/4 p2, 0x5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lorg/briarproject/bramble/network/AndroidNetworkManager;->access$300(Lorg/briarproject/bramble/network/AndroidNetworkManager;ILjava/util/concurrent/TimeUnit;)V

    :cond_2
    :goto_0
    return-void
.end method
