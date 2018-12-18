.class Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;
.super Ljava/lang/Thread;
.source "DevReportServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/reporting/DevReportServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenBucket"
.end annotation


# instance fields
.field private final semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;->semaphore:Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;->setDaemon(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/reporting/DevReportServer$1;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;->waitForToken()V

    return-void
.end method

.method private waitForToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    .line 107
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Adding token to bucket"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    const-wide/32 v0, 0xea60

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Interrupted while sleeping"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
