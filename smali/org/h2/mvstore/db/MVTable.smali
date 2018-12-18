.class public Lorg/h2/mvstore/db/MVTable;
.super Lorg/h2/table/TableBase;
.source "MVTable.java"


# static fields
.field public static final EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/DebuggingThreadLocal<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/DebuggingThreadLocal<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/DebuggingThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private changesSinceAnalyze:I

.field private containsLargeObject:Z

.field private final indexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end field

.field private lastModificationId:J

.field private volatile lockExclusiveSession:Lorg/h2/engine/Session;

.field private final lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/h2/engine/Session;",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation
.end field

.field private nextAnalyze:I

.field private primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

.field private rowIdColumn:Lorg/h2/table/Column;

.field private final store:Lorg/h2/mvstore/db/MVTableEngine$Store;

.field private final traceLock:Lorg/h2/message/Trace;

.field private final transactionStore:Lorg/h2/mvstore/db/TransactionStore;

.field private final waitingSessions:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    sget-boolean v0, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lorg/h2/util/DebuggingThreadLocal;

    invoke-direct {v0}, Lorg/h2/util/DebuggingThreadLocal;-><init>()V

    sput-object v0, Lorg/h2/mvstore/db/MVTable;->WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;

    .line 70
    new-instance v0, Lorg/h2/util/DebuggingThreadLocal;

    invoke-direct {v0}, Lorg/h2/util/DebuggingThreadLocal;-><init>()V

    sput-object v0, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    .line 71
    new-instance v0, Lorg/h2/util/DebuggingThreadLocal;

    invoke-direct {v0}, Lorg/h2/util/DebuggingThreadLocal;-><init>()V

    sput-object v0, Lorg/h2/mvstore/db/MVTable;->SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    sput-object v0, Lorg/h2/mvstore/db/MVTable;->WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;

    .line 74
    sput-object v0, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    .line 75
    sput-object v0, Lorg/h2/mvstore/db/MVTable;->SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/h2/command/ddl/CreateTableData;Lorg/h2/mvstore/db/MVTableEngine$Store;)V
    .locals 2

    .line 103
    invoke-direct {p0, p1}, Lorg/h2/table/TableBase;-><init>(Lorg/h2/command/ddl/CreateTableData;)V

    .line 80
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

    .line 104
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget v0, v0, Lorg/h2/engine/DbSettings;->analyzeAuto:I

    iput v0, p0, Lorg/h2/mvstore/db/MVTable;->nextAnalyze:I

    .line 105
    iput-object p2, p0, Lorg/h2/mvstore/db/MVTable;->store:Lorg/h2/mvstore/db/MVTableEngine$Store;

    .line 106
    invoke-virtual {p2}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getTransactionStore()Lorg/h2/mvstore/db/TransactionStore;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/mvstore/db/MVTable;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    .line 107
    iget-boolean p1, p1, Lorg/h2/command/ddl/CreateTableData;->isHidden:Z

    iput-boolean p1, p0, Lorg/h2/mvstore/db/MVTable;->isHidden:Z

    .line 108
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 109
    invoke-virtual {v1}, Lorg/h2/table/Column;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/h2/value/DataType;->isLargeObject(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lorg/h2/mvstore/db/MVTable;->containsLargeObject:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/db/MVTable;->traceLock:Lorg/h2/message/Trace;

    return-void
.end method

.method private static addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;",
            "Lorg/h2/index/Index;",
            ")V"
        }
    .end annotation

    .line 653
    invoke-static {p1, p2}, Lorg/h2/mvstore/db/MVTable;->sortRows(Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    .line 654
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/result/Row;

    .line 655
    invoke-interface {p2, p0, v1}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    goto :goto_0

    .line 657
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private analyzeIfRequired(Lorg/h2/engine/Session;)V
    .locals 3

    .line 729
    iget v0, p0, Lorg/h2/mvstore/db/MVTable;->nextAnalyze:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/h2/mvstore/db/MVTable;->nextAnalyze:I

    iget v1, p0, Lorg/h2/mvstore/db/MVTable;->changesSinceAnalyze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/mvstore/db/MVTable;->changesSinceAnalyze:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 732
    iput v0, p0, Lorg/h2/mvstore/db/MVTable;->changesSinceAnalyze:I

    .line 733
    iget v1, p0, Lorg/h2/mvstore/db/MVTable;->nextAnalyze:I

    mul-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    .line 735
    iput v1, p0, Lorg/h2/mvstore/db/MVTable;->nextAnalyze:I

    .line 737
    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget v1, v1, Lorg/h2/engine/DbSettings;->analyzeSample:I

    div-int/lit8 v1, v1, 0xa

    .line 738
    invoke-static {p1, p0, v1, v0}, Lorg/h2/command/ddl/Analyze;->analyzeTable(Lorg/h2/engine/Session;Lorg/h2/table/Table;IZ)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private doLock1(Lorg/h2/engine/Session;IZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "requesting for"

    .line 195
    invoke-direct {v0, v1, v2, v3}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v7, v4

    const/4 v6, 0x0

    .line 201
    :catch_0
    :goto_0
    iget-object v9, v0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_0

    .line 202
    invoke-direct/range {p0 .. p3}, Lorg/h2/mvstore/db/MVTable;->doLock2(Lorg/h2/engine/Session;IZ)Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    :cond_0
    if-eqz v6, :cond_2

    const/4 v9, 0x0

    .line 207
    invoke-virtual {v0, v1, v9, v9}, Lorg/h2/mvstore/db/MVTable;->checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x9c41

    .line 209
    invoke-static {v9, v2}, Lorg/h2/mvstore/db/MVTable;->getDeadlockDetails(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_2
    const/4 v6, 0x1

    .line 216
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v11, v7, v4

    if-nez v11, :cond_3

    .line 219
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getLockTimeout()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v7, v9

    goto :goto_2

    :cond_3
    cmp-long v11, v9, v7

    if-gez v11, :cond_7

    :goto_2
    :try_start_0
    const-string v11, "waiting for"

    .line 226
    invoke-direct {v0, v1, v2, v11}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    .line 227
    iget-object v11, v0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v11}, Lorg/h2/engine/Database;->getLockMode()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    const/4 v11, 0x0

    :goto_3
    const/16 v12, 0x14

    if-ge v11, v12, :cond_5

    .line 229
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    .line 230
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 231
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-nez v16, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    const-wide/16 v11, 0x64

    sub-long v9, v7, v9

    .line 238
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-nez v11, :cond_6

    const-wide/16 v9, 0x1

    .line 242
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/db/MVTable;->getLockSyncObject()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeout after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getLockTimeout()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    const v1, 0xc418

    .line 223
    invoke-virtual/range {p0 .. p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
.end method

.method private doLock2(Lorg/h2/engine/Session;IZ)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    .line 251
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez p2, :cond_9

    .line 252
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "added for"

    .line 253
    invoke-direct {p0, p1, p3, p2}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    .line 254
    invoke-virtual {p1, p0}, Lorg/h2/engine/Session;->addLock(Lorg/h2/table/Table;)V

    .line 255
    iput-object p1, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    .line 256
    sget-boolean p1, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz p1, :cond_1

    .line 257
    sget-object p1, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 258
    sget-object p1, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lorg/h2/util/DebuggingThreadLocal;->set(Ljava/lang/Object;)V

    .line 260
    :cond_0
    sget-object p1, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return v0

    .line 263
    :cond_2
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    if-ne p2, v0, :cond_9

    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "add (upgraded) for "

    .line 265
    invoke-direct {p0, p1, p3, p2}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    .line 266
    iput-object p1, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    .line 267
    sget-boolean p1, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz p1, :cond_4

    .line 268
    sget-object p1, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 269
    sget-object p1, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lorg/h2/util/DebuggingThreadLocal;->set(Ljava/lang/Object;)V

    .line 271
    :cond_3
    sget-object p1, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return v0

    .line 277
    :cond_5
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez v1, :cond_9

    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    .line 279
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p2

    if-nez p2, :cond_6

    return v0

    .line 290
    :cond_6
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "ok"

    .line 291
    invoke-direct {p0, p1, p3, p2}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    .line 292
    invoke-virtual {p1, p0}, Lorg/h2/engine/Session;->addLock(Lorg/h2/table/Table;)V

    .line 293
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-boolean p1, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz p1, :cond_8

    .line 295
    sget-object p1, Lorg/h2/mvstore/db/MVTable;->SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    .line 296
    sget-object p1, Lorg/h2/mvstore/db/MVTable;->SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lorg/h2/util/DebuggingThreadLocal;->set(Ljava/lang/Object;)V

    .line 298
    :cond_7
    sget-object p1, Lorg/h2/mvstore/db/MVTable;->SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return v0

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private static getDeadlockDetails(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Session;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/Session;

    .line 312
    invoke-virtual {v1}, Lorg/h2/engine/Session;->getWaitForLock()Lorg/h2/table/Table;

    move-result-object v2

    .line 313
    invoke-virtual {v1}, Lorg/h2/engine/Session;->getWaitForLockThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "\nSession "

    .line 314
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on thread "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is waiting to lock "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/table/Table;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, " (exclusive)"

    goto :goto_1

    :cond_0
    const-string v2, " (shared)"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " while locking "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v1}, Lorg/h2/engine/Session;->getLocks()[Lorg/h2/table/Table;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v6, v2, v4

    add-int/lit8 v7, v5, 0x1

    if-lez v5, :cond_1

    const-string v5, ", "

    .line 322
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_1
    invoke-virtual {v6}, Lorg/h2/table/Table;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    instance-of v5, v6, Lorg/h2/mvstore/db/MVTable;

    if-eqz v5, :cond_3

    .line 326
    check-cast v6, Lorg/h2/mvstore/db/MVTable;

    iget-object v5, v6, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v5, v1, :cond_2

    const-string v5, " (exclusive)"

    .line 327
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v5, " (shared)"

    .line 329
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_2

    :cond_4
    const/16 v1, 0x2e

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 335
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLockSyncObject()Ljava/lang/Object;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    return-object v0
.end method

.method private getMainIndexColumn(Lorg/h2/index/IndexType;[Lorg/h2/table/IndexColumn;)I
    .locals 2

    .line 629
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMainIndexColumn()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v1

    .line 632
    :cond_0
    invoke-virtual {p1}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result p1

    if-eqz p1, :cond_3

    array-length p1, p2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 635
    aget-object p1, p2, p1

    .line 636
    iget p2, p1, Lorg/h2/table/IndexColumn;->sortType:I

    if-eqz p2, :cond_2

    return v1

    .line 639
    :cond_2
    iget-object p2, p1, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p2}, Lorg/h2/table/Column;->getType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    return v1

    .line 648
    :pswitch_0
    iget-object p1, p1, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getColumnId()I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private rebuildIndex(Lorg/h2/engine/Session;Lorg/h2/mvstore/db/MVIndex;Ljava/lang/String;)V
    .locals 2

    .line 525
    :try_start_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lorg/h2/mvstore/db/MVSpatialIndex;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/db/MVTable;->rebuildIndexBlockMerge(Lorg/h2/engine/Session;Lorg/h2/mvstore/db/MVIndex;)V

    goto :goto_1

    .line 528
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/db/MVTable;->rebuildIndexBuffered(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 533
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    .line 535
    :try_start_1
    invoke-interface {p2, p1}, Lorg/h2/mvstore/db/MVIndex;->remove(Lorg/h2/engine/Session;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    .line 543
    throw v0

    :catch_1
    move-exception p1

    .line 540
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->trace:Lorg/h2/message/Trace;

    const-string p3, "could not remove index"

    invoke-virtual {p2, p1, p3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 541
    throw p1
.end method

.method private rebuildIndexBlockMerge(Lorg/h2/engine/Session;Lorg/h2/mvstore/db/MVIndex;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 548
    instance-of v3, v2, Lorg/h2/mvstore/db/MVSpatialIndex;

    if-eqz v3, :cond_0

    .line 550
    invoke-direct/range {p0 .. p2}, Lorg/h2/mvstore/db/MVTable;->rebuildIndexBuffered(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V

    .line 559
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/h2/mvstore/db/MVTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v3

    .line 560
    invoke-interface {v3, v1}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v4

    const/4 v6, 0x0

    .line 562
    invoke-interface {v3, v1, v6, v6}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v3

    .line 564
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v6

    .line 566
    iget-object v7, v0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v7}, Lorg/h2/engine/Database;->getMaxMemoryRows()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 567
    invoke-static {v7}, Lorg/h2/util/New;->arrayList(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 568
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/h2/mvstore/db/MVIndex;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 569
    invoke-static {v4, v5}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v10

    .line 570
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v11

    move-wide v14, v4

    const-wide/16 v4, 0x0

    .line 571
    :goto_0
    invoke-interface {v3}, Lorg/h2/index/Cursor;->next()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 572
    invoke-interface {v3}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v12

    .line 573
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v12, v0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    const/4 v13, 0x1

    const-wide/16 v17, 0x1

    add-long v19, v4, v17

    invoke-static {v4, v5}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v4

    invoke-virtual {v12, v13, v9, v4, v10}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    .line 576
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_1

    .line 577
    invoke-static {v8, v2}, Lorg/h2/mvstore/db/MVTable;->sortRows(Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    .line 578
    invoke-virtual {v6}, Lorg/h2/mvstore/db/MVTableEngine$Store;->nextTemporaryMapName()Ljava/lang/String;

    move-result-object v4

    .line 579
    invoke-interface {v2, v8, v4}, Lorg/h2/mvstore/db/MVIndex;->addRowsToBuffer(Ljava/util/List;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v4, 0x0

    sub-long v14, v14, v17

    move-wide/from16 v4, v19

    goto :goto_0

    .line 585
    :cond_2
    invoke-static {v8, v2}, Lorg/h2/mvstore/db/MVTable;->sortRows(Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    .line 586
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 587
    invoke-virtual {v6}, Lorg/h2/mvstore/db/MVTableEngine$Store;->nextTemporaryMapName()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-interface {v2, v8, v1}, Lorg/h2/mvstore/db/MVIndex;->addRowsToBuffer(Ljava/util/List;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 591
    invoke-interface {v2, v11}, Lorg/h2/mvstore/db/MVIndex;->addBufferedRows(Ljava/util/List;)V

    goto :goto_1

    .line 593
    :cond_3
    invoke-static {v1, v8, v2}, Lorg/h2/mvstore/db/MVTable;->addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    .line 595
    :goto_1
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v3, v14, v1

    if-eqz v3, :cond_4

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rowcount remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_4
    return-void
.end method

.method private rebuildIndexBuffered(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 602
    invoke-virtual/range {p0 .. p1}, Lorg/h2/mvstore/db/MVTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v3

    .line 603
    invoke-interface {v3, v1}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v4

    const/4 v6, 0x0

    .line 605
    invoke-interface {v3, v1, v6, v6}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v3

    .line 607
    iget-object v6, v0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v6}, Lorg/h2/engine/Database;->getMaxMemoryRows()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 608
    invoke-static {v6}, Lorg/h2/util/New;->arrayList(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 609
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 610
    invoke-static {v4, v5}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v9

    const-wide/16 v10, 0x0

    move-wide v12, v4

    move-wide v4, v10

    .line 611
    :goto_0
    invoke-interface {v3}, Lorg/h2/index/Cursor;->next()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 612
    invoke-interface {v3}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v14

    .line 613
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v14, v0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    const/4 v15, 0x1

    const-wide/16 v16, 0x1

    add-long v18, v4, v16

    invoke-static {v4, v5}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v4

    invoke-virtual {v14, v15, v8, v4, v9}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    .line 616
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 617
    invoke-static {v1, v7, v2}, Lorg/h2/mvstore/db/MVTable;->addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    :cond_0
    const/4 v4, 0x0

    sub-long v12, v12, v16

    move-wide/from16 v4, v18

    goto :goto_0

    .line 621
    :cond_1
    invoke-static {v1, v7, v2}, Lorg/h2/mvstore/db/MVTable;->addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    .line 622
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_2

    cmp-long v1, v12, v10

    if-eqz v1, :cond_2

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rowcount remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_2
    return-void
.end method

.method private static sortRows(Ljava/util/ArrayList;Lorg/h2/index/Index;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;",
            "Lorg/h2/index/Index;",
            ")V"
        }
    .end annotation

    .line 661
    new-instance v0, Lorg/h2/mvstore/db/MVTable$1;

    invoke-direct {v0, p1}, Lorg/h2/mvstore/db/MVTable$1;-><init>(Lorg/h2/index/Index;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V
    .locals 4

    .line 390
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->traceLock:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->traceLock:Lorg/h2/message/Trace;

    const-string v1, "{0} {1} {2} {3}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    const-string p2, "exclusive write lock"

    goto :goto_0

    :cond_0
    const-string p2, "shared read lock"

    :goto_0
    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 14

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v5, p4

    .line 470
    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 471
    array-length v0, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v5, v3

    .line 472
    iget-object v4, v4, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 473
    invoke-virtual {v4}, Lorg/h2/table/Column;->isNullable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 478
    invoke-virtual {v4, v2}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x15fa7

    .line 474
    invoke-virtual {v4}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 481
    :cond_1
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->isGlobalTemporary()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_3

    .line 483
    iget-object v0, v7, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    :cond_3
    move-object/from16 v6, p5

    .line 487
    invoke-direct {p0, v6, v5}, Lorg/h2/mvstore/db/MVTable;->getMainIndexColumn(Lorg/h2/index/IndexType;[Lorg/h2/table/IndexColumn;)I

    move-result v0

    .line 488
    iget-object v1, v7, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 489
    iget-object v1, v7, Lorg/h2/mvstore/db/MVTable;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    iget-object v1, v1, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/MVStore;->hasMap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    move/from16 v4, p3

    .line 492
    iget-object v1, v7, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRowCountMax()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eq v0, v2, :cond_6

    .line 496
    iget-object v1, v7, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->setMainIndexColumn(I)V

    .line 497
    new-instance v10, Lorg/h2/mvstore/db/MVDelegateIndex;

    iget-object v5, v7, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/h2/mvstore/db/MVDelegateIndex;-><init>(Lorg/h2/mvstore/db/MVTable;ILjava/lang/String;Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/index/IndexType;)V

    goto :goto_4

    .line 499
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isSpatial()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 500
    new-instance v10, Lorg/h2/mvstore/db/MVSpatialIndex;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    move-object v0, v10

    move-object v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/mvstore/db/MVSpatialIndex;-><init>(Lorg/h2/engine/Database;Lorg/h2/mvstore/db/MVTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    goto :goto_4

    .line 503
    :cond_7
    new-instance v10, Lorg/h2/mvstore/db/MVSecondaryIndex;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    move-object v0, v10

    move-object v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/mvstore/db/MVSecondaryIndex;-><init>(Lorg/h2/engine/Database;Lorg/h2/mvstore/db/MVTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 506
    :goto_4
    invoke-interface {v10}, Lorg/h2/mvstore/db/MVIndex;->needRebuild()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v0, p2

    .line 507
    invoke-direct {p0, p1, v10, v0}, Lorg/h2/mvstore/db/MVTable;->rebuildIndex(Lorg/h2/engine/Session;Lorg/h2/mvstore/db/MVIndex;Ljava/lang/String;)V

    .line 509
    :cond_8
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->isTemporary()Z

    move-result v0

    invoke-interface {v10, v0}, Lorg/h2/mvstore/db/MVIndex;->setTemporary(Z)V

    .line 510
    invoke-interface {v10}, Lorg/h2/mvstore/db/MVIndex;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object/from16 v0, p7

    .line 511
    invoke-interface {v10, v0}, Lorg/h2/mvstore/db/MVIndex;->setComment(Ljava/lang/String;)V

    if-eqz v9, :cond_9

    .line 513
    invoke-virtual {p1, v10}, Lorg/h2/engine/Session;->addLocalTempTableIndex(Lorg/h2/index/Index;)V

    goto :goto_5

    .line 515
    :cond_9
    iget-object v0, v7, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1, v10}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    .line 518
    :cond_a
    :goto_5
    iget-object v0, v7, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->setModified()V

    return-object v10
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 7

    .line 698
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/db/MVTable;->lastModificationId:J

    .line 699
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->setSavepoint()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 702
    :try_start_0
    iget-object v4, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 703
    iget-object v6, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/index/Index;

    .line 704
    invoke-interface {v6, p1, p2}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 725
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/MVTable;->analyzeIfRequired(Lorg/h2/engine/Session;)V

    return-void

    :catch_0
    move-exception v4

    .line 707
    invoke-virtual {v0, v1, v2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->rollbackToSavepoint(J)V

    .line 708
    invoke-static {v4}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x5bd1

    if-ne v1, v2, :cond_3

    .line 710
    :goto_1
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 711
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    .line 712
    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lorg/h2/index/MultiVersionIndex;

    if-eqz v2, :cond_2

    .line 714
    move-object v2, v1

    check-cast v2, Lorg/h2/index/MultiVersionIndex;

    .line 715
    invoke-virtual {v2, p1, p2}, Lorg/h2/index/MultiVersionIndex;->isUncommittedFromOtherSession(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const p1, 0x16013

    .line 716
    invoke-interface {v1}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 723
    :cond_3
    throw v0
.end method

.method public canDrop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canGetRowCount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canTruncate()Z
    .locals 7

    .line 437
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getCheckForeignKeyConstraints()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getReferentialIntegrity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getConstraints()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 442
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/constraint/Constraint;

    .line 443
    invoke-virtual {v4}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "REFERENTIAL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 446
    :cond_0
    check-cast v4, Lorg/h2/constraint/ConstraintReferential;

    .line 447
    invoke-virtual {v4}, Lorg/h2/constraint/ConstraintReferential;->getRefTable()Lorg/h2/table/Table;

    move-result-object v4

    if-ne v4, p0, :cond_1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Lorg/h2/engine/Session;",
            "Ljava/util/Set<",
            "Lorg/h2/engine/Session;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation

    .line 342
    const-class v0, Lorg/h2/mvstore/db/MVTable;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 346
    :try_start_0
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object p3

    move-object p2, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-ne p2, p1, :cond_1

    .line 349
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 350
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    monitor-exit v0

    return-object v1

    .line 356
    :cond_2
    :goto_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/Session;

    if-ne v3, p1, :cond_4

    goto :goto_1

    .line 363
    :cond_4
    invoke-virtual {v3}, Lorg/h2/engine/Session;->getWaitForLock()Lorg/h2/table/Table;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 365
    invoke-virtual {v4, v3, p2, p3}, Lorg/h2/table/Table;->checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 367
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_5
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    .line 376
    invoke-virtual {v2}, Lorg/h2/engine/Session;->getWaitForLock()Lorg/h2/table/Table;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 378
    invoke-virtual {v3, v2, p2, p3}, Lorg/h2/table/Table;->checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 381
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_6
    monitor-exit v0

    return-object v1

    .line 386
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public checkSupportAlter()V
    .locals 0

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public commit()V
    .locals 2

    .line 884
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/db/MVTable;->lastModificationId:J

    :cond_0
    return-void
.end method

.method convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;
    .locals 4

    .line 896
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->getErrorCode(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 901
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->store:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->convertIllegalStateException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x16013

    const/4 v1, 0x1

    .line 898
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getContainsLargeObject()Z
    .locals 1

    .line 772
    iget-boolean v0, p0, Lorg/h2/mvstore/db/MVTable;->containsLargeObject:Z

    return v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    .line 838
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getDiskSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIndexes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMapName()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMapName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    .line 768
    iget-wide v0, p0, Lorg/h2/mvstore/db/MVTable;->lastModificationId:J

    return-wide v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 828
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 833
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowIdColumn()Lorg/h2/table/Column;
    .locals 3

    .line 862
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->rowIdColumn:Lorg/h2/table/Column;

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Lorg/h2/table/Column;

    const-string v1, "_ROWID_"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/h2/mvstore/db/MVTable;->rowIdColumn:Lorg/h2/table/Column;

    .line 864
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->rowIdColumn:Lorg/h2/table/Column;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    .line 866
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->rowIdColumn:Lorg/h2/table/Column;

    return-object v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 0

    .line 753
    iget-object p1, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    return-object p1
.end method

.method public getTableType()Ljava/lang/String;
    .locals 1

    const-string v0, "TABLE"

    return-object v0
.end method

.method getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;
    .locals 0

    if-nez p1, :cond_0

    .line 855
    iget-object p1, p0, Lorg/h2/mvstore/db/MVTable;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore;->begin()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    return-object p1

    .line 857
    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransaction()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    return-object p1
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    .line 758
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    return-object v0
.end method

.method init(Lorg/h2/engine/Session;)V
    .locals 7

    .line 122
    new-instance v6, Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getId()I

    move-result v3

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v4

    const/4 p1, 0x1

    invoke-static {p1}, Lorg/h2/index/IndexType;->createScan(Z)Lorg/h2/index/IndexType;

    move-result-object v5

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/h2/mvstore/db/MVPrimaryIndex;-><init>(Lorg/h2/engine/Database;Lorg/h2/mvstore/db/MVTable;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object v6, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    .line 124
    iget-object p1, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z
    .locals 1

    .line 404
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMVStore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 4

    .line 134
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLockMode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_2

    .line 138
    iget-object p3, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 146
    :cond_1
    iget-object p3, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez p3, :cond_2

    return v1

    .line 151
    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    const/4 v2, 0x1

    if-ne p3, p1, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    .line 154
    iget-object p3, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v2

    .line 157
    :cond_4
    invoke-direct {p0}, Lorg/h2/mvstore/db/MVTable;->getLockSyncObject()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    if-nez p2, :cond_5

    .line 158
    :try_start_0
    iget-object v3, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 159
    monitor-exit p3

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 161
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    .line 162
    sget-boolean v2, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz v2, :cond_6

    .line 163
    sget-object v2, Lorg/h2/mvstore/db/MVTable;->WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/util/DebuggingThreadLocal;->set(Ljava/lang/Object;)V

    .line 165
    :cond_6
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 167
    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Lorg/h2/mvstore/db/MVTable;->doLock1(Lorg/h2/engine/Session;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    :try_start_2
    invoke-virtual {p1, v2, v2}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    .line 170
    sget-boolean p2, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz p2, :cond_7

    .line 171
    sget-object p2, Lorg/h2/mvstore/db/MVTable;->WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p2}, Lorg/h2/util/DebuggingThreadLocal;->remove()V

    .line 173
    :cond_7
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 175
    monitor-exit p3

    return v1

    :catchall_1
    move-exception p2

    .line 169
    invoke-virtual {p1, v2, v2}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    .line 170
    sget-boolean v0, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz v0, :cond_8

    .line 171
    sget-object v0, Lorg/h2/mvstore/db/MVTable;->WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {v0}, Lorg/h2/util/DebuggingThreadLocal;->remove()V

    .line 173
    :cond_8
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    throw p2

    .line 175
    :goto_1
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 4

    .line 792
    iget-boolean v0, p0, Lorg/h2/mvstore/db/MVTable;->containsLargeObject:Z

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVTable;->truncate(Lorg/h2/engine/Session;)V

    .line 795
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V

    .line 796
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 798
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->removeTable(Lorg/h2/mvstore/db/MVTable;)V

    .line 799
    invoke-super {p0, p1}, Lorg/h2/table/TableBase;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    .line 802
    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 803
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    .line 804
    invoke-interface {v0}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 805
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    .line 808
    :cond_1
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 810
    :cond_2
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_4

    .line 811
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    .line 813
    check-cast v1, Lorg/h2/index/Index;

    .line 814
    invoke-interface {v1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    if-ne v2, p0, :cond_3

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index not dropped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_1

    .line 820
    :cond_4
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->remove(Lorg/h2/engine/Session;)V

    .line 821
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    .line 822
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVTable;->close(Lorg/h2/engine/Session;)V

    .line 823
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->invalidate()V

    return-void
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 5

    .line 671
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/db/MVTable;->lastModificationId:J

    .line 672
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->setSavepoint()J

    move-result-wide v1

    .line 675
    :try_start_0
    iget-object v3, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 676
    iget-object v4, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/index/Index;

    .line 677
    invoke-interface {v4, p1, p2}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 683
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/MVTable;->analyzeIfRequired(Lorg/h2/engine/Session;)V

    return-void

    :catch_0
    move-exception p1

    .line 680
    invoke-virtual {v0, v1, v2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->rollbackToSavepoint(J)V

    .line 681
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 871
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    .line 688
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/db/MVTable;->lastModificationId:J

    .line 689
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 690
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    .line 691
    invoke-interface {v1, p1}, Lorg/h2/index/Index;->truncate(Lorg/h2/engine/Session;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 693
    iput p1, p0, Lorg/h2/mvstore/db/MVTable;->changesSinceAnalyze:I

    return-void
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->database:Lorg/h2/engine/Database;

    if-eqz v0, :cond_4

    .line 410
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "unlock"

    invoke-direct {p0, p1, v0, v1}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    .line 411
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    .line 413
    sget-boolean v0, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz v0, :cond_1

    .line 414
    sget-object v0, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {v0}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    sget-object v0, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {v0}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 419
    :cond_1
    invoke-direct {p0}, Lorg/h2/mvstore/db/MVTable;->getLockSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 420
    :try_start_0
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 421
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-boolean p1, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz p1, :cond_2

    .line 423
    sget-object p1, Lorg/h2/mvstore/db/MVTable;->SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 424
    sget-object p1, Lorg/h2/mvstore/db/MVTable;->SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 428
    :cond_2
    iget-object p1, p0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 429
    invoke-direct {p0}, Lorg/h2/mvstore/db/MVTable;->getLockSyncObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 431
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method
