.class public Lorg/h2/expression/Variable;
.super Lorg/h2/expression/Expression;
.source "Variable.java"


# instance fields
.field private lastValue:Lorg/h2/value/Value;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 24
    iput-object p2, p0, Lorg/h2/expression/Variable;->name:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->getVariable(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/Variable;->lastValue:Lorg/h2/value/Value;

    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/h2/expression/Variable;->lastValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/h2/expression/Variable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/h2/expression/Variable;->lastValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/Variable;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/h2/expression/Variable;->lastValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getScale()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/h2/expression/Variable;->lastValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/h2/expression/Variable;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->getVariable(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/Variable;->lastValue:Lorg/h2/value/Value;

    .line 61
    iget-object p1, p0, Lorg/h2/expression/Variable;->lastValue:Lorg/h2/value/Value;

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 2

    .line 66
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
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
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
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
