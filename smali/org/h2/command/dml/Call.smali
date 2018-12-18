.class public Lorg/h2/command/dml/Call;
.super Lorg/h2/command/Prepared;
.source "Call.java"


# instance fields
.field private expression:Lorg/h2/expression/Expression;

.field private expressions:[Lorg/h2/expression/Expression;

.field private isResultSet:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x39

    return v0
.end method

.method public isCacheable()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/h2/command/dml/Call;->isResultSet:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isQuery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/h2/command/dml/Call;->expression:Lorg/h2/expression/Expression;

    sget-object v1, Lorg/h2/expression/ExpressionVisitor;->READONLY_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 4

    .line 80
    iget-object v0, p0, Lorg/h2/command/dml/Call;->expression:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/dml/Call;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Call;->expression:Lorg/h2/expression/Expression;

    const/4 v0, 0x1

    .line 81
    new-array v1, v0, [Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/Call;->expression:Lorg/h2/expression/Expression;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lorg/h2/command/dml/Call;->expressions:[Lorg/h2/expression/Expression;

    .line 82
    iget-object v1, p0, Lorg/h2/command/dml/Call;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lorg/h2/command/dml/Call;->isResultSet:Z

    .line 83
    iget-boolean v1, p0, Lorg/h2/command/dml/Call;->isResultSet:Z

    if-eqz v1, :cond_1

    .line 84
    iput-boolean v0, p0, Lorg/h2/command/dml/Call;->prepareAlways:Z

    :cond_1
    return-void
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 4

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lorg/h2/command/dml/Call;->setCurrentRowNumber(I)V

    .line 65
    iget-object v1, p0, Lorg/h2/command/dml/Call;->expression:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/Call;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    .line 66
    iget-boolean v2, p0, Lorg/h2/command/dml/Call;->isResultSet:Z

    if-eqz v2, :cond_0

    const/16 v0, 0x12

    .line 67
    invoke-virtual {v1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lorg/h2/value/Value;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lorg/h2/command/dml/Call;->session:Lorg/h2/engine/Session;

    invoke-static {v1, v0, p1}, Lorg/h2/result/LocalResult;->read(Lorg/h2/engine/Session;Ljava/sql/ResultSet;I)Lorg/h2/result/LocalResult;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    new-instance p1, Lorg/h2/result/LocalResult;

    iget-object v2, p0, Lorg/h2/command/dml/Call;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/Call;->expressions:[Lorg/h2/expression/Expression;

    invoke-direct {p1, v2, v3, v0}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    .line 72
    new-array v0, v0, [Lorg/h2/value/Value;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 73
    invoke-virtual {p1, v0}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    .line 74
    invoke-virtual {p1}, Lorg/h2/result/LocalResult;->done()V

    return-object p1
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 4

    .line 35
    iget-boolean v0, p0, Lorg/h2/command/dml/Call;->isResultSet:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/h2/command/dml/Call;->expression:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/dml/Call;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;

    move-result-object v0

    .line 37
    new-instance v1, Lorg/h2/result/LocalResult;

    iget-object v2, p0, Lorg/h2/command/dml/Call;->session:Lorg/h2/engine/Session;

    array-length v3, v0

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Lorg/h2/result/LocalResult;

    iget-object v0, p0, Lorg/h2/command/dml/Call;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/dml/Call;->expressions:[Lorg/h2/expression/Expression;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    .line 41
    :goto_0
    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->done()V

    return-object v1
.end method

.method public setExpression(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/h2/command/dml/Call;->expression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public update()I
    .locals 3

    .line 47
    iget-object v0, p0, Lorg/h2/command/dml/Call;->expression:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/dml/Call;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 58
    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    invoke-super {p0}, Lorg/h2/command/Prepared;->update()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
