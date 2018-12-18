.class public Lorg/h2/store/PageStore;
.super Ljava/lang/Object;
.source "PageStore.java"

# interfaces
.implements Lorg/h2/util/CacheWriter;


# static fields
.field private static final COMPACT_BLOCK_SIZE:I = 0x600

.field private static final INCREMENT_KB:I = 0x400

.field private static final INCREMENT_PERCENT_MIN:I = 0x23

.field public static final LOG_MODE_OFF:I = 0x0

.field public static final LOG_MODE_SYNC:I = 0x2

.field private static final META_TABLE_ID:I = -0x1

.field private static final META_TYPE_BTREE_INDEX:I = 0x1

.field private static final META_TYPE_DATA_INDEX:I = 0x0

.field private static final MIN_PAGE_COUNT:I = 0x5

.field private static final PAGE_ID_FREE_LIST_ROOT:I = 0x3

.field private static final PAGE_ID_META_ROOT:I = 0x4

.field public static final PAGE_SIZE_MAX:I = 0x8000

.field public static final PAGE_SIZE_MIN:I = 0x40

.field private static final READ_VERSION:I = 0x3

.field private static final WRITE_VERSION:I = 0x3


# instance fields
.field private accessMode:Ljava/lang/String;

.field private backupLevel:I

.field private final cache:Lorg/h2/util/Cache;

.field private changeCount:J

.field private final database:Lorg/h2/engine/Database;

.field private emptyPage:Lorg/h2/store/Data;

.field private file:Lorg/h2/store/FileStore;

.field private fileLength:J

.field private final fileName:Ljava/lang/String;

.field private firstFreeListIndex:I

.field private freeListPagesPerList:I

.field private final freeLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/PageFreeList;",
            ">;"
        }
    .end annotation
.end field

.field private final freed:Lorg/h2/util/BitField;

.field private ignoreBigLog:Z

.field private isNew:Z

.field private lockFile:Z

.field private log:Lorg/h2/store/PageLog;

.field private logFirstDataPage:I

.field private logFirstTrunkPage:I

.field private logKey:I

.field private logMode:I

.field private logSizeBase:J

.field private maxLogSize:J

.field private metaIndex:Lorg/h2/index/PageDataIndex;

.field private final metaObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/index/PageIndex;",
            ">;"
        }
    .end annotation
.end field

.field private final metaRootPageId:Lorg/h2/util/IntIntHashMap;

.field private metaSchema:Lorg/h2/schema/Schema;

.field private metaTable:Lorg/h2/table/RegularTable;

.field private pageCount:I

.field private pageSize:I

.field private pageSizeShift:I

.field private final pageStoreSession:Lorg/h2/engine/Session;

.field private readCount:J

.field private readMode:Z

.field private recordPageReads:Z

.field private recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

.field private recordedPagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private recoveryRunning:Z

.field private reservedPages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private statistics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tempObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/index/PageIndex;",
            ">;"
        }
    .end annotation
.end field

.field private final trace:Lorg/h2/message/Trace;

.field private writeCount:J

.field private writeCountBase:J


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 137
    iput v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    .line 165
    new-instance v0, Lorg/h2/util/IntIntHashMap;

    invoke-direct {v0}, Lorg/h2/util/IntIntHashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageStore;->metaRootPageId:Lorg/h2/util/IntIntHashMap;

    .line 166
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    const-wide/32 v0, 0x1000000

    .line 176
    iput-wide v0, p0, Lorg/h2/store/PageStore;->maxLogSize:J

    .line 182
    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    .line 183
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    const-wide/16 v0, 0x1

    .line 196
    iput-wide v0, p0, Lorg/h2/store/PageStore;->changeCount:J

    const/4 v0, 0x2

    .line 201
    iput v0, p0, Lorg/h2/store/PageStore;->logMode:I

    .line 216
    iput-object p2, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lorg/h2/store/PageStore;->accessMode:Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/16 p2, 0xe

    .line 219
    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    .line 222
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCacheType()Ljava/lang/String;

    move-result-object p2

    .line 223
    invoke-static {p0, p2, p4}, Lorg/h2/util/CacheLRU;->getCache(Lorg/h2/util/CacheWriter;Ljava/lang/String;I)Lorg/h2/util/Cache;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    .line 224
    new-instance p2, Lorg/h2/engine/Session;

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lorg/h2/engine/Session;-><init>(Lorg/h2/engine/Database;Lorg/h2/engine/User;I)V

    iput-object p2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    return-void
.end method

.method private addMeta(Lorg/h2/result/Row;Lorg/h2/engine/Session;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1658
    invoke-virtual {v1, v3}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/value/Value;->getInt()I

    move-result v9

    const/4 v4, 0x1

    .line 1659
    invoke-virtual {v1, v4}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/value/Value;->getInt()I

    move-result v5

    const/4 v6, 0x2

    .line 1660
    invoke-virtual {v1, v6}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v7

    const/4 v8, 0x3

    .line 1661
    invoke-virtual {v1, v8}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v10

    invoke-virtual {v10}, Lorg/h2/value/Value;->getInt()I

    move-result v10

    const/4 v11, 0x4

    .line 1662
    invoke-virtual {v1, v11}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v12

    invoke-virtual {v12}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2c

    invoke-static {v12, v13, v3}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x5

    .line 1664
    invoke-virtual {v1, v14}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v14

    invoke-virtual {v14}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v14

    .line 1665
    invoke-static {v14, v13, v3}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v13

    .line 1667
    iget-object v15, v0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v15}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1668
    iget-object v15, v0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMeta id="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " root="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " parent="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " columns="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    if-eqz v10, :cond_1

    .line 1673
    invoke-virtual/range {p0 .. p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    .line 1674
    invoke-virtual {v0, v10}, Lorg/h2/store/PageStore;->allocatePage(I)V

    .line 1676
    :cond_1
    iget-object v3, v0, Lorg/h2/store/PageStore;->metaRootPageId:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v3, v9, v10}, Lorg/h2/util/IntIntHashMap;->put(II)V

    if-nez v5, :cond_6

    .line 1678
    new-instance v3, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {v3}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    .line 1679
    sget-boolean v5, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v5, :cond_3

    if-eqz v13, :cond_2

    goto :goto_0

    .line 1681
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1684
    :cond_3
    :goto_0
    array-length v1, v13

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_4

    .line 1685
    new-instance v7, Lorg/h2/table/Column;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "C"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v11}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    .line 1686
    iget-object v8, v3, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1688
    :cond_4
    iget-object v1, v0, Lorg/h2/store/PageStore;->metaSchema:Lorg/h2/schema/Schema;

    iput-object v1, v3, Lorg/h2/command/ddl/CreateTableData;->schema:Lorg/h2/schema/Schema;

    .line 1689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "T"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    .line 1690
    iput v9, v3, Lorg/h2/command/ddl/CreateTableData;->id:I

    .line 1691
    aget-object v1, v12, v6

    const-string v5, "temp"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v3, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    .line 1692
    iput-boolean v4, v3, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    .line 1693
    iput-boolean v4, v3, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    const/4 v1, 0x0

    .line 1694
    iput-boolean v1, v3, Lorg/h2/command/ddl/CreateTableData;->create:Z

    .line 1695
    iput-object v2, v3, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    .line 1696
    new-instance v5, Lorg/h2/table/RegularTable;

    invoke-direct {v5, v3}, Lorg/h2/table/RegularTable;-><init>(Lorg/h2/command/ddl/CreateTableData;)V

    .line 1697
    sget-boolean v3, Lorg/h2/engine/SysProperties;->SORT_BINARY_UNSIGNED:Z

    .line 1698
    array-length v6, v12

    const/4 v7, 0x3

    if-le v6, v7, :cond_5

    .line 1699
    aget-object v3, v12, v7

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1701
    :cond_5
    aget-object v1, v12, v1

    aget-object v4, v12, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4, v3}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object v1

    .line 1703
    invoke-virtual {v5, v1}, Lorg/h2/table/RegularTable;->setCompareMode(Lorg/h2/value/CompareMode;)V

    .line 1704
    invoke-virtual {v5, v2}, Lorg/h2/table/RegularTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v1

    goto/16 :goto_5

    .line 1706
    :cond_6
    iget-object v3, v0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/index/Index;

    if-eqz v3, :cond_c

    .line 1711
    invoke-interface {v3}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    check-cast v1, Lorg/h2/table/RegularTable;

    .line 1712
    invoke-virtual {v1}, Lorg/h2/table/RegularTable;->getColumns()[Lorg/h2/table/Column;

    move-result-object v3

    .line 1713
    array-length v5, v13

    .line 1714
    new-array v6, v5, [Lorg/h2/table/IndexColumn;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_8

    .line 1716
    aget-object v8, v13, v7

    .line 1717
    new-instance v10, Lorg/h2/table/IndexColumn;

    invoke-direct {v10}, Lorg/h2/table/IndexColumn;-><init>()V

    const/16 v11, 0x2f

    .line 1718
    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_7

    add-int/lit8 v14, v11, 0x1

    .line 1720
    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1721
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v10, Lorg/h2/table/IndexColumn;->sortType:I

    const/4 v14, 0x0

    .line 1722
    invoke-virtual {v8, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1724
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v8, v3, v8

    .line 1725
    iput-object v8, v10, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 1726
    aput-object v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    const/4 v7, 0x3

    .line 1729
    aget-object v3, v12, v7

    const-string v5, "d"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    .line 1730
    invoke-static {v4, v3}, Lorg/h2/index/IndexType;->createPrimaryKey(ZZ)Lorg/h2/index/IndexType;

    move-result-object v4

    .line 1731
    invoke-virtual {v1}, Lorg/h2/table/RegularTable;->getColumns()[Lorg/h2/table/Column;

    move-result-object v5

    .line 1732
    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_9

    aget-object v10, v6, v8

    .line 1733
    iget-object v10, v10, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v10}, Lorg/h2/table/Column;->getColumnId()I

    move-result v10

    aget-object v10, v5, v10

    invoke-virtual {v10, v3}, Lorg/h2/table/Column;->setNullable(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    move-object v7, v4

    goto :goto_4

    .line 1736
    :cond_a
    invoke-static {v4}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v3

    move-object v7, v3

    .line 1738
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p2

    move v4, v9

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Lorg/h2/table/RegularTable;->addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;

    move-result-object v1

    .line 1741
    :goto_5
    instance-of v2, v1, Lorg/h2/index/MultiVersionIndex;

    if-eqz v2, :cond_b

    .line 1742
    check-cast v1, Lorg/h2/index/MultiVersionIndex;

    invoke-virtual {v1}, Lorg/h2/index/MultiVersionIndex;->getBaseIndex()Lorg/h2/index/Index;

    move-result-object v1

    check-cast v1, Lorg/h2/index/PageIndex;

    goto :goto_6

    .line 1744
    :cond_b
    check-cast v1, Lorg/h2/index/PageIndex;

    .line 1746
    :goto_6
    iget-object v2, v0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    const v2, 0x15fae

    .line 1708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Table not found:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " meta:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
.end method

.method private allocatePage(Lorg/h2/util/BitField;I)I
    .locals 2

    .line 1190
    iget v0, p0, Lorg/h2/store/PageStore;->firstFreeListIndex:I

    .line 1191
    :goto_0
    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object v1

    .line 1192
    invoke-virtual {v1, p1, p2}, Lorg/h2/store/PageFreeList;->allocate(Lorg/h2/util/BitField;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1194
    iput v0, p0, Lorg/h2/store/PageStore;->firstFreeListIndex:I

    .line 1198
    :goto_1
    iget p1, p0, Lorg/h2/store/PageStore;->pageCount:I

    if-lt v1, p1, :cond_0

    .line 1199
    invoke-direct {p0}, Lorg/h2/store/PageStore;->increaseFileSize()V

    goto :goto_1

    .line 1201
    :cond_0
    iget-object p1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkOpen()V
    .locals 1

    .line 1899
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15ff2

    .line 1900
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private checksumSet([BI)V
    .locals 5

    .line 1959
    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    const/4 v1, 0x0

    .line 1960
    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    and-int/lit16 v1, v1, 0xff

    add-int/lit16 v1, v1, 0xff

    add-int/lit16 v2, v1, 0xff

    const/4 v3, 0x6

    .line 1965
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    shr-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v3, -0x1

    .line 1966
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    add-int/2addr v2, v1

    .line 1967
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    add-int/lit8 v3, v0, -0x2

    .line 1968
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 1969
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    add-int/2addr v2, v1

    and-int/lit16 v0, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    xor-int/2addr v0, p2

    int-to-byte v0, v0

    .line 1970
    aput-byte v0, p1, v3

    and-int/lit16 v0, v2, 0xff

    shr-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    shr-int/lit8 p2, p2, 0x8

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    const/4 v0, 0x2

    .line 1971
    aput-byte p2, p1, v0

    return-void
.end method

.method public static checksumTest([BII)Z
    .locals 5

    const/4 v0, 0x0

    .line 1983
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit16 v1, v1, 0xff

    add-int/lit16 v2, v1, 0xff

    const/4 v3, 0x6

    .line 1984
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    shr-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, v3, -0x1

    .line 1985
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    add-int/2addr v2, v1

    .line 1986
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    add-int/lit8 v3, p2, -0x2

    .line 1987
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr p2, v3

    .line 1988
    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    add-int/2addr v1, p2

    add-int/2addr v2, v1

    .line 1989
    aget-byte p2, p0, v3

    and-int/lit16 v4, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    add-int/2addr v4, v1

    xor-int v1, v4, p1

    int-to-byte v1, v1

    if-ne p2, v1, :cond_1

    const/4 p2, 0x2

    aget-byte p0, p0, p2

    and-int/lit16 p2, v2, 0xff

    shr-int/lit8 v1, v2, 0x8

    add-int/2addr p2, v1

    shr-int/lit8 p1, p1, 0x8

    xor-int/2addr p1, p2

    int-to-byte p1, p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v0
.end method

.method private compact(II)Z
    .locals 7

    const/4 v0, 0x5

    if-lt p1, v0, :cond_9

    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    if-ge p2, p1, :cond_9

    .line 703
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->isUsed(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 706
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0, p2}, Lorg/h2/util/Cache;->get(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    check-cast v0, Lorg/h2/store/Page;

    if-eqz v0, :cond_1

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not free: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 710
    :cond_1
    invoke-virtual {p0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v0

    if-nez v0, :cond_2

    .line 712
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->freePage(I)V

    goto/16 :goto_1

    .line 713
    :cond_2
    instance-of v1, v0, Lorg/h2/store/PageStreamData;

    if-nez v1, :cond_7

    instance-of v1, v0, Lorg/h2/store/PageStreamTrunk;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 720
    :cond_3
    iget-object p1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 721
    iget-object p1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/store/Page;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_4
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    .line 724
    :try_start_0
    iget-object p1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/Page;->moveTo(Lorg/h2/engine/Session;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    iget-wide p1, p0, Lorg/h2/store/PageStore;->changeCount:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lorg/h2/store/PageStore;->changeCount:J

    .line 727
    sget-boolean p1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz p1, :cond_8

    iget-wide p1, p0, Lorg/h2/store/PageStore;->changeCount:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, "changeCount has wrapped"

    .line 728
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 726
    iget-wide v5, p0, Lorg/h2/store/PageStore;->changeCount:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lorg/h2/store/PageStore;->changeCount:J

    .line 727
    sget-boolean p2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz p2, :cond_6

    iget-wide v3, p0, Lorg/h2/store/PageStore;->changeCount:J

    cmp-long p2, v3, v1

    if-gez p2, :cond_6

    const-string p1, "changeCount has wrapped"

    .line 728
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_6
    throw p1

    .line 714
    :cond_7
    :goto_0
    invoke-virtual {v0}, Lorg/h2/store/Page;->getPos()I

    move-result p2

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->getMinPageId()I

    move-result v0

    if-ge p2, v0, :cond_8

    .line 717
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->freePage(I)V

    :cond_8
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method private freePage(I)V
    .locals 3

    .line 1134
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeListId(I)I

    move-result v0

    .line 1135
    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object v1

    .line 1136
    iget v2, p0, Lorg/h2/store/PageStore;->firstFreeListIndex:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStore;->firstFreeListIndex:I

    .line 1137
    invoke-virtual {v1, p1}, Lorg/h2/store/PageFreeList;->free(I)V

    return-void
.end method

.method private getFirstFree(I)I
    .locals 4

    .line 655
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeListId(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    iget v3, p0, Lorg/h2/store/PageStore;->pageCount:I

    if-ge p1, v3, :cond_1

    .line 656
    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/h2/store/PageFreeList;->getFirstFree(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private getFirstUncommittedSection()I
    .locals 6

    .line 862
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "getFirstUncommittedSection"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    move-result-object v0

    .line 864
    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v1}, Lorg/h2/store/PageLog;->getLogSectionId()I

    move-result v1

    .line 865
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 866
    invoke-virtual {v4}, Lorg/h2/engine/Session;->getFirstUncommittedLog()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-ge v4, v1, :cond_0

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getFreeList(I)Lorg/h2/store/PageFreeList;
    .locals 4

    .line 1109
    iget-object v0, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 1110
    iget-object v0, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/store/PageFreeList;

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    move-object v0, v1

    .line 1115
    :cond_1
    iget v2, p0, Lorg/h2/store/PageStore;->freeListPagesPerList:I

    mul-int v2, v2, p1

    add-int/lit8 v2, v2, 0x3

    .line 1116
    :goto_0
    iget v3, p0, Lorg/h2/store/PageStore;->pageCount:I

    if-lt v2, v3, :cond_2

    .line 1117
    invoke-direct {p0}, Lorg/h2/store/PageStore;->increaseFileSize()V

    goto :goto_0

    .line 1119
    :cond_2
    iget v3, p0, Lorg/h2/store/PageStore;->pageCount:I

    if-ge v2, v3, :cond_3

    .line 1120
    invoke-virtual {p0, v2}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v0

    check-cast v0, Lorg/h2/store/PageFreeList;

    :cond_3
    if-nez v0, :cond_4

    .line 1123
    invoke-static {p0, v2}, Lorg/h2/store/PageFreeList;->create(Lorg/h2/store/PageStore;I)Lorg/h2/store/PageFreeList;

    move-result-object v0

    .line 1124
    iget-object v2, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v2, v0}, Lorg/h2/util/Cache;->put(Lorg/h2/util/CacheObject;)V

    .line 1126
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_5

    .line 1127
    iget-object v2, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1129
    :cond_5
    iget-object v1, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getFreeListForPage(I)Lorg/h2/store/PageFreeList;
    .locals 0

    .line 1104
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeListId(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object p1

    return-object p1
.end method

.method private getFreeListId(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x3

    .line 1100
    iget v0, p0, Lorg/h2/store/PageStore;->freeListPagesPerList:I

    div-int/2addr p1, v0

    return p1
.end method

.method private increaseFileSize()V
    .locals 2

    .line 1208
    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    const/high16 v1, 0x100000

    div-int/2addr v1, v0

    .line 1209
    iget v0, p0, Lorg/h2/store/PageStore;->pageCount:I

    mul-int/lit8 v0, v0, 0x23

    div-int/lit8 v0, v0, 0x64

    if-ge v1, v0, :cond_0

    .line 1211
    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int v1, v1, v0

    .line 1213
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget v0, v0, Lorg/h2/engine/DbSettings;->pageStoreMaxGrowth:I

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1217
    :goto_0
    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->increaseFileSize(I)V

    return-void
.end method

.method private increaseFileSize(I)V
    .locals 6

    .line 1221
    iget v0, p0, Lorg/h2/store/PageStore;->pageCount:I

    :goto_0
    iget v1, p0, Lorg/h2/store/PageStore;->pageCount:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 1222
    iget-object v1, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-virtual {v1, v0}, Lorg/h2/util/BitField;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1224
    :cond_0
    iget v0, p0, Lorg/h2/store/PageStore;->pageCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/store/PageStore;->pageCount:I

    .line 1225
    iget p1, p0, Lorg/h2/store/PageStore;->pageCount:I

    int-to-long v0, p1

    iget p1, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v0, p1

    .line 1226
    iget-object p1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, v0, v1}, Lorg/h2/store/FileStore;->setLength(J)V

    .line 1227
    iget-wide v2, p0, Lorg/h2/store/PageStore;->writeCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/store/PageStore;->writeCount:J

    .line 1228
    iput-wide v0, p0, Lorg/h2/store/PageStore;->fileLength:J

    return-void
.end method

.method private isUsed(I)Z
    .locals 1

    .line 1151
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeListForPage(I)Lorg/h2/store/PageFreeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/store/PageFreeList;->isUsed(I)Z

    move-result p1

    return p1
.end method

.method private lockFile()V
    .locals 2

    .line 318
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->lockFile:Z

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fa4

    .line 320
    iget-object v1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private openExisting()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 328
    :try_start_0
    iget-object v2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    iget-object v3, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/store/PageStore;->accessMode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lorg/h2/engine/Database;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    invoke-direct {p0}, Lorg/h2/store/PageStore;->lockFile()V

    .line 344
    invoke-direct {p0}, Lorg/h2/store/PageStore;->readStaticHeader()V

    .line 345
    iget v2, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-static {v2}, Lorg/h2/store/PageFreeList;->getPagesAddressed(I)I

    move-result v2

    iput v2, p0, Lorg/h2/store/PageStore;->freeListPagesPerList:I

    .line 346
    iget-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v2}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/h2/store/PageStore;->fileLength:J

    .line 347
    iget-wide v2, p0, Lorg/h2/store/PageStore;->fileLength:J

    iget v4, p0, Lorg/h2/store/PageStore;->pageSize:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/h2/store/PageStore;->pageCount:I

    .line 348
    iget v2, p0, Lorg/h2/store/PageStore;->pageCount:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 349
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->releaseLock()V

    .line 354
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->close()V

    .line 355
    iget-object v0, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openNew()V

    return-void

    :cond_0
    const v0, 0x15fae

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pageCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/store/PageStore;->pageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 359
    :cond_1
    invoke-direct {p0}, Lorg/h2/store/PageStore;->readVariableHeader()V

    .line 360
    new-instance v2, Lorg/h2/store/PageLog;

    invoke-direct {v2, p0}, Lorg/h2/store/PageLog;-><init>(Lorg/h2/store/PageStore;)V

    iput-object v2, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    .line 361
    iget-object v2, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    iget v3, p0, Lorg/h2/store/PageStore;->logKey:I

    iget v4, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    iget v5, p0, Lorg/h2/store/PageStore;->logFirstDataPage:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/h2/store/PageLog;->openForReading(III)V

    .line 362
    iget-object v2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v2

    .line 366
    iget-object v3, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3, v0}, Lorg/h2/engine/Database;->setMultiVersion(Z)V

    .line 367
    invoke-direct {p0}, Lorg/h2/store/PageStore;->recover()Z

    move-result v0

    .line 368
    iget-object v3, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3, v2}, Lorg/h2/engine/Database;->setMultiVersion(Z)V

    .line 369
    iget-object v2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_3

    .line 370
    iput-boolean v1, p0, Lorg/h2/store/PageStore;->readMode:Z

    if-eqz v0, :cond_2

    .line 371
    sget-boolean v0, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 372
    :cond_2
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openForWriting()V

    .line 373
    invoke-direct {p0}, Lorg/h2/store/PageStore;->removeOldTempIndexes()V

    :cond_3
    return-void

    :catch_0
    move-exception v2

    .line 330
    invoke-virtual {v2}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v3

    const v4, 0x15faf

    if-ne v3, v4, :cond_4

    .line 331
    invoke-virtual {v2}, Lorg/h2/message/DbException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "locked"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x15fa4

    .line 337
    new-array v1, v1, [Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v3, v2, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 341
    :cond_4
    throw v2
.end method

.method private openForWriting()V
    .locals 4

    .line 379
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->readMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lorg/h2/store/PageStore;->readMode:Z

    const/4 v1, 0x1

    .line 383
    iput-boolean v1, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    .line 384
    iget-object v2, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v2}, Lorg/h2/store/PageLog;->free()V

    .line 385
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v2

    iput v2, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    .line 386
    iget-object v2, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    iget v3, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    invoke-virtual {v2, v3, v0}, Lorg/h2/store/PageLog;->openForWriting(IZ)V

    .line 387
    iput-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    .line 388
    iget-object v2, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    iget v3, p0, Lorg/h2/store/PageStore;->pageCount:I

    invoke-virtual {v2, v0, v3, v1}, Lorg/h2/util/BitField;->set(IIZ)V

    .line 389
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->checkpoint()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private openMetaIndex()V
    .locals 11

    .line 1596
    new-instance v0, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {v0}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    .line 1597
    iget-object v1, v0, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    .line 1598
    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "ID"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "TYPE"

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "PARENT"

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "HEAD"

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "OPTIONS"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "COLUMNS"

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    new-instance v1, Lorg/h2/schema/Schema;

    iget-object v6, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const-string v8, ""

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lorg/h2/schema/Schema;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Lorg/h2/engine/User;Z)V

    iput-object v1, p0, Lorg/h2/store/PageStore;->metaSchema:Lorg/h2/schema/Schema;

    .line 1605
    iget-object v1, p0, Lorg/h2/store/PageStore;->metaSchema:Lorg/h2/schema/Schema;

    iput-object v1, v0, Lorg/h2/command/ddl/CreateTableData;->schema:Lorg/h2/schema/Schema;

    const-string v1, "PAGE_INDEX"

    .line 1606
    iput-object v1, v0, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    const/4 v1, -0x1

    .line 1607
    iput v1, v0, Lorg/h2/command/ddl/CreateTableData;->id:I

    const/4 v2, 0x0

    .line 1608
    iput-boolean v2, v0, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    const/4 v3, 0x1

    .line 1609
    iput-boolean v3, v0, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    .line 1610
    iput-boolean v3, v0, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    .line 1611
    iput-boolean v2, v0, Lorg/h2/command/ddl/CreateTableData;->create:Z

    .line 1612
    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    iput-object v2, v0, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    .line 1613
    new-instance v2, Lorg/h2/table/RegularTable;

    invoke-direct {v2, v0}, Lorg/h2/table/RegularTable;-><init>(Lorg/h2/command/ddl/CreateTableData;)V

    iput-object v2, p0, Lorg/h2/store/PageStore;->metaTable:Lorg/h2/table/RegularTable;

    .line 1614
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaTable:Lorg/h2/table/RegularTable;

    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/table/RegularTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageDataIndex;

    iput-object v0, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    .line 1616
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1617
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private openNew()V
    .locals 4

    .line 300
    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {p0, v0}, Lorg/h2/store/PageStore;->setPageSize(I)V

    .line 301
    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-static {v0}, Lorg/h2/store/PageFreeList;->getPagesAddressed(I)I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStore;->freeListPagesPerList:I

    .line 302
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    iget-object v1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/store/PageStore;->accessMode:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/engine/Database;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    .line 303
    invoke-direct {p0}, Lorg/h2/store/PageStore;->lockFile()V

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    .line 305
    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeStaticHeader()V

    .line 306
    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeVariableHeader()V

    .line 307
    new-instance v1, Lorg/h2/store/PageLog;

    invoke-direct {v1, p0}, Lorg/h2/store/PageLog;-><init>(Lorg/h2/store/PageStore;)V

    iput-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v1, 0x5

    .line 308
    invoke-direct {p0, v1}, Lorg/h2/store/PageStore;->increaseFileSize(I)V

    .line 309
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openMetaIndex()V

    .line 310
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v1

    iput v1, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    .line 311
    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    iget v2, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    invoke-virtual {v1, v2, v3}, Lorg/h2/store/PageLog;->openForWriting(IZ)V

    .line 312
    iput-boolean v0, p0, Lorg/h2/store/PageStore;->isNew:Z

    .line 313
    iput-boolean v3, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    .line 314
    invoke-direct {p0}, Lorg/h2/store/PageStore;->increaseFileSize()V

    return-void
.end method

.method private readMetaData()V
    .locals 5

    .line 1621
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    iget-object v1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/h2/index/PageDataIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    .line 1623
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 1624
    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v1

    .line 1625
    invoke-virtual {v1, v4}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/value/Value;->getInt()I

    move-result v4

    if-nez v4, :cond_0

    .line 1627
    iget-object v4, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-direct {p0, v1, v4, v3}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/result/Row;Lorg/h2/engine/Session;Z)V

    goto :goto_0

    .line 1632
    :cond_1
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    iget-object v1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v2, v2}, Lorg/h2/index/PageDataIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    .line 1633
    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1634
    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v1

    .line 1635
    invoke-virtual {v1, v4}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1637
    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-direct {p0, v1, v2, v3}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/result/Row;Lorg/h2/engine/Session;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private readStaticHeader()V
    .locals 5

    .line 877
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    const-wide/16 v1, 0x30

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/FileStore;->seek(J)V

    .line 878
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-static {v0, v2}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;[B)Lorg/h2/store/Data;

    move-result-object v0

    .line 880
    iget-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 882
    iget-wide v1, p0, Lorg/h2/store/PageStore;->readCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/store/PageStore;->readCount:J

    .line 883
    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/h2/store/PageStore;->setPageSize(I)V

    .line 884
    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v1

    .line 885
    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    if-le v1, v2, :cond_0

    .line 891
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->close()V

    .line 892
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setReadOnly(Z)V

    const-string v0, "r"

    .line 893
    iput-object v0, p0, Lorg/h2/store/PageStore;->accessMode:Ljava/lang/String;

    .line 894
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    iget-object v2, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/store/PageStore;->accessMode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lorg/h2/engine/Database;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    :cond_0
    return-void

    :cond_1
    const v0, 0x15fc0

    .line 887
    iget-object v1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readVariableHeader()V
    .locals 6

    .line 899
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 905
    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 906
    invoke-virtual {p0, v1, v0}, Lorg/h2/store/PageStore;->readPage(ILorg/h2/store/Data;)V

    .line 907
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 908
    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    iget v4, p0, Lorg/h2/store/PageStore;->pageSize:I

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 909
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    .line 910
    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 912
    invoke-virtual {v0}, Lorg/h2/store/Data;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/h2/store/PageStore;->writeCountBase:J

    .line 913
    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    iput v1, p0, Lorg/h2/store/PageStore;->logKey:I

    .line 914
    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    iput v1, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    .line 915
    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStore;->logFirstDataPage:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x15fae

    .line 902
    iget-object v1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private recover()Z
    .locals 8

    .line 1391
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "log recover"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1392
    iput-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    .line 1394
    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/store/PageLog;->recover(I)Z

    move-result v1

    and-int/2addr v1, v0

    .line 1395
    iget-object v3, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 1396
    iget-object v3, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1397
    iget-object v5, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v5}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1398
    iget-object v5, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reserve "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 1400
    :cond_0
    invoke-virtual {p0, v4}, Lorg/h2/store/PageStore;->allocatePage(I)V

    goto :goto_0

    .line 1403
    :cond_1
    iget-object v3, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v3, v0}, Lorg/h2/store/PageLog;->recover(I)Z

    move-result v3

    and-int/2addr v1, v3

    .line 1404
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openMetaIndex()V

    .line 1405
    invoke-direct {p0}, Lorg/h2/store/PageStore;->readMetaData()V

    .line 1406
    iget-object v3, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/h2/store/PageLog;->recover(I)Z

    move-result v3

    and-int/2addr v1, v3

    .line 1408
    iget-object v3, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1409
    iget-object v3, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v3}, Lorg/h2/store/PageLog;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1410
    iget-object v3, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v3}, Lorg/h2/store/PageLog;->recoverEnd()V

    .line 1411
    invoke-direct {p0}, Lorg/h2/store/PageStore;->getFirstUncommittedSection()I

    move-result v3

    .line 1412
    iget-object v4, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v4, v3}, Lorg/h2/store/PageLog;->removeUntil(I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 1417
    :goto_2
    iget-object v4, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/index/PageDataIndex;

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 1418
    :goto_3
    iput-boolean v4, p0, Lorg/h2/store/PageStore;->isNew:Z

    .line 1419
    iget-object v4, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/index/PageIndex;

    .line 1420
    invoke-virtual {v5}, Lorg/h2/index/PageIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1422
    iget-object v6, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    if-nez v6, :cond_5

    .line 1423
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    .line 1425
    :cond_5
    iget-object v6, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    invoke-virtual {v5}, Lorg/h2/index/PageIndex;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1427
    :cond_6
    iget-object v6, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/index/PageIndex;->close(Lorg/h2/engine/Session;)V

    goto :goto_4

    :cond_7
    const/4 v4, 0x4

    .line 1431
    invoke-virtual {p0, v4}, Lorg/h2/store/PageStore;->allocatePage(I)V

    .line 1432
    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeIndexRowCounts()V

    .line 1433
    iput-boolean v2, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    const/4 v2, 0x0

    .line 1434
    iput-object v2, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    .line 1436
    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeBack()V

    .line 1438
    iget-object v2, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v2}, Lorg/h2/util/Cache;->clear()V

    .line 1439
    iget-object v2, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1441
    iget-object v2, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1442
    iget-object v2, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 1445
    iget-object v2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Database;->setReadOnly(Z)V

    .line 1447
    :cond_8
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v2, "log recover done"

    invoke-virtual {v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    return v1
.end method

.method private removeMeta(Lorg/h2/result/Row;)V
    .locals 2

    const/4 v0, 0x0

    .line 1643
    invoke-virtual {p1, v0}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    .line 1644
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageIndex;

    .line 1645
    invoke-virtual {v0}, Lorg/h2/index/PageIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/table/Table;->removeIndex(Lorg/h2/index/Index;)V

    .line 1646
    instance-of v1, v0, Lorg/h2/index/PageBtreeIndex;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/h2/index/PageDelegateIndex;

    if-eqz v1, :cond_2

    .line 1647
    :cond_0
    invoke-virtual {v0}, Lorg/h2/index/PageIndex;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1648
    iget-object v1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0}, Lorg/h2/engine/Session;->removeLocalTempTableIndex(Lorg/h2/index/Index;)V

    goto :goto_0

    .line 1650
    :cond_1
    invoke-virtual {v0}, Lorg/h2/index/PageIndex;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/schema/Schema;->remove(Lorg/h2/schema/SchemaObject;)V

    .line 1653
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/index/PageIndex;->remove(Lorg/h2/engine/Session;)V

    .line 1654
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeMetaIndex(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V
    .locals 7

    .line 1842
    invoke-interface {p1}, Lorg/h2/index/Index;->getId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1843
    iget-object v1, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lorg/h2/index/PageDataIndex;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object v1

    .line 1844
    invoke-virtual {v1}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 1849
    iget-object p1, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1, p2, v1}, Lorg/h2/index/PageDataIndex;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    return-void

    :cond_0
    const p2, 0x15fae

    .line 1845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " index: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " table: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " row: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private removeOldTempIndexes()V
    .locals 3

    .line 393
    iget-object v0, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 395
    iget-object v0, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/PageIndex;

    .line 396
    invoke-virtual {v1}, Lorg/h2/index/PageIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/index/PageIndex;->truncate(Lorg/h2/engine/Session;)V

    .line 398
    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/index/PageIndex;->remove(Lorg/h2/engine/Session;)V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    .line 404
    :cond_2
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 405
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private statisticsIncrement(Ljava/lang/String;)V
    .locals 3

    .line 246
    iget-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 248
    iget-object v1, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private swap(III)V
    .locals 3

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    .line 666
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->isUsed(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lorg/h2/store/PageStore;->isUsed(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t swap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 669
    :cond_1
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0, p3}, Lorg/h2/util/Cache;->get(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    check-cast v0, Lorg/h2/store/Page;

    if-eqz v0, :cond_2

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not free: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 673
    :cond_2
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " via "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 677
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->isUsed(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 678
    invoke-virtual {p0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 680
    iget-object v1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p3}, Lorg/h2/store/Page;->moveTo(Lorg/h2/engine/Session;I)V

    .line 682
    :cond_4
    invoke-virtual {p0, p1}, Lorg/h2/store/PageStore;->free(I)V

    :cond_5
    if-eq p3, p2, :cond_9

    .line 685
    invoke-direct {p0, p2}, Lorg/h2/store/PageStore;->isUsed(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 686
    invoke-virtual {p0, p2}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 688
    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2, p1}, Lorg/h2/store/Page;->moveTo(Lorg/h2/engine/Session;I)V

    .line 690
    :cond_6
    invoke-virtual {p0, p2}, Lorg/h2/store/PageStore;->free(I)V

    :cond_7
    if-eqz v0, :cond_9

    .line 693
    invoke-virtual {p0, p3}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 695
    iget-object v0, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0, p2}, Lorg/h2/store/Page;->moveTo(Lorg/h2/engine/Session;I)V

    .line 697
    :cond_8
    invoke-virtual {p0, p3}, Lorg/h2/store/PageStore;->free(I)V

    :cond_9
    return-void
.end method

.method private writeBack()V
    .locals 4

    .line 415
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0}, Lorg/h2/util/Cache;->getAllChanged()Ljava/util/ArrayList;

    move-result-object v0

    .line 416
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 417
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 418
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/util/CacheObject;

    invoke-virtual {p0, v3}, Lorg/h2/store/PageStore;->writeBack(Lorg/h2/util/CacheObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeIndexRowCounts()V
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/PageIndex;

    .line 410
    invoke-virtual {v1}, Lorg/h2/index/PageIndex;->writeRowCount()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeStaticHeader()V
    .locals 4

    .line 951
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    iget v1, p0, Lorg/h2/store/PageStore;->pageSize:I

    add-int/lit8 v1, v1, -0x30

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;[B)Lorg/h2/store/Data;

    move-result-object v0

    .line 952
    iget v1, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    const/4 v1, 0x3

    .line 953
    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 954
    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 955
    iget-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    const-wide/16 v2, 0x30

    invoke-virtual {v1, v2, v3}, Lorg/h2/store/FileStore;->seek(J)V

    .line 956
    iget-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    iget v2, p0, Lorg/h2/store/PageStore;->pageSize:I

    add-int/lit8 v2, v2, -0x30

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/h2/store/FileStore;->write([BII)V

    .line 957
    iget-wide v0, p0, Lorg/h2/store/PageStore;->writeCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/PageStore;->writeCount:J

    return-void
.end method

.method private writeVariableHeader()V
    .locals 6

    .line 979
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "writeVariableHeader"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 980
    iget v0, p0, Lorg/h2/store/PageStore;->logMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 981
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->sync()V

    .line 983
    :cond_0
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    const/4 v1, 0x0

    .line 984
    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    .line 985
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->getWriteCountTotal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/h2/store/Data;->writeLong(J)V

    .line 986
    iget v2, p0, Lorg/h2/store/PageStore;->logKey:I

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 987
    iget v2, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 988
    iget v2, p0, Lorg/h2/store/PageStore;->logFirstDataPage:I

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 989
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 990
    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    iget v4, p0, Lorg/h2/store/PageStore;->pageSize:I

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 991
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/Data;->setInt(II)V

    .line 992
    iget-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v3, p0, Lorg/h2/store/PageStore;->pageSize:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/h2/store/FileStore;->seek(J)V

    .line 993
    iget-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    iget v4, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {v2, v3, v1, v4}, Lorg/h2/store/FileStore;->write([BII)V

    .line 994
    iget-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v3, p0, Lorg/h2/store/PageStore;->pageSize:I

    iget v4, p0, Lorg/h2/store/PageStore;->pageSize:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/h2/store/FileStore;->seek(J)V

    .line 995
    iget-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    iget v3, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {v2, v0, v1, v3}, Lorg/h2/store/FileStore;->write([BII)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addIndex(Lorg/h2/index/PageIndex;)V
    .locals 2

    monitor-enter p0

    .line 1755
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/index/PageIndex;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1754
    monitor-exit p0

    throw p1
.end method

.method public addMeta(Lorg/h2/index/PageIndex;Lorg/h2/engine/Session;)V
    .locals 11

    .line 1765
    invoke-virtual {p1}, Lorg/h2/index/PageIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    .line 1766
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_0

    .line 1767
    invoke-virtual {v0}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1770
    iget-object v1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    monitor-enter v1

    .line 1771
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1772
    :try_start_1
    iget-object v2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p2}, Lorg/h2/engine/Database;->verifyMetaLocked(Lorg/h2/engine/Session;)V

    .line 1773
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1774
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1773
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 1774
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 1777
    :cond_0
    :goto_0
    monitor-enter p0

    .line 1778
    :try_start_5
    instance-of v1, p1, Lorg/h2/index/PageDataIndex;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 1780
    :goto_1
    invoke-virtual {p1}, Lorg/h2/index/PageIndex;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    .line 1781
    new-instance v5, Lorg/h2/util/StatementBuilder;

    invoke-direct {v5}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 1782
    array-length v6, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v4, v7

    const-string v9, ","

    .line 1783
    invoke-virtual {v5, v9}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 1784
    iget-object v9, v8, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v9}, Lorg/h2/table/Column;->getColumnId()I

    move-result v9

    int-to-long v9, v9

    .line 1785
    invoke-virtual {v5, v9, v10}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    .line 1786
    iget v8, v8, Lorg/h2/table/IndexColumn;->sortType:I

    if-eqz v8, :cond_2

    const/16 v9, 0x2f

    .line 1788
    invoke-virtual {v5, v9}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    int-to-long v8, v8

    .line 1789
    invoke-virtual {v5, v8, v9}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1792
    :cond_3
    invoke-virtual {v5}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1793
    invoke-virtual {v0}, Lorg/h2/table/Table;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v5

    .line 1794
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/value/CompareMode;->getStrength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1795
    invoke-virtual {v0}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1796
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "temp"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1798
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1799
    instance-of v7, p1, Lorg/h2/index/PageDelegateIndex;

    if-eqz v7, :cond_5

    .line 1800
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "d"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1802
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/value/CompareMode;->isBinaryUnsigned()Z

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1803
    iget-object v6, p0, Lorg/h2/store/PageStore;->metaTable:Lorg/h2/table/RegularTable;

    invoke-virtual {v6}, Lorg/h2/table/RegularTable;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v6

    .line 1804
    invoke-virtual {p1}, Lorg/h2/index/PageIndex;->getId()I

    move-result v7

    invoke-static {v7}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    .line 1805
    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    const/4 v1, 0x2

    .line 1806
    invoke-virtual {v0}, Lorg/h2/table/Table;->getId()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    const/4 v0, 0x3

    .line 1807
    invoke-virtual {p1}, Lorg/h2/index/PageIndex;->getRootPageId()I

    move-result v1

    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    const/4 v0, 0x4

    .line 1808
    invoke-static {v5}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    const/4 v0, 0x5

    .line 1809
    invoke-static {v4}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    .line 1810
    invoke-virtual {p1}, Lorg/h2/index/PageIndex;->getId()I

    move-result p1

    add-int/2addr p1, v3

    int-to-long v0, p1

    invoke-virtual {v6, v0, v1}, Lorg/h2/result/Row;->setKey(J)V

    .line 1811
    iget-object p1, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1, p2, v6}, Lorg/h2/index/PageDataIndex;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 1812
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method allocateIfIndexRoot(IILorg/h2/result/Row;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x3

    .line 1530
    invoke-virtual {p3, p2}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p2

    .line 1531
    iget-object p3, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    if-nez p3, :cond_0

    .line 1532
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    .line 1534
    :cond_0
    iget-object p3, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public declared-synchronized allocatePage()I
    .locals 3

    monitor-enter p0

    .line 1178
    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openForWriting()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1179
    invoke-direct {p0, v0, v1}, Lorg/h2/store/PageStore;->allocatePage(Lorg/h2/util/BitField;I)I

    move-result v0

    .line 1180
    iget-boolean v1, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v1, :cond_0

    .line 1181
    iget v1, p0, Lorg/h2/store/PageStore;->logMode:I

    if-eqz v1, :cond_0

    .line 1182
    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    iget-object v2, p0, Lorg/h2/store/PageStore;->emptyPage:Lorg/h2/store/Data;

    invoke-virtual {v1, v0, v2}, Lorg/h2/store/PageLog;->addUndo(ILorg/h2/store/Data;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 1177
    monitor-exit p0

    throw v0
.end method

.method allocatePage(I)V
    .locals 1

    .line 1146
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeListForPage(I)Lorg/h2/store/PageFreeList;

    move-result-object v0

    .line 1147
    invoke-virtual {v0, p1}, Lorg/h2/store/PageFreeList;->allocate(I)V

    return-void
.end method

.method allocatePages(Lorg/h2/util/IntArray;ILorg/h2/util/BitField;I)V
    .locals 1

    .line 1164
    invoke-virtual {p1}, Lorg/h2/util/IntArray;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lorg/h2/util/IntArray;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1166
    invoke-direct {p0, p3, p4}, Lorg/h2/store/PageStore;->allocatePage(Lorg/h2/util/BitField;I)I

    move-result p4

    .line 1168
    invoke-virtual {p1, p4}, Lorg/h2/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized checkpoint()V
    .locals 9

    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "checkpoint"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/h2/store/PageStore;->readMode:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lorg/h2/store/PageStore;->backupLevel:I

    if-lez v0, :cond_0

    goto/16 :goto_2

    .line 432
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkPowerOff()V

    .line 433
    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeIndexRowCounts()V

    .line 435
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    .line 436
    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeBack()V

    .line 438
    invoke-direct {p0}, Lorg/h2/store/PageStore;->getFirstUncommittedSection()I

    move-result v0

    .line 440
    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v1, v0}, Lorg/h2/store/PageLog;->removeUntil(I)V

    .line 443
    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeBack()V

    .line 446
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    .line 448
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "writeFree"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x10

    .line 451
    new-array v1, v0, [B

    .line 452
    iget v2, p0, Lorg/h2/store/PageStore;->pageSize:I

    new-array v2, v2, [B

    const/4 v3, 0x3

    .line 453
    :goto_0
    iget v4, p0, Lorg/h2/store/PageStore;->pageCount:I

    if-ge v3, v4, :cond_6

    .line 454
    invoke-direct {p0, v3}, Lorg/h2/store/PageStore;->isUsed(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 455
    iget-object v4, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-virtual {v4, v3}, Lorg/h2/util/BitField;->clear(I)V

    goto :goto_1

    .line 456
    :cond_2
    iget-object v4, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-virtual {v4, v3}, Lorg/h2/util/BitField;->get(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 457
    iget-object v4, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v4}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 458
    iget-object v4, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "free "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 460
    :cond_3
    iget-object v4, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    int-to-long v5, v3

    iget v7, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long v7, v5, v7

    invoke-virtual {v4, v7, v8}, Lorg/h2/store/FileStore;->seek(J)V

    .line 461
    iget-object v4, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7, v0}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 462
    aget-byte v4, v1, v7

    if-eqz v4, :cond_4

    .line 463
    iget-object v4, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v8, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v5, v8

    invoke-virtual {v4, v5, v6}, Lorg/h2/store/FileStore;->seek(J)V

    .line 464
    iget-object v4, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v5, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {v4, v2, v7, v5}, Lorg/h2/store/FileStore;->write([BII)V

    .line 465
    iget-wide v4, p0, Lorg/h2/store/PageStore;->writeCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/h2/store/PageStore;->writeCount:J

    .line 467
    :cond_4
    iget-object v4, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-virtual {v4, v3}, Lorg/h2/util/BitField;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    :cond_6
    monitor-exit p0

    return-void

    .line 430
    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 425
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 1003
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->close()V

    .line 1006
    iput-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    .line 1008
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 1010
    :try_start_1
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->releaseLock()V

    .line 1011
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    :try_start_2
    iput-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1016
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 1002
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit(Lorg/h2/engine/Session;)V
    .locals 8

    monitor-enter p0

    .line 1474
    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/PageStore;->checkOpen()V

    .line 1475
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openForWriting()V

    .line 1476
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/store/PageLog;->commit(I)V

    .line 1477
    iget-object p1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {p1}, Lorg/h2/store/PageLog;->getSize()J

    move-result-wide v0

    .line 1478
    iget-wide v2, p0, Lorg/h2/store/PageStore;->logSizeBase:J

    const/4 p1, 0x0

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/h2/store/PageStore;->maxLogSize:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    .line 1479
    iget-object p1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {p1}, Lorg/h2/store/PageLog;->getLogFirstSectionId()I

    move-result p1

    .line 1480
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->checkpoint()V

    .line 1481
    iget-object v2, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v2}, Lorg/h2/store/PageLog;->getLogSectionId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, p1

    const/4 p1, 0x2

    if-gt v2, p1, :cond_0

    .line 1485
    monitor-exit p0

    return-void

    .line 1487
    :cond_0
    :try_start_1
    iget-object p1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {p1}, Lorg/h2/store/PageLog;->getSize()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-ltz p1, :cond_3

    .line 1488
    iget-wide v4, p0, Lorg/h2/store/PageStore;->maxLogSize:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_1

    goto :goto_0

    .line 1492
    :cond_1
    iget-boolean p1, p0, Lorg/h2/store/PageStore;->ignoreBigLog:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 1493
    iput-boolean p1, p0, Lorg/h2/store/PageStore;->ignoreBigLog:Z

    .line 1494
    iget-object p1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction log could not be truncated; size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1498
    :cond_2
    iget-object p1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {p1}, Lorg/h2/store/PageLog;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/PageStore;->logSizeBase:J

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 1489
    iput-boolean p1, p0, Lorg/h2/store/PageStore;->ignoreBigLog:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1490
    monitor-exit p0

    return-void

    .line 1500
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1473
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized compact(I)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    monitor-enter p0

    .line 479
    :try_start_0
    iget-object v2, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/DbSettings;->pageStoreTrim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v2, :cond_0

    .line 480
    monitor-exit p0

    return-void

    .line 482
    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lorg/h2/store/PageStore;->readMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 484
    monitor-exit p0

    return-void

    .line 486
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->openForWriting()V

    .line 489
    iget v2, v1, Lorg/h2/store/PageStore;->pageCount:I

    invoke-direct {v1, v2}, Lorg/h2/store/PageStore;->getFreeListId(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_0
    if-ltz v2, :cond_3

    .line 490
    invoke-direct {v1, v2}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/store/PageFreeList;->getLastUsed()I

    move-result v4

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 497
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    .line 498
    iget-object v2, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v2}, Lorg/h2/store/PageLog;->free()V

    const/4 v2, 0x1

    .line 499
    iput-boolean v2, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    .line 501
    :try_start_3
    iput v5, v1, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    .line 502
    iget v5, v1, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    invoke-virtual {v1, v5}, Lorg/h2/store/PageStore;->allocatePage(I)V

    .line 503
    iget-object v5, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    iget v7, v1, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    invoke-virtual {v5, v7, v2}, Lorg/h2/store/PageLog;->openForWriting(IZ)V

    .line 505
    iget-object v5, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v5}, Lorg/h2/store/PageLog;->checkpoint()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 507
    :try_start_4
    iput-boolean v6, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/16 v5, 0x52

    if-ne v0, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/16 v9, 0x54

    if-ne v0, v9, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 515
    :goto_3
    iget-object v9, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v9}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v9

    iget-boolean v9, v9, Lorg/h2/engine/DbSettings;->defragAlways:Z

    if-eqz v9, :cond_6

    const/4 v0, 0x1

    const/4 v5, 0x1

    .line 519
    :cond_6
    iget-object v9, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v9}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v9

    iget v9, v9, Lorg/h2/engine/DbSettings;->maxCompactTime:I

    .line 520
    iget-object v10, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v10}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v10

    iget v10, v10, Lorg/h2/engine/DbSettings;->maxCompactCount:I

    const v11, 0x7fffffff

    if-nez v5, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    const v9, 0x7fffffff

    const v10, 0x7fffffff

    :cond_8
    if-eqz v5, :cond_9

    const/16 v5, 0x600

    goto :goto_4

    :cond_9
    const/4 v5, 0x1

    :goto_4
    const/4 v11, 0x5

    move v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x5

    :goto_5
    if-le v12, v11, :cond_10

    if-ge v13, v10, :cond_10

    sub-int v15, v12, v5

    add-int/lit8 v16, v15, 0x1

    move/from16 v21, v16

    move/from16 v16, v13

    move/from16 v13, v21

    :goto_6
    if-gt v13, v12, :cond_f

    if-le v13, v11, :cond_e

    .line 531
    invoke-direct {v1, v13}, Lorg/h2/store/PageStore;->isUsed(I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 532
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 533
    :try_start_5
    invoke-direct {v1, v14}, Lorg/h2/store/PageStore;->getFirstFree(I)I

    move-result v14

    if-eq v14, v3, :cond_d

    if-lt v14, v13, :cond_a

    goto :goto_7

    .line 538
    :cond_a
    invoke-direct {v1, v13, v14}, Lorg/h2/store/PageStore;->compact(II)Z

    move-result v17

    if-eqz v17, :cond_b

    add-int/lit8 v16, v16, 0x1

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move/from16 v19, v12

    int-to-long v11, v9

    add-long/2addr v11, v7

    cmp-long v20, v17, v11

    if-lez v20, :cond_c

    .line 543
    monitor-exit p0

    goto :goto_8

    :cond_b
    move/from16 v19, v12

    .line 546
    :cond_c
    monitor-exit p0

    goto :goto_9

    .line 536
    :cond_d
    :goto_7
    monitor-exit p0

    :goto_8
    move v13, v10

    goto :goto_a

    :catchall_0
    move-exception v0

    .line 546
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :cond_e
    move/from16 v19, v12

    :goto_9
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v19

    const/4 v11, 0x5

    goto :goto_6

    :cond_f
    move/from16 v13, v16

    :goto_a
    move v12, v15

    const/4 v11, 0x5

    goto :goto_5

    :cond_10
    if-eqz v0, :cond_1b

    .line 551
    iget-object v0, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    .line 552
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    .line 553
    iget-object v0, v1, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0}, Lorg/h2/util/Cache;->clear()V

    .line 554
    iget-object v0, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v6}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 555
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    .line 556
    new-instance v5, Lorg/h2/util/IntIntHashMap;

    invoke-direct {v5}, Lorg/h2/util/IntIntHashMap;-><init>()V

    iput-object v5, v1, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    .line 557
    iput-boolean v2, v1, Lorg/h2/store/PageStore;->recordPageReads:Z

    .line 558
    iget-object v5, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v5}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v5

    .line 559
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/table/Table;

    .line 560
    invoke-virtual {v7}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "TABLE"

    invoke-virtual {v7}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 561
    invoke-virtual {v7, v5}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v9

    .line 562
    invoke-interface {v9, v5, v8, v8}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v10

    .line 563
    :goto_b
    invoke-interface {v10}, Lorg/h2/index/Cursor;->next()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 564
    invoke-interface {v10}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    goto :goto_b

    .line 566
    :cond_12
    invoke-virtual {v7}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/h2/index/Index;

    if-eq v10, v9, :cond_13

    .line 567
    invoke-interface {v10}, Lorg/h2/index/Index;->canScan()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 568
    invoke-interface {v10, v5, v8, v8}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v10

    .line 569
    :goto_c
    invoke-interface {v10}, Lorg/h2/index/Cursor;->next()Z

    move-result v11

    if-eqz v11, :cond_13

    goto :goto_c

    .line 576
    :cond_14
    iput-boolean v6, v1, Lorg/h2/store/PageStore;->recordPageReads:Z

    const/4 v0, 0x4

    .line 579
    iget-object v5, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    const/4 v7, 0x4

    const/4 v9, 0x0

    :goto_d
    if-ge v0, v5, :cond_1a

    .line 580
    iget-object v10, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v10}, Lorg/h2/store/PageLog;->checkpoint()V

    .line 581
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    .line 582
    iget-object v10, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 583
    invoke-virtual {v1, v10}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v11

    .line 584
    invoke-virtual {v11}, Lorg/h2/store/Page;->canMove()Z

    move-result v11

    if-nez v11, :cond_15

    goto :goto_e

    :cond_15
    add-int/2addr v7, v2

    .line 588
    invoke-virtual {v1, v7}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v11

    if-eqz v11, :cond_16

    .line 589
    invoke-virtual {v11}, Lorg/h2/store/Page;->canMove()Z

    move-result v11

    if-eqz v11, :cond_15

    :cond_16
    if-ne v7, v10, :cond_17

    goto :goto_e

    .line 596
    :cond_17
    invoke-direct {v1, v9}, Lorg/h2/store/PageStore;->getFirstFree(I)I

    move-result v9

    if-ne v9, v3, :cond_18

    const-string v11, "no free page for defrag"

    .line 598
    invoke-static {v11}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 600
    :cond_18
    iget-object v11, v1, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v11}, Lorg/h2/util/Cache;->clear()V

    .line 601
    invoke-direct {v1, v10, v7, v9}, Lorg/h2/store/PageStore;->swap(III)V

    .line 602
    iget-object v11, v1, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v11, v7}, Lorg/h2/util/IntIntHashMap;->get(I)I

    move-result v11

    if-eq v11, v3, :cond_19

    .line 604
    iget-object v12, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v12, v1, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v12, v10, v11}, Lorg/h2/util/IntIntHashMap;->put(II)V

    .line 607
    :cond_19
    iget-object v10, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v10, v1, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v10, v7, v0}, Lorg/h2/util/IntIntHashMap;->put(II)V

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 610
    :cond_1a
    iput-object v8, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    .line 611
    iput-object v8, v1, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    .line 614
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/h2/store/PageStore;->checkpoint()V

    .line 615
    iget-object v0, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    .line 616
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeIndexRowCounts()V

    .line 617
    iget-object v0, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    .line 618
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    .line 619
    iget-object v0, v1, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0}, Lorg/h2/store/PageStore;->commit(Lorg/h2/engine/Session;)V

    .line 620
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    .line 621
    iget-object v0, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    .line 623
    iget-object v0, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->free()V

    .line 625
    iput-boolean v2, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 627
    :try_start_7
    iget v0, v1, Lorg/h2/store/PageStore;->logKey:I

    add-int/2addr v0, v2

    iput v0, v1, Lorg/h2/store/PageStore;->logKey:I

    invoke-virtual {v1, v0, v6, v6}, Lorg/h2/store/PageStore;->setLogFirstPage(III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 629
    :try_start_8
    iput-boolean v6, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z

    .line 631
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    .line 632
    iget v0, v1, Lorg/h2/store/PageStore;->pageCount:I

    invoke-direct {v1, v0}, Lorg/h2/store/PageStore;->getFreeListId(I)I

    move-result v0

    :goto_f
    if-ltz v0, :cond_1d

    .line 633
    invoke-direct {v1, v0}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/store/PageFreeList;->getLastUsed()I

    move-result v4

    if-eq v4, v3, :cond_1c

    goto :goto_10

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1d
    :goto_10
    add-int/2addr v4, v2

    .line 639
    iget v0, v1, Lorg/h2/store/PageStore;->pageCount:I

    if-ge v4, v0, :cond_1e

    .line 640
    iget-object v0, v1, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    iget v2, v1, Lorg/h2/store/PageStore;->pageCount:I

    invoke-virtual {v0, v4, v2, v6}, Lorg/h2/util/BitField;->set(IIZ)V

    .line 642
    :cond_1e
    iput v4, v1, Lorg/h2/store/PageStore;->pageCount:I

    .line 644
    iget-object v0, v1, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 645
    iget-object v0, v1, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pageCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/h2/store/PageStore;->pageCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 646
    iget v0, v1, Lorg/h2/store/PageStore;->pageCount:I

    int-to-long v2, v0

    iget v0, v1, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v2, v0

    .line 647
    iget-object v0, v1, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1f

    .line 648
    iget-object v0, v1, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0, v2, v3}, Lorg/h2/store/FileStore;->setLength(J)V

    .line 649
    iget-wide v2, v1, Lorg/h2/store/PageStore;->writeCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/h2/store/PageStore;->writeCount:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 651
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 629
    :try_start_9
    iput-boolean v6, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z

    throw v0

    :catchall_2
    move-exception v0

    .line 507
    iput-boolean v6, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    .line 478
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyDirect(ILjava/io/OutputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 261
    :try_start_0
    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    new-array v0, v0, [B

    .line 262
    iget v1, p0, Lorg/h2/store/PageStore;->pageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v1, :cond_0

    const/4 p1, -0x1

    .line 263
    monitor-exit p0

    return p1

    .line 265
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    int-to-long v2, p1

    iget v4, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/h2/store/FileStore;->seek(J)V

    .line 266
    iget-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v2, p0, Lorg/h2/store/PageStore;->pageSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/h2/store/FileStore;->readFullyDirect([BII)V

    .line 267
    iget-wide v1, p0, Lorg/h2/store/PageStore;->readCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, p0, Lorg/h2/store/PageStore;->readCount:J

    .line 268
    iget v1, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, 0x1

    .line 269
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 260
    monitor-exit p0

    throw p1
.end method

.method public createData()Lorg/h2/store/Data;
    .locals 2

    .line 1291
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    iget v1, p0, Lorg/h2/store/PageStore;->pageSize:I

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;[B)Lorg/h2/store/Data;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flushLog()V
    .locals 1

    monitor-enter p0

    .line 1020
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1019
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized free(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1237
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/h2/store/PageStore;->free(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1236
    monitor-exit p0

    throw p1
.end method

.method free(IZ)V
    .locals 1

    .line 1247
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    .line 1250
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->remove(I)Z

    .line 1251
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1253
    iget p2, p0, Lorg/h2/store/PageStore;->logMode:I

    if-eqz p2, :cond_0

    .line 1254
    iget-object p2, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/h2/store/PageLog;->addUndo(ILorg/h2/store/Data;)V

    .line 1257
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->freePage(I)V

    .line 1258
    iget-boolean p2, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-eqz p2, :cond_1

    .line 1259
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    .line 1260
    iget-object p2, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1262
    iget-object p2, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1263
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->getLogPos()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 1264
    invoke-virtual {p0, p1}, Lorg/h2/store/PageStore;->allocatePage(I)V

    :cond_1
    return-void
.end method

.method freeUnused(I)V
    .locals 3

    .line 1277
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeUnused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 1280
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->remove(I)Z

    .line 1281
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->freePage(I)V

    .line 1282
    iget-object v0, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->set(I)V

    return-void
.end method

.method public getCache()Lorg/h2/util/Cache;
    .locals 1

    .line 1955
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    return-object v0
.end method

.method public getChangeCount()J
    .locals 2

    .line 2012
    iget-wide v0, p0, Lorg/h2/store/PageStore;->changeCount:J

    return-wide v0
.end method

.method getDatabase()Lorg/h2/engine/Database;
    .locals 1

    .line 1382
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    return-object v0
.end method

.method public getInDoubtTransactions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/InDoubtTransaction;",
            ">;"
        }
    .end annotation

    .line 1886
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLogMode()I
    .locals 1

    .line 2020
    iget v0, p0, Lorg/h2/store/PageStore;->logMode:I

    return v0
.end method

.method public getObjectIds()Lorg/h2/util/BitField;
    .locals 4

    .line 2028
    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    .line 2029
    iget-object v1, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lorg/h2/index/PageDataIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v1

    .line 2030
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/h2/index/Cursor;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2031
    invoke-interface {v1}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v2

    const/4 v3, 0x0

    .line 2032
    invoke-virtual {v2, v3}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-lez v2, :cond_0

    .line 2034
    invoke-virtual {v0, v2}, Lorg/h2/util/BitField;->set(I)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public declared-synchronized getPage(I)Lorg/h2/store/Page;
    .locals 5

    monitor-enter p0

    .line 743
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->get(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    check-cast v0, Lorg/h2/store/Page;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 745
    monitor-exit p0

    return-object v0

    .line 748
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    .line 749
    invoke-virtual {p0, p1, v0}, Lorg/h2/store/PageStore;->readPage(ILorg/h2/store/Data;)V

    .line 750
    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 752
    monitor-exit p0

    return-object p1

    .line 754
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    .line 755
    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    .line 756
    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    iget v3, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-static {v2, p1, v3}, Lorg/h2/store/PageStore;->checksumTest([BII)Z

    move-result v2

    const v3, 0x15fae

    if-eqz v2, :cond_f

    and-int/lit8 v2, v1, -0x11

    packed-switch v2, :pswitch_data_0

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 851
    :pswitch_0
    invoke-static {p0, v0, p1}, Lorg/h2/store/PageStreamData;->read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/PageStreamData;

    move-result-object p1

    goto/16 :goto_0

    .line 848
    :pswitch_1
    invoke-static {p0, v0, p1}, Lorg/h2/store/PageStreamTrunk;->read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/PageStreamTrunk;

    move-result-object p1

    goto/16 :goto_0

    .line 762
    :pswitch_2
    invoke-static {p0, v0, p1}, Lorg/h2/store/PageFreeList;->read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/PageFreeList;

    move-result-object p1

    goto/16 :goto_0

    .line 829
    :pswitch_3
    invoke-virtual {v0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    .line 830
    iget-object v2, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/PageIndex;

    if-eqz v2, :cond_4

    .line 835
    instance-of v4, v2, Lorg/h2/index/PageBtreeIndex;

    if-eqz v4, :cond_3

    .line 839
    check-cast v2, Lorg/h2/index/PageBtreeIndex;

    .line 840
    iget-object v1, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeIndex;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " read"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/store/PageStore;->statisticsIncrement(Ljava/lang/String;)V

    .line 844
    :cond_2
    invoke-static {v2, v0, p1}, Lorg/h2/index/PageBtreeNode;->read(Lorg/h2/index/PageBtreeIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;

    move-result-object p1

    goto/16 :goto_0

    .line 836
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not a btree index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 832
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index not found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 810
    :pswitch_4
    invoke-virtual {v0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    .line 811
    iget-object v2, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/PageIndex;

    if-eqz v2, :cond_7

    .line 816
    instance-of v4, v2, Lorg/h2/index/PageBtreeIndex;

    if-eqz v4, :cond_6

    .line 820
    check-cast v2, Lorg/h2/index/PageBtreeIndex;

    .line 821
    iget-object v1, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeIndex;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " read"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/store/PageStore;->statisticsIncrement(Ljava/lang/String;)V

    .line 825
    :cond_5
    invoke-static {v2, v0, p1}, Lorg/h2/index/PageBtreeLeaf;->read(Lorg/h2/index/PageBtreeIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;

    move-result-object p1

    goto/16 :goto_0

    .line 817
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not a btree index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 813
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index not found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 803
    :pswitch_5
    invoke-static {p0, v0, p1}, Lorg/h2/index/PageDataOverflow;->read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/Page;

    move-result-object p1

    .line 804
    iget-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    const-string v0, "overflow read"

    .line 805
    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->statisticsIncrement(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 784
    :pswitch_6
    invoke-virtual {v0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    .line 785
    iget-object v2, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/PageIndex;

    if-eqz v2, :cond_a

    .line 790
    instance-of v4, v2, Lorg/h2/index/PageDataIndex;

    if-eqz v4, :cond_9

    .line 794
    check-cast v2, Lorg/h2/index/PageDataIndex;

    .line 795
    iget-object v1, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v1, :cond_8

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " read"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/store/PageStore;->statisticsIncrement(Ljava/lang/String;)V

    .line 799
    :cond_8
    invoke-static {v2, v0, p1}, Lorg/h2/index/PageDataNode;->read(Lorg/h2/index/PageDataIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;

    move-result-object p1

    goto/16 :goto_0

    .line 791
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not a data index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 787
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index not found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 765
    :pswitch_7
    invoke-virtual {v0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    .line 766
    iget-object v2, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/PageIndex;

    if-eqz v2, :cond_e

    .line 771
    instance-of v4, v2, Lorg/h2/index/PageDataIndex;

    if-eqz v4, :cond_d

    .line 775
    check-cast v2, Lorg/h2/index/PageDataIndex;

    .line 776
    iget-object v1, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v1, :cond_b

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " read"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/store/PageStore;->statisticsIncrement(Ljava/lang/String;)V

    .line 780
    :cond_b
    invoke-static {v2, v0, p1}, Lorg/h2/index/PageDataLeaf;->read(Lorg/h2/index/PageDataIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;

    move-result-object p1

    .line 857
    :cond_c
    :goto_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->put(Lorg/h2/util/CacheObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 858
    monitor-exit p0

    return-object p1

    .line 772
    :cond_d
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not a data index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 768
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index not found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 854
    :goto_1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_f
    const-string p1, "wrong checksum"

    .line 757
    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 742
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageCount()I
    .locals 1

    .line 1344
    iget v0, p0, Lorg/h2/store/PageStore;->pageCount:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 1335
    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    return v0
.end method

.method public getPageStoreSession()Lorg/h2/engine/Session;
    .locals 1

    .line 2041
    iget-object v0, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public getReadCount()J
    .locals 2

    .line 1928
    iget-wide v0, p0, Lorg/h2/store/PageStore;->readCount:J

    return-wide v0
.end method

.method public getRootPageId(I)I
    .locals 1

    .line 1951
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaRootPageId:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/IntIntHashMap;->get(I)I

    move-result p1

    return p1
.end method

.method public getTrace()Lorg/h2/message/Trace;
    .locals 1

    .line 1037
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    return-object v0
.end method

.method public getWriteCount()J
    .locals 2

    .line 1919
    iget-wide v0, p0, Lorg/h2/store/PageStore;->writeCount:J

    return-wide v0
.end method

.method public getWriteCountTotal()J
    .locals 4

    .line 1910
    iget-wide v0, p0, Lorg/h2/store/PageStore;->writeCount:J

    iget-wide v2, p0, Lorg/h2/store/PageStore;->writeCountBase:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public incrementChangeCount()V
    .locals 5

    .line 2000
    iget-wide v0, p0, Lorg/h2/store/PageStore;->changeCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/PageStore;->changeCount:J

    .line 2001
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/h2/store/PageStore;->changeCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "changeCount has wrapped"

    .line 2002
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public isNew()Z
    .locals 1

    .line 1518
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->isNew:Z

    return v0
.end method

.method public isRecoveryRunning()Z
    .locals 1

    .line 1895
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    return v0
.end method

.method public declared-synchronized logAddOrRemoveRow(Lorg/h2/engine/Session;ILorg/h2/result/Row;Z)V
    .locals 1

    monitor-enter p0

    .line 1461
    :try_start_0
    iget v0, p0, Lorg/h2/store/PageStore;->logMode:I

    if-eqz v0, :cond_0

    .line 1462
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v0, :cond_0

    .line 1463
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/h2/store/PageLog;->logAddOrRemoveRow(Lorg/h2/engine/Session;ILorg/h2/result/Row;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1460
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized logTruncate(Lorg/h2/engine/Session;I)V
    .locals 1

    monitor-enter p0

    .line 1938
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v0, :cond_0

    .line 1939
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openForWriting()V

    .line 1940
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/PageLog;->logTruncate(Lorg/h2/engine/Session;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1937
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V
    .locals 1

    monitor-enter p0

    .line 1057
    :try_start_0
    iget v0, p0, Lorg/h2/store/PageStore;->logMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1058
    monitor-exit p0

    return-void

    .line 1060
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/h2/store/PageStore;->checkOpen()V

    .line 1061
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    .line 1062
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v0, :cond_2

    .line 1063
    invoke-virtual {p1}, Lorg/h2/store/Page;->getPos()I

    move-result p1

    .line 1064
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageLog;->getUndo(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    .line 1066
    invoke-virtual {p0, p1}, Lorg/h2/store/PageStore;->readPage(I)Lorg/h2/store/Data;

    move-result-object p2

    .line 1068
    :cond_1
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openForWriting()V

    .line 1069
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/PageLog;->addUndo(ILorg/h2/store/Data;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1056
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized open()V
    .locals 5

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaRootPageId:Lorg/h2/util/IntIntHashMap;

    const/4 v1, -0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/IntIntHashMap;->put(II)V

    .line 278
    iget-object v0, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x140

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 281
    iget-object v2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 286
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openNew()V

    goto :goto_0

    :cond_0
    const v2, 0x15fae

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 288
    :cond_1
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openExisting()V

    goto :goto_0

    .line 291
    :cond_2
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openNew()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 294
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->close()V

    .line 295
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1509
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/PageLog;->prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1510
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1508
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readPage(I)Lorg/h2/store/Data;
    .locals 1

    monitor-enter p0

    .line 1301
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    .line 1302
    invoke-virtual {p0, p1, v0}, Lorg/h2/store/PageStore;->readPage(ILorg/h2/store/Data;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 1300
    monitor-exit p0

    throw p1
.end method

.method readPage(ILorg/h2/store/Data;)V
    .locals 3

    .line 1313
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recordPageReads:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 1314
    iget-object v0, p0, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/IntIntHashMap;->get(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1316
    iget-object v0, p0, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    iget-object v1, p0, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/util/IntIntHashMap;->put(II)V

    .line 1317
    iget-object v0, p0, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-ltz p1, :cond_1

    .line 1320
    iget v0, p0, Lorg/h2/store/PageStore;->pageCount:I

    if-ge p1, v0, :cond_1

    .line 1324
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    int-to-long v1, p1

    iget p1, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/FileStore;->seek(J)V

    .line 1325
    iget-object p1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x0

    iget v1, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 1326
    iget-wide p1, p0, Lorg/h2/store/PageStore;->readCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/store/PageStore;->readCount:J

    return-void

    :cond_1
    const p2, 0x15fae

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/h2/store/PageStore;->pageCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method redo(ILorg/h2/result/Row;Z)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    .line 1566
    iget-object v0, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/result/Row;Lorg/h2/engine/Session;Z)V

    goto :goto_0

    .line 1568
    :cond_0
    invoke-direct {p0, p2}, Lorg/h2/store/PageStore;->removeMeta(Lorg/h2/result/Row;)V

    .line 1571
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    if-eqz v0, :cond_3

    .line 1576
    invoke-interface {v0}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 1578
    iget-object p3, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {p1, p3, p2}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    goto :goto_1

    .line 1580
    :cond_2
    iget-object p3, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {p1, p3, p2}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    :goto_1
    return-void

    .line 1573
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Table not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method redoDelete(IJ)V
    .locals 4

    .line 1545
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    .line 1546
    check-cast v0, Lorg/h2/index/PageDataIndex;

    .line 1547
    invoke-virtual {v0, p2, p3}, Lorg/h2/index/PageDataIndex;->getRowWithKey(J)Lorg/h2/result/Row;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1548
    invoke-virtual {v0}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1553
    invoke-virtual {p0, p1, v0, p2}, Lorg/h2/store/PageStore;->redo(ILorg/h2/result/Row;Z)V

    return-void

    .line 1549
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " found instead: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " - ignoring"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method redoTruncate(I)V
    .locals 1

    .line 1590
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/index/Index;

    .line 1591
    invoke-interface {p1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    .line 1592
    iget-object v0, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0}, Lorg/h2/table/Table;->truncate(Lorg/h2/engine/Session;)V

    return-void
.end method

.method public declared-synchronized removeFromCache(I)V
    .locals 1

    monitor-enter p0

    .line 1378
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->remove(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1377
    monitor-exit p0

    throw p1
.end method

.method public removeMeta(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V
    .locals 2

    .line 1822
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    .line 1823
    invoke-interface {p1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1826
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    .line 1827
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1828
    :try_start_1
    iget-object v1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p2}, Lorg/h2/engine/Database;->verifyMetaLocked(Lorg/h2/engine/Session;)V

    .line 1829
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1830
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1829
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 1830
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 1833
    :cond_0
    :goto_0
    monitor-enter p0

    .line 1834
    :try_start_5
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v0, :cond_1

    .line 1835
    invoke-direct {p0, p1, p2}, Lorg/h2/store/PageStore;->removeMetaIndex(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V

    .line 1836
    iget-object p2, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/h2/index/Index;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    :cond_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public declared-synchronized setBackup(Z)V
    .locals 1

    monitor-enter p0

    .line 2045
    :try_start_0
    iget v0, p0, Lorg/h2/store/PageStore;->backupLevel:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/store/PageStore;->backupLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2046
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2044
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInDoubtTransactionState(IIZ)V
    .locals 3

    monitor-enter p0

    .line 1871
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1873
    :try_start_1
    iget-object v1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->setReadOnly(Z)V

    .line 1874
    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v1, p1, p2, p3}, Lorg/h2/store/PageLog;->setInDoubtTransactionState(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1876
    :try_start_2
    iget-object p1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->setReadOnly(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1878
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1876
    :try_start_3
    iget-object p2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2, v0}, Lorg/h2/engine/Database;->setReadOnly(Z)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1870
    monitor-exit p0

    throw p1
.end method

.method public setLockFile(Z)V
    .locals 0

    .line 2024
    iput-boolean p1, p0, Lorg/h2/store/PageStore;->lockFile:Z

    return-void
.end method

.method setLogFirstPage(III)V
    .locals 3

    .line 968
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLogFirstPage key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trunk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 972
    :cond_0
    iput p1, p0, Lorg/h2/store/PageStore;->logKey:I

    .line 973
    iput p2, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    .line 974
    iput p3, p0, Lorg/h2/store/PageStore;->logFirstDataPage:I

    .line 975
    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeVariableHeader()V

    return-void
.end method

.method public setLogMode(I)V
    .locals 0

    .line 2016
    iput p1, p0, Lorg/h2/store/PageStore;->logMode:I

    return-void
.end method

.method public setMaxLogSize(J)V
    .locals 0

    .line 1858
    iput-wide p1, p0, Lorg/h2/store/PageStore;->maxLogSize:J

    return-void
.end method

.method public setPageSize(I)V
    .locals 5

    const v0, 0x15fae

    const/16 v1, 0x40

    if-lt p1, v1, :cond_3

    const v1, 0x8000

    if-gt p1, v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-gt v3, p1, :cond_1

    if-ne p1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 945
    iput p1, p0, Lorg/h2/store/PageStore;->pageSize:I

    .line 946
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/store/PageStore;->emptyPage:Lorg/h2/store/Data;

    .line 947
    iput v4, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    return-void

    .line 943
    :cond_2
    iget-object p1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 929
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pageSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public statisticsEnd()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 241
    iput-object v1, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    return-object v0
.end method

.method public statisticsStart()V
    .locals 1

    .line 231
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    return-void
.end method

.method public declared-synchronized sync()V
    .locals 1

    monitor-enter p0

    .line 1029
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->flush()V

    .line 1031
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1028
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Lorg/h2/store/Page;)V
    .locals 3

    monitor-enter p0

    .line 1080
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {p1}, Lorg/h2/store/Page;->isChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 1085
    :cond_0
    invoke-direct {p0}, Lorg/h2/store/PageStore;->checkOpen()V

    .line 1086
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    const/4 v0, 0x1

    .line 1087
    invoke-virtual {p1, v0}, Lorg/h2/store/Page;->setChanged(Z)V

    .line 1088
    invoke-virtual {p1}, Lorg/h2/store/Page;->getPos()I

    move-result v0

    .line 1089
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v1, :cond_1

    .line 1091
    iget v1, p0, Lorg/h2/store/PageStore;->logMode:I

    if-eqz v1, :cond_1

    .line 1092
    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/h2/store/PageLog;->addUndo(ILorg/h2/store/Data;)V

    .line 1095
    :cond_1
    invoke-virtual {p0, v0}, Lorg/h2/store/PageStore;->allocatePage(I)V

    .line 1096
    iget-object v1, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v1, v0, p1}, Lorg/h2/util/Cache;->update(ILorg/h2/util/CacheObject;)Lorg/h2/util/CacheObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1079
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeBack(Lorg/h2/util/CacheObject;)V
    .locals 3

    monitor-enter p0

    .line 1042
    :try_start_0
    check-cast p1, Lorg/h2/store/Page;

    .line 1043
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeBack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 1046
    :cond_0
    invoke-virtual {p1}, Lorg/h2/store/Page;->write()V

    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p1, v0}, Lorg/h2/store/Page;->setChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1041
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writePage(ILorg/h2/store/Data;)V
    .locals 5

    monitor-enter p0

    if-gtz p1, :cond_0

    .line 1355
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write to page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 1357
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    .line 1358
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    add-int/lit8 v0, p1, -0x3

    .line 1359
    iget v2, p0, Lorg/h2/store/PageStore;->freeListPagesPerList:I

    rem-int/2addr v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1361
    :goto_1
    aget-byte v3, p2, v1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 1362
    :goto_2
    aget-byte v3, p2, v1

    if-eqz v3, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_3

    .line 1363
    :cond_3
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1366
    :cond_4
    :goto_3
    invoke-direct {p0, p2, p1}, Lorg/h2/store/PageStore;->checksumSet([BI)V

    .line 1367
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    int-to-long v2, p1

    iget p1, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/h2/store/FileStore;->seek(J)V

    .line 1368
    iget-object p1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {p1, p2, v1, v0}, Lorg/h2/store/FileStore;->write([BII)V

    .line 1369
    iget-wide p1, p0, Lorg/h2/store/PageStore;->writeCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/store/PageStore;->writeCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    monitor-exit p0

    return-void

    .line 1353
    :goto_4
    monitor-exit p0

    throw p1
.end method
