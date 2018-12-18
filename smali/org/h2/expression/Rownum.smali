.class public Lorg/h2/expression/Rownum;
.super Lorg/h2/expression/Expression;
.source "Rownum.java"


# instance fields
.field private final prepared:Lorg/h2/command/Prepared;


# direct methods
.method public constructor <init>(Lorg/h2/command/Prepared;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/h2/expression/Rownum;->prepared:Lorg/h2/command/Prepared;

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

    const/16 v0, 0xb

    return v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "ROWNUM()"

    return-object v0
.end method

.method public getScale()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 0

    .line 29
    iget-object p1, p0, Lorg/h2/expression/Rownum;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->getCurrentRowNumber()I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p1

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 2

    .line 79
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
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

    :pswitch_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
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
