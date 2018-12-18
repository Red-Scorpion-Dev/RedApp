.class Lorg/briarproject/bramble/reliability/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/reliability/Sender$Outstanding;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final INITIAL_RTT:I = 0x0

.field private static final INITIAL_RTT_VAR:I = 0xbb8

.field private static final MAX_RTO:I = 0xea60

.field private static final MAX_WINDOW_SIZE:I = 0x10000

.field private static final MIN_RTO:I = 0x3e8

.field private static final WRITE_TIMEOUT:I = 0x493e0


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private dataWaiting:Z

.field private lastWindowUpdateOrProbe:J

.field private final outstanding:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/briarproject/bramble/reliability/Sender$Outstanding;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingBytes:I

.field private rto:I

.field private rtt:I

.field private rttVar:I

.field private final sendWindowAvailable:Ljava/util/concurrent/locks/Condition;

.field private final windowLock:Ljava/util/concurrent/locks/Lock;

.field private windowSize:I

.field private final writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/reliability/WriteHandler;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    .line 35
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->sendWindowAvailable:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lorg/briarproject/bramble/reliability/Sender;->outstandingBytes:I

    const/16 v1, 0x400

    .line 40
    iput v1, p0, Lorg/briarproject/bramble/reliability/Sender;->windowSize:I

    .line 41
    iput v0, p0, Lorg/briarproject/bramble/reliability/Sender;->rtt:I

    const/16 v1, 0xbb8

    iput v1, p0, Lorg/briarproject/bramble/reliability/Sender;->rttVar:I

    .line 42
    iget v1, p0, Lorg/briarproject/bramble/reliability/Sender;->rtt:I

    iget v2, p0, Lorg/briarproject/bramble/reliability/Sender;->rttVar:I

    shl-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    const-wide v1, 0x7fffffffffffffffL

    .line 43
    iput-wide v1, p0, Lorg/briarproject/bramble/reliability/Sender;->lastWindowUpdateOrProbe:J

    .line 44
    iput-boolean v0, p0, Lorg/briarproject/bramble/reliability/Sender;->dataWaiting:Z

    .line 47
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/Sender;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 48
    iput-object p2, p0, Lorg/briarproject/bramble/reliability/Sender;->writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;

    .line 49
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/reliability/Sender;->outstanding:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 197
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/reliability/Sender;->dataWaiting:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->outstanding:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 198
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->sendWindowAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 200
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 201
    throw v0
.end method

.method handleAck([B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    array-length v0, p1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/reliability/Ack;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/reliability/Ack;-><init>([B)V

    .line 66
    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Ack;->getChecksum()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Ack;->calculateChecksum()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    return-void

    .line 70
    :cond_1
    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Ack;->getSequenceNumber()J

    move-result-wide v1

    .line 71
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/Sender;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v3

    const/4 p1, 0x0

    .line 73
    iget-object v5, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 77
    :try_start_0
    iget-object v5, p0, Lorg/briarproject/bramble/reliability/Sender;->outstanding:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    .line 78
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_4

    .line 79
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/briarproject/bramble/reliability/Sender$Outstanding;

    .line 80
    invoke-static {v7}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->access$000(Lorg/briarproject/bramble/reliability/Sender$Outstanding;)Lorg/briarproject/bramble/reliability/Data;

    move-result-object v9

    invoke-virtual {v9}, Lorg/briarproject/bramble/reliability/Data;->getSequenceNumber()J

    move-result-wide v9

    cmp-long v11, v9, v1

    if-nez v11, :cond_3

    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 82
    iget v1, p0, Lorg/briarproject/bramble/reliability/Sender;->outstandingBytes:I

    invoke-static {v7}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->access$000(Lorg/briarproject/bramble/reliability/Sender$Outstanding;)Lorg/briarproject/bramble/reliability/Data;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/reliability/Data;->getPayloadLength()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/briarproject/bramble/reliability/Sender;->outstandingBytes:I

    .line 85
    invoke-static {v7}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->access$100(Lorg/briarproject/bramble/reliability/Sender$Outstanding;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 86
    invoke-static {v7}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->access$200(Lorg/briarproject/bramble/reliability/Sender$Outstanding;)J

    move-result-wide v1

    const/4 v5, 0x0

    sub-long v1, v3, v1

    long-to-int v1, v1

    .line 87
    iget v2, p0, Lorg/briarproject/bramble/reliability/Sender;->rtt:I

    sub-int/2addr v1, v2

    .line 88
    iget v2, p0, Lorg/briarproject/bramble/reliability/Sender;->rtt:I

    shr-int/lit8 v5, v1, 0x3

    add-int/2addr v2, v5

    iput v2, p0, Lorg/briarproject/bramble/reliability/Sender;->rtt:I

    .line 89
    iget v2, p0, Lorg/briarproject/bramble/reliability/Sender;->rttVar:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v5, p0, Lorg/briarproject/bramble/reliability/Sender;->rttVar:I

    sub-int/2addr v1, v5

    shr-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, p0, Lorg/briarproject/bramble/reliability/Sender;->rttVar:I

    .line 90
    iget v1, p0, Lorg/briarproject/bramble/reliability/Sender;->rtt:I

    iget v2, p0, Lorg/briarproject/bramble/reliability/Sender;->rttVar:I

    shl-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    .line 91
    iget v1, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_2

    iput v2, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    goto :goto_1

    .line 92
    :cond_2
    iget v1, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    const v2, 0xea60

    if-le v1, v2, :cond_5

    iput v2, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, -0x1

    :cond_5
    :goto_1
    if-lez v6, :cond_6

    .line 99
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/Sender;->outstanding:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/reliability/Sender$Outstanding;

    .line 100
    invoke-static {p1, v3, v4}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->access$202(Lorg/briarproject/bramble/reliability/Sender$Outstanding;J)J

    const/4 v1, 0x1

    .line 101
    invoke-static {p1, v1}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->access$102(Lorg/briarproject/bramble/reliability/Sender$Outstanding;Z)Z

    .line 102
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Sender;->outstanding:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_6
    iput-wide v3, p0, Lorg/briarproject/bramble/reliability/Sender;->lastWindowUpdateOrProbe:J

    .line 106
    iget v1, p0, Lorg/briarproject/bramble/reliability/Sender;->windowSize:I

    .line 108
    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Ack;->getWindowSize()I

    move-result v0

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/briarproject/bramble/reliability/Sender;->windowSize:I

    .line 110
    iget v0, p0, Lorg/briarproject/bramble/reliability/Sender;->windowSize:I

    if-gt v0, v1, :cond_7

    if-eq v6, v8, :cond_8

    .line 111
    :cond_7
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->sendWindowAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_8
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p1, :cond_9

    .line 117
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;

    invoke-static {p1}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->access$000(Lorg/briarproject/bramble/reliability/Sender$Outstanding;)Lorg/briarproject/bramble/reliability/Data;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/reliability/Data;->getBuffer()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/reliability/WriteHandler;->handleWrite([B)V

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 113
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 114
    throw p1
.end method

.method sendAck(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/briarproject/bramble/reliability/Ack;

    invoke-direct {v0}, Lorg/briarproject/bramble/reliability/Ack;-><init>()V

    .line 54
    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/reliability/Ack;->setSequenceNumber(J)V

    .line 55
    invoke-virtual {v0, p3}, Lorg/briarproject/bramble/reliability/Ack;->setWindowSize(I)V

    .line 56
    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Ack;->calculateChecksum()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/bramble/reliability/Ack;->setChecksum(J)V

    .line 57
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/Sender;->writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;

    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Ack;->getBuffer()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/reliability/WriteHandler;->handleWrite([B)V

    return-void
.end method

.method tick()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    iget-object v2, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 126
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/bramble/reliability/Sender;->outstanding:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const v3, 0xea60

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 127
    iget-boolean v2, p0, Lorg/briarproject/bramble/reliability/Sender;->dataWaiting:Z

    if-eqz v2, :cond_5

    iget-wide v7, p0, Lorg/briarproject/bramble/reliability/Sender;->lastWindowUpdateOrProbe:J

    const/4 v2, 0x0

    sub-long/2addr v0, v7

    iget v2, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    int-to-long v7, v2

    cmp-long v2, v0, v7

    if-lez v2, :cond_5

    .line 129
    iget v0, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    shl-int/2addr v0, v4

    iput v0, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    .line 130
    iget v0, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    if-le v0, v3, :cond_0

    iput v3, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    :cond_0
    const/4 v6, 0x1

    goto :goto_2

    .line 133
    :cond_1
    iget-object v2, p0, Lorg/briarproject/bramble/reliability/Sender;->outstanding:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 134
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/briarproject/bramble/reliability/Sender$Outstanding;

    .line 136
    invoke-static {v7}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->access$200(Lorg/briarproject/bramble/reliability/Sender$Outstanding;)J

    move-result-wide v8

    const/4 v10, 0x0

    sub-long v8, v0, v8

    iget v10, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    int-to-long v10, v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_2

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    if-nez v5, :cond_3

    .line 139
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 140
    :cond_3
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget v7, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    shl-int/2addr v7, v4

    iput v7, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    .line 143
    iget v7, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    if-le v7, v3, :cond_2

    iput v3, p0, Lorg/briarproject/bramble/reliability/Sender;->rto:I

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    .line 147
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/reliability/Sender$Outstanding;

    .line 148
    invoke-static {v3, v0, v1}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->access$202(Lorg/briarproject/bramble/reliability/Sender$Outstanding;J)J

    .line 149
    invoke-static {v3, v4}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->access$102(Lorg/briarproject/bramble/reliability/Sender$Outstanding;Z)Z

    .line 150
    iget-object v7, p0, Lorg/briarproject/bramble/reliability/Sender;->outstanding:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 155
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v6, :cond_6

    const/16 v0, 0x9

    .line 159
    new-array v0, v0, [B

    .line 160
    new-instance v1, Lorg/briarproject/bramble/reliability/Data;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/reliability/Data;-><init>([B)V

    .line 161
    invoke-virtual {v1}, Lorg/briarproject/bramble/reliability/Data;->calculateChecksum()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/reliability/Data;->setChecksum(J)V

    .line 162
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Sender;->writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/reliability/WriteHandler;->handleWrite([B)V

    :cond_6
    if-eqz v5, :cond_7

    .line 166
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/reliability/Sender$Outstanding;

    .line 167
    iget-object v2, p0, Lorg/briarproject/bramble/reliability/Sender;->writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;

    invoke-static {v1}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;->access$000(Lorg/briarproject/bramble/reliability/Sender$Outstanding;)Lorg/briarproject/bramble/reliability/Data;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/reliability/Data;->getBuffer()[B

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/reliability/WriteHandler;->handleWrite([B)V

    goto :goto_3

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 155
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 156
    throw v0
.end method

.method write(Lorg/briarproject/bramble/reliability/Data;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Lorg/briarproject/bramble/reliability/Data;->getPayloadLength()I

    move-result v0

    .line 173
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 176
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Sender;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x493e0

    add-long/2addr v3, v1

    :goto_0
    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 177
    iget v5, p0, Lorg/briarproject/bramble/reliability/Sender;->outstandingBytes:I

    add-int/2addr v5, v0

    iget v6, p0, Lorg/briarproject/bramble/reliability/Sender;->windowSize:I

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    .line 179
    iput-boolean v5, p0, Lorg/briarproject/bramble/reliability/Sender;->dataWaiting:Z

    .line 180
    iget-object v5, p0, Lorg/briarproject/bramble/reliability/Sender;->sendWindowAvailable:Ljava/util/concurrent/locks/Condition;

    const/4 v6, 0x0

    sub-long v1, v3, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v1, v2, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 181
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Sender;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    .line 183
    :cond_0
    iget v3, p0, Lorg/briarproject/bramble/reliability/Sender;->outstandingBytes:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/briarproject/bramble/reliability/Sender;->windowSize:I

    if-ge v3, v4, :cond_1

    .line 185
    iget-object v3, p0, Lorg/briarproject/bramble/reliability/Sender;->outstanding:Ljava/util/LinkedList;

    new-instance v4, Lorg/briarproject/bramble/reliability/Sender$Outstanding;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v1, v2, v5}, Lorg/briarproject/bramble/reliability/Sender$Outstanding;-><init>(Lorg/briarproject/bramble/reliability/Data;JLorg/briarproject/bramble/reliability/Sender$1;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 186
    iget v1, p0, Lorg/briarproject/bramble/reliability/Sender;->outstandingBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/briarproject/bramble/reliability/Sender;->outstandingBytes:I

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lorg/briarproject/bramble/reliability/Sender;->dataWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 191
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;

    invoke-virtual {p1}, Lorg/briarproject/bramble/reliability/Data;->getBuffer()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/reliability/WriteHandler;->handleWrite([B)V

    return-void

    .line 184
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Write timed out"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 189
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Sender;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 190
    throw p1
.end method
