.class public Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPluginFactory;
.super Ljava/lang/Object;
.source "AndroidLanTcpPluginFactory.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final BACKOFF_BASE:D = 1.2

.field private static final MAX_IDLE_TIME:I = 0x7530

.field private static final MAX_LATENCY:I = 0x7530

.field private static final MAX_POLLING_INTERVAL:I = 0x927c0

.field private static final MIN_POLLING_INTERVAL:I = 0xea60


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final ioExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/plugin/BackoffFactory;Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPluginFactory;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 38
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPluginFactory;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 39
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPluginFactory;->backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

    .line 40
    iput-object p4, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPluginFactory;->appContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createPlugin(Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;
    .locals 12

    .line 55
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPluginFactory;->backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

    const v1, 0xea60

    const v2, 0x927c0

    const-wide v3, 0x3ff3333333333333L    # 1.2

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/briarproject/bramble/api/plugin/BackoffFactory;->createBackoff(IID)Lorg/briarproject/bramble/api/plugin/Backoff;

    move-result-object v8

    .line 57
    new-instance v0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;

    iget-object v6, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPluginFactory;->ioExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPluginFactory;->appContext:Landroid/content/Context;

    const/16 v10, 0x7530

    const/16 v11, 0x7530

    move-object v5, v0

    move-object v9, p1

    invoke-direct/range {v5 .. v11}, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPlugin;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;II)V

    .line 59
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/AndroidLanTcpPluginFactory;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 45
    sget-object v0, Lorg/briarproject/bramble/api/plugin/LanTcpConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method

.method public getMaxLatency()I
    .locals 1

    const/16 v0, 0x7530

    return v0
.end method
