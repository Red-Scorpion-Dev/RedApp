.class public Lorg/h2/index/PageBtreeIndex;
.super Lorg/h2/index/PageIndex;
.source "PageBtreeIndex.java"


# static fields
.field private static memoryChangeRequired:I


# instance fields
.field private memoryCount:I

.field private memoryPerPage:I

.field private final needRebuild:Z

.field private rowCount:J

.field private final store:Lorg/h2/store/PageStore;

.field private final tableData:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLorg/h2/engine/Session;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lorg/h2/index/PageIndex;-><init>()V

    .line 46
    invoke-virtual/range {p0 .. p5}, Lorg/h2/index/PageBtreeIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 47
    iget-object p5, p0, Lorg/h2/index/PageBtreeIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p5}, Lorg/h2/engine/Database;->isStarting()Z

    move-result p5

    if-nez p5, :cond_0

    if-eqz p6, :cond_0

    .line 48
    invoke-static {p4}, Lorg/h2/index/PageBtreeIndex;->checkIndexColumnTypes([Lorg/h2/table/IndexColumn;)V

    .line 52
    :cond_0
    iput-object p1, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    .line 53
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    .line 56
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    .line 57
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->addIndex(Lorg/h2/index/PageIndex;)V

    const/4 p1, 0x0

    if-eqz p6, :cond_1

    .line 60
    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result p2

    iput p2, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    .line 64
    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2, p0, p7}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/index/PageIndex;Lorg/h2/engine/Session;)V

    .line 65
    iget p2, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-static {p0, p2, p1}, Lorg/h2/index/PageBtreeLeaf;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;

    move-result-object p2

    .line 66
    iget-object p3, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 67
    iget-object p3, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p3, p2}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p3, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p3, p2}, Lorg/h2/store/PageStore;->getRootPageId(I)I

    move-result p2

    iput p2, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    .line 70
    iget p2, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {p0, p2}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    .line 71
    invoke-virtual {p2}, Lorg/h2/index/PageBtree;->getRowCount()I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    :goto_0
    const/4 p2, 0x1

    if-nez p6, :cond_3

    .line 73
    iget-wide p3, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    const-wide/16 p5, 0x0

    cmp-long p7, p3, p5

    if-nez p7, :cond_2

    iget-object p3, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p3}, Lorg/h2/store/PageStore;->isRecoveryRunning()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p3, 0x1

    :goto_2
    iput-boolean p3, p0, Lorg/h2/index/PageBtreeIndex;->needRebuild:Z

    .line 74
    iget-object p3, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p3}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p3

    const/4 p4, 0x2

    if-eqz p3, :cond_4

    .line 75
    iget-object p3, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    const-string p5, "opened {0} rows: {1}"

    new-array p6, p4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->getName()Ljava/lang/String;

    move-result-object p7

    aput-object p7, p6, p1

    iget-wide v0, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p6, p2

    invoke-virtual {p3, p5, p6}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_4
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result p1

    add-int/lit16 p1, p1, 0xb8

    shr-int/2addr p1, p4

    iput p1, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    return-void

    .line 54
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addRow(Lorg/h2/result/SearchRow;)V
    .locals 7

    .line 96
    :goto_0
    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p1}, Lorg/h2/index/PageBtree;->addRowTry(Lorg/h2/result/SearchRow;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 122
    invoke-direct {p0}, Lorg/h2/index/PageBtreeIndex;->invalidateRowCount()V

    .line 123
    iget-wide v0, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v2}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    const-string v4, "split {0}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v1, -0x1

    .line 104
    invoke-virtual {v0, v2}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v2

    .line 105
    iget-object v4, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    iget-object v5, v0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v4, v0, v5}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 107
    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtree;->split(I)Lorg/h2/index/PageBtree;

    move-result-object v1

    .line 108
    iget-object v4, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 109
    iget-object v4, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v4}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v4

    .line 110
    invoke-virtual {v0, v4}, Lorg/h2/index/PageBtree;->setPageId(I)V

    .line 111
    iget v4, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {v0, v4}, Lorg/h2/index/PageBtree;->setParentPageId(I)V

    .line 112
    iget v4, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {v1, v4}, Lorg/h2/index/PageBtree;->setParentPageId(I)V

    .line 113
    iget v4, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-static {p0, v4, v3}, Lorg/h2/index/PageBtreeNode;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeNode;

    move-result-object v3

    .line 115
    iget-object v4, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v4, v3, v5}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 116
    invoke-virtual {v3, v0, v2, v1}, Lorg/h2/index/PageBtreeNode;->init(Lorg/h2/index/PageBtree;Lorg/h2/result/SearchRow;Lorg/h2/index/PageBtree;)V

    .line 117
    iget-object v2, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v2, v0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 118
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 119
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v3}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto :goto_0
.end method

.method private find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;ZLorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 2

    .line 179
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x15f97

    .line 180
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 182
    :cond_1
    :goto_0
    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    .line 183
    new-instance v1, Lorg/h2/index/PageBtreeCursor;

    invoke-direct {v1, p1, p0, p4}, Lorg/h2/index/PageBtreeCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/PageBtreeIndex;Lorg/h2/result/SearchRow;)V

    .line 184
    invoke-virtual {v0, v1, p2, p3}, Lorg/h2/index/PageBtree;->find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V

    return-object v1
.end method

.method private getSearchRow(Lorg/h2/result/Row;)Lorg/h2/result/SearchRow;
    .locals 6

    .line 133
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/index/PageBtreeIndex;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object v0

    .line 134
    invoke-interface {v0, p1}, Lorg/h2/result/SearchRow;->setKeyAndVersion(Lorg/h2/result/SearchRow;)V

    .line 135
    iget-object v1, p0, Lorg/h2/index/PageBtreeIndex;->columns:[Lorg/h2/table/Column;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 136
    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    .line 137
    invoke-virtual {p1, v4}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private invalidateRowCount()V
    .locals 2

    .line 438
    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    const/4 v1, -0x1

    .line 439
    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtree;->setRowCountStored(I)V

    return-void
.end method

.method static isMemoryChangeRequired()Z
    .locals 2

    .line 487
    sget v0, Lorg/h2/index/PageBtreeIndex;->memoryChangeRequired:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lorg/h2/index/PageBtreeIndex;->memoryChangeRequired:I

    if-gtz v0, :cond_0

    const/16 v0, 0xa

    .line 488
    sput v0, Lorg/h2/index/PageBtreeIndex;->memoryChangeRequired:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private removeAllRows()V
    .locals 3

    .line 278
    :try_start_0
    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lorg/h2/index/PageBtree;->freeRecursive()V

    .line 280
    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/h2/index/PageBtreeLeaf;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    iget v2, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {v1, v2}, Lorg/h2/store/PageStore;->removeFromCache(I)V

    .line 282
    iget-object v1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1, v0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    const-wide/16 v0, 0x0

    .line 283
    iput-wide v0, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw v0
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 4

    .line 82
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    const-string v0, "{0} add {1}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_0
    invoke-direct {p0, p2}, Lorg/h2/index/PageBtreeIndex;->getSearchRow(Lorg/h2/result/Row;)Lorg/h2/result/SearchRow;

    move-result-object p1

    .line 88
    :try_start_0
    invoke-direct {p0, p1}, Lorg/h2/index/PageBtreeIndex;->addRow(Lorg/h2/result/SearchRow;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw p1
.end method

.method public canFindNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 1

    .line 327
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 333
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->writeRowCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw p1
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/h2/index/PageBtreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;ZLorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 192
    invoke-direct {p0, p1, v1, v0, v1}, Lorg/h2/index/PageBtreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;ZLorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    .line 193
    :cond_0
    invoke-interface {p1}, Lorg/h2/index/Cursor;->next()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 194
    invoke-interface {p1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p2

    .line 195
    iget-object v1, p0, Lorg/h2/index/PageBtreeIndex;->columnIds:[I

    aget v1, v1, v0

    invoke-interface {p2, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    .line 196
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p2, v1, :cond_0

    return-object p1

    :cond_1
    return-object p1

    .line 202
    :cond_2
    iget p2, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {p0, p2}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    .line 203
    new-instance v2, Lorg/h2/index/PageBtreeCursor;

    invoke-direct {v2, p1, p0, v1}, Lorg/h2/index/PageBtreeCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/PageBtreeIndex;Lorg/h2/result/SearchRow;)V

    .line 204
    invoke-virtual {p2, v2}, Lorg/h2/index/PageBtree;->last(Lorg/h2/index/PageBtreeCursor;)V

    .line 205
    invoke-virtual {v2}, Lorg/h2/index/PageBtreeCursor;->previous()Z

    .line 208
    :cond_3
    invoke-virtual {v2}, Lorg/h2/index/PageBtreeCursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 212
    :cond_4
    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->columnIds:[I

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 213
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p1, p2, :cond_5

    return-object v2

    .line 216
    :cond_5
    invoke-virtual {v2}, Lorg/h2/index/PageBtreeCursor;->previous()Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    return-object v2
.end method

.method public findNext(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    const/4 v0, 0x1

    .line 169
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/h2/index/PageBtreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;ZLorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)D"
        }
    .end annotation

    move-object v9, p0

    .line 224
    iget-object v0, v9, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    move-object v1, p1

    invoke-virtual {v0, p1}, Lorg/h2/table/RegularTable;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/h2/index/PageBtreeIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    mul-long v0, v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    .line 317
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v0}, Lorg/h2/table/RegularTable;->getDiskSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method getMemoryPerPage()I
    .locals 1

    .line 463
    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    return v0
.end method

.method getPage(I)Lorg/h2/index/PageBtree;
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 151
    invoke-static {p0, p1, v0}, Lorg/h2/index/PageBtreeLeaf;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 154
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-object p1

    .line 156
    :cond_0
    instance-of p1, v0, Lorg/h2/index/PageBtree;

    if-eqz p1, :cond_1

    .line 159
    check-cast v0, Lorg/h2/index/PageBtree;

    return-object v0

    :cond_1
    const p1, 0x15fae

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method getPageStore()Lorg/h2/store/PageStore;
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    return-object v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/table/RegularTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 322
    iget-wide v0, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 312
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v0}, Lorg/h2/table/RegularTable;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I
    .locals 4

    .line 409
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result v0

    if-nez p3, :cond_0

    .line 411
    iget-object p3, p0, Lorg/h2/index/PageBtreeIndex;->columns:[Lorg/h2/table/Column;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 412
    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v3

    invoke-interface {p2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    .line 413
    invoke-virtual {p1, v3}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method hasData(Lorg/h2/result/SearchRow;)Z
    .locals 2

    .line 459
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->columns:[Lorg/h2/table/Column;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method memoryChange(I)V
    .locals 4

    .line 473
    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->memoryCount:I

    const/4 v1, 0x1

    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    .line 474
    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    iget v2, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    sub-int/2addr p1, v2

    iget v2, p0, Lorg/h2/index/PageBtreeIndex;->memoryCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/h2/index/PageBtreeIndex;->memoryCount:I

    div-int/2addr p1, v2

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    goto :goto_1

    .line 476
    :cond_0
    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    iget v3, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    if-le p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iget v3, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    sub-int/2addr p1, v3

    div-int/2addr p1, v2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    :goto_1
    return-void
.end method

.method public needRebuild()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lorg/h2/index/PageBtreeIndex;->needRebuild:Z

    return v0
.end method

.method readRow(J)Lorg/h2/result/SearchRow;
    .locals 2

    .line 378
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lorg/h2/table/RegularTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method readRow(Lorg/h2/store/Data;IZZ)Lorg/h2/result/SearchRow;
    .locals 3

    .line 350
    monitor-enter p1

    .line 351
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->setPos(I)V

    .line 352
    invoke-virtual {p1}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    const/4 p2, 0x1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 355
    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, v0, v1}, Lorg/h2/table/RegularTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 357
    :cond_0
    iget-object p3, p0, Lorg/h2/index/PageBtreeIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p3, p2}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object p2

    .line 358
    invoke-interface {p2, v0, v1}, Lorg/h2/result/SearchRow;->setKey(J)V

    .line 359
    monitor-exit p1

    return-object p2

    .line 361
    :cond_1
    iget-object p3, p0, Lorg/h2/index/PageBtreeIndex;->table:Lorg/h2/table/Table;

    iget-object p4, p0, Lorg/h2/index/PageBtreeIndex;->columns:[Lorg/h2/table/Column;

    array-length p4, p4

    const/4 v2, 0x0

    if-ne p4, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p3, p2}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object p2

    .line 362
    invoke-interface {p2, v0, v1}, Lorg/h2/result/SearchRow;->setKey(J)V

    .line 363
    iget-object p3, p0, Lorg/h2/index/PageBtreeIndex;->columns:[Lorg/h2/table/Column;

    array-length p4, p3

    :goto_1
    if-ge v2, p4, :cond_3

    aget-object v0, p3, v2

    .line 364
    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    .line 365
    invoke-virtual {p1}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 367
    :cond_3
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 368
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    const-string v1, "remove"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 259
    :cond_0
    invoke-direct {p0}, Lorg/h2/index/PageBtreeIndex;->removeAllRows()V

    .line 260
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    iget v1, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    .line 261
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p0, p1}, Lorg/h2/store/PageStore;->removeMeta(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V

    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 4

    .line 235
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    const-string v0, "{0} remove {1}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :cond_0
    iget-wide v0, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 241
    invoke-direct {p0}, Lorg/h2/index/PageBtreeIndex;->removeAllRows()V

    goto :goto_0

    .line 244
    :cond_1
    :try_start_0
    iget p1, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {p0, p1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p1

    .line 245
    invoke-virtual {p1, p2}, Lorg/h2/index/PageBtree;->remove(Lorg/h2/result/SearchRow;)Lorg/h2/result/SearchRow;

    .line 246
    invoke-direct {p0}, Lorg/h2/index/PageBtreeIndex;->invalidateRowCount()V

    .line 247
    iget-wide p1, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    const/4 v0, 0x0

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw p1
.end method

.method setRootPageId(Lorg/h2/engine/Session;I)V
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p0, p1}, Lorg/h2/store/PageStore;->removeMeta(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V

    .line 432
    iput p2, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    .line 433
    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2, p0, p1}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/index/PageIndex;Lorg/h2/engine/Session;)V

    .line 434
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->addIndex(Lorg/h2/index/PageIndex;)V

    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    .line 266
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->trace:Lorg/h2/message/Trace;

    const-string v0, "truncate"

    invoke-virtual {p1, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-direct {p0}, Lorg/h2/index/PageBtreeIndex;->removeAllRows()V

    .line 270
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {p1}, Lorg/h2/table/RegularTable;->getContainsLargeObject()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 271
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V

    .line 273
    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/table/RegularTable;->setRowCount(J)V

    return-void
.end method

.method writeRow(Lorg/h2/store/Data;ILorg/h2/result/SearchRow;Z)V
    .locals 2

    .line 390
    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->setPos(I)V

    .line 391
    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/store/Data;->writeVarLong(J)V

    if-nez p4, :cond_0

    .line 393
    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->columns:[Lorg/h2/table/Column;

    array-length p4, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    aget-object v1, p2, v0

    .line 394
    invoke-virtual {v1}, Lorg/h2/table/Column;->getColumnId()I

    move-result v1

    .line 395
    invoke-interface {p3, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeRowCount()V
    .locals 3

    .line 444
    sget-boolean v0, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->rootPageId:I

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    .line 449
    iget-wide v1, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    invoke-static {v1, v2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtree;->setRowCountStored(I)V

    return-void
.end method
