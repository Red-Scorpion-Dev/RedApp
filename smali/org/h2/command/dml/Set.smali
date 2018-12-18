.class public Lorg/h2/command/dml/Set;
.super Lorg/h2/command/Prepared;
.source "Set.java"


# instance fields
.field private expression:Lorg/h2/expression/Expression;

.field private stringValue:Ljava/lang/String;

.field private stringValueList:[Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    .line 44
    iput p2, p0, Lorg/h2/command/dml/Set;->type:I

    return-void
.end method

.method private addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private addOrUpdateSetting(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 548
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 552
    :cond_0
    invoke-virtual {v0, p2}, Lorg/h2/engine/Database;->findSetting(Ljava/lang/String;)Lorg/h2/engine/Setting;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v2, 0x1

    .line 556
    invoke-virtual {p0}, Lorg/h2/command/dml/Set;->getObjectId()I

    move-result v1

    .line 557
    new-instance v3, Lorg/h2/engine/Setting;

    invoke-direct {v3, v0, v1, p2}, Lorg/h2/engine/Setting;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;)V

    move-object v1, v3

    :cond_1
    if-eqz p3, :cond_3

    if-nez v2, :cond_2

    .line 560
    invoke-virtual {v1}, Lorg/h2/engine/Setting;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 563
    :cond_2
    invoke-virtual {v1, p3}, Lorg/h2/engine/Setting;->setStringValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 565
    invoke-virtual {v1}, Lorg/h2/engine/Setting;->getIntValue()I

    move-result p2

    if-ne p2, p4, :cond_4

    return-void

    .line 568
    :cond_4
    invoke-virtual {v1, p4}, Lorg/h2/engine/Setting;->setIntValue(I)V

    :goto_0
    if-eqz v2, :cond_5

    .line 571
    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_1

    .line 573
    :cond_5
    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_1
    return-void
.end method

.method private getIntValue()I
    .locals 2

    .line 530
    iget-object v0, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    .line 531
    iget-object v0, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x43

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    .line 53
    iget v0, p0, Lorg/h2/command/dml/Set;->type:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x14 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1c -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method public needRecompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setExpression(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setInt(I)V
    .locals 0

    .line 535
    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public setStringArray([Ljava/lang/String;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lorg/h2/command/dml/Set;->stringValueList:[Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 11

    .line 72
    iget-object v0, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 73
    iget v1, p0, Lorg/h2/command/dml/Set;->type:I

    invoke-static {v1}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    iget v2, p0, Lorg/h2/command/dml/Set;->type:I

    const v3, 0x15fe9

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    .line 519
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/command/dml/Set;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_11

    .line 510
    :pswitch_1
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v7, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "FORCE_JOIN_ORDER"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 515
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    if-ne v1, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setForceJoinOrder(Z)V

    goto/16 :goto_11

    .line 501
    :pswitch_2
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-eqz v1, :cond_4

    if-ne v1, v7, :cond_3

    goto :goto_2

    .line 503
    :cond_3
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BATCH_JOINS"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 506
    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    if-ne v1, v7, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setJoinBatchEnabled(Z)V

    goto/16 :goto_11

    .line 488
    :pswitch_3
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 489
    iget-object v1, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getColumnName()Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 493
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/result/RowFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setRowFactory(Lorg/h2/result/RowFactory;)V

    goto/16 :goto_11

    :catch_0
    move-exception v0

    .line 495
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 398
    :pswitch_4
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 399
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-lt v1, v7, :cond_6

    .line 404
    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setQueryStatisticsMaxEntries(I)V

    goto/16 :goto_11

    .line 401
    :cond_6
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "QUERY_STATISTICS_MAX_ENTRIES"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 388
    :pswitch_5
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 389
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_8

    if-gt v1, v7, :cond_8

    if-ne v1, v7, :cond_7

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    .line 394
    :goto_4
    invoke-virtual {v0, v7}, Lorg/h2/engine/Database;->setQueryStatistics(Z)V

    goto/16 :goto_11

    .line 391
    :cond_8
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "QUERY_STATISTICS"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 478
    :pswitch_6
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_9

    .line 482
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 483
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setRetentionTime(I)V

    .line 484
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 479
    :cond_9
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "RETENTION_TIME"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 251
    :pswitch_7
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 252
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getFirstUserTable()Lorg/h2/table/Table;

    move-result-object v2

    if-nez v2, :cond_a

    .line 258
    iget-object v2, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setJavaObjectSerializerName(Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v6}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    :cond_a
    const v0, 0x1601d

    .line 254
    invoke-virtual {v2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 159
    :pswitch_8
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 160
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getFirstUserTable()Lorg/h2/table/Table;

    move-result-object v2

    if-nez v2, :cond_d

    .line 166
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v2

    .line 168
    iget-object v3, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    const-string v4, "SIGNED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 169
    invoke-virtual {v2}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/value/CompareMode;->getStrength()I

    move-result v2

    invoke-static {v3, v2, v6}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object v2

    goto :goto_5

    .line 171
    :cond_b
    iget-object v3, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    const-string v4, "UNSIGNED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 172
    invoke-virtual {v2}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/value/CompareMode;->getStrength()I

    move-result v2

    invoke-static {v3, v2, v7}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object v2

    .line 178
    :goto_5
    iget-object v3, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v6}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setCompareMode(Lorg/h2/value/CompareMode;)V

    goto/16 :goto_11

    .line 175
    :cond_c
    iget-object v0, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    const-string v1, "BINARY_COLLATION"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 162
    :cond_d
    invoke-virtual {v2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 373
    :pswitch_9
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    .line 374
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    if-ne v1, v7, :cond_e

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setRedoLogBinary(Z)V

    goto/16 :goto_11

    .line 364
    :pswitch_a
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_f

    .line 368
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    .line 369
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1}, Lorg/h2/engine/Session;->setQueryTimeout(I)V

    goto/16 :goto_11

    .line 365
    :cond_f
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "QUERY_TIMEOUT"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 463
    :pswitch_b
    iget-object v1, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    .line 464
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v4}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/h2/engine/Session;->setVariable(Ljava/lang/String;Lorg/h2/value/Value;)V

    goto/16 :goto_11

    .line 191
    :pswitch_c
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 192
    invoke-virtual {v0}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 195
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    .line 196
    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 233
    :pswitch_d
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 234
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "EXCLUSIVE"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 243
    :pswitch_e
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v7}, Lorg/h2/engine/Database;->setExclusiveSession(Lorg/h2/engine/Session;Z)V

    goto/16 :goto_11

    .line 240
    :pswitch_f
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v6}, Lorg/h2/engine/Database;->setExclusiveSession(Lorg/h2/engine/Session;Z)V

    goto/16 :goto_11

    .line 237
    :pswitch_10
    invoke-virtual {v0, v5, v6}, Lorg/h2/engine/Database;->setExclusiveSession(Lorg/h2/engine/Session;Z)V

    goto/16 :goto_11

    .line 327
    :pswitch_11
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_10

    .line 331
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 332
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    .line 333
    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setMaxOperationMemory(I)V

    goto/16 :goto_11

    .line 328
    :cond_10
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MAX_OPERATION_MEMORY"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 352
    :pswitch_12
    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v1

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ne v2, v7, :cond_11

    goto :goto_7

    :cond_11
    const/4 v7, 0x0

    :goto_7
    if-ne v1, v7, :cond_12

    goto/16 :goto_11

    :cond_12
    const v0, 0x16015

    const-string v1, "MVCC"

    .line 353
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 378
    :pswitch_13
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 379
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_14

    if-gt v1, v7, :cond_14

    if-ne v1, v7, :cond_13

    goto :goto_8

    :cond_13
    const/4 v7, 0x0

    .line 384
    :goto_8
    invoke-virtual {v0, v7}, Lorg/h2/engine/Database;->setReferentialIntegrity(Z)V

    goto/16 :goto_11

    .line 381
    :cond_14
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "REFERENTIAL_INTEGRITY"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 454
    :pswitch_14
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_16

    if-gt v1, v7, :cond_16

    .line 459
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    if-ne v1, v7, :cond_15

    goto :goto_9

    :cond_15
    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setUndoLogEnabled(Z)V

    goto/16 :goto_11

    .line 456
    :cond_16
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UNDO_LOG"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 413
    :pswitch_15
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/dml/Set;->stringValueList:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->setSchemaSearchPath([Ljava/lang/String;)V

    goto/16 :goto_11

    .line 359
    :pswitch_16
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 360
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_a

    :cond_17
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v0, v7}, Lorg/h2/engine/Database;->setOptimizeReuseResults(Z)V

    goto/16 :goto_11

    .line 408
    :pswitch_17
    iget-object v1, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v1

    .line 409
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1}, Lorg/h2/engine/Session;->setCurrentSchema(Lorg/h2/schema/Schema;)V

    goto/16 :goto_11

    .line 347
    :pswitch_18
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 348
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ne v1, v7, :cond_18

    goto :goto_b

    :cond_18
    const/4 v7, 0x0

    :goto_b
    invoke-virtual {v0, v7}, Lorg/h2/engine/Database;->setMultiThreaded(Z)V

    goto/16 :goto_11

    .line 76
    :pswitch_19
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 77
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_19

    if-gt v2, v4, :cond_19

    .line 82
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setAllowLiterals(I)V

    .line 83
    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 79
    :cond_19
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ALLOW_LITERALS"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 183
    :pswitch_1a
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 184
    iget-object v2, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/tools/CompressTool;->getCompressAlgorithm(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_c

    .line 185
    :cond_1a
    iget-object v5, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    :goto_c
    invoke-virtual {v0, v5}, Lorg/h2/engine/Database;->setLobCompressionAlgorithm(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v6}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 288
    :pswitch_1b
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_1b

    .line 292
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 293
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setMaxLengthInplaceLob(I)V

    .line 294
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 289
    :cond_1b
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MAX_LENGTH_INPLACE_LOB"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 317
    :pswitch_1c
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_1c

    .line 321
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 322
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setMaxMemoryUndo(I)V

    .line 323
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 318
    :cond_1c
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MAX_MEMORY_UNDO"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 446
    :pswitch_1d
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_1d

    .line 450
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->setThrottle(I)V

    goto/16 :goto_11

    .line 447
    :cond_1d
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "THROTTLE"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 280
    :pswitch_1e
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    .line 281
    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLogMode()I

    move-result v2

    if-eq v1, v2, :cond_32

    .line 282
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 283
    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setLogMode(I)V

    goto/16 :goto_11

    .line 206
    :pswitch_1f
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1e

    goto :goto_d

    :cond_1e
    if-ltz v2, :cond_1f

    .line 214
    :goto_d
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 215
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setCloseDelay(I)V

    .line 216
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 212
    :cond_1f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DB_CLOSE_DELAY"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 268
    :pswitch_20
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 269
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setLockMode(I)V

    .line 270
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 307
    :pswitch_21
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_20

    .line 311
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 312
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setMaxMemoryRows(I)V

    .line 313
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 308
    :cond_20
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MAX_MEMORY_ROWS"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 201
    :pswitch_22
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 202
    iget-object v1, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setEventListenerClass(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 468
    :pswitch_23
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_21

    .line 472
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 473
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setWriteDelay(I)V

    .line 474
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 469
    :cond_21
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "WRITE_DELAY"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_24
    const-string v2, "TRUE"

    .line 96
    iget-object v3, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto/16 :goto_11

    .line 101
    :cond_22
    iget-object v2, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCluster()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "\'\'"

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 106
    iget-object v3, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/User;->checkAdmin()V

    .line 108
    :cond_23
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setCluster(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v3

    .line 112
    monitor-enter v3

    .line 113
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :try_start_2
    invoke-direct {p0, v3, v1, v2, v6}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    invoke-virtual {v3, v7}, Lorg/h2/engine/Session;->commit(Z)V

    .line 116
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_11

    :catchall_0
    move-exception v1

    .line 116
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :catchall_1
    move-exception v0

    .line 117
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 122
    :pswitch_25
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 123
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/CompareMode;->isBinaryUnsigned()Z

    move-result v2

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v9, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    const-string v10, "OFF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 128
    invoke-static {v5, v6, v2}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object v2

    goto :goto_f

    .line 130
    :cond_24
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v5

    const-string v9, " STRENGTH "

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    if-ne v5, v9, :cond_25

    const-string v4, "IDENTICAL"

    .line 133
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_25
    if-nez v5, :cond_26

    const-string v4, "PRIMARY"

    .line 135
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_26
    if-ne v5, v7, :cond_27

    const-string v4, "SECONDARY"

    .line 137
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_27
    if-ne v5, v4, :cond_28

    const-string v4, "TERTIARY"

    .line 139
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_28
    :goto_e
    iget-object v4, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object v2

    .line 144
    :goto_f
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v4

    .line 145
    invoke-virtual {v4, v2}, Lorg/h2/value/CompareMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    goto/16 :goto_11

    .line 148
    :cond_29
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getFirstUserTable()Lorg/h2/table/Table;

    move-result-object v4

    if-nez v4, :cond_2a

    .line 154
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v6}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setCompareMode(Lorg/h2/value/CompareMode;)V

    goto/16 :goto_11

    .line 150
    :cond_2a
    invoke-virtual {v4}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 435
    :pswitch_26
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_2b

    .line 439
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 440
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    .line 441
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/h2/message/TraceSystem;->setMaxFileSize(I)V

    .line 442
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 436
    :cond_2b
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TRACE_MAX_FILE_SIZE"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 417
    :pswitch_27
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 418
    invoke-virtual {p0}, Lorg/h2/command/dml/Set;->getCurrentObjectId()I

    move-result v1

    if-nez v1, :cond_32

    .line 422
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v1

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/message/TraceSystem;->setLevelFile(I)V

    goto/16 :goto_11

    .line 426
    :pswitch_28
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 427
    invoke-virtual {p0}, Lorg/h2/command/dml/Set;->getCurrentObjectId()I

    move-result v1

    if-nez v1, :cond_32

    .line 431
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v1

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/message/TraceSystem;->setLevelSystemOut(I)V

    goto/16 :goto_11

    .line 87
    :pswitch_29
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_2c

    .line 91
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 92
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setCacheSize(I)V

    .line 93
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 88
    :cond_2c
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CACHE_SIZE"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 228
    :pswitch_2a
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 229
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setDefaultTableType(I)V

    .line 230
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 220
    :pswitch_2b
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_2d

    .line 224
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 225
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 221
    :cond_2d
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DEFAULT_LOCK_TIMEOUT"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 273
    :pswitch_2c
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_2e

    .line 277
    iget-object v1, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->setLockTimeout(I)V

    goto/16 :goto_11

    .line 274
    :cond_2e
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "LOCK_TIMEOUT"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 337
    :pswitch_2d
    iget-object v1, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/engine/Mode;->getInstance(Ljava/lang/String;)Lorg/h2/engine/Mode;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 341
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    if-eq v2, v1, :cond_32

    .line 342
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 343
    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setMode(Lorg/h2/engine/Mode;)V

    goto :goto_11

    :cond_2f
    const v0, 0x15fe8

    .line 339
    iget-object v1, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 298
    :pswitch_2e
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_30

    .line 302
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 303
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v7, 0x400

    mul-long v2, v2, v7

    mul-long v2, v2, v7

    invoke-virtual {v0, v2, v3}, Lorg/h2/engine/Database;->setMaxLogSize(J)V

    .line 304
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_11

    .line 299
    :cond_30
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MAX_LOG_SIZE"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 263
    :pswitch_2f
    iget-object v2, p0, Lorg/h2/command/dml/Set;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    .line 264
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ne v2, v7, :cond_31

    goto :goto_10

    :cond_31
    const/4 v7, 0x0

    :goto_10
    invoke-virtual {v0, v7}, Lorg/h2/engine/Database;->setIgnoreCase(Z)V

    .line 265
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 522
    :cond_32
    :goto_11
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    .line 525
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationMetaId()J

    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_0
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method
