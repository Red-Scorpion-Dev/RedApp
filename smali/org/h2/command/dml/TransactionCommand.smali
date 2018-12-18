.class public Lorg/h2/command/dml/TransactionCommand;
.super Lorg/h2/command/Prepared;
.source "TransactionCommand.java"


# instance fields
.field private savepointName:Ljava/lang/String;

.field private transactionName:Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    .line 26
    iput p2, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    return v0
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

.method public setSavepointName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/h2/command/dml/TransactionCommand;->savepointName:Ljava/lang/String;

    return-void
.end method

.method public setTransactionName(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/h2/command/dml/TransactionCommand;->transactionName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 7

    .line 35
    iget v0, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_2

    .line 43
    :pswitch_0
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->begin()V

    goto/16 :goto_2

    .line 77
    :pswitch_1
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 78
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->shutdownImmediately()V

    goto/16 :goto_2

    .line 83
    :pswitch_2
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 84
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->commit(Z)V

    .line 85
    iget v0, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget v1, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setCompactMode(I)V

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setCloseDelay(I)V

    .line 91
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->throttle()V

    .line 95
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 96
    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    monitor-enter v5

    .line 98
    :try_start_0
    invoke-virtual {v5}, Lorg/h2/engine/Session;->rollback()V

    .line 99
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_2
    invoke-virtual {v5}, Lorg/h2/engine/Session;->rollback()V

    .line 107
    :goto_1
    iget-object v6, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    if-eq v5, v6, :cond_3

    .line 108
    invoke-virtual {v5}, Lorg/h2/engine/Session;->close()V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    :cond_4
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->close()V

    goto/16 :goto_2

    .line 73
    :pswitch_3
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 74
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/command/dml/TransactionCommand;->transactionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Session;->setPreparedTransaction(Ljava/lang/String;Z)V

    goto :goto_2

    .line 69
    :pswitch_4
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 70
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/TransactionCommand;->transactionName:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/h2/engine/Session;->setPreparedTransaction(Ljava/lang/String;Z)V

    goto :goto_2

    .line 66
    :pswitch_5
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/command/dml/TransactionCommand;->transactionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->prepareCommit(Ljava/lang/String;)V

    goto :goto_2

    .line 62
    :pswitch_6
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 63
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->sync()V

    goto :goto_2

    .line 59
    :pswitch_7
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/command/dml/TransactionCommand;->savepointName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->rollbackToSavepoint(Ljava/lang/String;)V

    goto :goto_2

    .line 56
    :pswitch_8
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/command/dml/TransactionCommand;->savepointName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->addSavepoint(Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :pswitch_9
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 53
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkpoint()V

    goto :goto_2

    .line 49
    :pswitch_a
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->rollback()V

    goto :goto_2

    .line 46
    :pswitch_b
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->commit(Z)V

    goto :goto_2

    .line 40
    :pswitch_c
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    goto :goto_2

    .line 37
    :pswitch_d
    iget-object v0, p0, Lorg/h2/command/dml/TransactionCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x45
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
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
