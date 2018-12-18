.class public Lorg/h2/command/dml/Insert;
.super Lorg/h2/command/Prepared;
.source "Insert.java"

# interfaces
.implements Lorg/h2/result/ResultTarget;


# instance fields
.field private columns:[Lorg/h2/table/Column;

.field private duplicateKeyAssignmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/table/Column;",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private insertFromSelect:Z

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private query:Lorg/h2/command/dml/Query;

.field private rowNumber:I

.field private sortedInsertMode:Z

.field private table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    .line 44
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    return-void
.end method

.method private handleOnDuplicate(Lorg/h2/message/DbException;)V
    .locals 5

    .line 317
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x5bd1

    if-ne v0, v1, :cond_6

    .line 320
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 325
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 327
    :goto_0
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v2, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/command/dml/Insert;->getCurrentRowNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/h2/expression/Expression;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/h2/engine/Session;->setVariable(Ljava/lang/String;Lorg/h2/value/Value;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " SET "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 337
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Column;

    const-string v3, ", "

    .line 338
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Expression;

    .line 340
    invoke-virtual {v2}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_1
    const-string v1, " WHERE "

    .line 342
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 343
    invoke-direct {p0}, Lorg/h2/command/dml/Insert;->searchForUpdateIndex()Lorg/h2/index/Index;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 348
    invoke-direct {p0, v1}, Lorg/h2/command/dml/Insert;->prepareUpdateCondition(Lorg/h2/index/Index;)Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 349
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    .line 352
    iget-object v3, p0, Lorg/h2/command/dml/Insert;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/h2/expression/Parameter;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Parameter;

    .line 353
    iget-object v4, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4}, Lorg/h2/expression/Parameter;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    goto :goto_2

    .line 355
    :cond_2
    invoke-virtual {v0}, Lorg/h2/command/Prepared;->update()I

    .line 356
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/Session;->setVariable(Ljava/lang/String;Lorg/h2/value/Value;)V

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    const-string p1, "Unable to apply ON DUPLICATE KEY UPDATE, no index found!"

    .line 345
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 322
    :cond_5
    throw p1

    .line 318
    :cond_6
    throw p1
.end method

.method private insertRows()I
    .locals 13

    .line 123
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lorg/h2/command/dml/Insert;->setCurrentRowNumber(I)V

    .line 125
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    .line 126
    iput v0, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    .line 127
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 129
    iget-object v2, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v2, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    .line 131
    iget-object v5, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->startStatementWithinTransaction()V

    .line 132
    iget-object v5, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v5}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v5

    .line 133
    iget-object v6, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/h2/expression/Expression;

    add-int/lit8 v7, v4, 0x1

    .line 134
    invoke-virtual {p0, v7}, Lorg/h2/command/dml/Insert;->setCurrentRowNumber(I)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_1

    .line 136
    iget-object v9, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    aget-object v9, v9, v8

    .line 137
    invoke-virtual {v9}, Lorg/h2/table/Column;->getColumnId()I

    move-result v10

    .line 138
    aget-object v11, v6, v8

    if-eqz v11, :cond_0

    .line 141
    iget-object v12, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v11, v12}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v11

    .line 143
    :try_start_0
    iget-object v12, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v11, v12}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v9

    .line 144
    invoke-virtual {v5, v10, v9}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 146
    invoke-static {v6}, Lorg/h2/command/dml/Insert;->getSQL([Lorg/h2/expression/Expression;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1}, Lorg/h2/command/dml/Insert;->setRow(Lorg/h2/message/DbException;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 150
    :cond_1
    iget v4, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    .line 151
    iget-object v4, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6, v5}, Lorg/h2/table/Table;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 152
    iget-object v4, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v5}, Lorg/h2/table/Table;->fireBeforeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 154
    iget-object v4, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6, v3, v0}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 156
    :try_start_1
    iget-object v4, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6, v5}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 158
    invoke-direct {p0, v4}, Lorg/h2/command/dml/Insert;->handleOnDuplicate(Lorg/h2/message/DbException;)V

    .line 160
    :goto_3
    iget-object v4, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    iget-object v6, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v4, v6, v0, v5}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    .line 161
    iget-object v4, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6, v8, v5, v0}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    :cond_2
    move v4, v7

    goto/16 :goto_0

    .line 165
    :cond_3
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2, v3, v0}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 166
    iget-boolean v1, p0, Lorg/h2/command/dml/Insert;->insertFromSelect:Z

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1, v0, p0}, Lorg/h2/command/dml/Query;->query(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;

    goto :goto_5

    .line 169
    :cond_4
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object v1

    .line 170
    :goto_4
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 171
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    .line 172
    invoke-virtual {p0, v2}, Lorg/h2/command/dml/Insert;->addRow([Lorg/h2/value/Value;)V

    goto :goto_4

    .line 174
    :cond_5
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->close()V

    .line 177
    :cond_6
    :goto_5
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2, v3, v0}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    .line 178
    iget v0, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    return v0
.end method

.method private prepareUpdateCondition(Lorg/h2/index/Index;)Lorg/h2/expression/Expression;
    .locals 11

    .line 387
    invoke-interface {p1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    .line 388
    new-instance v5, Lorg/h2/expression/ExpressionColumn;

    iget-object v6, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v6

    iget-object v7, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v7}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v8}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v8, v4}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    const/4 v3, 0x0

    .line 390
    :goto_1
    iget-object v6, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 391
    invoke-virtual {v5}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v4, :cond_0

    .line 393
    new-instance v4, Lorg/h2/expression/Comparison;

    iget-object v6, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    iget-object v7, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/command/dml/Insert;->getCurrentRowNumber()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/h2/expression/Expression;

    add-int/lit8 v8, v3, 0x1

    aget-object v3, v7, v3

    invoke-direct {v4, v6, v1, v5, v3}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move v3, v8

    goto :goto_2

    .line 396
    :cond_0
    new-instance v6, Lorg/h2/expression/ConditionAndOr;

    new-instance v7, Lorg/h2/expression/Comparison;

    iget-object v8, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    iget-object v9, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/h2/expression/Expression;

    add-int/lit8 v10, v3, 0x1

    aget-object v3, v9, v3

    invoke-direct {v7, v8, v1, v5, v3}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    invoke-direct {v6, v1, v4, v7}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v4, v6

    move v3, v10

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private searchForUpdateIndex()Lorg/h2/index/Index;
    .locals 13

    .line 363
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/index/Index;

    .line 364
    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    :cond_1
    invoke-interface {v3}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move-object v7, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v8, v4, v2

    .line 366
    iget-object v9, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v10, v9

    move-object v11, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_3

    aget-object v11, v9, v7

    .line 367
    invoke-virtual {v8}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v7, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    move-object v11, v1

    goto :goto_1

    :cond_3
    move-object v7, v11

    :goto_2
    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    move-object v2, v7

    if-eqz v2, :cond_0

    :cond_6
    return-object v2
.end method


# virtual methods
.method public addAssignmentForDuplicate(Lorg/h2/table/Column;Lorg/h2/expression/Expression;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const p2, 0xa489

    .line 91
    invoke-virtual {p1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addRow([Lorg/h2/expression/Expression;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRow([Lorg/h2/value/Value;)V
    .locals 7

    .line 183
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v0

    .line 184
    iget v1, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    invoke-virtual {p0, v1}, Lorg/h2/command/dml/Insert;->setCurrentRowNumber(I)V

    .line 185
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 186
    iget-object v4, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    aget-object v4, v4, v3

    .line 187
    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v5

    .line 189
    :try_start_0
    aget-object v6, p1, v3

    invoke-virtual {v4, v6}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v4

    .line 190
    invoke-virtual {v0, v5, v4}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 192
    iget v1, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    invoke-static {p1}, Lorg/h2/command/dml/Insert;->getSQL([Lorg/h2/value/Value;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/h2/command/dml/Insert;->setRow(Lorg/h2/message/DbException;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 195
    :cond_0
    iget-object p1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v1, v0}, Lorg/h2/table/Table;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 196
    iget-object p1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Lorg/h2/table/Table;->fireBeforeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 198
    iget-object p1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v1, v0}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 199
    iget-object p1, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {p1, v1, v2, v0}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    .line 200
    iget-object p1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v1, v3, v0, v2}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    :cond_1
    return-void
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 10

    .line 211
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "INSERT INTO "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 213
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    const-string v7, ", "

    .line 214
    invoke-virtual {v0, v7}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v6}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")\n"

    .line 217
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 218
    iget-boolean v1, p0, Lorg/h2/command/dml/Insert;->insertFromSelect:Z

    if-eqz v1, :cond_1

    const-string v1, "DIRECT "

    .line 219
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 221
    :cond_1
    iget-boolean v1, p0, Lorg/h2/command/dml/Insert;->sortedInsertMode:Z

    if-eqz v1, :cond_2

    const-string v1, "SORTED "

    .line 222
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 224
    :cond_2
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, "VALUES "

    .line 225
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 227
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    const/16 v1, 0xa

    .line 228
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 230
    :cond_3
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/h2/expression/Expression;

    add-int/lit8 v6, v3, 0x1

    if-lez v3, :cond_4

    const-string v3, ",\n"

    .line 232
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 234
    :cond_4
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 235
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 236
    array-length v3, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_6

    aget-object v8, v5, v7

    const-string v9, ", "

    .line 237
    invoke-virtual {v0, v9}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v8, :cond_5

    const-string v8, "DEFAULT"

    .line 239
    invoke-virtual {v0, v8}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_3

    .line 241
    :cond_5
    invoke-virtual {v8}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    const/16 v3, 0x29

    .line 244
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move v3, v6

    goto :goto_1

    .line 247
    :cond_7
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 249
    :cond_8
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .line 206
    iget v0, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    return v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public isCacheable()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 9

    .line 254
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/expression/Expression;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 257
    new-array v0, v1, [Lorg/h2/table/Column;

    iput-object v0, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    .line 262
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x520a

    if-lez v0, :cond_6

    .line 263
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/h2/expression/Expression;

    .line 264
    array-length v4, v3

    iget-object v5, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v5, v5

    if-ne v4, v5, :cond_5

    .line 267
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    .line 268
    aget-object v6, v3, v5

    if-eqz v6, :cond_4

    .line 270
    iget-object v7, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v6

    .line 271
    instance-of v7, v6, Lorg/h2/expression/Parameter;

    if-eqz v7, :cond_3

    .line 272
    move-object v7, v6

    check-cast v7, Lorg/h2/expression/Parameter;

    .line 273
    iget-object v8, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Lorg/h2/expression/Parameter;->setColumn(Lorg/h2/table/Column;)V

    .line 275
    :cond_3
    aput-object v6, v3, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 265
    :cond_5
    invoke-static {v2}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 280
    :cond_6
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->prepare()V

    .line 281
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    if-ne v0, v1, :cond_8

    :cond_7
    return-void

    .line 282
    :cond_8
    invoke-static {v2}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setColumns([Lorg/h2/table/Column;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    return-void
.end method

.method public setCommand(Lorg/h2/command/Command;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lorg/h2/command/Prepared;->setCommand(Lorg/h2/command/Command;)V

    .line 62
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->setCommand(Lorg/h2/command/Command;)V

    :cond_0
    return-void
.end method

.method public setInsertFromSelect(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lorg/h2/command/dml/Insert;->insertFromSelect:Z

    return-void
.end method

.method public setQuery(Lorg/h2/command/dml/Query;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    return-void
.end method

.method public setSortedInsertMode(Z)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lorg/h2/command/dml/Insert;->sortedInsertMode:Z

    return-void
.end method

.method public setTable(Lorg/h2/table/Table;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    return-void
.end method

.method public update()I
    .locals 3

    .line 109
    iget-boolean v0, p0, Lorg/h2/command/dml/Insert;->sortedInsertMode:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    const/4 v1, 0x1

    .line 111
    invoke-interface {v0, v1}, Lorg/h2/index/Index;->setSortedInsertMode(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 114
    :try_start_0
    invoke-direct {p0}, Lorg/h2/command/dml/Insert;->insertRows()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0, v1}, Lorg/h2/index/Index;->setSortedInsertMode(Z)V

    :cond_1
    return v2

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lorg/h2/index/Index;->setSortedInsertMode(Z)V

    :cond_2
    throw v2
.end method
