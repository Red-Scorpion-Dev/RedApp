.class public Lorg/h2/expression/Alias;
.super Lorg/h2/expression/Expression;
.source "Alias.java"


# instance fields
.field private final alias:Ljava/lang/String;

.field private final aliasColumnName:Z

.field private expr:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/h2/expression/Expression;Ljava/lang/String;Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    .line 25
    iput-object p2, p0, Lorg/h2/expression/Alias;->alias:Ljava/lang/String;

    .line 26
    iput-boolean p3, p0, Lorg/h2/expression/Alias;->aliasColumnName:Z

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/h2/expression/Alias;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ExpressionColumn;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/expression/Alias;->aliasColumnName:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getColumnName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/h2/expression/Expression;->getColumnName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCost()I
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getNonAliasExpression()Lorg/h2/expression/Expression;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getNullable()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getNullable()I

    move-result v0

    return v0
.end method

.method public getPrecision()J
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/Alias;->alias:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getScale()I

    move-result v0

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-boolean v0, p0, Lorg/h2/expression/Alias;->aliasColumnName:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-super {p0}, Lorg/h2/expression/Expression;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public isAutoIncrement()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isAutoIncrement()Z

    move-result v0

    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/h2/expression/Alias;->expr:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    return-void
.end method
