.class Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;
.super Ljava/lang/Object;
.source "ConnectionChooserImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/keyagreement/ConnectionChooser;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final lock:Ljava/lang/Object;

.field private final results:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;",
            ">;"
        }
    .end annotation
.end field

.field private stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/system/Clock;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->stopped:Z

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->results:Ljava/util/Queue;

    .line 41
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 42
    iput-object p2, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private addResult(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;)V
    .locals 3

    .line 87
    sget-object v0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got connection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-boolean v2, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->stopped:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->results:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 97
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Already stopped"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 97
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic lambda$submit$0(Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;Ljava/util/concurrent/Callable;)V
    .locals 2

    .line 49
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    if-eqz p1, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->addResult(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    sget-object v0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V
    .locals 3

    .line 106
    :try_start_0
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getReader()Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;->dispose(ZZ)V

    .line 107
    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getWriter()Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->dispose(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    sget-object v0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public poll(J)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 63
    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->stopped:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->results:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    .line 65
    iget-object v3, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->lock:Ljava/lang/Object;

    const/4 v4, 0x0

    sub-long v0, p1, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 66
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->results:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 4

    .line 75
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->results:Ljava/util/Queue;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->results:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    const/4 v2, 0x1

    .line 78
    iput-boolean v2, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->stopped:Z

    .line 79
    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    sget-object v0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " unused connections"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 83
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->tryToClose(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 80
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public submit(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/keyagreement/-$$Lambda$ConnectionChooserImpl$Nn_9nFRTFdFFkvCCFZuVtn18WQQ;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/keyagreement/-$$Lambda$ConnectionChooserImpl$Nn_9nFRTFdFFkvCCFZuVtn18WQQ;-><init>(Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
