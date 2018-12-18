.class Lorg/h2/mvstore/db/TransactionStore$1;
.super Ljava/lang/Object;
.source "TransactionStore.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/db/TransactionStore;->getChanges(Lorg/h2/mvstore/db/TransactionStore$Transaction;JJ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/h2/mvstore/db/TransactionStore$Change;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Lorg/h2/mvstore/db/TransactionStore$Change;

.field private logId:J

.field final synthetic this$0:Lorg/h2/mvstore/db/TransactionStore;

.field final synthetic val$maxLogId:J

.field final synthetic val$t:Lorg/h2/mvstore/db/TransactionStore$Transaction;

.field final synthetic val$toLogId:J


# direct methods
.method constructor <init>(Lorg/h2/mvstore/db/TransactionStore;JJLorg/h2/mvstore/db/TransactionStore$Transaction;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$1;->this$0:Lorg/h2/mvstore/db/TransactionStore;

    iput-wide p2, p0, Lorg/h2/mvstore/db/TransactionStore$1;->val$maxLogId:J

    iput-wide p4, p0, Lorg/h2/mvstore/db/TransactionStore$1;->val$toLogId:J

    iput-object p6, p0, Lorg/h2/mvstore/db/TransactionStore$1;->val$t:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iget-wide p1, p0, Lorg/h2/mvstore/db/TransactionStore$1;->val$maxLogId:J

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lorg/h2/mvstore/db/TransactionStore$1;->logId:J

    .line 530
    invoke-direct {p0}, Lorg/h2/mvstore/db/TransactionStore$1;->fetchNext()V

    return-void
.end method

.method private fetchNext()V
    .locals 8

    .line 534
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$1;->this$0:Lorg/h2/mvstore/db/TransactionStore;

    iget-object v0, v0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    monitor-enter v0

    .line 535
    :goto_0
    :try_start_0
    iget-wide v1, p0, Lorg/h2/mvstore/db/TransactionStore$1;->logId:J

    iget-wide v3, p0, Lorg/h2/mvstore/db/TransactionStore$1;->val$toLogId:J

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-ltz v6, :cond_4

    .line 536
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$1;->val$t:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result v1

    iget-wide v2, p0, Lorg/h2/mvstore/db/TransactionStore$1;->logId:J

    invoke-static {v1, v2, v3}, Lorg/h2/mvstore/db/TransactionStore;->getOperationId(IJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 537
    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore$1;->this$0:Lorg/h2/mvstore/db/TransactionStore;

    iget-object v2, v2, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 538
    iget-wide v3, p0, Lorg/h2/mvstore/db/TransactionStore$1;->logId:J

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lorg/h2/mvstore/db/TransactionStore$1;->logId:J

    if-nez v2, :cond_1

    .line 541
    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore$1;->this$0:Lorg/h2/mvstore/db/TransactionStore;

    iget-object v2, v2, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 542
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/mvstore/db/TransactionStore;->getTransactionId(J)I

    move-result v2

    iget-object v3, p0, Lorg/h2/mvstore/db/TransactionStore$1;->val$t:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v3}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_2

    .line 546
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/mvstore/db/TransactionStore;->getLogId(J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/h2/mvstore/db/TransactionStore$1;->logId:J

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 549
    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 550
    iget-object v3, p0, Lorg/h2/mvstore/db/TransactionStore$1;->this$0:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v3, v1}, Lorg/h2/mvstore/db/TransactionStore;->openMap(I)Lorg/h2/mvstore/MVMap;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 554
    :cond_2
    new-instance v3, Lorg/h2/mvstore/db/TransactionStore$Change;

    invoke-direct {v3}, Lorg/h2/mvstore/db/TransactionStore$Change;-><init>()V

    iput-object v3, p0, Lorg/h2/mvstore/db/TransactionStore$1;->current:Lorg/h2/mvstore/db/TransactionStore$Change;

    .line 555
    iget-object v3, p0, Lorg/h2/mvstore/db/TransactionStore$1;->current:Lorg/h2/mvstore/db/TransactionStore$Change;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lorg/h2/mvstore/db/TransactionStore$Change;->mapName:Ljava/lang/String;

    .line 556
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$1;->current:Lorg/h2/mvstore/db/TransactionStore$Change;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v3, v1, Lorg/h2/mvstore/db/TransactionStore$Change;->key:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 557
    aget-object v1, v2, v1

    check-cast v1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    .line 558
    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore$1;->current:Lorg/h2/mvstore/db/TransactionStore$Change;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    :goto_1
    iput-object v5, v2, Lorg/h2/mvstore/db/TransactionStore$Change;->value:Ljava/lang/Object;

    .line 560
    monitor-exit v0

    return-void

    .line 563
    :cond_4
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    iput-object v5, p0, Lorg/h2/mvstore/db/TransactionStore$1;->current:Lorg/h2/mvstore/db/TransactionStore$Change;

    return-void

    :catchall_0
    move-exception v1

    .line 563
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$1;->current:Lorg/h2/mvstore/db/TransactionStore$Change;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 524
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$1;->next()Lorg/h2/mvstore/db/TransactionStore$Change;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/h2/mvstore/db/TransactionStore$Change;
    .locals 1

    .line 574
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$1;->current:Lorg/h2/mvstore/db/TransactionStore$Change;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$1;->current:Lorg/h2/mvstore/db/TransactionStore$Change;

    .line 578
    invoke-direct {p0}, Lorg/h2/mvstore/db/TransactionStore$1;->fetchNext()V

    return-object v0

    :cond_0
    const-string v0, "no data"

    .line 575
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 1

    const-string v0, "remove"

    .line 584
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
