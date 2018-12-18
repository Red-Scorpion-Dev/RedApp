.class Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;
.super Ljava/lang/Object;
.source "ReliabilityLayerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/reliability/ReliabilityLayer;
.implements Lorg/briarproject/bramble/api/reliability/WriteHandler;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final TICK_INTERVAL:I = 0x1f4


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private volatile decoder:Lorg/briarproject/bramble/reliability/SlipDecoder;

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile inputStream:Lorg/briarproject/bramble/reliability/ReceiverInputStream;

.field private volatile outputStream:Lorg/briarproject/bramble/reliability/SenderOutputStream;

.field private volatile receiver:Lorg/briarproject/bramble/reliability/Receiver;

.field private volatile running:Z

.field private final writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;

.field private final writes:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/reliability/WriteHandler;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->receiver:Lorg/briarproject/bramble/reliability/Receiver;

    .line 36
    iput-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->decoder:Lorg/briarproject/bramble/reliability/SlipDecoder;

    .line 37
    iput-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->inputStream:Lorg/briarproject/bramble/reliability/ReceiverInputStream;

    .line 38
    iput-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->outputStream:Lorg/briarproject/bramble/reliability/SenderOutputStream;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->running:Z

    .line 43
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->executor:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p2, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 45
    iput-object p3, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;

    .line 46
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->writes:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public static synthetic lambda$start$0(Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;Lorg/briarproject/bramble/reliability/Sender;)V
    .locals 9

    .line 59
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long v4, v0, v2

    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 62
    :try_start_0
    iget-boolean v7, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->running:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_1
    cmp-long v8, v0, v4

    if-gez v8, :cond_2

    if-nez v7, :cond_2

    .line 65
    iget-object v7, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->writes:Ljava/util/concurrent/BlockingQueue;

    const/4 v8, 0x0

    sub-long v0, v4, v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v0, v1, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [B

    .line 66
    iget-boolean v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->running:Z

    if-nez v0, :cond_1

    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    if-nez v7, :cond_3

    .line 70
    invoke-virtual {p1}, Lorg/briarproject/bramble/reliability/Sender;->tick()V

    :goto_2
    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    add-long/2addr v4, v2

    goto :goto_2

    .line 73
    :cond_3
    array-length v8, v7

    if-nez v8, :cond_4

    return-void

    .line 74
    :cond_4
    iget-object v8, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;

    invoke-interface {v8, v7}, Lorg/briarproject/bramble/api/reliability/WriteHandler;->handleWrite([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    sget-object v0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 83
    iput-boolean v6, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->running:Z

    goto :goto_3

    .line 78
    :catch_1
    sget-object p1, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Interrupted while waiting to write"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 80
    iput-boolean v6, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->running:Z

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->inputStream:Lorg/briarproject/bramble/reliability/ReceiverInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->outputStream:Lorg/briarproject/bramble/reliability/SenderOutputStream;

    return-object v0
.end method

.method public handleRead([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-boolean v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->decoder:Lorg/briarproject/bramble/reliability/SlipDecoder;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/reliability/SlipDecoder;->handleRead([B)V

    :cond_0
    return-void
.end method

.method public handleWrite([B)V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->running:Z

    if-eqz v0, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->writes:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 51
    new-instance v0, Lorg/briarproject/bramble/reliability/SlipEncoder;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/reliability/SlipEncoder;-><init>(Lorg/briarproject/bramble/api/reliability/WriteHandler;)V

    .line 52
    new-instance v1, Lorg/briarproject/bramble/reliability/Sender;

    iget-object v2, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-direct {v1, v2, v0}, Lorg/briarproject/bramble/reliability/Sender;-><init>(Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/reliability/WriteHandler;)V

    .line 53
    new-instance v0, Lorg/briarproject/bramble/reliability/Receiver;

    iget-object v2, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-direct {v0, v2, v1}, Lorg/briarproject/bramble/reliability/Receiver;-><init>(Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/reliability/Sender;)V

    iput-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->receiver:Lorg/briarproject/bramble/reliability/Receiver;

    .line 54
    new-instance v0, Lorg/briarproject/bramble/reliability/SlipDecoder;

    iget-object v2, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->receiver:Lorg/briarproject/bramble/reliability/Receiver;

    const/16 v3, 0x409

    invoke-direct {v0, v2, v3}, Lorg/briarproject/bramble/reliability/SlipDecoder;-><init>(Lorg/briarproject/bramble/api/reliability/ReadHandler;I)V

    iput-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->decoder:Lorg/briarproject/bramble/reliability/SlipDecoder;

    .line 55
    new-instance v0, Lorg/briarproject/bramble/reliability/ReceiverInputStream;

    iget-object v2, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->receiver:Lorg/briarproject/bramble/reliability/Receiver;

    invoke-direct {v0, v2}, Lorg/briarproject/bramble/reliability/ReceiverInputStream;-><init>(Lorg/briarproject/bramble/reliability/Receiver;)V

    iput-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->inputStream:Lorg/briarproject/bramble/reliability/ReceiverInputStream;

    .line 56
    new-instance v0, Lorg/briarproject/bramble/reliability/SenderOutputStream;

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/reliability/SenderOutputStream;-><init>(Lorg/briarproject/bramble/reliability/Sender;)V

    iput-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->outputStream:Lorg/briarproject/bramble/reliability/SenderOutputStream;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->running:Z

    .line 58
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/briarproject/bramble/reliability/-$$Lambda$ReliabilityLayerImpl$t-lx2fstd2qZiOn_Gwa8qIaS5I4;

    invoke-direct {v2, p0, v1}, Lorg/briarproject/bramble/reliability/-$$Lambda$ReliabilityLayerImpl$t-lx2fstd2qZiOn_Gwa8qIaS5I4;-><init>(Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;Lorg/briarproject/bramble/reliability/Sender;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->running:Z

    .line 91
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->receiver:Lorg/briarproject/bramble/reliability/Receiver;

    invoke-virtual {v1}, Lorg/briarproject/bramble/reliability/Receiver;->invalidate()V

    .line 92
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->writes:Ljava/util/concurrent/BlockingQueue;

    new-array v0, v0, [B

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
