.class public Lorg/h2/command/ddl/Analyze;
.super Lorg/h2/command/ddl/DefineCommand;
.source "Analyze.java"


# instance fields
.field private sampleRows:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    .line 36
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget p1, p1, Lorg/h2/engine/DbSettings;->analyzeSample:I

    iput p1, p0, Lorg/h2/command/ddl/Analyze;->sampleRows:I

    return-void
.end method

.method public static analyzeTable(Lorg/h2/engine/Session;Lorg/h2/table/Table;IZ)V
    .locals 10

    .line 60
    invoke-virtual {p1}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lorg/h2/table/Table;->isHidden()Z

    move-result v0

    if-nez v0, :cond_11

    if-nez p0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p3, :cond_2

    .line 65
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isSysTableLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 68
    :cond_1
    invoke-virtual {p1}, Lorg/h2/table/Table;->hasSelectTrigger()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 72
    :cond_2
    invoke-virtual {p1}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/engine/Session;->findLocalTempTable(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 76
    :cond_3
    invoke-virtual {p1}, Lorg/h2/table/Table;->isLockedExclusively()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Lorg/h2/table/Table;->isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 79
    :cond_4
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/User;->hasRight(Lorg/h2/table/Table;I)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 82
    :cond_5
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getCancel()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    return-void

    .line 86
    :cond_6
    invoke-virtual {p1}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    .line 87
    array-length v2, v0

    if-nez v2, :cond_7

    return-void

    .line 90
    :cond_7
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    .line 91
    new-instance v3, Lorg/h2/util/StatementBuilder;

    const-string v4, "SELECT "

    invoke-direct {v3, v4}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_a

    aget-object v7, v0, v6

    const-string v8, ", "

    .line 93
    invoke-virtual {v3, v8}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v7}, Lorg/h2/table/Column;->getType()I

    move-result v8

    const/16 v9, 0xf

    if-eq v8, v9, :cond_9

    const/16 v9, 0x10

    if-ne v8, v9, :cond_8

    goto :goto_1

    :cond_8
    const-string v8, "SELECTIVITY("

    .line 100
    invoke-virtual {v3, v8}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    goto :goto_2

    :cond_9
    :goto_1
    const-string v7, "MAX(NULL)"

    .line 98
    invoke-virtual {v3, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    const-string v4, " FROM "

    .line 103
    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    if-lez p2, :cond_b

    const-string v4, " LIMIT ? SAMPLE_SIZE ? "

    .line 105
    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 107
    :cond_b
    invoke-virtual {v3}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {p0, v3}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v3

    if-lez p2, :cond_c

    .line 110
    invoke-virtual {v3}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v4

    .line 111
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/expression/Parameter;

    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    .line 112
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-virtual {v4, p2}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    .line 114
    :cond_c
    invoke-virtual {v3, v5}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object p2

    .line 115
    invoke-interface {p2}, Lorg/h2/result/ResultInterface;->next()Z

    .line 116
    :goto_3
    array-length v3, v0

    if-ge v5, v3, :cond_e

    .line 117
    invoke-interface {p2}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v3

    aget-object v3, v3, v5

    .line 118
    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v3, v4, :cond_d

    .line 119
    invoke-virtual {v3}, Lorg/h2/value/Value;->getInt()I

    move-result v3

    .line 120
    aget-object v4, v0, v5

    invoke-virtual {v4, v3}, Lorg/h2/table/Column;->setSelectivity(I)V

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    if-eqz p3, :cond_f

    .line 124
    invoke-virtual {v2, p0, p1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_4

    .line 126
    :cond_f
    invoke-virtual {v2}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object p2

    if-eq p2, p0, :cond_10

    .line 132
    monitor-enter p2

    .line 133
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    invoke-virtual {v2, p2, p1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    .line 135
    invoke-virtual {p2, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 136
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 136
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 137
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_10
    :goto_4
    return-void

    :cond_11
    :goto_5
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public setTop(I)V
    .locals 0

    .line 143
    iput p1, p0, Lorg/h2/command/ddl/Analyze;->sampleRows:I

    return-void
.end method

.method public update()I
    .locals 6

    .line 41
    iget-object v0, p0, Lorg/h2/command/ddl/Analyze;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 42
    iget-object v0, p0, Lorg/h2/command/ddl/Analyze;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 43
    iget-object v0, p0, Lorg/h2/command/ddl/Analyze;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    .line 45
    iget-object v4, p0, Lorg/h2/command/ddl/Analyze;->session:Lorg/h2/engine/Session;

    iget v5, p0, Lorg/h2/command/ddl/Analyze;->sampleRows:I

    invoke-static {v4, v3, v5, v1}, Lorg/h2/command/ddl/Analyze;->analyzeTable(Lorg/h2/engine/Session;Lorg/h2/table/Table;IZ)V

    goto :goto_0

    :cond_0
    return v2
.end method
