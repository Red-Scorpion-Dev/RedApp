.class public Lorg/h2/expression/ExpressionList;
.super Lorg/h2/expression/Expression;
.source "ExpressionList.java"


# instance fields
.field private final list:[Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>([Lorg/h2/expression/Expression;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 5

    .line 120
    iget-object v0, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 121
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getCost()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getDisplaySize()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;
    .locals 12

    .line 128
    iget-object v0, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/expression/ExpressionColumn;

    const/4 v1, 0x0

    .line 129
    :goto_0
    iget-object v2, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 130
    iget-object v2, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    aget-object v2, v2, v1

    .line 131
    new-instance v10, Lorg/h2/table/Column;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v5

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v6

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getScale()I

    move-result v8

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    .line 134
    new-instance v2, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    invoke-direct {v2, v3, v10}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V

    aput-object v2, v0, v1

    move v1, v11

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/32 v0, 0x7fffffff

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 6

    .line 89
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, ", "

    .line 91
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x2c

    .line 95
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_1
    const/16 v1, 0x29

    .line 97
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 3

    .line 30
    iget-object v0, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/value/Value;

    const/4 v1, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 32
    iget-object v2, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p1

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 5

    .line 109
    iget-object v0, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 110
    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 4

    .line 44
    iget-object v0, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 45
    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 52
    :goto_0
    iget-object v3, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 53
    iget-object v3, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    .line 57
    :cond_0
    iget-object v4, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {p0, p1}, Lorg/h2/expression/ExpressionList;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 4

    .line 67
    iget-object v0, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 68
    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 4

    .line 102
    iget-object v0, p0, Lorg/h2/expression/ExpressionList;->list:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 103
    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
