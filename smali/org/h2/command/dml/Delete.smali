.class public Lorg/h2/command/dml/Delete;
.super Lorg/h2/command/Prepared;
.source "Delete.java"


# instance fields
.field private condition:Lorg/h2/expression/Expression;

.field private limitExpr:Lorg/h2/expression/Expression;

.field private tableFilter:Lorg/h2/table/TableFilter;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getPlanSQL()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE "

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FROM "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/table/TableFilter;->getPlanSQL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lorg/h2/command/dml/Delete;->condition:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_0

    const-string v1, "\nWHERE "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/Delete;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/h2/command/dml/Delete;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_1

    const-string v1, "\nLIMIT ("

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/Delete;->limitExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x3a

    return v0
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 5

    .line 129
    iget-object v0, p0, Lorg/h2/command/dml/Delete;->condition:Lorg/h2/expression/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/h2/command/dml/Delete;->condition:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v2, v1}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 131
    iget-object v0, p0, Lorg/h2/command/dml/Delete;->condition:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Delete;->condition:Lorg/h2/expression/Expression;

    .line 132
    iget-object v0, p0, Lorg/h2/command/dml/Delete;->condition:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v2, v3}, Lorg/h2/expression/Expression;->createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V

    :cond_0
    const/4 v0, 0x1

    .line 134
    new-array v0, v0, [Lorg/h2/table/TableFilter;

    iget-object v2, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    aput-object v2, v0, v1

    .line 135
    iget-object v2, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    iget-object v3, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-static {v0}, Lorg/h2/expression/ExpressionVisitor;->allColumnsForTableFilters([Lorg/h2/table/TableFilter;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Lorg/h2/table/TableFilter;->getBestPlanItem(Lorg/h2/engine/Session;[Lorg/h2/table/TableFilter;ILjava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v1, v0}, Lorg/h2/table/TableFilter;->setPlanItem(Lorg/h2/table/PlanItem;)V

    .line 138
    iget-object v0, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->prepare()V

    return-void
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCondition(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/h2/command/dml/Delete;->condition:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setLimit(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/h2/command/dml/Delete;->limitExpr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setTableFilter(Lorg/h2/table/TableFilter;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    return-void
.end method

.method public update()I
    .locals 11

    .line 54
    iget-object v0, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    iget-object v1, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/table/TableFilter;->startQuery(Lorg/h2/engine/Session;)V

    .line 55
    iget-object v0, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->reset()V

    .line 56
    iget-object v0, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 58
    iget-object v1, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    .line 59
    iget-object v1, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 60
    new-instance v1, Lorg/h2/result/RowList;

    iget-object v5, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v5}, Lorg/h2/result/RowList;-><init>(Lorg/h2/engine/Session;)V

    .line 62
    iget-object v5, p0, Lorg/h2/command/dml/Delete;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz v5, :cond_0

    .line 63
    iget-object v5, p0, Lorg/h2/command/dml/Delete;->limitExpr:Lorg/h2/expression/Expression;

    iget-object v6, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v5

    .line 64
    sget-object v6, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v5, v6, :cond_0

    .line 65
    invoke-virtual {v5}, Lorg/h2/value/Value;->getInt()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    .line 69
    :goto_0
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/h2/command/dml/Delete;->setCurrentRowNumber(I)V

    const/4 v6, 0x0

    :cond_1
    const/4 v7, 0x0

    if-eqz v5, :cond_5

    .line 71
    iget-object v8, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v8}, Lorg/h2/table/TableFilter;->next()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 72
    invoke-virtual {v1}, Lorg/h2/result/RowList;->size()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lorg/h2/command/dml/Delete;->setCurrentRowNumber(I)V

    .line 73
    iget-object v8, p0, Lorg/h2/command/dml/Delete;->condition:Lorg/h2/expression/Expression;

    if-eqz v8, :cond_2

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v9, p0, Lorg/h2/command/dml/Delete;->condition:Lorg/h2/expression/Expression;

    iget-object v10, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-virtual {v9, v10}, Lorg/h2/expression/Expression;->getBooleanValue(Lorg/h2/engine/Session;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 75
    :cond_2
    iget-object v8, p0, Lorg/h2/command/dml/Delete;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v8}, Lorg/h2/table/TableFilter;->get()Lorg/h2/result/Row;

    move-result-object v8

    .line 77
    invoke-virtual {v0}, Lorg/h2/table/Table;->fireRow()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 78
    iget-object v9, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v9, v8, v7}, Lorg/h2/table/Table;->fireBeforeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)Z

    move-result v9

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_4

    .line 81
    invoke-virtual {v1, v8}, Lorg/h2/result/RowList;->add(Lorg/h2/result/Row;)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    if-ltz v5, :cond_1

    if-lt v6, v5, :cond_1

    .line 90
    :cond_5
    invoke-virtual {v1}, Lorg/h2/result/RowList;->reset()V

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/h2/result/RowList;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/2addr v5, v3

    and-int/lit8 v8, v5, 0x7f

    if-nez v8, :cond_6

    .line 92
    invoke-virtual {p0}, Lorg/h2/command/dml/Delete;->checkCanceled()V

    .line 94
    :cond_6
    invoke-virtual {v1}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v8

    .line 95
    iget-object v9, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v9, v8}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 96
    iget-object v9, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-virtual {v9, v0, v3, v8}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    goto :goto_2

    .line 98
    :cond_7
    invoke-virtual {v0}, Lorg/h2/table/Table;->fireRow()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 99
    invoke-virtual {v1}, Lorg/h2/result/RowList;->reset()V

    :goto_3
    invoke-virtual {v1}, Lorg/h2/result/RowList;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 100
    invoke-virtual {v1}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v3

    .line 101
    iget-object v5, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v5, v3, v7, v4}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    goto :goto_3

    .line 104
    :cond_8
    iget-object v3, p0, Lorg/h2/command/dml/Delete;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2, v4}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v1}, Lorg/h2/result/RowList;->close()V

    return v6

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lorg/h2/result/RowList;->close()V

    throw v0
.end method
