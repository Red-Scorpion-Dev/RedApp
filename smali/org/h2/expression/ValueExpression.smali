.class public Lorg/h2/expression/ValueExpression;
.super Lorg/h2/expression/Expression;
.source "ValueExpression.java"


# static fields
.field private static final DEFAULT:Ljava/lang/Object;

.field private static final NULL:Ljava/lang/Object;


# instance fields
.field private final value:Lorg/h2/value/Value;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lorg/h2/expression/ValueExpression;

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {v0, v1}, Lorg/h2/expression/ValueExpression;-><init>(Lorg/h2/value/Value;)V

    sput-object v0, Lorg/h2/expression/ValueExpression;->NULL:Ljava/lang/Object;

    .line 32
    new-instance v0, Lorg/h2/expression/ValueExpression;

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {v0, v1}, Lorg/h2/expression/ValueExpression;-><init>(Lorg/h2/value/Value;)V

    sput-object v0, Lorg/h2/expression/ValueExpression;->DEFAULT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/h2/value/Value;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/h2/expression/ValueExpression;->value:Lorg/h2/value/Value;

    return-void
.end method

.method public static get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;
    .locals 1

    .line 65
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p0, v0, :cond_0

    .line 66
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    new-instance v0, Lorg/h2/expression/ValueExpression;

    invoke-direct {v0, p0}, Lorg/h2/expression/ValueExpression;-><init>(Lorg/h2/value/Value;)V

    return-object v0
.end method

.method public static getDefault()Lorg/h2/expression/ValueExpression;
    .locals 1

    .line 55
    sget-object v0, Lorg/h2/expression/ValueExpression;->DEFAULT:Ljava/lang/Object;

    check-cast v0, Lorg/h2/expression/ValueExpression;

    return-object v0
.end method

.method public static getNull()Lorg/h2/expression/ValueExpression;
    .locals 1

    .line 46
    sget-object v0, Lorg/h2/expression/ValueExpression;->NULL:Ljava/lang/Object;

    check-cast v0, Lorg/h2/expression/ValueExpression;

    return-object v0
.end method


# virtual methods
.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lorg/h2/expression/ValueExpression;->value:Lorg/h2/value/Value;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 84
    iget-object p1, p0, Lorg/h2/expression/ValueExpression;->value:Lorg/h2/value/Value;

    check-cast p1, Lorg/h2/value/ValueBoolean;

    invoke-virtual {p1}, Lorg/h2/value/ValueBoolean;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    const/4 v0, 0x0

    .line 86
    invoke-static {p1, v0, p0}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    :cond_0
    return-void
.end method

.method public getCost()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/h2/expression/ValueExpression;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;
    .locals 2

    .line 176
    invoke-virtual {p0}, Lorg/h2/expression/ValueExpression;->getType()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lorg/h2/expression/ValueExpression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueArray;

    invoke-static {p1, v0}, Lorg/h2/expression/ValueExpression;->getExpressionColumns(Lorg/h2/engine/Session;Lorg/h2/value/ValueArray;)[Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 179
    :cond_0
    invoke-super {p0, p1}, Lorg/h2/expression/Expression;->getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1
.end method

.method public getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 3

    .line 93
    new-instance v0, Lorg/h2/expression/Comparison;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v2

    invoke-direct {v0, p1, v1, p0, v2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/h2/expression/ValueExpression;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lorg/h2/expression/ValueExpression;->DEFAULT:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const-string v0, "DEFAULT"

    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ValueExpression;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/h2/expression/ValueExpression;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getScale()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/h2/expression/ValueExpression;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 0

    .line 73
    iget-object p1, p0, Lorg/h2/expression/ValueExpression;->value:Lorg/h2/value/Value;

    return-object p1
.end method

.method public isConstant()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 2

    .line 152
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
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
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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

    const/4 v0, 0x1

    return v0
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 0

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 0

    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 0

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
