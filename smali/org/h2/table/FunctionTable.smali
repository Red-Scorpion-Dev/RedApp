.class public Lorg/h2/table/FunctionTable;
.super Lorg/h2/table/Table;
.source "FunctionTable.java"


# instance fields
.field private cachedResult:Lorg/h2/result/LocalResult;

.field private cachedValue:Lorg/h2/value/Value;

.field private final function:Lorg/h2/expression/FunctionCall;

.field private functionExpr:Lorg/h2/expression/Expression;

.field private final rowCount:J


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;Lorg/h2/expression/FunctionCall;)V
    .locals 10

    .line 45
    invoke-interface {p4}, Lorg/h2/expression/FunctionCall;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V

    .line 46
    iput-object p3, p0, Lorg/h2/table/FunctionTable;->functionExpr:Lorg/h2/expression/Expression;

    .line 47
    iput-object p4, p0, Lorg/h2/table/FunctionTable;->function:Lorg/h2/expression/FunctionCall;

    .line 48
    instance-of p1, p4, Lorg/h2/expression/TableFunction;

    if-eqz p1, :cond_0

    .line 49
    move-object p1, p4

    check-cast p1, Lorg/h2/expression/TableFunction;

    invoke-virtual {p1}, Lorg/h2/expression/TableFunction;->getRowCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/table/FunctionTable;->rowCount:J

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 51
    iput-wide v0, p0, Lorg/h2/table/FunctionTable;->rowCount:J

    .line 53
    :goto_0
    invoke-interface {p4, p2}, Lorg/h2/expression/FunctionCall;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 54
    invoke-interface {p4}, Lorg/h2/expression/FunctionCall;->getType()I

    move-result p1

    const/16 p3, 0x12

    const v0, 0x15f90

    if-ne p1, p3, :cond_4

    .line 59
    invoke-interface {p4}, Lorg/h2/expression/FunctionCall;->getArgs()[Lorg/h2/expression/Expression;

    move-result-object p1

    .line 60
    array-length p3, p1

    .line 61
    new-array v1, p3, [Lorg/h2/expression/Expression;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_1

    .line 63
    aget-object v4, p1, v3

    invoke-virtual {v4, p2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v4

    aput-object v4, p1, v3

    .line 64
    aget-object v4, p1, v3

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    :cond_1
    invoke-interface {p4, p2, v1}, Lorg/h2/expression/FunctionCall;->getValueForColumnList(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/ValueResultSet;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 72
    invoke-virtual {p1}, Lorg/h2/value/ValueResultSet;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p1

    .line 74
    :try_start_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result p2

    .line 76
    new-array p3, p2, [Lorg/h2/table/Column;

    :goto_2
    if-ge v2, p2, :cond_2

    .line 78
    new-instance p4, Lorg/h2/table/Column;

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v0}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0}, Lorg/h2/value/DataType;->getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I

    move-result v5

    invoke-interface {p1, v0}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v8

    invoke-interface {p1, v0}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v9

    move-object v3, p4

    invoke-direct/range {v3 .. v9}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    aput-object p4, p3, v2

    move v2, v0

    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {p0, p3}, Lorg/h2/table/FunctionTable;->setColumns([Lorg/h2/table/Column;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 85
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 69
    :cond_3
    invoke-interface {p4}, Lorg/h2/expression/FunctionCall;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 56
    :cond_4
    invoke-interface {p4}, Lorg/h2/expression/FunctionCall;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private getValueResultSet(Lorg/h2/engine/Session;)Lorg/h2/value/ValueResultSet;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/h2/table/FunctionTable;->functionExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/FunctionTable;->functionExpr:Lorg/h2/expression/Expression;

    .line 219
    iget-object v0, p0, Lorg/h2/table/FunctionTable;->functionExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 220
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 223
    :cond_0
    check-cast p1, Lorg/h2/value/ValueResultSet;

    return-object p1
.end method


# virtual methods
.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 0

    const-string p1, "ALIAS"

    .line 114
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "ALIAS"

    .line 134
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canDrop()Z
    .locals 1

    .line 129
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public canGetRowCount()Z
    .locals 5

    .line 159
    iget-wide v0, p0, Lorg/h2/table/FunctionTable;->rowCount:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "ALIAS"

    .line 179
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkSupportAlter()V
    .locals 1

    const-string v0, "ALIAS"

    .line 139
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
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

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getResult(Lorg/h2/engine/Session;)Lorg/h2/result/ResultInterface;
    .locals 3

    .line 190
    invoke-direct {p0, p1}, Lorg/h2/table/FunctionTable;->getValueResultSet(Lorg/h2/engine/Session;)Lorg/h2/value/ValueResultSet;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 194
    :cond_0
    iget-object v1, p0, Lorg/h2/table/FunctionTable;->cachedResult:Lorg/h2/result/LocalResult;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/table/FunctionTable;->cachedValue:Lorg/h2/value/Value;

    if-ne v1, v0, :cond_1

    .line 195
    iget-object p1, p0, Lorg/h2/table/FunctionTable;->cachedResult:Lorg/h2/result/LocalResult;

    invoke-virtual {p1}, Lorg/h2/result/LocalResult;->reset()V

    .line 196
    iget-object p1, p0, Lorg/h2/table/FunctionTable;->cachedResult:Lorg/h2/result/LocalResult;

    return-object p1

    .line 198
    :cond_1
    invoke-virtual {v0}, Lorg/h2/value/ValueResultSet;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/h2/result/LocalResult;->read(Lorg/h2/engine/Session;Ljava/sql/ResultSet;I)Lorg/h2/result/LocalResult;

    move-result-object p1

    .line 199
    iget-object v1, p0, Lorg/h2/table/FunctionTable;->function:Lorg/h2/expression/FunctionCall;

    invoke-interface {v1}, Lorg/h2/expression/FunctionCall;->isDeterministic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    iput-object p1, p0, Lorg/h2/table/FunctionTable;->cachedResult:Lorg/h2/result/LocalResult;

    .line 201
    iput-object v0, p0, Lorg/h2/table/FunctionTable;->cachedValue:Lorg/h2/value/Value;

    :cond_2
    return-object p1
.end method

.method public getResultSet(Lorg/h2/engine/Session;)Ljava/sql/ResultSet;
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lorg/h2/table/FunctionTable;->getValueResultSet(Lorg/h2/engine/Session;)Lorg/h2/value/ValueResultSet;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/ValueResultSet;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 164
    iget-wide v0, p0, Lorg/h2/table/FunctionTable;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 249
    iget-wide v0, p0, Lorg/h2/table/FunctionTable;->rowCount:J

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/h2/table/FunctionTable;->function:Lorg/h2/expression/FunctionCall;

    invoke-interface {v0}, Lorg/h2/expression/FunctionCall;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 1

    .line 149
    new-instance p1, Lorg/h2/index/FunctionIndex;

    iget-object v0, p0, Lorg/h2/table/FunctionTable;->columns:[Lorg/h2/table/Column;

    invoke-static {v0}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/h2/index/FunctionIndex;-><init>(Lorg/h2/table/FunctionTable;[Lorg/h2/table/IndexColumn;)V

    return-object p1
.end method

.method public getTableType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isBufferResultSetToLocalTemp()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/h2/table/FunctionTable;->function:Lorg/h2/expression/FunctionCall;

    invoke-interface {v0}, Lorg/h2/expression/FunctionCall;->isBufferResultSetToLocalTemp()Z

    move-result v0

    return v0
.end method

.method public isDeterministic()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/h2/table/FunctionTable;->function:Lorg/h2/expression/FunctionCall;

    invoke-interface {v0}, Lorg/h2/expression/FunctionCall;->isDeterministic()Z

    move-result v0

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "ALIAS"

    .line 119
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "ALIAS"

    .line 124
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
