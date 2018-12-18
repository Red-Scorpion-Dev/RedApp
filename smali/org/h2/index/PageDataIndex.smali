.class public Lorg/h2/index/PageDataIndex;
.super Lorg/h2/index/PageIndex;
.source "PageDataIndex.java"


# instance fields
.field private delta:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation
.end field

.field private fastDuplicateKeyException:Lorg/h2/message/DbException;

.field private lastKey:J

.field private mainIndexColumn:I

.field private memoryCount:I

.field private memoryPerPage:I

.field private final multiVersion:Z

.field private rowCount:J

.field private rowCountDiff:I

.field private final sessionRowCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final store:Lorg/h2/store/PageStore;

.field private final tableData:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/table/RegularTable;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLorg/h2/engine/Session;)V
    .locals 8

    .line 60
    invoke-direct {p0}, Lorg/h2/index/PageIndex;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/h2/table/RegularTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/h2/index/PageDataIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 62
    iget-object p3, p0, Lorg/h2/index/PageDataIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p3

    iput-boolean p3, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    .line 66
    iget-boolean p3, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    .line 67
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    .line 68
    iput-boolean p4, p0, Lorg/h2/index/PageDataIndex;->isMultiVersion:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 70
    iput-object p3, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    .line 72
    :goto_0
    iput-object p1, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    .line 73
    iget-object p3, p0, Lorg/h2/index/PageDataIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    .line 74
    iget-object p3, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p3, p0}, Lorg/h2/store/PageStore;->addIndex(Lorg/h2/index/PageIndex;)V

    .line 75
    iget-object p3, p0, Lorg/h2/index/PageDataIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    if-eqz p5, :cond_1

    .line 79
    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result p2

    iput p2, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    .line 80
    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2, p0, p6}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/index/PageIndex;Lorg/h2/engine/Session;)V

    .line 81
    iget p2, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    invoke-static {p0, p2, p3}, Lorg/h2/index/PageDataLeaf;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;

    move-result-object p2

    .line 82
    iget-object p5, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p5, p2}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto :goto_1

    .line 84
    :cond_1
    iget-object p5, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p5, p2}, Lorg/h2/store/PageStore;->getRootPageId(I)I

    move-result p2

    iput p2, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    .line 85
    iget p2, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    invoke-virtual {p0, p2, p3}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object p2

    .line 86
    invoke-virtual {p2}, Lorg/h2/index/PageData;->getLastKey()J

    move-result-wide p5

    iput-wide p5, p0, Lorg/h2/index/PageDataIndex;->lastKey:J

    .line 87
    invoke-virtual {p2}, Lorg/h2/index/PageData;->getRowCount()I

    move-result p2

    int-to-long p5, p2

    iput-wide p5, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    .line 89
    :goto_1
    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p2}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p2

    const/4 p5, 0x2

    if-eqz p2, :cond_2

    .line 90
    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    const-string p6, "{0} opened rows: {1}"

    new-array v0, p5, [Ljava/lang/Object;

    aput-object p0, v0, p3

    iget-wide v1, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p4

    invoke-virtual {p2, p6, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_2
    iget-wide p2, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    invoke-virtual {p1, p2, p3}, Lorg/h2/table/RegularTable;->setRowCount(J)V

    .line 93
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result p1

    add-int/lit16 p1, p1, 0xf0

    shr-int/2addr p1, p5

    iput p1, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    return-void

    .line 76
    :cond_3
    invoke-virtual {p1}, Lorg/h2/table/RegularTable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addTry(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 6

    .line 171
    :goto_0
    iget v0, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p2}, Lorg/h2/index/PageData;->addRowTry(Lorg/h2/result/Row;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    .line 193
    invoke-virtual {p2, v1}, Lorg/h2/result/Row;->setDeleted(Z)V

    .line 194
    iget-boolean v0, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 196
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v0

    invoke-direct {p0, v0, v4}, Lorg/h2/index/PageDataIndex;->incrementRowCount(II)V

    .line 204
    :cond_2
    invoke-direct {p0}, Lorg/h2/index/PageDataIndex;->invalidateRowCount()V

    .line 205
    iget-wide v0, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    .line 206
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v1}, Lorg/h2/table/RegularTable;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, v4}, Lorg/h2/store/PageStore;->logAddOrRemoveRow(Lorg/h2/engine/Session;ILorg/h2/result/Row;Z)V

    return-void

    .line 176
    :cond_3
    iget-object v3, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v3}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    iget-object v3, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    const-string v5, "{0} split"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v3, v5, v4}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-nez v2, :cond_5

    .line 179
    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v3

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Lorg/h2/index/PageData;->getKey(I)J

    move-result-wide v3

    .line 181
    :goto_1
    invoke-virtual {v0, v2}, Lorg/h2/index/PageData;->split(I)Lorg/h2/index/PageData;

    move-result-object v2

    .line 182
    iget-object v5, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v5}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v5

    .line 183
    invoke-virtual {v0, v5}, Lorg/h2/index/PageData;->setPageId(I)V

    .line 184
    iget v5, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    invoke-virtual {v0, v5}, Lorg/h2/index/PageData;->setParentPageId(I)V

    .line 185
    iget v5, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    invoke-virtual {v2, v5}, Lorg/h2/index/PageData;->setParentPageId(I)V

    .line 186
    iget v5, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    invoke-static {p0, v5, v1}, Lorg/h2/index/PageDataNode;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataNode;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v0, v3, v4, v2}, Lorg/h2/index/PageDataNode;->init(Lorg/h2/index/PageData;JLorg/h2/index/PageData;)V

    .line 188
    iget-object v3, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v3, v0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 189
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v2}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 190
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto/16 :goto_0
.end method

.method private incrementRowCount(II)V
    .locals 2

    .line 493
    iget-boolean v0, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz v0, :cond_1

    .line 494
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 495
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 497
    :goto_0
    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget p1, p0, Lorg/h2/index/PageDataIndex;->rowCountDiff:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/h2/index/PageDataIndex;->rowCountDiff:I

    :cond_1
    return-void
.end method

.method private invalidateRowCount()V
    .locals 2

    .line 540
    iget v0, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    const/4 v1, -0x1

    .line 541
    invoke-virtual {v0, v1}, Lorg/h2/index/PageData;->setRowCountStored(I)V

    return-void
.end method

.method private removeAllRows()V
    .locals 3

    .line 396
    :try_start_0
    iget v0, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lorg/h2/index/PageData;->freeRecursive()V

    .line 398
    iget v0, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    invoke-static {p0, v0, v1}, Lorg/h2/index/PageDataLeaf;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    iget v2, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    invoke-virtual {v1, v2}, Lorg/h2/store/PageStore;->removeFromCache(I)V

    .line 400
    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1, v0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    const-wide/16 v0, 0x0

    .line 401
    iput-wide v0, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    .line 402
    iput-wide v0, p0, Lorg/h2/index/PageDataIndex;->lastKey:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw v0
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 107
    iget v0, v1, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_0

    .line 108
    iget v0, v1, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    invoke-virtual {v2, v0}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/h2/result/Row;->setKey(J)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v9

    cmp-long v0, v9, v6

    if-nez v0, :cond_1

    .line 111
    iget-wide v9, v1, Lorg/h2/index/PageDataIndex;->lastKey:J

    add-long/2addr v9, v3

    iput-wide v9, v1, Lorg/h2/index/PageDataIndex;->lastKey:J

    long-to-int v0, v9

    int-to-long v9, v0

    invoke-virtual {v2, v9, v10}, Lorg/h2/result/Row;->setKey(J)V

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x0

    .line 115
    :goto_1
    iget-object v0, v1, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v0}, Lorg/h2/table/RegularTable;->getContainsLargeObject()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-virtual/range {p2 .. p2}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v0

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v0, :cond_4

    .line 117
    invoke-virtual {v2, v10}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v11

    .line 118
    iget-object v12, v1, Lorg/h2/index/PageDataIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/index/PageDataIndex;->getId()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/h2/value/Value;->copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;

    move-result-object v12

    .line 119
    invoke-virtual {v12}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v13, p1

    .line 120
    invoke-virtual {v13, v12}, Lorg/h2/engine/Session;->removeAtCommitStop(Lorg/h2/value/Value;)V

    goto :goto_3

    :cond_2
    move-object/from16 v13, p1

    :goto_3
    if-eq v11, v12, :cond_3

    .line 123
    invoke-virtual {v2, v10, v12}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v13, p1

    .line 129
    iget-object v0, v1, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, v1, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    const-string v10, "{0} add {1}"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/index/PageDataIndex;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    aput-object v2, v11, v5

    invoke-virtual {v0, v10, v11}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-wide v10, v6

    .line 135
    :goto_4
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lorg/h2/index/PageDataIndex;->addTry(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, v1, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    .line 156
    iget-wide v3, v1, Lorg/h2/index/PageDataIndex;->lastKey:J

    invoke-virtual/range {p2 .. p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/h2/index/PageDataIndex;->lastKey:J

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 138
    :try_start_1
    iget-object v0, v1, Lorg/h2/index/PageDataIndex;->fastDuplicateKeyException:Lorg/h2/message/DbException;

    if-ne v5, v0, :cond_8

    if-eqz v9, :cond_7

    cmp-long v0, v10, v6

    if-nez v0, :cond_6

    .line 147
    invoke-virtual/range {p2 .. p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v14

    long-to-double v14, v14

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v18, 0x40c3880000000000L    # 10000.0

    mul-double v16, v16, v18

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v0, 0x0

    add-double v14, v14, v16

    double-to-long v14, v14

    :try_start_2
    invoke-virtual {v2, v14, v15}, Lorg/h2/result/Row;->setKey(J)V

    goto :goto_5

    .line 149
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v14

    const/4 v0, 0x0

    add-long/2addr v14, v10

    invoke-virtual {v2, v14, v15}, Lorg/h2/result/Row;->setKey(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    const/4 v0, 0x0

    add-long/2addr v10, v3

    .line 153
    iget-object v0, v1, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    goto :goto_4

    .line 142
    :cond_7
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/h2/index/PageDataIndex;->getNewDuplicateKeyException()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 139
    :cond_8
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    :goto_6
    iget-object v2, v1, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v2}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw v0
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "PAGE"

    .line 410
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 3

    .line 469
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 470
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    const-string v1, "{0} close"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 473
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 475
    :cond_1
    iput v0, p0, Lorg/h2/index/PageDataIndex;->rowCountDiff:I

    .line 476
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 477
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 481
    :cond_2
    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->writeRowCount()V

    return-void
.end method

.method public commit(ILorg/h2/result/Row;)V
    .locals 1

    .line 504
    iget-boolean v0, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 508
    :cond_0
    invoke-virtual {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, p2, v0}, Lorg/h2/index/PageDataIndex;->incrementRowCount(II)V

    :cond_2
    return-void
.end method

.method find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;
    .locals 9

    .line 297
    iget v0, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    .line 298
    invoke-virtual/range {v2 .. v8}, Lorg/h2/index/PageData;->find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 9

    if-nez p2, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    move-wide v4, v0

    goto :goto_1

    .line 280
    :cond_0
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    const-wide p2, 0x7fffffffffffffffL

    :goto_2
    move-wide v6, p2

    goto :goto_3

    .line 281
    :cond_1
    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide p2

    goto :goto_2

    .line 282
    :goto_3
    iget p2, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v2

    .line 283
    iget-boolean v8, p0, Lorg/h2/index/PageDataIndex;->isMultiVersion:Z

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lorg/h2/index/PageData;->find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    .line 303
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 0
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

    .line 315
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {p1}, Lorg/h2/table/RegularTable;->getRowCountApproximation()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    add-long/2addr p1, p3

    const-wide/16 p3, 0xa

    mul-long p1, p1, p3

    long-to-double p1, p1

    return-wide p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getDelta()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 486
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 487
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    .line 452
    iget v0, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lorg/h2/index/PageData;->getDiskSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 0

    .line 98
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->fastDuplicateKeyException:Lorg/h2/message/DbException;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 99
    invoke-super {p0, p1}, Lorg/h2/index/PageIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageDataIndex;->fastDuplicateKeyException:Lorg/h2/message/DbException;

    .line 101
    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->fastDuplicateKeyException:Lorg/h2/message/DbException;

    return-object p1
.end method

.method getKey(Lorg/h2/result/SearchRow;JJ)J
    .locals 0

    if-nez p1, :cond_0

    return-wide p2

    .line 269
    :cond_0
    iget p2, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    invoke-interface {p1, p2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 272
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, p1, :cond_1

    return-wide p4

    .line 275
    :cond_1
    invoke-virtual {p2}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p1

    return-wide p1

    .line 271
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method getLastKey()J
    .locals 2

    .line 307
    iget v0, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lorg/h2/index/PageData;->getLastKey()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMainIndexColumn()I
    .locals 1

    .line 531
    iget v0, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    return v0
.end method

.method getMemoryPerPage()I
    .locals 1

    .line 564
    iget v0, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    return v0
.end method

.method public getNewDuplicateKeyException()Lorg/h2/message/DbException;
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIMARY KEY ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget v1, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    iget-object v2, p0, Lorg/h2/index/PageDataIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    iget v2, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x5bd1

    .line 164
    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p0}, Lorg/h2/message/DbException;->setSource(Ljava/lang/Object;)V

    return-object v0
.end method

.method getPage(II)Lorg/h2/index/PageData;
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    invoke-static {p0, p1, p2}, Lorg/h2/index/PageDataLeaf;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;

    move-result-object p1

    .line 236
    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 237
    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2, p1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-object p1

    .line 239
    :cond_0
    instance-of p1, v0, Lorg/h2/index/PageData;

    if-eqz p1, :cond_3

    .line 242
    check-cast v0, Lorg/h2/index/PageData;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 244
    invoke-virtual {v0}, Lorg/h2/index/PageData;->getParentPageId()I

    move-result p1

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " parent "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/index/PageData;->getParentPageId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " expected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const p1, 0x15fae

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method getPageOverflow(I)Lorg/h2/index/PageDataOverflow;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    .line 217
    instance-of v0, p1, Lorg/h2/index/PageDataOverflow;

    if-eqz v0, :cond_0

    .line 218
    check-cast p1, Lorg/h2/index/PageDataOverflow;

    return-object p1

    :cond_0
    const v0, 0x15fae

    if-nez p1, :cond_1

    const-string p1, "null"

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method getPageStore()Lorg/h2/store/PageStore;
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 2

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tableScan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 0

    .line 415
    invoke-virtual {p0, p2, p3}, Lorg/h2/index/PageDataIndex;->getRowWithKey(J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 4

    .line 440
    iget-boolean v0, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    .line 443
    :goto_0
    iget-wide v2, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    add-long/2addr v0, v2

    .line 444
    iget p1, p0, Lorg/h2/index/PageDataIndex;->rowCountDiff:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0

    .line 447
    :cond_1
    iget-wide v0, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 435
    iget-wide v0, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowWithKey(J)Lorg/h2/result/Row;
    .locals 2

    .line 425
    iget v0, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    .line 426
    invoke-virtual {v0, p1, p2}, Lorg/h2/index/PageData;->getRowWithKey(J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public isRowIdIndex()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method memoryChange(I)V
    .locals 4

    .line 574
    iget v0, p0, Lorg/h2/index/PageDataIndex;->memoryCount:I

    const/4 v1, 0x1

    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    .line 575
    iget v0, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    iget v2, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    sub-int/2addr p1, v2

    iget v2, p0, Lorg/h2/index/PageDataIndex;->memoryCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/h2/index/PageDataIndex;->memoryCount:I

    div-int/2addr p1, v2

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    goto :goto_1

    .line 577
    :cond_0
    iget v0, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    iget v3, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    if-le p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iget v3, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    sub-int/2addr p1, v3

    div-int/2addr p1, v2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    :goto_1
    return-void
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 4

    .line 368
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    const-string v1, "{0} remove"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    :cond_0
    invoke-direct {p0}, Lorg/h2/index/PageDataIndex;->removeAllRows()V

    .line 372
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    iget v1, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    .line 373
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p0, p1}, Lorg/h2/store/PageStore;->removeMeta(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V

    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 7

    .line 327
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v0}, Lorg/h2/table/RegularTable;->getContainsLargeObject()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p2}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 329
    invoke-virtual {p2, v2}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    .line 330
    invoke-virtual {v3}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    invoke-virtual {p1, v3}, Lorg/h2/engine/Session;->removeAtCommitStop(Lorg/h2/value/Value;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    const-string v3, "{0} remove {1}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p2, v4, v2

    invoke-virtual {v0, v3, v4}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :cond_2
    iget-wide v3, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 339
    invoke-direct {p0}, Lorg/h2/index/PageDataIndex;->removeAllRows()V

    goto :goto_1

    .line 342
    :cond_3
    :try_start_0
    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v3

    .line 343
    iget v0, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    .line 344
    invoke-virtual {v0, v3, v4}, Lorg/h2/index/PageData;->remove(J)Z

    .line 345
    invoke-direct {p0}, Lorg/h2/index/PageDataIndex;->invalidateRowCount()V

    .line 346
    iget-wide v3, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    const/4 v0, 0x0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lorg/h2/index/PageDataIndex;->rowCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    .line 351
    :goto_1
    iget-boolean v0, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz v0, :cond_6

    .line 353
    invoke-virtual {p2, v2}, Lorg/h2/result/Row;->setDeleted(Z)V

    .line 354
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    if-nez v0, :cond_4

    .line 355
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    .line 357
    :cond_4
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 359
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_5
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v0

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lorg/h2/index/PageDataIndex;->incrementRowCount(II)V

    .line 363
    :cond_6
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    iget-object v2, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v2}, Lorg/h2/table/RegularTable;->getId()I

    move-result v2

    invoke-virtual {v0, p1, v2, p2, v1}, Lorg/h2/store/PageStore;->logAddOrRemoveRow(Lorg/h2/engine/Session;ILorg/h2/result/Row;Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 348
    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw p1
.end method

.method public setMainIndexColumn(I)V
    .locals 0

    .line 527
    iput p1, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    return-void
.end method

.method setRootPageId(Lorg/h2/engine/Session;I)V
    .locals 1

    .line 520
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p0, p1}, Lorg/h2/store/PageStore;->removeMeta(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V

    .line 521
    iput p2, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    .line 522
    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2, p0, p1}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/index/PageIndex;Lorg/h2/engine/Session;)V

    .line 523
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->addIndex(Lorg/h2/index/PageIndex;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 536
    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 4

    .line 378
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->trace:Lorg/h2/message/Trace;

    const-string v2, "{0} truncate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    iget-object v2, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v2}, Lorg/h2/table/RegularTable;->getId()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/h2/store/PageStore;->logTruncate(Lorg/h2/engine/Session;I)V

    .line 382
    invoke-direct {p0}, Lorg/h2/index/PageDataIndex;->removeAllRows()V

    .line 383
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v0}, Lorg/h2/table/RegularTable;->getContainsLargeObject()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v0}, Lorg/h2/table/RegularTable;->isPersistData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p1, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 386
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V

    .line 388
    :cond_1
    iget-boolean p1, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz p1, :cond_2

    .line 389
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 391
    :cond_2
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/table/RegularTable;->setRowCount(J)V

    return-void
.end method

.method public writeRowCount()V
    .locals 3

    .line 546
    sget-boolean v0, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    if-nez v0, :cond_0

    return-void

    .line 551
    :cond_0
    :try_start_0
    iget v0, p0, Lorg/h2/index/PageDataIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    .line 552
    iget-wide v1, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    invoke-static {v1, v2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/index/PageData;->setRowCountStored(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw v0
.end method
