.class public Lorg/h2/expression/Subquery;
.super Lorg/h2/expression/Expression;
.source "Subquery.java"


# instance fields
.field private expression:Lorg/h2/expression/Expression;

.field private final query:Lorg/h2/command/dml/Query;


# direct methods
.method public constructor <init>(Lorg/h2/command/dml/Query;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    return-void
.end method

.method private getExpression()Lorg/h2/expression/Expression;
    .locals 5

    .line 107
    iget-object v0, p0, Lorg/h2/expression/Subquery;->expression:Lorg/h2/expression/Expression;

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 111
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/expression/Subquery;->expression:Lorg/h2/expression/Expression;

    goto :goto_1

    .line 113
    :cond_0
    new-array v3, v1, [Lorg/h2/expression/Expression;

    :goto_0
    if-ge v2, v1, :cond_1

    .line 115
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Lorg/h2/expression/ExpressionList;

    invoke-direct {v0, v3}, Lorg/h2/expression/ExpressionList;-><init>([Lorg/h2/expression/Expression;)V

    iput-object v0, p0, Lorg/h2/expression/Subquery;->expression:Lorg/h2/expression/Expression;

    .line 120
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/h2/expression/Subquery;->expression:Lorg/h2/expression/Expression;

    return-object v0
.end method


# virtual methods
.method public getCost()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getCostAsExpression()I

    move-result v0

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    .line 93
    invoke-direct {p0}, Lorg/h2/expression/Subquery;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;
    .locals 1

    .line 139
    invoke-direct {p0}, Lorg/h2/expression/Subquery;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1
.end method

.method public getPrecision()J
    .locals 2

    .line 88
    invoke-direct {p0}, Lorg/h2/expression/Subquery;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuery()Lorg/h2/command/dml/Query;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    return-object v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 83
    invoke-direct {p0}, Lorg/h2/expression/Subquery;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getScale()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/h2/expression/Subquery;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 3

    .line 35
    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->setSession(Lorg/h2/engine/Session;)V

    .line 36
    iget-object p1, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object p1

    .line 38
    :try_start_0
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    if-gtz v0, :cond_0

    .line 44
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->next()Z

    .line 47
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    .line 48
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v1, 0x0

    .line 49
    aget-object v0, v0, v1

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v0}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->close()V

    return-object v0

    :cond_2
    const v0, 0x15fc5

    .line 40
    :try_start_1
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 56
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->close()V

    throw v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->optimizeQueryExpression(Lorg/h2/command/dml/Query;)V

    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->updateAggregate(Lorg/h2/engine/Session;)V

    return-void
.end method
