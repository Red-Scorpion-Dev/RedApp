.class public Lorg/h2/expression/JavaFunction;
.super Lorg/h2/expression/Expression;
.source "JavaFunction.java"

# interfaces
.implements Lorg/h2/expression/FunctionCall;


# instance fields
.field private final args:[Lorg/h2/expression/Expression;

.field private final functionAlias:Lorg/h2/engine/FunctionAlias;

.field private final javaMethod:Lorg/h2/engine/FunctionAlias$JavaMethod;


# direct methods
.method public constructor <init>(Lorg/h2/engine/FunctionAlias;[Lorg/h2/expression/Expression;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/h2/expression/JavaFunction;->functionAlias:Lorg/h2/engine/FunctionAlias;

    .line 32
    invoke-virtual {p1, p2}, Lorg/h2/engine/FunctionAlias;->findJavaMethod([Lorg/h2/expression/Expression;)Lorg/h2/engine/FunctionAlias$JavaMethod;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/JavaFunction;->javaMethod:Lorg/h2/engine/FunctionAlias$JavaMethod;

    .line 33
    iput-object p2, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    return-void
.end method


# virtual methods
.method public getArgs()[Lorg/h2/expression/Expression;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getCost()I
    .locals 5

    .line 159
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->javaMethod:Lorg/h2/engine/FunctionAlias$JavaMethod;

    invoke-virtual {v0}, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 160
    :goto_0
    iget-object v1, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 161
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getCost()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lorg/h2/expression/JavaFunction;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    invoke-super {p0, p1}, Lorg/h2/expression/Expression;->getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 175
    :pswitch_0
    invoke-virtual {p0}, Lorg/h2/expression/JavaFunction;->getArgs()[Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/h2/expression/JavaFunction;->getValueForColumnList(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/ValueResultSet;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lorg/h2/value/ValueResultSet;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/expression/JavaFunction;->getExpressionColumns(Lorg/h2/engine/Session;Ljava/sql/ResultSet;)[Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 178
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/h2/expression/JavaFunction;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueArray;

    invoke-static {p1, v0}, Lorg/h2/expression/JavaFunction;->getExpressionColumns(Lorg/h2/engine/Session;Lorg/h2/value/ValueArray;)[Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->functionAlias:Lorg/h2/engine/FunctionAlias;

    invoke-virtual {v0}, Lorg/h2/engine/FunctionAlias;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/32 v0, 0x7fffffff

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 6

    .line 93
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 95
    iget-object v1, p0, Lorg/h2/expression/JavaFunction;->functionAlias:Lorg/h2/engine/FunctionAlias;

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->functionsInSchema:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/expression/JavaFunction;->functionAlias:Lorg/h2/engine/FunctionAlias;

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PUBLIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/JavaFunction;->functionAlias:Lorg/h2/engine/FunctionAlias;

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 101
    :cond_1
    iget-object v1, p0, Lorg/h2/expression/JavaFunction;->functionAlias:Lorg/h2/engine/FunctionAlias;

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 102
    iget-object v1, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-string v5, ", "

    .line 103
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    .line 106
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/h2/expression/JavaFunction;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v0

    iget v0, v0, Lorg/h2/value/DataType;->defaultScale:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->javaMethod:Lorg/h2/engine/FunctionAlias$JavaMethod;

    invoke-virtual {v0}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 3

    .line 38
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->javaMethod:Lorg/h2/engine/FunctionAlias$JavaMethod;

    iget-object v1, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;Z)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public getValueForColumnList(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/ValueResultSet;
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->javaMethod:Lorg/h2/engine/FunctionAlias$JavaMethod;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;Z)Lorg/h2/value/Value;

    move-result-object p1

    .line 127
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/h2/value/ValueResultSet;

    :goto_0
    return-object p1
.end method

.method public isBufferResultSetToLocalTemp()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->functionAlias:Lorg/h2/engine/FunctionAlias;

    invoke-virtual {v0}, Lorg/h2/engine/FunctionAlias;->isBufferResultSetToLocalTemp()Z

    move-result v0

    return v0
.end method

.method public isDeterministic()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->functionAlias:Lorg/h2/engine/FunctionAlias;

    invoke-virtual {v0}, Lorg/h2/engine/FunctionAlias;->isDeterministic()Z

    move-result v0

    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 5

    .line 137
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->functionAlias:Lorg/h2/engine/FunctionAlias;

    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->addDependency(Lorg/h2/engine/DbObject;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lorg/h2/expression/JavaFunction;->isDeterministic()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 149
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    if-eqz v4, :cond_3

    .line 150
    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 4

    .line 48
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 49
    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 5

    .line 55
    invoke-virtual {p0}, Lorg/h2/expression/JavaFunction;->isDeterministic()Z

    move-result v0

    .line 56
    iget-object v1, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 57
    iget-object v3, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v3

    .line 58
    iget-object v4, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    aput-object v3, v4, v2

    .line 59
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v3

    and-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0, p1}, Lorg/h2/expression/JavaFunction;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 4

    .line 69
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 4

    .line 111
    iget-object v0, p0, Lorg/h2/expression/JavaFunction;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
