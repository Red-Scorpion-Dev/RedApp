.class public Lorg/briarproject/bramble/util/RenewableWakeLock;
.super Ljava/lang/Object;
.source "RenewableWakeLock.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final SAFETY_MARGIN_MS:I = 0x2710


# instance fields
.field private final durationMs:J

.field private future:Ljava/util/concurrent/ScheduledFuture;

.field private final levelAndFlags:I

.field private final lock:Ljava/lang/Object;

.field private final powerManager:Landroid/os/PowerManager;

.field private final renewTask:Ljava/lang/Runnable;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final tag:Ljava/lang/String;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lorg/briarproject/bramble/util/RenewableWakeLock;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/util/RenewableWakeLock;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Ljava/util/concurrent/ScheduledExecutorService;ILjava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->lock:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->powerManager:Landroid/os/PowerManager;

    .line 48
    iput-object p2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    iput p3, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->levelAndFlags:I

    .line 50
    iput-object p4, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->tag:Ljava/lang/String;

    .line 51
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p5, p6, p7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->durationMs:J

    .line 52
    new-instance p1, Lorg/briarproject/bramble/util/-$$Lambda$RenewableWakeLock$9LdToAbA2pW5hqPeMzivLJXYw-o;

    invoke-direct {p1, p0}, Lorg/briarproject/bramble/util/-$$Lambda$RenewableWakeLock$9LdToAbA2pW5hqPeMzivLJXYw-o;-><init>(Lorg/briarproject/bramble/util/RenewableWakeLock;)V

    iput-object p1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->renewTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic lambda$9LdToAbA2pW5hqPeMzivLJXYw-o(Lorg/briarproject/bramble/util/RenewableWakeLock;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/bramble/util/RenewableWakeLock;->renew()V

    return-void
.end method

.method private renew()V
    .locals 7

    .line 70
    sget-object v0, Lorg/briarproject/bramble/util/RenewableWakeLock;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/util/RenewableWakeLock;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Renewing wake lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 73
    sget-object v1, Lorg/briarproject/bramble/util/RenewableWakeLock;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Already released"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 74
    monitor-exit v0

    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    iget-object v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->powerManager:Landroid/os/PowerManager;

    iget v3, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->levelAndFlags:I

    iget-object v4, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 78
    iget-object v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 79
    iget-object v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-wide v3, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->durationMs:J

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 80
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 81
    iget-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->renewTask:Ljava/lang/Runnable;

    iget-wide v3, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->durationMs:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 82
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public acquire()V
    .locals 6

    .line 56
    sget-object v0, Lorg/briarproject/bramble/util/RenewableWakeLock;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/util/RenewableWakeLock;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring wake lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 59
    sget-object v1, Lorg/briarproject/bramble/util/RenewableWakeLock;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Already acquired"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 60
    monitor-exit v0

    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->powerManager:Landroid/os/PowerManager;

    iget v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->levelAndFlags:I

    iget-object v3, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    iget-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 64
    iget-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-wide v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->durationMs:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 65
    iget-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->renewTask:Ljava/lang/Runnable;

    iget-wide v3, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->durationMs:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    .line 86
    sget-object v0, Lorg/briarproject/bramble/util/RenewableWakeLock;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/util/RenewableWakeLock;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing wake lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 89
    sget-object v1, Lorg/briarproject/bramble/util/RenewableWakeLock;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Already released"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 90
    monitor-exit v0

    return-void

    .line 92
    :cond_1
    iget-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 95
    iget-object v2, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 96
    iput-object v1, p0, Lorg/briarproject/bramble/util/RenewableWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    monitor-exit v0

    return-void

    .line 92
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
