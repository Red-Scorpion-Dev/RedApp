.class public final synthetic Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$eok1WN-Z7FUc67I743ntVGTKoYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$eok1WN-Z7FUc67I743ntVGTKoYY;->f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

    iput-object p2, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$eok1WN-Z7FUc67I743ntVGTKoYY;->f$1:Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$eok1WN-Z7FUc67I743ntVGTKoYY;->f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$eok1WN-Z7FUc67I743ntVGTKoYY;->f$1:Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->lambda$eventOccurred$2(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;)V

    return-void
.end method
