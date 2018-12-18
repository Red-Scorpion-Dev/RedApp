.class public Lorg/h2/table/RegularTable;
.super Lorg/h2/table/TableBase;
.source "RegularTable.java"


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

.field private lockSharedSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mainIndex:Lorg/h2/index/PageDataIndex;

.field private nextAnalyze:I

.field private rowCount:J

.field private rowIdColumn:Lorg/h2/table/Column;

.field private scanIndex:Lorg/h2/index/Index;

.field private final traceLock:Lorg/h2/message/Trace;

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
.method public constructor <init>(Lorg/h2/command/ddl/CreateTableData;)V
    .locals 8

    .line 74
    invoke-direct {p0, p1}, Lorg/h2/table/TableBase;-><init>(Lorg/h2/command/ddl/CreateTableData;)V

    .line 57
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    .line 65
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    .line 75
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget v0, v0, Lorg/h2/engine/DbSettings;->analyzeAuto:I

    iput v0, p0, Lorg/h2/table/RegularTable;->nextAnalyze:I

    .line 76
    iget-boolean v0, p1, Lorg/h2/command/ddl/CreateTableData;->isHidden:Z

    iput-boolean v0, p0, Lorg/h2/table/RegularTable;->isHidden:Z

    .line 77
    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    invoke-virtual {v3}, Lorg/h2/table/Column;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/h2/value/DataType;->isLargeObject(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 79
    iput-boolean v3, p0, Lorg/h2/table/RegularTable;->containsLargeObject:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget-boolean v0, p1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Lorg/h2/index/PageDataIndex;

    iget v3, p1, Lorg/h2/command/ddl/CreateTableData;->id:I

    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getColumns()[Lorg/h2/table/Column;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v4

    iget-boolean v1, p1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    invoke-static {v1}, Lorg/h2/index/IndexType;->createScan(Z)Lorg/h2/index/IndexType;

    move-result-object v5

    iget-boolean v6, p1, Lorg/h2/command/ddl/CreateTableData;->create:Z

    iget-object v7, p1, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/h2/index/PageDataIndex;-><init>(Lorg/h2/table/RegularTable;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLorg/h2/engine/Session;)V

    iput-object v0, p0, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    .line 87
    iget-object p1, p0, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    iput-object p1, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    .line 90
    new-instance v0, Lorg/h2/index/ScanIndex;

    iget v1, p1, Lorg/h2/command/ddl/CreateTableData;->id:I

    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getColumns()[Lorg/h2/table/Column;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v2

    iget-boolean p1, p1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    invoke-static {p1}, Lorg/h2/index/IndexType;->createScan(Z)Lorg/h2/index/IndexType;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/h2/index/ScanIndex;-><init>(Lorg/h2/table/RegularTable;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    .line 93
    :goto_1
    iget-object p1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p1, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/RegularTable;->traceLock:Lorg/h2/message/Trace;

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

    .line 345
    new-instance v0, Lorg/h2/table/RegularTable$1;

    invoke-direct {v0, p2}, Lorg/h2/table/RegularTable$1;-><init>(Lorg/h2/index/Index;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 351
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/result/Row;

    .line 352
    invoke-interface {p2, p0, v1}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private analyzeIfRequired(Lorg/h2/engine/Session;)V
    .locals 3

    .line 424
    iget v0, p0, Lorg/h2/table/RegularTable;->nextAnalyze:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/h2/table/RegularTable;->nextAnalyze:I

    iget v1, p0, Lorg/h2/table/RegularTable;->changesSinceAnalyze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/table/RegularTable;->changesSinceAnalyze:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 427
    iput v0, p0, Lorg/h2/table/RegularTable;->changesSinceAnalyze:I

    .line 428
    iget v1, p0, Lorg/h2/table/RegularTable;->nextAnalyze:I

    mul-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    .line 430
    iput v1, p0, Lorg/h2/table/RegularTable;->nextAnalyze:I

    .line 432
    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget v1, v1, Lorg/h2/engine/DbSettings;->analyzeSample:I

    div-int/lit8 v1, v1, 0xa

    .line 433
    invoke-static {p1, p0, v1, v0}, Lorg/h2/command/ddl/Analyze;->analyzeTable(Lorg/h2/engine/Session;Lorg/h2/table/Table;IZ)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private checkRowCount(Lorg/h2/engine/Session;Lorg/h2/index/Index;I)V
    .locals 6

    .line 165
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    instance-of v0, p2, Lorg/h2/index/PageDelegateIndex;

    if-nez v0, :cond_0

    .line 167
    invoke-interface {p2, p1}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    .line 168
    iget-wide v2, p0, Lorg/h2/table/RegularTable;->rowCount:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "rowCount expected "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/h2/table/RegularTable;->rowCount:J

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " got "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method private doLock1(Lorg/h2/engine/Session;IZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "requesting for"

    .line 482
    invoke-direct {v0, v1, v2, v3}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v7, v4

    const/4 v6, 0x0

    .line 488
    :catch_0
    :goto_0
    iget-object v9, v0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_0

    .line 489
    invoke-direct/range {p0 .. p3}, Lorg/h2/table/RegularTable;->doLock2(Lorg/h2/engine/Session;IZ)Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    :cond_0
    if-eqz v6, :cond_2

    const/4 v9, 0x0

    .line 494
    invoke-virtual {v0, v1, v9, v9}, Lorg/h2/table/RegularTable;->checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x9c41

    .line 496
    invoke-static {v9, v2}, Lorg/h2/table/RegularTable;->getDeadlockDetails(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_2
    const/4 v6, 0x1

    .line 503
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v11, v7, v4

    if-nez v11, :cond_3

    .line 506
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

    .line 512
    invoke-direct {v0, v1, v2, v11}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    .line 513
    iget-object v11, v0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v11}, Lorg/h2/engine/Database;->getLockMode()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    const/4 v11, 0x0

    :goto_3
    const/16 v12, 0x14

    if-ge v11, v12, :cond_5

    .line 515
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    .line 516
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 517
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

    .line 524
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-nez v11, :cond_6

    const-wide/16 v9, 0x1

    .line 528
    :cond_6
    iget-object v11, v0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v11, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
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

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    const v1, 0xc418

    .line 509
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/RegularTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
.end method

.method private doLock2(Lorg/h2/engine/Session;IZ)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 537
    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez p2, :cond_4

    .line 538
    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "added for"

    .line 539
    invoke-direct {p0, p1, p3, p2}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    .line 540
    invoke-virtual {p1, p0}, Lorg/h2/engine/Session;->addLock(Lorg/h2/table/Table;)V

    .line 541
    iput-object p1, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    return v0

    .line 543
    :cond_0
    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "add (upgraded) for "

    .line 545
    invoke-direct {p0, p1, p3, p2}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    .line 546
    iput-object p1, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    return v0

    .line 551
    :cond_1
    iget-object v1, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez v1, :cond_4

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 553
    iget-object p2, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    .line 563
    :cond_2
    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "ok"

    .line 564
    invoke-direct {p0, p1, p3, p2}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    .line 565
    invoke-virtual {p1, p0}, Lorg/h2/engine/Session;->addLock(Lorg/h2/table/Table;)V

    .line 566
    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return v0

    :cond_4
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

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/Session;

    .line 578
    invoke-virtual {v1}, Lorg/h2/engine/Session;->getWaitForLock()Lorg/h2/table/Table;

    move-result-object v2

    .line 579
    invoke-virtual {v1}, Lorg/h2/engine/Session;->getWaitForLockThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "\nSession "

    .line 580
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

    .line 589
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

    .line 591
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_1
    invoke-virtual {v6}, Lorg/h2/table/Table;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    instance-of v5, v6, Lorg/h2/table/RegularTable;

    if-eqz v5, :cond_3

    .line 595
    check-cast v6, Lorg/h2/table/RegularTable;

    iget-object v5, v6, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v5, v1, :cond_2

    const-string v5, " (exclusive)"

    .line 596
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v5, " (shared)"

    .line 598
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_2

    :cond_4
    const/16 v1, 0x2e

    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 604
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMainIndexColumn(Lorg/h2/index/IndexType;[Lorg/h2/table/IndexColumn;)I
    .locals 2

    .line 315
    iget-object v0, p0, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getMainIndexColumn()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v1

    .line 318
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

    .line 321
    aget-object p1, p2, p1

    .line 322
    iget p2, p1, Lorg/h2/table/IndexColumn;->sortType:I

    if-eqz p2, :cond_2

    return v1

    .line 325
    :cond_2
    iget-object p2, p1, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p2}, Lorg/h2/table/Column;->getType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    return v1

    .line 334
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

.method private traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V
    .locals 4

    .line 655
    iget-object v0, p0, Lorg/h2/table/RegularTable;->traceLock:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lorg/h2/table/RegularTable;->traceLock:Lorg/h2/message/Trace;

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

    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p4

    .line 201
    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    .line 202
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 203
    iget-object v4, v4, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 204
    invoke-virtual {v4}, Lorg/h2/table/Column;->isNullable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 208
    invoke-virtual {v4, v12}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x15fa7

    .line 205
    invoke-virtual {v4}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 211
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/RegularTable;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/RegularTable;->isGlobalTemporary()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-nez v13, :cond_3

    .line 213
    iget-object v1, v10, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, v11}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 216
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/RegularTable;->isPersistIndexes()Z

    move-result v1

    const-wide/16 v14, 0x0

    if-eqz v1, :cond_9

    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 218
    iget-object v1, v10, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    iget-object v1, v10, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    move/from16 v3, p3

    invoke-virtual {v1, v3}, Lorg/h2/store/PageStore;->getRootPageId(I)I

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    move-object/from16 v6, p5

    const/4 v1, -0x1

    goto :goto_3

    :cond_4
    move/from16 v3, p3

    .line 221
    :cond_5
    iget-object v1, v10, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v10, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1, v11}, Lorg/h2/index/PageDataIndex;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v4

    cmp-long v1, v4, v14

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v6, p5

    .line 224
    invoke-direct {v10, v6, v0}, Lorg/h2/table/RegularTable;->getMainIndexColumn(Lorg/h2/index/IndexType;[Lorg/h2/table/IndexColumn;)I

    move-result v1

    :goto_3
    if-eq v1, v2, :cond_7

    .line 227
    iget-object v0, v10, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0, v1}, Lorg/h2/index/PageDataIndex;->setMainIndexColumn(I)V

    .line 228
    new-instance v0, Lorg/h2/index/PageDelegateIndex;

    iget-object v7, v10, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object v6, v7

    move/from16 v7, p6

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/h2/index/PageDelegateIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;Lorg/h2/index/IndexType;Lorg/h2/index/PageDataIndex;ZLorg/h2/engine/Session;)V

    move-object v9, v0

    goto :goto_4

    .line 230
    :cond_7
    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isSpatial()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 231
    new-instance v16, Lorg/h2/index/SpatialTreeIndex;

    const/4 v7, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/h2/index/SpatialTreeIndex;-><init>(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZZLorg/h2/engine/Session;)V

    move-object/from16 v9, v16

    goto :goto_4

    .line 234
    :cond_8
    new-instance v9, Lorg/h2/index/PageBtreeIndex;

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/h2/index/PageBtreeIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLorg/h2/engine/Session;)V

    :goto_4
    move-object v7, v9

    goto/16 :goto_5

    :cond_9
    move/from16 v3, p3

    move-object/from16 v6, p5

    .line 238
    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isHash()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 239
    array-length v1, v0

    if-ne v1, v12, :cond_b

    .line 243
    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 244
    new-instance v7, Lorg/h2/index/HashIndex;

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/h2/index/HashIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    goto :goto_5

    .line 247
    :cond_a
    new-instance v7, Lorg/h2/index/NonUniqueHashIndex;

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/h2/index/NonUniqueHashIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    goto :goto_5

    :cond_b
    const-string v0, "hash indexes may index only one column"

    .line 240
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 250
    :cond_c
    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isSpatial()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 251
    new-instance v16, Lorg/h2/index/SpatialTreeIndex;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/h2/index/SpatialTreeIndex;-><init>(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZZLorg/h2/engine/Session;)V

    move-object/from16 v7, v16

    goto :goto_5

    .line 254
    :cond_d
    new-instance v7, Lorg/h2/index/TreeIndex;

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/h2/index/TreeIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 257
    :goto_5
    iget-object v0, v10, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 258
    new-instance v0, Lorg/h2/index/MultiVersionIndex;

    invoke-direct {v0, v7, v10}, Lorg/h2/index/MultiVersionIndex;-><init>(Lorg/h2/index/Index;Lorg/h2/table/RegularTable;)V

    move-object v7, v0

    .line 260
    :cond_e
    invoke-interface {v7}, Lorg/h2/index/Index;->needRebuild()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-wide v0, v10, Lorg/h2/table/RegularTable;->rowCount:J

    cmp-long v2, v0, v14

    if-lez v2, :cond_11

    .line 262
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lorg/h2/table/RegularTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    .line 263
    invoke-interface {v0, v11}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v1

    const/4 v3, 0x0

    .line 265
    invoke-interface {v0, v11, v3, v3}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    .line 267
    iget-wide v3, v10, Lorg/h2/table/RegularTable;->rowCount:J

    iget-object v5, v10, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v5}, Lorg/h2/engine/Database;->getMaxMemoryRows()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 268
    invoke-static {v3}, Lorg/h2/util/New;->arrayList(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/RegularTable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-static {v1, v2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v6

    move-wide v8, v1

    move-wide v1, v14

    .line 271
    :goto_6
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 272
    iget-object v14, v10, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    const-wide/16 v15, 0x1

    add-long v17, v1, v15

    invoke-static {v1, v2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v1

    invoke-virtual {v14, v12, v5, v1, v6}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    .line 274
    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v1

    .line 275
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_f

    .line 277
    invoke-static {v11, v4, v7}, Lorg/h2/table/RegularTable;->addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    :cond_f
    const/4 v1, 0x0

    sub-long/2addr v8, v15

    move-wide/from16 v1, v17

    const-wide/16 v14, 0x0

    goto :goto_6

    .line 281
    :cond_10
    invoke-static {v11, v4, v7}, Lorg/h2/table/RegularTable;->addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    .line 282
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_11

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-eqz v2, :cond_11

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rowcount remaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/RegularTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 287
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/RegularTable;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    .line 289
    :try_start_1
    invoke-interface {v7, v11}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 294
    iget-object v0, v10, Lorg/h2/table/RegularTable;->trace:Lorg/h2/message/Trace;

    const-string v2, "could not remove index"

    invoke-virtual {v0, v1, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 295
    throw v1

    .line 300
    :cond_11
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/RegularTable;->isTemporary()Z

    move-result v0

    invoke-interface {v7, v0}, Lorg/h2/index/Index;->setTemporary(Z)V

    .line 301
    invoke-interface {v7}, Lorg/h2/index/Index;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    move-object/from16 v0, p7

    .line 302
    invoke-interface {v7, v0}, Lorg/h2/index/Index;->setComment(Ljava/lang/String;)V

    if-eqz v13, :cond_12

    .line 304
    invoke-virtual {v11, v7}, Lorg/h2/engine/Session;->addLocalTempTableIndex(Lorg/h2/index/Index;)V

    goto :goto_8

    .line 306
    :cond_12
    iget-object v0, v10, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v11, v7}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    .line 309
    :cond_13
    :goto_8
    iget-object v0, v10, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/RegularTable;->setModified()V

    return-object v7
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 7

    .line 111
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/table/RegularTable;->lastModificationId:J

    .line 112
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/h2/result/Row;->setSessionId(I)V

    :cond_0
    const/4 v0, 0x0

    .line 117
    :try_start_0
    iget-object v1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 118
    :try_start_1
    iget-object v3, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/index/Index;

    .line 119
    invoke-interface {v3, p1, p2}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    const/4 v4, 0x1

    .line 120
    invoke-direct {p0, p1, v3, v4}, Lorg/h2/table/RegularTable;->checkRowCount(Lorg/h2/engine/Session;Lorg/h2/index/Index;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 122
    :cond_1
    iget-wide v3, p0, Lorg/h2/table/RegularTable;->rowCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/h2/table/RegularTable;->rowCount:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    invoke-direct {p0, p1}, Lorg/h2/table/RegularTable;->analyzeIfRequired(Lorg/h2/engine/Session;)V

    return-void

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 126
    :try_start_2
    iget-object v3, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/index/Index;

    .line 127
    invoke-interface {v3, p1, p2}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 128
    invoke-direct {p0, p1, v3, v0}, Lorg/h2/table/RegularTable;->checkRowCount(Lorg/h2/engine/Session;Lorg/h2/index/Index;I)V
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 134
    iget-object p2, p0, Lorg/h2/table/RegularTable;->trace:Lorg/h2/message/Trace;

    const-string v0, "could not undo operation"

    invoke-virtual {p2, p1, v0}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 135
    throw p1

    .line 137
    :cond_2
    invoke-static {v1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x5bd1

    if-ne v2, v3, :cond_5

    .line 139
    :goto_2
    iget-object v2, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 140
    iget-object v2, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    .line 141
    invoke-interface {v2}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v2, Lorg/h2/index/MultiVersionIndex;

    if-eqz v3, :cond_4

    .line 142
    move-object v3, v2

    check-cast v3, Lorg/h2/index/MultiVersionIndex;

    .line 143
    invoke-virtual {v3, p1, p2}, Lorg/h2/index/MultiVersionIndex;->isUncommittedFromOtherSession(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const p1, 0x16013

    .line 144
    invoke-interface {v2}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    :cond_5
    throw v1
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

    .line 744
    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getCheckForeignKeyConstraints()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getReferentialIntegrity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getConstraints()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 747
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 748
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/constraint/Constraint;

    .line 749
    invoke-virtual {v4}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "REFERENTIAL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 752
    :cond_0
    check-cast v4, Lorg/h2/constraint/ConstraintReferential;

    .line 753
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

    .line 611
    const-class v0, Lorg/h2/table/RegularTable;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 615
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

    .line 618
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 619
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 623
    monitor-exit v0

    return-object v1

    .line 625
    :cond_2
    :goto_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

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

    .line 632
    :cond_4
    invoke-virtual {v3}, Lorg/h2/engine/Session;->getWaitForLock()Lorg/h2/table/Table;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 634
    invoke-virtual {v4, v3, p2, p3}, Lorg/h2/table/Table;->checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 636
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v1, :cond_6

    .line 641
    iget-object v2, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-eqz v2, :cond_6

    .line 642
    iget-object v2, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getWaitForLock()Lorg/h2/table/Table;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 644
    iget-object v1, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1, p2, p3}, Lorg/h2/table/Table;->checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 646
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_6
    monitor-exit v0

    return-object v1

    .line 651
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
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    .line 100
    invoke-interface {v1, p1}, Lorg/h2/index/Index;->close(Lorg/h2/engine/Session;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public commit(SLorg/h2/result/Row;)V
    .locals 3

    .line 157
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/table/RegularTable;->lastModificationId:J

    .line 158
    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 159
    iget-object v2, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    .line 160
    invoke-interface {v2, p1, p2}, Lorg/h2/index/Index;->commit(ILorg/h2/result/Row;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getContainsLargeObject()Z
    .locals 1

    .line 773
    iget-boolean v0, p0, Lorg/h2/table/RegularTable;->containsLargeObject:Z

    return v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    .line 783
    iget-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getDiskSpaceUsed()J

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

    .line 194
    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    .line 769
    iget-wide v0, p0, Lorg/h2/table/RegularTable;->lastModificationId:J

    return-wide v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    invoke-interface {v0, p1, p2, p3}, Lorg/h2/index/Index;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 364
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Lorg/h2/table/RegularTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    return-wide v0

    .line 367
    :cond_0
    iget-wide v0, p0, Lorg/h2/table/RegularTable;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 778
    iget-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowIdColumn()Lorg/h2/table/Column;
    .locals 3

    .line 797
    iget-object v0, p0, Lorg/h2/table/RegularTable;->rowIdColumn:Lorg/h2/table/Column;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Lorg/h2/table/Column;

    const-string v1, "_ROWID_"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/h2/table/RegularTable;->rowIdColumn:Lorg/h2/table/Column;

    .line 799
    iget-object v0, p0, Lorg/h2/table/RegularTable;->rowIdColumn:Lorg/h2/table/Column;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    .line 801
    :cond_0
    iget-object v0, p0, Lorg/h2/table/RegularTable;->rowIdColumn:Lorg/h2/table/Column;

    return-object v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 1

    .line 179
    iget-object p1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/index/Index;

    return-object p1
.end method

.method public getTableType()Ljava/lang/String;
    .locals 1

    const-string v0, "TABLE"

    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 3

    .line 184
    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    .line 185
    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    .line 663
    iget-object v0, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

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

    .line 438
    iget-object v0, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 4

    .line 444
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLockMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 446
    iget-object p1, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    if-nez p3, :cond_3

    .line 448
    iget-object p3, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    .line 454
    :cond_2
    iget-object p3, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez p3, :cond_3

    return v1

    .line 459
    :cond_3
    :goto_0
    iget-object p3, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne p3, p1, :cond_4

    return v2

    .line 462
    :cond_4
    iget-object p3, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    monitor-enter p3

    .line 463
    :try_start_0
    iget-object v3, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v3, p1, :cond_5

    .line 464
    monitor-exit p3

    return v2

    :cond_5
    if-nez p2, :cond_6

    .line 466
    iget-object v3, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 467
    monitor-exit p3

    return v2

    .line 469
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    .line 470
    iget-object v2, p0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 472
    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Lorg/h2/table/RegularTable;->doLock1(Lorg/h2/engine/Session;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :try_start_2
    invoke-virtual {p1, v2, v2}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    .line 475
    iget-object p2, p0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 477
    monitor-exit p3

    return v1

    :catchall_0
    move-exception p2

    .line 474
    invoke-virtual {p1, v2, v2}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    .line 475
    iget-object v0, p0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    throw p2

    :catchall_1
    move-exception p1

    .line 477
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 4

    .line 695
    iget-boolean v0, p0, Lorg/h2/table/RegularTable;->containsLargeObject:Z

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0, p1}, Lorg/h2/table/RegularTable;->truncate(Lorg/h2/engine/Session;)V

    .line 698
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V

    .line 699
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 701
    :cond_0
    invoke-super {p0, p1}, Lorg/h2/table/TableBase;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    .line 703
    :goto_0
    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 704
    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    .line 705
    invoke-interface {v0}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 706
    iget-object v1, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    .line 709
    :cond_1
    iget-object v1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 711
    :cond_2
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_4

    .line 712
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

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

    .line 713
    check-cast v1, Lorg/h2/index/Index;

    .line 714
    invoke-interface {v1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    if-ne v2, p0, :cond_3

    .line 715
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

    .line 719
    :cond_4
    iget-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;)V

    .line 720
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    .line 721
    iput-object p1, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    .line 722
    iput-object p1, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    .line 723
    iput-object p1, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    .line 724
    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->invalidate()V

    return-void
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 5

    .line 372
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    invoke-virtual {p2}, Lorg/h2/result/Row;->isDeleted()Z

    move-result v0

    const v1, 0x16013

    if-nez v0, :cond_2

    .line 376
    invoke-virtual {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result v0

    .line 377
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v2

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p2, v2}, Lorg/h2/result/Row;->setSessionId(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 374
    :cond_2
    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 384
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/table/RegularTable;->lastModificationId:J

    .line 385
    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 388
    :try_start_0
    iget-object v1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    .line 389
    invoke-interface {v1, p1, p2}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    const/4 v2, -0x1

    .line 390
    invoke-direct {p0, p1, v1, v2}, Lorg/h2/table/RegularTable;->checkRowCount(Lorg/h2/engine/Session;Lorg/h2/index/Index;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    .line 392
    :cond_4
    iget-wide v1, p0, Lorg/h2/table/RegularTable;->rowCount:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/table/RegularTable;->rowCount:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    invoke-direct {p0, p1}, Lorg/h2/table/RegularTable;->analyzeIfRequired(Lorg/h2/engine/Session;)V

    return-void

    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 395
    :try_start_1
    iget-object v2, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 396
    iget-object v2, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    .line 397
    invoke-interface {v2, p1, p2}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    const/4 v3, 0x0

    .line 398
    invoke-direct {p0, p1, v2, v3}, Lorg/h2/table/RegularTable;->checkRowCount(Lorg/h2/engine/Session;Lorg/h2/index/Index;I)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 407
    :cond_5
    invoke-static {v1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 404
    iget-object p2, p0, Lorg/h2/table/RegularTable;->trace:Lorg/h2/message/Trace;

    const-string v0, "could not undo operation"

    invoke-virtual {p2, p1, v0}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 405
    throw p1
.end method

.method public setCompareMode(Lorg/h2/value/CompareMode;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lorg/h2/table/RegularTable;->compareMode:Lorg/h2/value/CompareMode;

    return-void
.end method

.method public setRowCount(J)V
    .locals 0

    .line 690
    iput-wide p1, p0, Lorg/h2/table/RegularTable;->rowCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lorg/h2/table/RegularTable;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    .line 414
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/table/RegularTable;->lastModificationId:J

    .line 415
    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 416
    iget-object v1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    .line 417
    invoke-interface {v1, p1}, Lorg/h2/index/Index;->truncate(Lorg/h2/engine/Session;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 419
    iput-wide v0, p0, Lorg/h2/table/RegularTable;->rowCount:J

    const/4 p1, 0x0

    .line 420
    iput p1, p0, Lorg/h2/table/RegularTable;->changesSinceAnalyze:I

    return-void
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 2

    .line 668
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    if-eqz v0, :cond_4

    .line 669
    iget-object v0, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "unlock"

    invoke-direct {p0, p1, v0, v1}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    .line 670
    iget-object v0, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    .line 671
    iput-object v0, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    .line 673
    :cond_1
    iget-object v0, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 674
    iget-object v0, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 676
    :cond_2
    iget-object p1, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    monitor-enter p1

    .line 677
    :try_start_0
    iget-object v0, p0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 678
    iget-object v0, p0, Lorg/h2/table/RegularTable;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 680
    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return-void
.end method
