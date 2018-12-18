.class Lorg/briarproject/bramble/reliability/Receiver;
.super Ljava/lang/Object;
.source "Receiver.java"

# interfaces
.implements Lorg/briarproject/bramble/api/reliability/ReadHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/reliability/Receiver$SequenceNumberComparator;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final MAX_WINDOW_SIZE:I = 0x2000

.field private static final READ_TIMEOUT:I = 0x493e0


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final dataFrameAvailable:Ljava/util/concurrent/locks/Condition;

.field private final dataFrames:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lorg/briarproject/bramble/reliability/Data;",
            ">;"
        }
    .end annotation
.end field

.field private finalSequenceNumber:J

.field private nextSequenceNumber:J

.field private final sender:Lorg/briarproject/bramble/reliability/Sender;

.field private volatile valid:Z

.field private final windowLock:Ljava/util/concurrent/locks/Lock;

.field private windowSize:I


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/reliability/Sender;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrameAvailable:Ljava/util/concurrent/locks/Condition;

    const/16 v0, 0x2000

    .line 34
    iput v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowSize:I

    const-wide v0, 0x7fffffffffffffffL

    .line 36
    iput-wide v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->finalSequenceNumber:J

    const-wide/16 v0, 0x1

    .line 37
    iput-wide v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->nextSequenceNumber:J

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->valid:Z

    .line 42
    iput-object p2, p0, Lorg/briarproject/bramble/reliability/Receiver;->sender:Lorg/briarproject/bramble/reliability/Sender;

    .line 43
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/Receiver;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 44
    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Lorg/briarproject/bramble/reliability/Receiver$SequenceNumberComparator;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lorg/briarproject/bramble/reliability/Receiver$SequenceNumberComparator;-><init>(Lorg/briarproject/bramble/reliability/Receiver$1;)V

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrames:Ljava/util/SortedSet;

    return-void
.end method

.method private handleData([B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 107
    :try_start_0
    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_9

    array-length v0, p1

    const/16 v1, 0x409

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    .line 111
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/reliability/Data;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/reliability/Data;-><init>([B)V

    .line 112
    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Data;->getPayloadLength()I

    move-result p1

    .line 113
    iget v1, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le p1, v1, :cond_1

    .line 145
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 114
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Data;->getChecksum()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Data;->calculateChecksum()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 145
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 118
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Data;->getSequenceNumber()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    goto :goto_1

    .line 121
    :cond_3
    iget-wide v3, p0, Lorg/briarproject/bramble/reliability/Receiver;->nextSequenceNumber:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {v0}, Lorg/briarproject/bramble/reliability/Data;->isLastFrame()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 124
    iput-wide v1, p0, Lorg/briarproject/bramble/reliability/Receiver;->finalSequenceNumber:J

    .line 126
    iget-object v3, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrames:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 127
    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/reliability/Data;

    .line 129
    invoke-virtual {v4}, Lorg/briarproject/bramble/reliability/Data;->getSequenceNumber()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/briarproject/bramble/reliability/Receiver;->finalSequenceNumber:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_5

    .line 130
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 132
    :cond_6
    iget-object v3, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrames:Ljava/util/SortedSet;

    invoke-interface {v3, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    iget v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowSize:I

    .line 134
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrameAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto :goto_1

    .line 136
    :cond_7
    iget-wide v3, p0, Lorg/briarproject/bramble/reliability/Receiver;->finalSequenceNumber:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_8

    .line 137
    iget-object v3, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrames:Ljava/util/SortedSet;

    invoke-interface {v3, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    iget v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowSize:I

    .line 139
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrameAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 143
    :cond_8
    :goto_1
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/Receiver;->sender:Lorg/briarproject/bramble/reliability/Sender;

    iget v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowSize:I

    invoke-virtual {p1, v1, v2, v0}, Lorg/briarproject/bramble/reliability/Sender;->sendAck(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_9
    :goto_2
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 146
    throw p1
.end method


# virtual methods
.method public handleRead([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->valid:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 91
    aget-byte v0, p1, v0

    const/16 v1, -0x80

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/reliability/Receiver;->handleData([B)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->sender:Lorg/briarproject/bramble/reliability/Sender;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/reliability/Sender;->handleAck([B)V

    :goto_0
    return-void

    .line 90
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Connection closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method invalidate()V
    .locals 2

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->valid:Z

    .line 80
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrameAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    throw v0
.end method

.method read()Lorg/briarproject/bramble/reliability/Data;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 50
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v2, v0

    :goto_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 51
    iget-boolean v4, p0, Lorg/briarproject/bramble/reliability/Receiver;->valid:Z

    if-eqz v4, :cond_2

    .line 52
    iget-object v4, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrames:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    iget-object v4, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrameAvailable:Ljava/util/concurrent/locks/Condition;

    const/4 v5, 0x0

    sub-long v0, v2, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v1, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_1

    .line 56
    :cond_0
    iget-object v4, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrames:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/reliability/Data;

    .line 57
    invoke-virtual {v4}, Lorg/briarproject/bramble/reliability/Data;->getSequenceNumber()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/briarproject/bramble/reliability/Receiver;->nextSequenceNumber:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 58
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrames:Ljava/util/SortedSet;

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 60
    iget v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowSize:I

    invoke-virtual {v4}, Lorg/briarproject/bramble/reliability/Data;->getPayloadLength()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowSize:I

    .line 61
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->sender:Lorg/briarproject/bramble/reliability/Sender;

    const-wide/16 v1, 0x0

    iget v3, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowSize:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/briarproject/bramble/reliability/Sender;->sendAck(JI)V

    .line 62
    iget-wide v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->nextSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->nextSequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v4

    .line 66
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/briarproject/bramble/reliability/Receiver;->dataFrameAvailable:Ljava/util/concurrent/locks/Condition;

    const/4 v5, 0x0

    sub-long v0, v2, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v1, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 69
    :goto_1
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 71
    :cond_2
    iget-boolean v0, p0, Lorg/briarproject/bramble/reliability/Receiver;->valid:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read timed out"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Receiver;->windowLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    throw v0
.end method
