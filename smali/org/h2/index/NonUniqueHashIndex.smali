.class public Lorg/h2/index/NonUniqueHashIndex;
.super Lorg/h2/index/BaseIndex;
.source "NonUniqueHashIndex.java"


# instance fields
.field private final indexColumn:I

.field private rowCount:J

.field private rows:Lorg/h2/util/ValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/ValueHashMap<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tableData:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    .line 40
    invoke-virtual/range {p0 .. p5}, Lorg/h2/index/NonUniqueHashIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    const/4 p2, 0x0

    .line 41
    aget-object p2, p4, p2

    iget-object p2, p2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p2}, Lorg/h2/table/Column;->getColumnId()I

    move-result p2

    iput p2, p0, Lorg/h2/index/NonUniqueHashIndex;->indexColumn:I

    .line 42
    iput-object p1, p0, Lorg/h2/index/NonUniqueHashIndex;->tableData:Lorg/h2/table/RegularTable;

    .line 43
    invoke-direct {p0}, Lorg/h2/index/NonUniqueHashIndex;->reset()V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 47
    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/NonUniqueHashIndex;->rows:Lorg/h2/util/ValueHashMap;

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lorg/h2/index/NonUniqueHashIndex;->rowCount:J

    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 2

    .line 58
    iget p1, p0, Lorg/h2/index/NonUniqueHashIndex;->indexColumn:I

    invoke-virtual {p2, p1}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lorg/h2/index/NonUniqueHashIndex;->rows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lorg/h2/index/NonUniqueHashIndex;->rows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v1, p1, v0}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    .line 64
    :cond_0
    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-wide p1, p0, Lorg/h2/index/NonUniqueHashIndex;->rowCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/index/NonUniqueHashIndex;->rowCount:J

    return-void
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScan()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eq p2, p3, :cond_1

    .line 92
    invoke-virtual {p0, p2, p3}, Lorg/h2/index/NonUniqueHashIndex;->compareKeys(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 96
    :cond_1
    :goto_0
    iget p3, p0, Lorg/h2/index/NonUniqueHashIndex;->indexColumn:I

    invoke-interface {p2, p3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    .line 103
    iget-object p3, p0, Lorg/h2/index/NonUniqueHashIndex;->tableData:Lorg/h2/table/RegularTable;

    iget v0, p0, Lorg/h2/index/NonUniqueHashIndex;->indexColumn:I

    invoke-virtual {p3, v0}, Lorg/h2/table/RegularTable;->getColumn(I)Lorg/h2/table/Column;

    move-result-object p3

    invoke-virtual {p3}, Lorg/h2/table/Column;->getType()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    .line 104
    iget-object p3, p0, Lorg/h2/index/NonUniqueHashIndex;->rows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p3, p2}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 105
    new-instance p3, Lorg/h2/index/NonUniqueHashCursor;

    iget-object v0, p0, Lorg/h2/index/NonUniqueHashIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-direct {p3, p1, v0, p2}, Lorg/h2/index/NonUniqueHashCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/RegularTable;Ljava/util/ArrayList;)V

    return-object p3

    .line 89
    :cond_2
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    const-string p1, "HASH"

    .line 164
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
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

    .line 137
    iget-object p1, p0, Lorg/h2/index/NonUniqueHashIndex;->columns:[Lorg/h2/table/Column;

    array-length p3, p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    aget-object p5, p1, p4

    .line 138
    invoke-virtual {p5}, Lorg/h2/table/Column;->getColumnId()I

    move-result p5

    .line 139
    aget p5, p2, p5

    const/4 p6, 0x1

    and-int/2addr p5, p6

    if-eq p5, p6, :cond_0

    const-wide/high16 p1, 0x43e0000000000000L    # 9.223372036854776E18

    return-wide p1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    return-wide p1
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lorg/h2/index/NonUniqueHashIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lorg/h2/index/NonUniqueHashIndex;->rowCount:J

    return-wide v0
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 5

    .line 70
    iget-wide v0, p0, Lorg/h2/index/NonUniqueHashIndex;->rowCount:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 72
    invoke-direct {p0}, Lorg/h2/index/NonUniqueHashIndex;->reset()V

    goto :goto_1

    .line 74
    :cond_0
    iget p1, p0, Lorg/h2/index/NonUniqueHashIndex;->indexColumn:I

    invoke-virtual {p2, p1}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lorg/h2/index/NonUniqueHashIndex;->rows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 78
    iget-object p2, p0, Lorg/h2/index/NonUniqueHashIndex;->rows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p2, p1}, Lorg/h2/util/ValueHashMap;->remove(Lorg/h2/value/Value;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    :goto_0
    iget-wide p1, p0, Lorg/h2/index/NonUniqueHashIndex;->rowCount:J

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lorg/h2/index/NonUniqueHashIndex;->rowCount:J

    :goto_1
    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/h2/index/NonUniqueHashIndex;->reset()V

    return-void
.end method
