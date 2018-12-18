.class public Lorg/h2/command/dml/Update;
.super Lorg/h2/command/Prepared;
.source "Update.java"


# instance fields
.field private final columns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field private condition:Lorg/h2/expression/Expression;

.field private final expressionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/table/Column;",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private limitExpr:Lorg/h2/expression/Expression;

.field private tableFilter:Lorg/h2/table/TableFilter;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    .line 46
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Update;->columns:Ljava/util/ArrayList;

    .line 47
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Update;->expressionMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getPlanSQL()Ljava/lang/String;
    .locals 6

    .line 163
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/table/TableFilter;->getPlanSQL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v3, "\nSET\n    "

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 165
    iget-object v1, p0, Lorg/h2/command/dml/Update;->columns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 166
    iget-object v3, p0, Lorg/h2/command/dml/Update;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Column;

    .line 167
    iget-object v4, p0, Lorg/h2/command/dml/Update;->expressionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    const-string v5, ",\n    "

    .line 168
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_0
    iget-object v1, p0, Lorg/h2/command/dml/Update;->condition:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_1

    const-string v1, "\nWHERE "

    .line 172
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/dml/Update;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 174
    :cond_1
    iget-object v1, p0, Lorg/h2/command/dml/Update;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_2

    const-string v1, "\nLIMIT "

    .line 175
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/dml/Update;->limitExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 178
    :cond_2
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x44

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
    .locals 7

    .line 183
    iget-object v0, p0, Lorg/h2/command/dml/Update;->condition:Lorg/h2/expression/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/h2/command/dml/Update;->condition:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v2, v1}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 185
    iget-object v0, p0, Lorg/h2/command/dml/Update;->condition:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Update;->condition:Lorg/h2/expression/Expression;

    .line 186
    iget-object v0, p0, Lorg/h2/command/dml/Update;->condition:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v2, v3}, Lorg/h2/expression/Expression;->createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Update;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 189
    iget-object v3, p0, Lorg/h2/command/dml/Update;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Column;

    .line 190
    iget-object v4, p0, Lorg/h2/command/dml/Update;->expressionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    .line 191
    iget-object v5, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v4, v5, v1}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 192
    iget-object v5, p0, Lorg/h2/command/dml/Update;->expressionMap:Ljava/util/HashMap;

    iget-object v6, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 194
    new-array v0, v0, [Lorg/h2/table/TableFilter;

    iget-object v2, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    aput-object v2, v0, v1

    .line 195
    iget-object v2, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    iget-object v3, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-static {v0}, Lorg/h2/expression/ExpressionVisitor;->allColumnsForTableFilters([Lorg/h2/table/TableFilter;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Lorg/h2/table/TableFilter;->getBestPlanItem(Lorg/h2/engine/Session;[Lorg/h2/table/TableFilter;ILjava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v1, v0}, Lorg/h2/table/TableFilter;->setPlanItem(Lorg/h2/table/PlanItem;)V

    .line 198
    iget-object v0, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->prepare()V

    return-void
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setAssignment(Lorg/h2/table/Column;Lorg/h2/expression/Expression;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/h2/command/dml/Update;->expressionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/h2/command/dml/Update;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lorg/h2/command/dml/Update;->expressionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    instance-of v0, p2, Lorg/h2/expression/Parameter;

    if-eqz v0, :cond_0

    .line 75
    check-cast p2, Lorg/h2/expression/Parameter;

    .line 76
    invoke-virtual {p2, p1}, Lorg/h2/expression/Parameter;->setColumn(Lorg/h2/table/Column;)V

    :cond_0
    return-void

    :cond_1
    const p2, 0xa489

    .line 69
    invoke-virtual {p1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setCondition(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/h2/command/dml/Update;->condition:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setLimit(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lorg/h2/command/dml/Update;->limitExpr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setTableFilter(Lorg/h2/table/TableFilter;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    return-void
.end method

.method public update()I
    .locals 14

    .line 82
    iget-object v0, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    iget-object v1, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/table/TableFilter;->startQuery(Lorg/h2/engine/Session;)V

    .line 83
    iget-object v0, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->reset()V

    .line 84
    new-instance v0, Lorg/h2/result/RowList;

    iget-object v1, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/result/RowList;-><init>(Lorg/h2/engine/Session;)V

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 88
    iget-object v2, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    .line 89
    iget-object v2, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 90
    invoke-virtual {v1}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v2

    array-length v2, v2

    .line 92
    invoke-virtual {p0, v5}, Lorg/h2/command/dml/Update;->setCurrentRowNumber(I)V

    .line 94
    invoke-virtual {v1}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v4

    const/4 v6, -0x1

    .line 96
    iget-object v7, p0, Lorg/h2/command/dml/Update;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz v7, :cond_0

    .line 97
    iget-object v7, p0, Lorg/h2/command/dml/Update;->limitExpr:Lorg/h2/expression/Expression;

    iget-object v8, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v7, v8}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v7

    .line 98
    sget-object v8, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v7, v8, :cond_0

    .line 99
    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v6

    move v7, v6

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 102
    :cond_1
    :goto_0
    iget-object v8, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v8}, Lorg/h2/table/TableFilter;->next()Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v8, v6, 0x1

    .line 103
    invoke-virtual {p0, v8}, Lorg/h2/command/dml/Update;->setCurrentRowNumber(I)V

    if-ltz v7, :cond_2

    if-lt v6, v7, :cond_2

    goto/16 :goto_4

    .line 107
    :cond_2
    iget-object v9, p0, Lorg/h2/command/dml/Update;->condition:Lorg/h2/expression/Expression;

    if-eqz v9, :cond_3

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v10, p0, Lorg/h2/command/dml/Update;->condition:Lorg/h2/expression/Expression;

    iget-object v11, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v10, v11}, Lorg/h2/expression/Expression;->getBooleanValue(Lorg/h2/engine/Session;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 109
    :cond_3
    iget-object v6, p0, Lorg/h2/command/dml/Update;->tableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v6}, Lorg/h2/table/TableFilter;->get()Lorg/h2/result/Row;

    move-result-object v6

    .line 110
    invoke-virtual {v1}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v2, :cond_6

    .line 112
    iget-object v11, p0, Lorg/h2/command/dml/Update;->expressionMap:Ljava/util/HashMap;

    aget-object v12, v4, v10

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/h2/expression/Expression;

    if-nez v11, :cond_4

    .line 115
    invoke-virtual {v6, v10}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v11

    goto :goto_2

    .line 116
    :cond_4
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getDefault()Lorg/h2/expression/ValueExpression;

    move-result-object v12

    if-ne v11, v12, :cond_5

    .line 117
    invoke-virtual {v1, v10}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v11

    .line 118
    iget-object v12, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v12, v11}, Lorg/h2/table/Table;->getDefaultValue(Lorg/h2/engine/Session;Lorg/h2/table/Column;)Lorg/h2/value/Value;

    move-result-object v11

    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {v1, v10}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v12

    .line 121
    iget-object v13, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v11, v13}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v11

    invoke-virtual {v12, v11}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v11

    .line 123
    :goto_2
    invoke-virtual {v9, v10, v11}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 125
    :cond_6
    iget-object v10, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v10, v9}, Lorg/h2/table/Table;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 127
    invoke-virtual {v1}, Lorg/h2/table/Table;->fireRow()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 128
    iget-object v10, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v10, v6, v9}, Lorg/h2/table/Table;->fireBeforeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)Z

    move-result v10

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_8

    .line 131
    invoke-virtual {v0, v6}, Lorg/h2/result/RowList;->add(Lorg/h2/result/Row;)V

    .line 132
    invoke-virtual {v0, v9}, Lorg/h2/result/RowList;->add(Lorg/h2/result/Row;)V

    :cond_8
    move v6, v8

    goto/16 :goto_0

    .line 145
    :cond_9
    :goto_4
    iget-object v2, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, p0, v2, v0}, Lorg/h2/table/Table;->updateRows(Lorg/h2/command/Prepared;Lorg/h2/engine/Session;Lorg/h2/result/RowList;)V

    .line 146
    invoke-virtual {v1}, Lorg/h2/table/Table;->fireRow()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 147
    invoke-virtual {v0}, Lorg/h2/result/RowList;->invalidateCache()V

    .line 148
    invoke-virtual {v0}, Lorg/h2/result/RowList;->reset()V

    :goto_5
    invoke-virtual {v0}, Lorg/h2/result/RowList;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 149
    invoke-virtual {v0}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v2

    .line 150
    invoke-virtual {v0}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v4

    .line 151
    iget-object v7, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v7, v2, v4, v5}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    goto :goto_5

    .line 154
    :cond_a
    iget-object v2, p0, Lorg/h2/command/dml/Update;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2, v3, v5}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v0}, Lorg/h2/result/RowList;->close()V

    return v6

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/h2/result/RowList;->close()V

    throw v1
.end method
