.class public Lorg/h2/expression/ExpressionColumn;
.super Lorg/h2/expression/Expression;
.source "ExpressionColumn.java"


# instance fields
.field private column:Lorg/h2/table/Column;

.field private final columnName:Ljava/lang/String;

.field private columnResolver:Lorg/h2/table/ColumnResolver;

.field private final database:Lorg/h2/engine/Database;

.field private evaluatable:Z

.field private queryLevel:I

.field private final schemaName:Ljava/lang/String;

.field private final tableAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    .line 52
    iput-object p2, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    .line 43
    iput-object p2, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-void
.end method

.method private mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    if-nez v0, :cond_0

    .line 117
    iput p3, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    .line 118
    iput-object p2, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    .line 119
    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    goto :goto_0

    .line 120
    :cond_0
    iget p2, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    if-eq p2, p1, :cond_2

    .line 121
    instance-of p1, p1, Lorg/h2/command/dml/SelectListColumnResolver;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x15fcb

    .line 124
    iget-object p2, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 1

    .line 321
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object p1

    if-ne p2, p1, :cond_0

    .line 322
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 323
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    .line 326
    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    :cond_0
    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :cond_1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumn()Lorg/h2/table/Column;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCost()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 3

    .line 332
    new-instance v0, Lorg/h2/expression/Comparison;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v2

    invoke-direct {v0, p1, v1, p0, v2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v0
.end method

.method public getNullable()I
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->isNullable()Z

    move-result v0

    return v0
.end method

.method public getOriginalColumnName()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTableAliasName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 4

    .line 60
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    .line 61
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 64
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    .line 66
    :goto_0
    iget-object v2, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 67
    iget-object v2, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    .line 68
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_3
    iget-object v2, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    .line 71
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    .line 72
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public getScale()I
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getScale()I

    move-result v0

    return v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTableFilter()Lorg/h2/table/TableFilter;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    invoke-interface {v0}, Lorg/h2/table/ColumnResolver;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v0}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 1

    .line 176
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getSelect()Lorg/h2/command/dml/Select;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    if-eqz p1, :cond_0

    return-object p1

    .line 186
    :cond_0
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p1, v0}, Lorg/h2/table/ColumnResolver;->getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 188
    :cond_1
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p1, v0}, Lorg/h2/table/ColumnResolver;->getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;

    const p1, 0x15fa0

    .line 189
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public isAutoIncrement()Z
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getSequence()Lorg/h2/schema/Sequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 3

    .line 273
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 307
    :pswitch_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->addColumn(Lorg/h2/table/Column;)V

    return v2

    .line 302
    :pswitch_1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->addDependency(Lorg/h2/engine/DbObject;)V

    :cond_0
    return v2

    .line 300
    :pswitch_2
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getResolver()Lorg/h2/table/ColumnResolver;

    move-result-object p1

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 297
    :pswitch_3
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Table;->getMaxDataModificationId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/expression/ExpressionVisitor;->addDataModificationId(J)V

    return v2

    .line 286
    :pswitch_4
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    if-eqz v0, :cond_4

    .line 287
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getQueryLevel()I

    move-result p1

    iget v0, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    if-ge p1, v0, :cond_2

    return v2

    .line 290
    :cond_2
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    .line 293
    :cond_3
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->isEvaluatable()Z

    move-result p1

    return p1

    .line 295
    :cond_4
    iget-boolean v0, p0, Lorg/h2/expression/ExpressionColumn;->evaluatable:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getQueryLevel()I

    move-result p1

    iget v0, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    if-ge p1, v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1

    :pswitch_5
    return v2

    :pswitch_6
    return v1

    .line 281
    :pswitch_7
    iget v0, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getQueryLevel()I

    move-result p1

    if-ge v0, p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 8

    .line 83
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getTableAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getSchemaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 91
    :cond_1
    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 92
    invoke-virtual {v4}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v5

    .line 93
    iget-object v6, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iget-object v7, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    invoke-direct {p0, p1, v4, p2}, Lorg/h2/expression/ExpressionColumn;->mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    const-string v1, "_ROWID_"

    iget-object v3, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getRowIdColumn()Lorg/h2/table/Column;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 101
    invoke-direct {p0, p1, v0, p2}, Lorg/h2/expression/ExpressionColumn;->mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V

    return-void

    .line 105
    :cond_4
    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getSystemColumns()[Lorg/h2/table/Column;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    .line 106
    array-length v1, v0

    if-ge v2, v1, :cond_6

    .line 107
    aget-object v1, v0, v2

    .line 108
    iget-object v3, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iget-object v4, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    invoke-direct {p0, p1, v1, p2}, Lorg/h2/expression/ExpressionColumn;->mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    if-nez v0, :cond_3

    .line 132
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/h2/schema/Schema;->findConstant(Ljava/lang/String;)Lorg/h2/schema/Constant;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Lorg/h2/schema/Constant;->getValue()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 140
    :cond_1
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const v0, 0xa48a

    .line 147
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 149
    :cond_3
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p1, p0, v0}, Lorg/h2/table/ColumnResolver;->optimize(Lorg/h2/expression/ExpressionColumn;Lorg/h2/table/Column;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    invoke-interface {v0}, Lorg/h2/table/ColumnResolver;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 202
    iput-boolean p2, p0, Lorg/h2/expression/ExpressionColumn;->evaluatable:Z

    :cond_0
    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 3

    .line 154
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p1, v0}, Lorg/h2/table/ColumnResolver;->getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    invoke-interface {v0}, Lorg/h2/table/ColumnResolver;->getSelect()Lorg/h2/command/dml/Select;

    move-result-object v0

    const v1, 0x15fa0

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/value/Value;

    if-nez v2, :cond_1

    .line 166
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1, v2}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 169
    :cond_2
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 157
    :cond_3
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
