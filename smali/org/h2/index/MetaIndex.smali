.class public Lorg/h2/index/MetaIndex;
.super Lorg/h2/index/BaseIndex;
.source "MetaIndex.java"


# instance fields
.field private final meta:Lorg/h2/table/MetaTable;

.field private final scan:Z


# direct methods
.method public constructor <init>(Lorg/h2/table/MetaTable;[Lorg/h2/table/IndexColumn;Z)V
    .locals 7

    .line 28
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/h2/index/MetaIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 30
    iput-object p1, p0, Lorg/h2/index/MetaIndex;->meta:Lorg/h2/table/MetaTable;

    .line 31
    iput-boolean p3, p0, Lorg/h2/index/MetaIndex;->scan:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "META"

    .line 41
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "META"

    .line 87
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/h2/index/MetaIndex;->meta:Lorg/h2/table/MetaTable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/table/MetaTable;->generateRows(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Ljava/util/ArrayList;

    move-result-object p1

    .line 52
    new-instance p2, Lorg/h2/index/MetaCursor;

    invoke-direct {p2, p1}, Lorg/h2/index/MetaCursor;-><init>(Ljava/util/ArrayList;)V

    return-object p2
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    const-string p1, "META"

    .line 107
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 1

    .line 78
    iget-boolean v0, p0, Lorg/h2/index/MetaIndex;->scan:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lorg/h2/index/BaseIndex;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result p1

    return p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 9
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

    .line 59
    iget-boolean p1, p0, Lorg/h2/index/MetaIndex;->scan:Z

    if-eqz p1, :cond_0

    const-wide p1, 0x40c3880000000000L    # 10000.0

    return-wide p1

    :cond_0
    const-wide/16 v2, 0x3e8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v8, p6

    .line 62
    invoke-virtual/range {v0 .. v8}, Lorg/h2/index/MetaIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

    move-result-wide p1

    long-to-double p1, p1

    return-wide p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/h2/index/MetaIndex;->meta:Lorg/h2/table/MetaTable;

    invoke-virtual {v0}, Lorg/h2/table/MetaTable;->getDiskSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "meta"

    return-object v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "META"

    .line 73
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "META"

    .line 46
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "META"

    .line 68
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
