.class Lnet/freehaven/tor/control/TorControlConnection$Waiter;
.super Ljava/lang/Object;
.source "TorControlConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/freehaven/tor/control/TorControlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Waiter"
.end annotation


# instance fields
.field interrupted:Z

.field response:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized getResponse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 46
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection$Waiter;->response:Ljava/util/List;

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 48
    iget-boolean v0, p0, Lnet/freehaven/tor/control/TorControlConnection$Waiter;->interrupted:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 52
    :cond_1
    iget-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection$Waiter;->response:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized interrupt()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 61
    :try_start_0
    iput-boolean v0, p0, Lnet/freehaven/tor/control/TorControlConnection$Waiter;->interrupted:Z

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 60
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setResponse(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    iput-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection$Waiter;->response:Ljava/util/List;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0

    throw p1
.end method
