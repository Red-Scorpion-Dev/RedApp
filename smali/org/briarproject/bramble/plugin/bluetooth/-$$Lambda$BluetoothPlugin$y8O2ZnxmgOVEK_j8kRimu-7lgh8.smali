.class public final synthetic Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$y8O2ZnxmgOVEK_j8kRimu-7lgh8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Lorg/briarproject/bramble/api/contact/ContactId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Ljava/lang/String;Ljava/lang/String;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$y8O2ZnxmgOVEK_j8kRimu-7lgh8;->f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

    iput-object p2, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$y8O2ZnxmgOVEK_j8kRimu-7lgh8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$y8O2ZnxmgOVEK_j8kRimu-7lgh8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$y8O2ZnxmgOVEK_j8kRimu-7lgh8;->f$3:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$y8O2ZnxmgOVEK_j8kRimu-7lgh8;->f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$y8O2ZnxmgOVEK_j8kRimu-7lgh8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$y8O2ZnxmgOVEK_j8kRimu-7lgh8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$BluetoothPlugin$y8O2ZnxmgOVEK_j8kRimu-7lgh8;->f$3:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->lambda$poll$1(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;Ljava/lang/String;Ljava/lang/String;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method
