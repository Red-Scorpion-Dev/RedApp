.class public Lorg/h2/index/FunctionIndex;
.super Lorg/h2/index/BaseIndex;
.source "FunctionIndex.java"


# instance fields
.field private final functionTable:Lorg/h2/table/FunctionTable;


# direct methods
.method public constructor <init>(Lorg/h2/table/FunctionTable;[Lorg/h2/table/IndexColumn;)V
    .locals 7

    .line 27
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    const/4 v0, 0x1

    .line 28
    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/h2/index/FunctionIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 29
    iput-object p1, p0, Lorg/h2/index/FunctionIndex;->functionTable:Lorg/h2/table/FunctionTable;

    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "ALIAS"

    .line 39
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

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
    .locals 1

    const-string v0, "ALIAS"

    .line 89
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 49
    iget-object p2, p0, Lorg/h2/index/FunctionIndex;->functionTable:Lorg/h2/table/FunctionTable;

    invoke-virtual {p2}, Lorg/h2/table/FunctionTable;->isBufferResultSetToLocalTemp()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 50
    new-instance p2, Lorg/h2/index/FunctionCursor;

    iget-object p3, p0, Lorg/h2/index/FunctionIndex;->functionTable:Lorg/h2/table/FunctionTable;

    invoke-virtual {p3, p1}, Lorg/h2/table/FunctionTable;->getResult(Lorg/h2/engine/Session;)Lorg/h2/result/ResultInterface;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/h2/index/FunctionCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/result/ResultInterface;)V

    return-object p2

    .line 52
    :cond_0
    new-instance p2, Lorg/h2/index/FunctionCursorResultSet;

    iget-object p3, p0, Lorg/h2/index/FunctionIndex;->functionTable:Lorg/h2/table/FunctionTable;

    invoke-virtual {p3, p1}, Lorg/h2/table/FunctionTable;->getResultSet(Lorg/h2/engine/Session;)Ljava/sql/ResultSet;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/h2/index/FunctionCursorResultSet;-><init>(Lorg/h2/engine/Session;Ljava/sql/ResultSet;)V

    return-object p2
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    const-string p1, "ALIAS"

    .line 99
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

    if-nez p2, :cond_1

    .line 64
    iget-object p1, p0, Lorg/h2/index/FunctionIndex;->functionTable:Lorg/h2/table/FunctionTable;

    invoke-virtual {p1}, Lorg/h2/table/FunctionTable;->canGetRowCount()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lorg/h2/index/FunctionIndex;->functionTable:Lorg/h2/table/FunctionTable;

    invoke-virtual {p1}, Lorg/h2/table/FunctionTable;->getRowCountApproximation()J

    move-result-wide p1

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lorg/h2/index/FunctionIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget p1, p1, Lorg/h2/engine/DbSettings;->estimatedFunctionTableRows:I

    int-to-long p1, p1

    :goto_0
    const-wide/16 p3, 0xa

    mul-long p1, p1, p3

    long-to-double p1, p1

    return-wide p1

    :cond_1
    const-string p1, "ALIAS"

    .line 61
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "function"

    return-object v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/h2/index/FunctionIndex;->functionTable:Lorg/h2/table/FunctionTable;

    invoke-virtual {v0, p1}, Lorg/h2/table/FunctionTable;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/h2/index/FunctionIndex;->functionTable:Lorg/h2/table/FunctionTable;

    invoke-virtual {v0}, Lorg/h2/table/FunctionTable;->getRowCountApproximation()J

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

    const-string p1, "ALIAS"

    .line 74
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "ALIAS"

    .line 44
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "ALIAS"

    .line 79
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
