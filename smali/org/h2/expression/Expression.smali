.class public abstract Lorg/h2/expression/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# instance fields
.field private addedToFilter:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExpressionColumns(Lorg/h2/engine/Session;Ljava/sql/ResultSet;)[Lorg/h2/expression/Expression;
    .locals 12

    .line 328
    :try_start_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    .line 329
    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v0

    .line 330
    new-array v1, v0, [Lorg/h2/expression/Expression;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 333
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-static {p1, v3}, Lorg/h2/value/DataType;->getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I

    move-result v6

    .line 335
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v4

    .line 336
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v9

    .line 337
    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v10

    .line 338
    new-instance v11, Lorg/h2/table/Column;

    int-to-long v7, v4

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    .line 339
    new-instance v4, Lorg/h2/expression/ExpressionColumn;

    invoke-direct {v4, p0, v11}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V

    .line 340
    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_1

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 344
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method static getExpressionColumns(Lorg/h2/engine/Session;Lorg/h2/value/ValueArray;)[Lorg/h2/expression/Expression;
    .locals 13

    .line 307
    invoke-virtual {p1}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p1

    .line 308
    array-length v0, p1

    new-array v0, v0, [Lorg/h2/expression/ExpressionColumn;

    .line 309
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 310
    aget-object v3, p1, v2

    .line 311
    new-instance v11, Lorg/h2/table/Column;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/h2/value/Value;->getType()I

    move-result v6

    invoke-virtual {v3}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v7

    invoke-virtual {v3}, Lorg/h2/value/Value;->getScale()I

    move-result v9

    invoke-virtual {v3}, Lorg/h2/value/Value;->getDisplaySize()I

    move-result v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    .line 314
    new-instance v3, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v4

    invoke-direct {v3, v4, v11}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V

    aput-object v3, v0, v2

    move v2, v12

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addFilterConditions(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 272
    iget-boolean v0, p0, Lorg/h2/expression/Expression;->addedToFilter:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    sget-object p2, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {p0, p2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 274
    invoke-virtual {p1, p0, p2}, Lorg/h2/table/TableFilter;->addFilterCondition(Lorg/h2/expression/Expression;Z)V

    const/4 p1, 0x1

    .line 275
    iput-boolean p1, p0, Lorg/h2/expression/Expression;->addedToFilter:Z

    :cond_0
    return-void
.end method

.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 0

    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 244
    invoke-virtual {p0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue(Lorg/h2/engine/Session;)Ljava/lang/Boolean;
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCost()I
.end method

.method public abstract getDisplaySize()I
.end method

.method public getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNonAliasExpression()Lorg/h2/expression/Expression;
    .locals 0

    return-object p0
.end method

.method public getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNullable()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public abstract getPrecision()J
.end method

.method public abstract getSQL()Ljava/lang/String;
.end method

.method public abstract getScale()I
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableAlias()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public abstract getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
.end method

.method public isAutoIncrement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConstant()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
.end method

.method public isValueSet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWildcard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract mapColumns(Lorg/h2/table/ColumnResolver;I)V
.end method

.method public abstract optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
.end method

.method public abstract setEvaluatable(Lorg/h2/table/TableFilter;Z)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 286
    invoke-virtual {p0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract updateAggregate(Lorg/h2/engine/Session;)V
.end method
