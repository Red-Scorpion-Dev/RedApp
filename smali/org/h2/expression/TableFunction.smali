.class public Lorg/h2/expression/TableFunction;
.super Lorg/h2/expression/Function;
.source "TableFunction.java"


# instance fields
.field private columnList:[Lorg/h2/table/Column;

.field private final distinct:Z

.field private final rowCount:J


# direct methods
.method constructor <init>(Lorg/h2/engine/Database;Lorg/h2/expression/FunctionInfo;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/h2/expression/Function;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/FunctionInfo;)V

    .line 36
    iget p1, p2, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 p2, 0xe0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/h2/expression/TableFunction;->distinct:Z

    .line 37
    iput-wide p3, p0, Lorg/h2/expression/TableFunction;->rowCount:J

    return-void
.end method

.method private static getSimpleResultSet(Lorg/h2/result/ResultInterface;I)Lorg/h2/tools/SimpleResultSet;
    .locals 8

    .line 136
    invoke-interface {p0}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result v0

    .line 137
    new-instance v1, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v1, v2}, Lorg/h2/tools/SimpleResultSet;->setAutoClose(Z)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 140
    invoke-interface {p0, v3}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-interface {p0, v3}, Lorg/h2/result/ResultInterface;->getColumnType(I)I

    move-result v5

    invoke-static {v5}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v5

    .line 142
    invoke-interface {p0, v3}, Lorg/h2/result/ResultInterface;->getColumnPrecision(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v6

    .line 143
    invoke-interface {p0, v3}, Lorg/h2/result/ResultInterface;->getColumnScale(I)I

    move-result v7

    .line 144
    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {p0}, Lorg/h2/result/ResultInterface;->reset()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_2

    .line 147
    invoke-interface {p0}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_1

    .line 150
    invoke-interface {p0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 152
    :cond_1
    invoke-virtual {v1, v4}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private getTable(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;ZZ)Lorg/h2/value/ValueResultSet;
    .locals 8

    .line 83
    iget-object v0, p0, Lorg/h2/expression/TableFunction;->columnList:[Lorg/h2/table/Column;

    array-length v0, v0

    .line 84
    new-array v1, v0, [Lorg/h2/expression/Expression;

    .line 85
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 87
    iget-object v5, p0, Lorg/h2/expression/TableFunction;->columnList:[Lorg/h2/table/Column;

    aget-object v5, v5, v4

    .line 88
    new-instance v6, Lorg/h2/expression/ExpressionColumn;

    invoke-direct {v6, v2, v5}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V

    .line 89
    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_0
    new-instance v2, Lorg/h2/result/LocalResult;

    invoke-direct {v2, p1, v1, v0}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    if-eqz p4, :cond_1

    .line 93
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->setDistinct()V

    :cond_1
    if-nez p3, :cond_6

    .line 96
    new-array p3, v0, [[Lorg/h2/value/Value;

    const/4 p4, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge p4, v0, :cond_3

    .line 99
    aget-object v4, p2, p4

    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v4

    .line 100
    sget-object v5, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v4, v5, :cond_2

    .line 101
    new-array v4, v3, [Lorg/h2/value/Value;

    aput-object v4, p3, p4

    goto :goto_2

    :cond_2
    const/16 v5, 0x11

    .line 103
    invoke-virtual {v4, v5}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v4

    check-cast v4, Lorg/h2/value/ValueArray;

    .line 104
    invoke-virtual {v4}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v4

    .line 105
    aput-object v4, p3, p4

    .line 106
    array-length v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-ge p1, v1, :cond_6

    .line 110
    new-array p2, v0, [Lorg/h2/value/Value;

    const/4 p4, 0x0

    :goto_4
    if-ge p4, v0, :cond_5

    .line 112
    aget-object v4, p3, p4

    .line 114
    array-length v5, v4

    if-gt v5, p1, :cond_4

    .line 115
    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_5

    .line 117
    :cond_4
    iget-object v5, p0, Lorg/h2/expression/TableFunction;->columnList:[Lorg/h2/table/Column;

    aget-object v5, v5, p4

    .line 118
    aget-object v4, v4, p1

    .line 119
    invoke-virtual {v5, v4}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v4

    .line 120
    invoke-virtual {v5}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v3}, Lorg/h2/value/Value;->convertPrecision(JZ)Lorg/h2/value/Value;

    move-result-object v4

    .line 121
    invoke-virtual {v5}, Lorg/h2/table/Column;->getScale()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Lorg/h2/value/Value;->convertScale(ZI)Lorg/h2/value/Value;

    move-result-object v4

    .line 123
    :goto_5
    aput-object v4, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 125
    :cond_5
    invoke-virtual {v2, p2}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 128
    :cond_6
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->done()V

    const p1, 0x7fffffff

    .line 129
    invoke-static {v2, p1}, Lorg/h2/expression/TableFunction;->getSimpleResultSet(Lorg/h2/result/ResultInterface;I)Lorg/h2/tools/SimpleResultSet;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected checkParameterCount(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x1b59

    const/4 v1, 0x2

    .line 48
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/h2/expression/TableFunction;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, ">0"

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;
    .locals 3

    .line 163
    invoke-virtual {p0}, Lorg/h2/expression/TableFunction;->getArgs()[Lorg/h2/expression/Expression;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/h2/expression/TableFunction;->getTable(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;ZZ)Lorg/h2/value/ValueResultSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/ValueResultSet;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/expression/TableFunction;->getExpressionColumns(Lorg/h2/engine/Session;Ljava/sql/ResultSet;)[Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/h2/expression/TableFunction;->distinct:Z

    if-eqz v0, :cond_0

    const-string v0, "TABLE_DISTINCT"

    goto :goto_0

    :cond_0
    const-string v0, "TABLE"

    :goto_0
    return-object v0
.end method

.method public getRowCount()J
    .locals 2

    .line 158
    iget-wide v0, p0, Lorg/h2/expression/TableFunction;->rowCount:J

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 8

    .line 54
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-virtual {p0}, Lorg/h2/expression/TableFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    .line 55
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 57
    iget-object v1, p0, Lorg/h2/expression/TableFunction;->args:[Lorg/h2/expression/Expression;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    const-string v6, ", "

    .line 58
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 59
    iget-object v6, p0, Lorg/h2/expression/TableFunction;->columnList:[Lorg/h2/table/Column;

    add-int/lit8 v7, v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 61
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 3

    .line 42
    iget-object v0, p0, Lorg/h2/expression/TableFunction;->args:[Lorg/h2/expression/Expression;

    iget-boolean v1, p0, Lorg/h2/expression/TableFunction;->distinct:Z

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/h2/expression/TableFunction;->getTable(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;ZZ)Lorg/h2/value/ValueResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getValueForColumnList(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/ValueResultSet;
    .locals 2

    .line 73
    iget-object p2, p0, Lorg/h2/expression/TableFunction;->args:[Lorg/h2/expression/Expression;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/h2/expression/TableFunction;->getTable(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;ZZ)Lorg/h2/value/ValueResultSet;

    move-result-object p1

    return-object p1
.end method

.method public setColumns(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Column;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/table/Column;

    iput-object v0, p0, Lorg/h2/expression/TableFunction;->columnList:[Lorg/h2/table/Column;

    .line 78
    iget-object v0, p0, Lorg/h2/expression/TableFunction;->columnList:[Lorg/h2/table/Column;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method
