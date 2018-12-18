.class public interface abstract Lorg/briarproject/bramble/api/plugin/BluetoothConstants;
.super Ljava/lang/Object;
.source "BluetoothConstants.java"


# static fields
.field public static final ID:Lorg/briarproject/bramble/api/plugin/TransportId;

.field public static final PREF_BT_ENABLE:Ljava/lang/String; = "enable"

.field public static final PROP_ADDRESS:Ljava/lang/String; = "address"

.field public static final PROP_UUID:Ljava/lang/String; = "uuid"

.field public static final UUID_BYTES:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lorg/briarproject/bramble/api/plugin/TransportId;

    const-string v1, "org.briarproject.bramble.bluetooth"

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/plugin/TransportId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/bramble/api/plugin/BluetoothConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-void
.end method
