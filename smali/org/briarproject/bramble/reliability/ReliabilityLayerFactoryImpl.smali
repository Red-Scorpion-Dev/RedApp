.class Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;
.super Ljava/lang/Object;
.source "ReliabilityLayerFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final ioExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 26
    new-instance p1, Lorg/briarproject/bramble/system/SystemClock;

    invoke-direct {p1}, Lorg/briarproject/bramble/system/SystemClock;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method


# virtual methods
.method public createReliabilityLayer(Lorg/briarproject/bramble/api/reliability/WriteHandler;)Lorg/briarproject/bramble/api/reliability/ReliabilityLayer;
    .locals 3

    .line 31
    new-instance v0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-direct {v0, v1, v2, p1}, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/reliability/WriteHandler;)V

    return-object v0
.end method
