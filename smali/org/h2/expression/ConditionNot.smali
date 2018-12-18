.class public Lorg/h2/expression/ConditionNot;
.super Lorg/h2/expression/Condition;
.source "ConditionNot.java"


# instance fields
.field private condition:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/h2/expression/Condition;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    return-void
.end method


# virtual methods
.method public addFilterConditions(Lorg/h2/table/TableFilter;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/expression/Condition;->addFilterConditions(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public getCost()I
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDisplaySize()I
    .locals 1

    .line 17
    invoke-super {p0}, Lorg/h2/expression/Condition;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 0

    .line 27
    iget-object p1, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    return-object p1
.end method

.method public bridge synthetic getPrecision()J
    .locals 2

    .line 17
    invoke-super {p0}, Lorg/h2/expression/Condition;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(NOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getScale()I
    .locals 1

    .line 17
    invoke-super {p0}, Lorg/h2/expression/Condition;->getScale()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    .line 17
    invoke-super {p0}, Lorg/h2/expression/Condition;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 33
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 53
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_1

    .line 54
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 58
    :cond_2
    iput-object v0, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/h2/expression/ConditionNot;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    return-void
.end method
