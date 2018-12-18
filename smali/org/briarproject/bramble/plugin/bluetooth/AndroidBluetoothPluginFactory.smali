.class public Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;
.super Ljava/lang/Object;
.source "AndroidBluetoothPluginFactory.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final BACKOFF_BASE:D = 1.2

.field private static final MAX_LATENCY:I = 0x7530

.field private static final MAX_POLLING_INTERVAL:I = 0x927c0

.field private static final MIN_POLLING_INTERVAL:I = 0xea60


# instance fields
.field private final androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

.field private final appContext:Landroid/content/Context;

.field private final backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/system/AndroidExecutor;Landroid/content/Context;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/plugin/BackoffFactory;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 45
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    .line 46
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->appContext:Landroid/content/Context;

    .line 47
    iput-object p4, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->secureRandom:Ljava/security/SecureRandom;

    .line 48
    iput-object p5, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 49
    iput-object p6, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 50
    iput-object p7, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

    return-void
.end method


# virtual methods
.method public createPlugin(Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;
    .locals 11

    .line 65
    new-instance v1, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;

    invoke-direct {v1}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiterImpl;-><init>()V

    .line 67
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

    const v2, 0xea60

    const v3, 0x927c0

    const-wide v4, 0x3ff3333333333333L    # 1.2

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/briarproject/bramble/api/plugin/BackoffFactory;->createBackoff(IID)Lorg/briarproject/bramble/api/plugin/Backoff;

    move-result-object v7

    .line 69
    new-instance v10, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->ioExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->appContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->secureRandom:Ljava/security/SecureRandom;

    iget-object v6, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->clock:Lorg/briarproject/bramble/api/system/Clock;

    const/16 v9, 0x7530

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;-><init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/system/AndroidExecutor;Landroid/content/Context;Ljava/security/SecureRandom;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;I)V

    .line 72
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPluginFactory;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {p1, v10}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-object v10
.end method

.method public getId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 55
    sget-object v0, Lorg/briarproject/bramble/api/plugin/BluetoothConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method

.method public getMaxLatency()I
    .locals 1

    const/16 v0, 0x7530

    return v0
.end method
