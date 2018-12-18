.class public Lorg/h2/index/RangeIndex;
.super Lorg/h2/index/BaseIndex;
.source "RangeIndex.java"


# instance fields
.field private final rangeTable:Lorg/h2/table/RangeTable;


# direct methods
.method public constructor <init>(Lorg/h2/table/RangeTable;[Lorg/h2/table/IndexColumn;)V
    .locals 6

    .line 27
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    const-string v3, "RANGE_INDEX"

    const/4 v0, 0x1

    .line 28
    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/h2/index/RangeIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 30
    iput-object p1, p0, Lorg/h2/index/RangeIndex;->rangeTable:Lorg/h2/table/RangeTable;

    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    .line 40
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "SYSTEM_RANGE"

    .line 95
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 13

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object/from16 v3, p3

    .line 50
    iget-object v4, v0, Lorg/h2/index/RangeIndex;->rangeTable:Lorg/h2/table/RangeTable;

    invoke-virtual {v4, p1}, Lorg/h2/table/RangeTable;->getMin(Lorg/h2/engine/Session;)J

    move-result-wide v4

    .line 51
    iget-object v6, v0, Lorg/h2/index/RangeIndex;->rangeTable:Lorg/h2/table/RangeTable;

    invoke-virtual {v6, p1}, Lorg/h2/table/RangeTable;->getMax(Lorg/h2/engine/Session;)J

    move-result-wide v6

    .line 52
    iget-object v8, v0, Lorg/h2/index/RangeIndex;->rangeTable:Lorg/h2/table/RangeTable;

    invoke-virtual {v8, p1}, Lorg/h2/table/RangeTable;->getStep(Lorg/h2/engine/Session;)J

    move-result-wide v8

    const/4 v10, 0x0

    if-nez v1, :cond_0

    move-wide v11, v4

    goto :goto_0

    .line 54
    :cond_0
    :try_start_0
    invoke-interface {p2, v10}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v11

    :goto_0
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v11

    :catch_0
    if-nez v3, :cond_1

    move-wide v10, v6

    goto :goto_1

    .line 59
    :cond_1
    :try_start_1
    invoke-interface {v3, v10}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v10

    :goto_1
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v6, v10

    .line 63
    :catch_1
    new-instance v10, Lorg/h2/index/RangeCursor;

    move-object v1, v10

    move-object v2, p1

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    invoke-direct/range {v1 .. v8}, Lorg/h2/index/RangeCursor;-><init>(Lorg/h2/engine/Session;JJJ)V

    return-object v10
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 8

    if-eqz p2, :cond_0

    .line 105
    iget-object p2, p0, Lorg/h2/index/RangeIndex;->rangeTable:Lorg/h2/table/RangeTable;

    invoke-virtual {p2, p1}, Lorg/h2/table/RangeTable;->getMin(Lorg/h2/engine/Session;)J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/h2/index/RangeIndex;->rangeTable:Lorg/h2/table/RangeTable;

    invoke-virtual {p2, p1}, Lorg/h2/table/RangeTable;->getMax(Lorg/h2/engine/Session;)J

    move-result-wide v0

    goto :goto_0

    .line 106
    :goto_1
    new-instance p2, Lorg/h2/index/RangeCursor;

    move-object v2, p2

    move-object v3, p1

    move-wide v4, v6

    invoke-direct/range {v2 .. v7}, Lorg/h2/index/RangeCursor;-><init>(Lorg/h2/engine/Session;JJ)V

    return-object p2
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

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 111
    iget-object p1, p0, Lorg/h2/index/RangeIndex;->rangeTable:Lorg/h2/table/RangeTable;

    invoke-virtual {p1}, Lorg/h2/table/RangeTable;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/h2/index/RangeIndex;->rangeTable:Lorg/h2/table/RangeTable;

    invoke-virtual {v0}, Lorg/h2/table/RangeTable;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    .line 80
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    .line 45
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    .line 85
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
