.class Lorg/briarproject/briar/android/NetworkUsageLogger;
.super Ljava/lang/Object;
.source "NetworkUsageLogger.java"

# interfaces
.implements Lorg/briarproject/bramble/api/lifecycle/Service;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private volatile rxBytes:J

.field private volatile startTime:J

.field private volatile txBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lorg/briarproject/briar/android/NetworkUsageLogger;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/NetworkUsageLogger;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startService()V
    .locals 3

    .line 22
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/briarproject/briar/android/NetworkUsageLogger;->startTime:J

    .line 23
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 24
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/briarproject/briar/android/NetworkUsageLogger;->rxBytes:J

    .line 25
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/briarproject/briar/android/NetworkUsageLogger;->txBytes:J

    return-void
.end method

.method public stopService()V
    .locals 10

    .line 30
    sget-object v0, Lorg/briarproject/briar/android/NetworkUsageLogger;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/briarproject/briar/android/NetworkUsageLogger;->startTime:J

    sub-long/2addr v0, v2

    .line 32
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 33
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    iget-wide v5, p0, Lorg/briarproject/briar/android/NetworkUsageLogger;->rxBytes:J

    sub-long/2addr v3, v5

    .line 34
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    iget-wide v7, p0, Lorg/briarproject/briar/android/NetworkUsageLogger;->txBytes:J

    sub-long/2addr v5, v7

    .line 35
    sget-object v2, Lorg/briarproject/briar/android/NetworkUsageLogger;->LOG:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " seconds"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/briarproject/briar/android/NetworkUsageLogger;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/briarproject/briar/android/NetworkUsageLogger;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
