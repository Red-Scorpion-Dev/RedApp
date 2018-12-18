.class Lorg/briarproject/bramble/plugin/BackoffImpl;
.super Ljava/lang/Object;
.source "BackoffImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/Backoff;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final backoff:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final base:D

.field private final maxInterval:I

.field private final minInterval:I


# direct methods
.method constructor <init>(IID)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lorg/briarproject/bramble/plugin/BackoffImpl;->minInterval:I

    .line 20
    iput p2, p0, Lorg/briarproject/bramble/plugin/BackoffImpl;->maxInterval:I

    .line 21
    iput-wide p3, p0, Lorg/briarproject/bramble/plugin/BackoffImpl;->base:D

    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/BackoffImpl;->backoff:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public getPollingInterval()I
    .locals 4

    .line 27
    iget-wide v0, p0, Lorg/briarproject/bramble/plugin/BackoffImpl;->base:D

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/BackoffImpl;->backoff:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 29
    iget v2, p0, Lorg/briarproject/bramble/plugin/BackoffImpl;->minInterval:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int v0, v2

    .line 30
    iget v1, p0, Lorg/briarproject/bramble/plugin/BackoffImpl;->maxInterval:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public increment()V
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/BackoffImpl;->backoff:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public reset()V
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/BackoffImpl;->backoff:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
