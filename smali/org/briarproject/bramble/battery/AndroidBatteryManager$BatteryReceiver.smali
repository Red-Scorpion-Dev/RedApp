.class Lorg/briarproject/bramble/battery/AndroidBatteryManager$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/battery/AndroidBatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/bramble/battery/AndroidBatteryManager;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/battery/AndroidBatteryManager;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager$BatteryReceiver;->this$0:Lorg/briarproject/bramble/battery/AndroidBatteryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/battery/AndroidBatteryManager;Lorg/briarproject/bramble/battery/AndroidBatteryManager$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/battery/AndroidBatteryManager$BatteryReceiver;-><init>(Lorg/briarproject/bramble/battery/AndroidBatteryManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {}, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->access$100()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->access$100()Ljava/util/logging/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 79
    iget-object p1, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager$BatteryReceiver;->this$0:Lorg/briarproject/bramble/battery/AndroidBatteryManager;

    invoke-static {p1}, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->access$200(Lorg/briarproject/bramble/battery/AndroidBatteryManager;)Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object p1

    new-instance p2, Lorg/briarproject/bramble/api/battery/event/BatteryEvent;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lorg/briarproject/bramble/api/battery/event/BatteryEvent;-><init>(Z)V

    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 81
    iget-object p1, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager$BatteryReceiver;->this$0:Lorg/briarproject/bramble/battery/AndroidBatteryManager;

    invoke-static {p1}, Lorg/briarproject/bramble/battery/AndroidBatteryManager;->access$200(Lorg/briarproject/bramble/battery/AndroidBatteryManager;)Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object p1

    new-instance p2, Lorg/briarproject/bramble/api/battery/event/BatteryEvent;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lorg/briarproject/bramble/api/battery/event/BatteryEvent;-><init>(Z)V

    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_2
    :goto_0
    return-void
.end method
