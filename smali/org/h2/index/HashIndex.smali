.class public Lorg/h2/index/HashIndex;
.super Lorg/h2/index/BaseIndex;
.source "HashIndex.java"


# instance fields
.field private final indexColumn:I

.field private rows:Lorg/h2/util/ValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/ValueHashMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final tableData:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    .line 36
    invoke-virtual/range {p0 .. p5}, Lorg/h2/index/HashIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    const/4 p2, 0x0

    .line 37
    aget-object p2, p4, p2

    iget-object p2, p2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p2}, Lorg/h2/table/Column;->getColumnId()I

    move-result p2

    iput p2, p0, Lorg/h2/index/HashIndex;->indexColumn:I

    .line 38
    iput-object p1, p0, Lorg/h2/index/HashIndex;->tableData:Lorg/h2/table/RegularTable;

    .line 39
    invoke-direct {p0}, Lorg/h2/index/HashIndex;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 43
    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/HashIndex;->rows:Lorg/h2/util/ValueHashMap;

    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    .line 53
    iget p1, p0, Lorg/h2/index/HashIndex;->indexColumn:I

    invoke-virtual {p2, p1}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lorg/h2/index/HashIndex;->rows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/h2/index/HashIndex;->rows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/index/HashIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
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
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 73
    iget p3, p0, Lorg/h2/index/HashIndex;->indexColumn:I

    invoke-interface {p2, p3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    .line 80
    iget-object p3, p0, Lorg/h2/index/HashIndex;->tableData:Lorg/h2/table/RegularTable;

    iget v0, p0, Lorg/h2/index/HashIndex;->indexColumn:I

    invoke-virtual {p3, v0}, Lorg/h2/table/RegularTable;->getColumn(I)Lorg/h2/table/Column;

    move-result-object p3

    invoke-virtual {p3}, Lorg/h2/table/Column;->getType()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    .line 82
    iget-object p3, p0, Lorg/h2/index/HashIndex;->rows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p3, p2}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p3, p0, Lorg/h2/index/HashIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p3, p1, v0, v1}, Lorg/h2/table/RegularTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p1

    .line 88
    :goto_0
    new-instance p2, Lorg/h2/index/SingleRowCursor;

    invoke-direct {p2, p1}, Lorg/h2/index/SingleRowCursor;-><init>(Lorg/h2/result/Row;)V

    return-object p2

    .line 71
    :cond_1
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    const-string p1, "HASH"

    .line 147
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

    .line 120
    iget-object p1, p0, Lorg/h2/index/HashIndex;->columns:[Lorg/h2/table/Column;

    array-length p3, p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    aget-object p5, p1, p4

    .line 121
    invoke-virtual {p5}, Lorg/h2/table/Column;->getColumnId()I

    move-result p5

    .line 122
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

    .line 93
    invoke-virtual {p0}, Lorg/h2/index/HashIndex;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/h2/index/HashIndex;->rows:Lorg/h2/util/ValueHashMap;

    invoke-virtual {v0}, Lorg/h2/util/ValueHashMap;->size()I

    move-result v0

    int-to-long v0, v0

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
    .locals 1

    .line 64
    iget-object p1, p0, Lorg/h2/index/HashIndex;->rows:Lorg/h2/util/ValueHashMap;

    iget v0, p0, Lorg/h2/index/HashIndex;->indexColumn:I

    invoke-virtual {p2, v0}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/util/ValueHashMap;->remove(Lorg/h2/value/Value;)V

    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/h2/index/HashIndex;->reset()V

    return-void
.end method
