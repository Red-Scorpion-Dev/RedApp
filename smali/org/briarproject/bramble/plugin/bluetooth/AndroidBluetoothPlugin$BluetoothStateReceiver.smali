.class Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidBluetoothPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;->this$0:Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$1;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 284
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;->this$0:Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;

    invoke-virtual {p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->onAdapterEnabled()V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 285
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$BluetoothStateReceiver;->this$0:Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;

    invoke-virtual {p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->onAdapterDisabled()V

    :cond_1
    :goto_0
    const-string p1, "android.bluetooth.adapter.extra.SCAN_MODE"

    .line 286
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x14

    if-ne p1, p2, :cond_2

    .line 288
    invoke-static {}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->access$200()Ljava/util/logging/Logger;

    move-result-object p1

    const-string p2, "Scan mode: None"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x15

    if-ne p1, p2, :cond_3

    .line 290
    invoke-static {}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->access$200()Ljava/util/logging/Logger;

    move-result-object p1

    const-string p2, "Scan mode: Connectable"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 p2, 0x17

    if-ne p1, p2, :cond_4

    .line 292
    invoke-static {}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;->access$200()Ljava/util/logging/Logger;

    move-result-object p1

    const-string p2, "Scan mode: Discoverable"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
