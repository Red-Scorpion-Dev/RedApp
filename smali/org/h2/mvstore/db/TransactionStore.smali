.class public Lorg/h2/mvstore/db/TransactionStore;
.super Ljava/lang/Object;
.source "TransactionStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/db/TransactionStore$ArrayType;,
        Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;,
        Lorg/h2/mvstore/db/TransactionStore$VersionedValue;,
        Lorg/h2/mvstore/db/TransactionStore$TransactionMap;,
        Lorg/h2/mvstore/db/TransactionStore$Transaction;,
        Lorg/h2/mvstore/db/TransactionStore$Change;
    }
.end annotation


# instance fields
.field private final dataType:Lorg/h2/mvstore/type/DataType;

.field private init:Z

.field private maps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/Object;",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private maxTransactionId:I

.field private nextTempMapId:I

.field private final openTransactions:Ljava/util/BitSet;

.field final preparedTransactions:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final store:Lorg/h2/mvstore/MVStore;

.field final undoLog:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/MVStore;)V
    .locals 1

    .line 78
    new-instance v0, Lorg/h2/mvstore/type/ObjectDataType;

    invoke-direct {v0}, Lorg/h2/mvstore/type/ObjectDataType;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/db/TransactionStore;-><init>(Lorg/h2/mvstore/MVStore;Lorg/h2/mvstore/type/DataType;)V

    return-void
.end method

.method public constructor <init>(Lorg/h2/mvstore/MVStore;Lorg/h2/mvstore/type/DataType;)V
    .locals 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->maps:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->openTransactions:Ljava/util/BitSet;

    const v0, 0xffff

    .line 65
    iput v0, p0, Lorg/h2/mvstore/db/TransactionStore;->maxTransactionId:I

    .line 88
    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    .line 89
    iput-object p2, p0, Lorg/h2/mvstore/db/TransactionStore;->dataType:Lorg/h2/mvstore/type/DataType;

    const-string v0, "openTransactions"

    .line 90
    new-instance v1, Lorg/h2/mvstore/MVMap$Builder;

    invoke-direct {v1}, Lorg/h2/mvstore/MVMap$Builder;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->preparedTransactions:Lorg/h2/mvstore/MVMap;

    .line 92
    new-instance v0, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;

    invoke-direct {v0, p2}, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;-><init>(Lorg/h2/mvstore/type/DataType;)V

    .line 93
    new-instance v1, Lorg/h2/mvstore/db/TransactionStore$ArrayType;

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/h2/mvstore/type/DataType;

    new-instance v3, Lorg/h2/mvstore/type/ObjectDataType;

    invoke-direct {v3}, Lorg/h2/mvstore/type/ObjectDataType;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    aput-object v0, v2, p2

    invoke-direct {v1, v2}, Lorg/h2/mvstore/db/TransactionStore$ArrayType;-><init>([Lorg/h2/mvstore/type/DataType;)V

    .line 96
    new-instance p2, Lorg/h2/mvstore/MVMap$Builder;

    invoke-direct {p2}, Lorg/h2/mvstore/MVMap$Builder;-><init>()V

    invoke-virtual {p2, v1}, Lorg/h2/mvstore/MVMap$Builder;->valueType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object p2

    const-string v0, "undoLog"

    .line 99
    invoke-virtual {p1, v0, p2}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    .line 100
    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getValueType()Lorg/h2/mvstore/type/DataType;

    move-result-object p1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x64

    .line 101
    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "Undo map open with a different value type"

    invoke-static {p1, v0, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method static getLogId(J)J
    .locals 2

    const-wide v0, 0xffffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method static getOperationId(IJ)J
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_0

    const/high16 v2, 0x1000000

    if-ge p0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Transaction id out of range: {0}"

    .line 150
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    const-wide v2, 0x10000000000L

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Transaction log id out of range: {0}"

    .line 152
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    int-to-long v0, p0

    const/16 p0, 0x28

    shl-long/2addr v0, p0

    or-long/2addr p1, v0

    return-wide p1
.end method

.method static getTransactionId(J)I
    .locals 1

    const/16 v0, 0x28

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public declared-synchronized begin()Lorg/h2/mvstore/db/TransactionStore$Transaction;
    .locals 10

    monitor-enter p0

    .line 229
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/mvstore/db/TransactionStore;->init:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->openTransactions:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v5

    .line 235
    iget v0, p0, Lorg/h2/mvstore/db/TransactionStore;->maxTransactionId:I

    if-gt v5, v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->openTransactions:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    const/4 v6, 0x1

    .line 243
    new-instance v0, Lorg/h2/mvstore/db/TransactionStore$Transaction;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/h2/mvstore/db/TransactionStore$Transaction;-><init>(Lorg/h2/mvstore/db/TransactionStore;IILjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/16 v0, 0x66

    :try_start_1
    const-string v3, "There are {0} open transactions"

    .line 236
    new-array v4, v2, [Ljava/lang/Object;

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_1
    const/16 v0, 0x67

    const-string v2, "Not initialized"

    .line 230
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 228
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->commit()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 216
    monitor-exit p0

    throw v0
.end method

.method commit(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)V
    .locals 10

    .line 324
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    monitor-enter v0

    const/4 v1, 0x3

    .line 329
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->setStatus(I)V

    const-wide/16 v1, 0x0

    :goto_0
    cmp-long v3, v1, p2

    if-gez v3, :cond_6

    .line 331
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result v3

    invoke-static {v3, v1, v2}, Lorg/h2/mvstore/db/TransactionStore;->getOperationId(IJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 332
    iget-object v4, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v4, v3}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    const-wide/16 v5, 0x1

    if-nez v4, :cond_2

    .line 335
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/MVMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 336
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/mvstore/db/TransactionStore;->getTransactionId(J)I

    move-result v2

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 340
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/mvstore/db/TransactionStore;->getLogId(J)J

    move-result-wide v1

    const/4 v3, 0x0

    sub-long/2addr v1, v5

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 343
    aget-object v7, v4, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 344
    invoke-virtual {p0, v7}, Lorg/h2/mvstore/db/TransactionStore;->openMap(I)Lorg/h2/mvstore/MVMap;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    .line 348
    aget-object v4, v4, v8

    .line 349
    invoke-virtual {v7, v4}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    if-nez v8, :cond_4

    goto :goto_1

    .line 352
    :cond_4
    iget-object v9, v8, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    if-nez v9, :cond_5

    .line 354
    invoke-virtual {v7, v4}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 356
    :cond_5
    new-instance v9, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    invoke-direct {v9}, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;-><init>()V

    .line 357
    iget-object v8, v8, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    iput-object v8, v9, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    .line 358
    invoke-virtual {v7, v4, v9}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :goto_1
    iget-object v4, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v4, v3}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const/4 v3, 0x0

    add-long/2addr v1, v5

    goto :goto_0

    .line 363
    :cond_6
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/TransactionStore;->endTransaction(Lorg/h2/mvstore/db/TransactionStore$Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    .line 363
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized createTempMap()Lorg/h2/mvstore/MVMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 427
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/mvstore/db/TransactionStore;->nextTempMapId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/mvstore/db/TransactionStore;->nextTempMapId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/db/TransactionStore;->openTempMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 426
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized endTransaction(Lorg/h2/mvstore/db/TransactionStore$Transaction;)V
    .locals 2

    monitor-enter p0

    .line 450
    :try_start_0
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->preparedTransactions:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 453
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->setStatus(I)V

    .line 454
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->openTransactions:Ljava/util/BitSet;

    iget p1, p1, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 455
    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->getAutoCommitDelay()I

    move-result p1

    if-nez p1, :cond_1

    .line 456
    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->commit()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 462
    :cond_1
    :try_start_1
    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 463
    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->getUnsavedMemory()I

    move-result p1

    .line 464
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getAutoCommitMemory()I

    move-result v0

    mul-int/lit8 p1, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-le p1, v0, :cond_2

    .line 467
    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->commit()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 449
    monitor-exit p0

    throw p1
.end method

.method getChanges(Lorg/h2/mvstore/db/TransactionStore$Transaction;JJ)Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/db/TransactionStore$Transaction;",
            "JJ)",
            "Ljava/util/Iterator<",
            "Lorg/h2/mvstore/db/TransactionStore$Change;",
            ">;"
        }
    .end annotation

    .line 524
    new-instance v7, Lorg/h2/mvstore/db/TransactionStore$1;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/h2/mvstore/db/TransactionStore$1;-><init>(Lorg/h2/mvstore/db/TransactionStore;JJLorg/h2/mvstore/db/TransactionStore$Transaction;)V

    return-object v7
.end method

.method public getOpenTransactions()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/mvstore/db/TransactionStore$Transaction;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :goto_0
    if-eqz v2, :cond_2

    .line 187
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/mvstore/db/TransactionStore;->getTransactionId(J)I

    move-result v6

    .line 188
    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    add-int/lit8 v3, v6, 0x1

    const-wide/16 v11, 0x0

    invoke-static {v3, v11, v12}, Lorg/h2/mvstore/db/TransactionStore;->getOperationId(IJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/h2/mvstore/MVMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 189
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/h2/mvstore/db/TransactionStore;->getLogId(J)J

    move-result-wide v4

    const-wide/16 v7, 0x1

    add-long v9, v4, v7

    .line 190
    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore;->preparedTransactions:Lorg/h2/mvstore/MVMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 194
    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-static {v6, v11, v12}, Lorg/h2/mvstore/db/TransactionStore;->getOperationId(IJ)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/h2/mvstore/MVMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x3

    :goto_1
    const/4 v2, 0x0

    move-object v8, v2

    move v7, v4

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 201
    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 202
    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    move v7, v5

    .line 204
    :goto_2
    new-instance v2, Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/h2/mvstore/db/TransactionStore$Transaction;-><init>(Lorg/h2/mvstore/db/TransactionStore;IILjava/lang/String;J)V

    .line 206
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-static {v3, v11, v12}, Lorg/h2/mvstore/db/TransactionStore;->getOperationId(IJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    .line 209
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized init()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 113
    :try_start_0
    iput-boolean v0, p0, Lorg/h2/mvstore/db/TransactionStore;->init:Z

    .line 115
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getMapNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "temp."

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {p0, v1}, Lorg/h2/mvstore/db/TransactionStore;->openTempMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVStore;->removeMap(Lorg/h2/mvstore/MVMap;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 123
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 124
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/mvstore/db/TransactionStore;->getTransactionId(J)I

    move-result v2

    .line 125
    iget-object v3, p0, Lorg/h2/mvstore/db/TransactionStore;->openTransactions:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 128
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 128
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 112
    monitor-exit p0

    throw v0
.end method

.method log(Lorg/h2/mvstore/db/TransactionStore$Transaction;JILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 270
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result v0

    invoke-static {v0, p2, p3}, Lorg/h2/mvstore/db/TransactionStore;->getOperationId(IJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    .line 271
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    aput-object p5, v1, p4

    const/4 p5, 0x2

    aput-object p6, v1, p5

    .line 272
    iget-object p5, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    monitor-enter p5

    const-wide/16 v3, 0x0

    cmp-long p6, p2, v3

    if-nez p6, :cond_1

    .line 274
    :try_start_0
    iget-object p2, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/MVMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x66

    const-string p3, "An old transaction with the same id is still open: {0}"

    .line 275
    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-static {p2, p3, p4}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 282
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    monitor-exit p5

    return-void

    :goto_1
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public logUndo(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)V
    .locals 3

    .line 293
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result v0

    invoke-static {v0, p2, p3}, Lorg/h2/mvstore/db/TransactionStore;->getOperationId(IJ)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 294
    iget-object p3, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    monitor-enter p3

    .line 295
    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0, p2}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 302
    monitor-exit p3

    return-void

    :cond_0
    const/16 p2, 0x67

    const-string v0, "Transaction {0} was concurrently rolled back"

    const/4 v1, 0x1

    .line 297
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 302
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method declared-synchronized openMap(I)Lorg/h2/mvstore/MVMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/Object;",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->maps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/MVMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 405
    monitor-exit p0

    return-object v0

    .line 407
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVStore;->getMapName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 410
    monitor-exit p0

    return-object p1

    .line 412
    :cond_1
    :try_start_2
    new-instance v1, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;

    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore;->dataType:Lorg/h2/mvstore/type/DataType;

    invoke-direct {v1, v2}, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;-><init>(Lorg/h2/mvstore/type/DataType;)V

    .line 413
    new-instance v2, Lorg/h2/mvstore/MVMap$Builder;

    invoke-direct {v2}, Lorg/h2/mvstore/MVMap$Builder;-><init>()V

    iget-object v3, p0, Lorg/h2/mvstore/db/TransactionStore;->dataType:Lorg/h2/mvstore/type/DataType;

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap$Builder;->keyType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVMap$Builder;->valueType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object v1

    .line 416
    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2, v0, v1}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore;->maps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 402
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/h2/mvstore/type/DataType;",
            "Lorg/h2/mvstore/type/DataType;",
            ")",
            "Lorg/h2/mvstore/MVMap<",
            "TK;",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    .line 379
    :try_start_0
    new-instance p2, Lorg/h2/mvstore/type/ObjectDataType;

    invoke-direct {p2}, Lorg/h2/mvstore/type/ObjectDataType;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p3, :cond_1

    .line 382
    new-instance p3, Lorg/h2/mvstore/type/ObjectDataType;

    invoke-direct {p3}, Lorg/h2/mvstore/type/ObjectDataType;-><init>()V

    .line 384
    :cond_1
    new-instance v0, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;

    invoke-direct {v0, p3}, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;-><init>(Lorg/h2/mvstore/type/DataType;)V

    .line 386
    new-instance p3, Lorg/h2/mvstore/MVMap$Builder;

    invoke-direct {p3}, Lorg/h2/mvstore/MVMap$Builder;-><init>()V

    invoke-virtual {p3, p2}, Lorg/h2/mvstore/MVMap$Builder;->keyType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/MVMap$Builder;->valueType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object p2

    .line 389
    iget-object p3, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p3, p1, p2}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    .line 392
    iget-object p2, p0, Lorg/h2/mvstore/db/TransactionStore;->maps:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-object p1

    .line 377
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method openTempMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Lorg/h2/mvstore/MVMap$Builder;

    invoke-direct {v0}, Lorg/h2/mvstore/MVMap$Builder;-><init>()V

    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore;->dataType:Lorg/h2/mvstore/type/DataType;

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap$Builder;->keyType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v1, p1, v0}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->maps:Ljava/util/HashMap;

    iget v1, p1, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->mapId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    iget-object p1, p1, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVStore;->removeMap(Lorg/h2/mvstore/MVMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 312
    monitor-exit p0

    throw p1
.end method

.method rollbackTo(Lorg/h2/mvstore/db/TransactionStore$Transaction;JJ)V
    .locals 8

    .line 481
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    monitor-enter v0

    const-wide/16 v1, 0x1

    :goto_0
    sub-long/2addr p2, v1

    cmp-long v3, p2, p4

    if-ltz v3, :cond_4

    .line 483
    :try_start_0
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result v3

    invoke-static {v3, p2, p3}, Lorg/h2/mvstore/db/TransactionStore;->getOperationId(IJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 484
    iget-object v4, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v4, v3}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 487
    iget-object p2, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p2, v3}, Lorg/h2/mvstore/MVMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_4

    .line 488
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/h2/mvstore/db/TransactionStore;->getTransactionId(J)I

    move-result p3

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result v3

    if-eq p3, v3, :cond_0

    goto :goto_3

    .line 492
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Lorg/h2/mvstore/db/TransactionStore;->getLogId(J)J

    move-result-wide p2

    const/4 v3, 0x0

    add-long/2addr p2, v1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 495
    aget-object v5, v4, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 496
    invoke-virtual {p0, v5}, Lorg/h2/mvstore/db/TransactionStore;->openMap(I)Lorg/h2/mvstore/MVMap;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    .line 498
    aget-object v6, v4, v6

    const/4 v7, 0x2

    .line 499
    aget-object v4, v4, v7

    check-cast v4, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    if-nez v4, :cond_2

    .line 502
    invoke-virtual {v5, v6}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 505
    :cond_2
    invoke-virtual {v5, v6, v4}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/h2/mvstore/db/TransactionStore;->undoLog:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v4, v3}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 510
    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMaxTransactionId(I)V
    .locals 0

    .line 139
    iput p1, p0, Lorg/h2/mvstore/db/TransactionStore;->maxTransactionId:I

    return-void
.end method

.method declared-synchronized storeTransaction(Lorg/h2/mvstore/db/TransactionStore$Transaction;)V
    .locals 3

    monitor-enter p0

    .line 252
    :try_start_0
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 255
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore;->preparedTransactions:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 251
    monitor-exit p0

    throw p1
.end method
