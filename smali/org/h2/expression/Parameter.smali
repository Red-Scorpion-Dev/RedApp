.class public Lorg/h2/expression/Parameter;
.super Lorg/h2/expression/Expression;
.source "Parameter.java"

# interfaces
.implements Lorg/h2/expression/ParameterInterface;


# instance fields
.field private column:Lorg/h2/table/Column;

.field private final index:I

.field private value:Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 29
    iput p1, p0, Lorg/h2/expression/Parameter;->index:I

    return-void
.end method


# virtual methods
.method public checkSet()V
    .locals 3

    .line 80
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15f9c

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/expression/Parameter;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getCost()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getDisplaySize()I

    move-result v0

    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getDisplaySize()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 187
    iget v0, p0, Lorg/h2/expression/Parameter;->index:I

    return v0
.end method

.method public getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 3

    .line 178
    new-instance v0, Lorg/h2/expression/Comparison;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v2

    invoke-direct {v0, p1, v1, p0, v2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v0
.end method

.method public getParamValue()Lorg/h2/value/Value;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    return-wide v0

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/expression/Parameter;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getScale()I

    move-result v0

    return v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getScale()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getType()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lorg/h2/expression/Parameter;->getParamValue()Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public isConstant()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 2

    .line 150
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 167
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

    :pswitch_0
    return v1

    .line 165
    :pswitch_1
    iget-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isValueSet()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 0

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 1

    .line 87
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    instance-of p1, p1, Lorg/h2/value/ValueString;

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    :cond_0
    return-object p0
.end method

.method public setColumn(Lorg/h2/table/Column;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    return-void
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 0

    return-void
.end method

.method public setValue(Lorg/h2/value/Value;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    return-void
.end method

.method public setValue(Lorg/h2/value/Value;Z)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
