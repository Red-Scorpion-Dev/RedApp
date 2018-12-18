.class public Lorg/h2/expression/SequenceValue;
.super Lorg/h2/expression/Expression;
.source "SequenceValue.java"


# instance fields
.field private final sequence:Lorg/h2/schema/Sequence;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Sequence;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/h2/expression/SequenceValue;->sequence:Lorg/h2/schema/Sequence;

    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 1

    const/4 v0, 0x1

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
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(NEXT VALUE FOR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/SequenceValue;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getSQL()Ljava/lang/String;

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

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 3

    .line 30
    iget-object v0, p0, Lorg/h2/expression/SequenceValue;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v0, p1}, Lorg/h2/schema/Sequence;->getNext(Lorg/h2/engine/Session;)J

    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/engine/Session;->setLastIdentity(Lorg/h2/value/Value;)V

    .line 32
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 4

    .line 82
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 100
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

    .line 97
    :pswitch_0
    iget-object v0, p0, Lorg/h2/expression/SequenceValue;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->addDependency(Lorg/h2/engine/DbObject;)V

    return v1

    .line 94
    :pswitch_1
    iget-object v0, p0, Lorg/h2/expression/SequenceValue;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v0}, Lorg/h2/schema/Sequence;->getModificationId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/h2/expression/ExpressionVisitor;->addDataModificationId(J)V

    return v1

    :pswitch_2
    return v1

    :pswitch_3
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
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
