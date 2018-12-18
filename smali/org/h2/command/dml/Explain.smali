.class public Lorg/h2/command/dml/Explain;
.super Lorg/h2/command/Prepared;
.source "Explain.java"


# instance fields
.field private command:Lorg/h2/command/Prepared;

.field private executeCommand:Z

.field private result:Lorg/h2/result/LocalResult;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method

.method private add(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 128
    new-array v0, v0, [Lorg/h2/value/Value;

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 129
    iget-object p1, p0, Lorg/h2/command/dml/Explain;->result:Lorg/h2/result/LocalResult;

    invoke-virtual {p1, v0}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    return-void
.end method


# virtual methods
.method public getCommand()Lorg/h2/command/Prepared;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public isQuery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->prepare()V

    return-void
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 12

    .line 63
    new-instance v0, Lorg/h2/table/Column;

    const-string v1, "PLAN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    .line 64
    iget-object v1, p0, Lorg/h2/command/dml/Explain;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    .line 65
    new-instance v2, Lorg/h2/expression/ExpressionColumn;

    invoke-direct {v2, v1, v0}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V

    const/4 v0, 0x1

    .line 66
    new-array v3, v0, [Lorg/h2/expression/Expression;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 67
    new-instance v2, Lorg/h2/result/LocalResult;

    iget-object v5, p0, Lorg/h2/command/dml/Explain;->session:Lorg/h2/engine/Session;

    invoke-direct {v2, v5, v3, v0}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    iput-object v2, p0, Lorg/h2/command/dml/Explain;->result:Lorg/h2/result/LocalResult;

    if-ltz p1, :cond_c

    .line 70
    iget-boolean v2, p0, Lorg/h2/command/dml/Explain;->executeCommand:Z

    if-eqz v2, :cond_a

    .line 73
    invoke-virtual {v1}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v1}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v2}, Lorg/h2/store/PageStore;->statisticsStart()V

    .line 78
    :cond_0
    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->statisticsStart()V

    goto :goto_0

    :cond_1
    move-object v1, v3

    move-object v2, v1

    .line 83
    :cond_2
    :goto_0
    iget-object v5, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    invoke-virtual {v5}, Lorg/h2/command/Prepared;->isQuery()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    iget-object v5, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    invoke-virtual {v5, p1}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    goto :goto_1

    .line 86
    :cond_3
    iget-object p1, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->update()I

    .line 88
    :goto_1
    iget-object p1, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_4

    .line 91
    invoke-virtual {v2}, Lorg/h2/store/PageStore;->statisticsEnd()Ljava/util/HashMap;

    move-result-object v3

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 93
    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->statisticsEnd()Ljava/util/Map;

    move-result-object v3

    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    .line 97
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v4, v2

    goto :goto_3

    :cond_6
    if-lez v4, :cond_b

    .line 101
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v5, 0xa

    if-le v3, v0, :cond_7

    const-string v3, "total: "

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_7
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-wide/16 v8, 0x64

    int-to-long v10, v7

    mul-long v10, v10, v8

    int-to-long v8, v4

    .line 108
    div-long/2addr v10, v8

    long-to-int v8, v10

    .line 109
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    if-le v6, v0, :cond_8

    const-string v6, " ("

    .line 111
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "%)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 115
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n/*\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 119
    :cond_a
    iget-object p1, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_b
    :goto_5
    invoke-direct {p0, p1}, Lorg/h2/command/dml/Explain;->add(Ljava/lang/String;)V

    .line 123
    :cond_c
    iget-object p1, p0, Lorg/h2/command/dml/Explain;->result:Lorg/h2/result/LocalResult;

    invoke-virtual {p1}, Lorg/h2/result/LocalResult;->done()V

    .line 124
    iget-object p1, p0, Lorg/h2/command/dml/Explain;->result:Lorg/h2/result/LocalResult;

    return-object p1
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, -0x1

    .line 58
    invoke-virtual {p0, v0}, Lorg/h2/command/dml/Explain;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v0

    return-object v0
.end method

.method public setCommand(Lorg/h2/command/Prepared;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    return-void
.end method

.method public setExecuteCommand(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lorg/h2/command/dml/Explain;->executeCommand:Z

    return-void
.end method
