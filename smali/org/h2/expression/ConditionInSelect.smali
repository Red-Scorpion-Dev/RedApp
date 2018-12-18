.class public Lorg/h2/expression/ConditionInSelect;
.super Lorg/h2/expression/Condition;
.source "ConditionInSelect.java"


# instance fields
.field private final all:Z

.field private final compareType:I

.field private final database:Lorg/h2/engine/Database;

.field private left:Lorg/h2/expression/Expression;

.field private final query:Lorg/h2/command/dml/Query;

.field private queryLevel:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/command/dml/Query;ZI)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/h2/expression/Condition;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/h2/expression/ConditionInSelect;->database:Lorg/h2/engine/Database;

    .line 37
    iput-object p2, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    .line 38
    iput-object p3, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    .line 39
    iput-boolean p4, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    .line 40
    iput p5, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    return-void
.end method

.method private getValueSlow(Lorg/h2/result/LocalResult;Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 7

    .line 85
    iget-boolean v0, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lorg/h2/result/LocalResult;->next()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 88
    invoke-virtual {p1}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object v3

    aget-object v3, v3, v1

    .line 89
    sget-object v5, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_0

    .line 93
    :cond_1
    iget-object v5, p0, Lorg/h2/expression/ConditionInSelect;->database:Lorg/h2/engine/Database;

    iget v6, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    invoke-static {v5, p2, v3, v6}, Lorg/h2/expression/Comparison;->compareNotNull(Lorg/h2/engine/Database;Lorg/h2/value/Value;Lorg/h2/value/Value;I)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_2

    .line 95
    iget-boolean v5, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_0

    .line 98
    iget-boolean v3, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 104
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 106
    :cond_4
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 2

    .line 172
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->optimizeInList:Z

    if-nez p1, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object p1, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    instance-of p1, p1, Lorg/h2/expression/ExpressionColumn;

    if-nez p1, :cond_1

    return-void

    .line 178
    :cond_1
    iget-object p1, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    check-cast p1, Lorg/h2/expression/ExpressionColumn;

    .line 179
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    if-eq p2, v0, :cond_2

    return-void

    .line 182
    :cond_2
    invoke-static {p2}, Lorg/h2/expression/ExpressionVisitor;->getNotFromResolverVisitor(Lorg/h2/table/ColumnResolver;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 186
    :cond_3
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-static {p1, v0}, Lorg/h2/index/IndexCondition;->getInQuery(Lorg/h2/expression/ExpressionColumn;Lorg/h2/command/dml/Query;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    return-void
.end method

.method public getCost()I
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getCostAsExpression()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getDisplaySize()I
    .locals 1

    .line 25
    invoke-super {p0}, Lorg/h2/expression/Condition;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrecision()J
    .locals 2

    .line 25
    invoke-super {p0}, Lorg/h2/expression/Condition;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 4

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    iget-boolean v1, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    if-eqz v1, :cond_0

    .line 139
    iget v1, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    invoke-static {v1}, Lorg/h2/expression/Comparison;->getCompareOperator(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 142
    :cond_0
    iget v1, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    if-nez v1, :cond_1

    const-string v1, "IN"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    :cond_1
    iget v1, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    invoke-static {v1}, Lorg/h2/expression/Comparison;->getCompareOperator(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ANY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "(\n"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getScale()I
    .locals 1

    .line 25
    invoke-super {p0}, Lorg/h2/expression/Condition;->getScale()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    .line 25
    invoke-super {p0}, Lorg/h2/expression/Condition;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 5

    .line 45
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->setSession(Lorg/h2/engine/Session;)V

    .line 46
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->hasOrder()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object v0

    .line 51
    :try_start_0
    iget-object v3, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v3

    .line 52
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->getRowCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 53
    iget-boolean p1, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    return-object p1

    .line 54
    :cond_1
    :try_start_1
    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v4, :cond_2

    .line 77
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    return-object v3

    .line 57
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->optimizeInSelect:Z

    if-nez p1, :cond_3

    .line 58
    invoke-direct {p0, v0, v3}, Lorg/h2/expression/ConditionInSelect;->getValueSlow(Lorg/h2/result/LocalResult;Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    return-object p1

    .line 60
    :cond_3
    :try_start_3
    iget-boolean p1, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    if-nez p1, :cond_8

    iget p1, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    if-eqz p1, :cond_4

    iget p1, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    const/16 v4, 0x10

    if-eq p1, v4, :cond_4

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {v0, v2}, Lorg/h2/result/LocalResult;->getColumnType(I)I

    move-result p1

    if-nez p1, :cond_5

    .line 66
    invoke-static {v2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    return-object p1

    .line 68
    :cond_5
    :try_start_4
    invoke-virtual {v3, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 69
    new-array v3, v1, [Lorg/h2/value/Value;

    aput-object p1, v3, v2

    invoke-virtual {v0, v3}, Lorg/h2/result/LocalResult;->containsDistinct([Lorg/h2/value/Value;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 70
    invoke-static {v1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    return-object p1

    .line 72
    :cond_6
    :try_start_5
    new-array p1, v1, [Lorg/h2/value/Value;

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Lorg/h2/result/LocalResult;->containsDistinct([Lorg/h2/value/Value;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 73
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 77
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    return-object p1

    .line 75
    :cond_7
    :try_start_6
    invoke-static {v2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 77
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    return-object p1

    .line 62
    :cond_8
    :goto_0
    :try_start_7
    invoke-direct {p0, v0, v3}, Lorg/h2/expression/ConditionInSelect;->getValueSlow(Lorg/h2/result/LocalResult;Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 77
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    throw p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 112
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/h2/command/dml/Query;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 113
    iget p1, p0, Lorg/h2/expression/ConditionInSelect;->queryLevel:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/h2/expression/ConditionInSelect;->queryLevel:I

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    .line 119
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->setRandomAccessResult(Z)V

    .line 120
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->optimizeQueryExpression(Lorg/h2/command/dml/Query;)V

    .line 121
    iget-object p1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {p1}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result p1

    if-ne p1, v1, :cond_0

    return-object p0

    :cond_0
    const p1, 0x15fc4

    .line 122
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 131
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    .line 157
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->updateAggregate(Lorg/h2/engine/Session;)V

    return-void
.end method
