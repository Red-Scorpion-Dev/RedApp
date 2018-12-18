.class public Lorg/briarproject/bramble/plugin/tcp/LanTcpPluginFactory;
.super Ljava/lang/Object;
.source "LanTcpPluginFactory.java"

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
.field private final backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

.field private final ioExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/BackoffFactory;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPluginFactory;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 33
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPluginFactory;->backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

    return-void
.end method


# virtual methods
.method public createPlugin(Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;)Lorg/briarproject/bramble/api/plugin/duplex/DuplexPlugin;
    .locals 11

    .line 48
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPluginFactory;->backoffFactory:Lorg/briarproject/bramble/api/plugin/BackoffFactory;

    const v1, 0xea60

    const v2, 0x927c0

    const-wide v3, 0x3ff3333333333333L    # 1.2

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/briarproject/bramble/api/plugin/BackoffFactory;->createBackoff(IID)Lorg/briarproject/bramble/api/plugin/Backoff;

    move-result-object v7

    .line 50
    new-instance v0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;

    iget-object v6, p0, Lorg/briarproject/bramble/plugin/tcp/LanTcpPluginFactory;->ioExecutor:Ljava/util/concurrent/Executor;

    const/16 v9, 0x7530

    const/16 v10, 0x7530

    move-object v5, v0

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/plugin/Backoff;Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginCallback;II)V

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 38
    sget-object v0, Lorg/briarproject/bramble/api/plugin/LanTcpConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method

.method public getMaxLatency()I
    .locals 1

    const/16 v0, 0x7530

    return v0
.end method
