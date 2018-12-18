.class public final synthetic Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$SBYB5MWJAayNl4Apbm0uRTuxcMM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$SBYB5MWJAayNl4Apbm0uRTuxcMM;->f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$SBYB5MWJAayNl4Apbm0uRTuxcMM;->f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;

    invoke-virtual {v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothPlugin;->enableAdapter()V

    return-void
.end method
