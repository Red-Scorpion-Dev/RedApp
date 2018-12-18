.class public Lorg/h2/command/dml/ExecuteProcedure;
.super Lorg/h2/command/Prepared;
.source "ExecuteProcedure.java"


# instance fields
.field private final expressions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private procedure:Lorg/h2/engine/Procedure;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    .line 24
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/ExecuteProcedure;->expressions:Ljava/util/ArrayList;

    return-void
.end method

.method private setParameters()V
    .locals 5

    .line 46
    iget-object v0, p0, Lorg/h2/command/dml/ExecuteProcedure;->procedure:Lorg/h2/engine/Procedure;

    invoke-virtual {v0}, Lorg/h2/engine/Procedure;->getPrepared()Lorg/h2/command/Prepared;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/h2/command/dml/ExecuteProcedure;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    iget-object v2, p0, Lorg/h2/command/dml/ExecuteProcedure;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Parameter;

    .line 52
    iget-object v4, p0, Lorg/h2/command/dml/ExecuteProcedure;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x3b

    return v0
.end method

.method public isQuery()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/h2/command/dml/ExecuteProcedure;->procedure:Lorg/h2/engine/Procedure;

    invoke-virtual {v0}, Lorg/h2/engine/Procedure;->getPrepared()Lorg/h2/command/Prepared;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lorg/h2/command/Prepared;->isQuery()Z

    move-result v0

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 1

    .line 71
    invoke-direct {p0}, Lorg/h2/command/dml/ExecuteProcedure;->setParameters()V

    .line 72
    iget-object v0, p0, Lorg/h2/command/dml/ExecuteProcedure;->procedure:Lorg/h2/engine/Procedure;

    invoke-virtual {v0}, Lorg/h2/engine/Procedure;->getPrepared()Lorg/h2/command/Prepared;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object p1

    return-object p1
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/h2/command/dml/ExecuteProcedure;->procedure:Lorg/h2/engine/Procedure;

    invoke-virtual {v0}, Lorg/h2/engine/Procedure;->getPrepared()Lorg/h2/command/Prepared;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lorg/h2/command/Prepared;->queryMeta()Lorg/h2/result/ResultInterface;

    move-result-object v0

    return-object v0
.end method

.method public setExpression(ILorg/h2/expression/Expression;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/h2/command/dml/ExecuteProcedure;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public setProcedure(Lorg/h2/engine/Procedure;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/h2/command/dml/ExecuteProcedure;->procedure:Lorg/h2/engine/Procedure;

    return-void
.end method

.method public update()I
    .locals 1

    .line 64
    invoke-direct {p0}, Lorg/h2/command/dml/ExecuteProcedure;->setParameters()V

    .line 65
    iget-object v0, p0, Lorg/h2/command/dml/ExecuteProcedure;->procedure:Lorg/h2/engine/Procedure;

    invoke-virtual {v0}, Lorg/h2/engine/Procedure;->getPrepared()Lorg/h2/command/Prepared;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lorg/h2/command/Prepared;->update()I

    move-result v0

    return v0
.end method
