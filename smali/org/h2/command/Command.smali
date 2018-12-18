.class public abstract Lorg/h2/command/Command;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Lorg/h2/command/CommandInterface;


# instance fields
.field private canReuse:Z

.field private volatile cancel:Z

.field protected final session:Lorg/h2/engine/Session;

.field private final sql:Ljava/lang/String;

.field protected startTime:J

.field private final trace:Lorg/h2/message/Trace;


# direct methods
.method constructor <init>(Lorg/h2/command/Parser;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Lorg/h2/command/Parser;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    .line 51
    iput-object p2, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/Command;->trace:Lorg/h2/message/Trace;

    return-void
.end method

.method private filterConcurrentUpdate(Lorg/h2/message/DbException;J)J
    .locals 12

    .line 300
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    const v1, 0x16013

    if-eq v0, v1, :cond_1

    const v1, 0x16000

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    throw p1

    .line 305
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, p2, v5

    if-eqz v7, :cond_3

    sub-long v7, v0, p2

    .line 306
    iget-object v9, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v9}, Lorg/h2/engine/Session;->getLockTimeout()I

    move-result v9

    int-to-long v9, v9

    cmp-long v11, v7, v9

    if-gtz v11, :cond_2

    goto :goto_1

    :cond_2
    const p2, 0xc418

    .line 307
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    new-array p3, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, p3, v0

    invoke-static {p2, p1, p3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 309
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/16 v7, 0xa

    .line 310
    invoke-static {v7}, Lorg/h2/util/MathUtils;->randomInt(I)I

    move-result v7

    add-int/2addr v7, v4

    .line 313
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v4

    if-eqz v4, :cond_5

    int-to-long v8, v7

    .line 314
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :cond_5
    int-to-long v8, v7

    .line 316
    invoke-virtual {p1, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :catch_0
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v2

    sub-long/2addr v8, v0

    int-to-long v10, v7

    cmp-long v4, v8, v10

    if-ltz v4, :cond_4

    cmp-long p1, p2, v5

    if-nez p1, :cond_6

    move-wide p2, v0

    :cond_6
    return-wide p2
.end method

.method private stop()V
    .locals 7

    .line 151
    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->endStatement()V

    .line 152
    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->setCurrentCommand(Lorg/h2/command/Command;)V

    .line 153
    invoke-virtual {p0}, Lorg/h2/command/Command;->isTransactional()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->commit(Z)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLockMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 161
    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->unlockReadLocks()V

    .line 165
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/command/Command;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lorg/h2/command/Command;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/h2/command/Command;->startTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 168
    iget-object v0, p0, Lorg/h2/command/Command;->trace:Lorg/h2/message/Trace;

    const-string v5, "slow query: {0} ms"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v5, v2}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public canReuse()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lorg/h2/command/Command;->canReuse:Z

    return v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lorg/h2/command/Command;->cancel:Z

    return-void
.end method

.method protected checkCanceled()V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lorg/h2/command/Command;->cancel:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lorg/h2/command/Command;->cancel:Z

    const v0, 0xdeb6

    .line 146
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lorg/h2/command/Command;->canReuse:Z

    return-void
.end method

.method public executeQuery(IZ)Lorg/h2/result/ResultInterface;
    .locals 7

    const-wide/16 v0, 0x0

    .line 183
    iput-wide v0, p0, Lorg/h2/command/Command;->startTime:J

    .line 185
    iget-object p2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {p2}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p2

    .line 186
    invoke-virtual {p2}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    goto :goto_0

    :cond_0
    move-object v2, p2

    .line 187
    :goto_0
    iget-object v3, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->waitIfExclusiveModeEnabled()V

    .line 189
    invoke-virtual {p0}, Lorg/h2/command/Command;->isReadOnly()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 191
    :goto_1
    invoke-virtual {p2}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    monitor-enter v2

    .line 196
    :try_start_0
    iget-object v5, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, p0}, Lorg/h2/engine/Session;->setCurrentCommand(Lorg/h2/command/Command;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_2
    const/4 v5, 0x0

    .line 199
    :try_start_1
    invoke-virtual {p2}, Lorg/h2/engine/Database;->checkPowerOff()V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/h2/command/Command;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v6
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    :try_start_3
    invoke-direct {p0}, Lorg/h2/command/Command;->stop()V

    if-eqz v3, :cond_2

    .line 232
    invoke-virtual {p2}, Lorg/h2/engine/Database;->afterWriting()V

    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v6

    :catch_0
    move-exception p1

    .line 213
    :try_start_4
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_4
    .catch Lorg/h2/message/DbException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception p1

    .line 210
    :try_start_5
    invoke-virtual {p2}, Lorg/h2/engine/Database;->shutdownImmediately()V

    .line 211
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_5
    .catch Lorg/h2/message/DbException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    const/4 v4, 0x0

    goto :goto_4

    :catch_2
    move-exception p1

    const/4 v4, 0x0

    goto :goto_3

    :catch_3
    move-exception v6

    .line 203
    :try_start_6
    invoke-direct {p0, v6, v0, v1}, Lorg/h2/command/Command;->filterConcurrentUpdate(Lorg/h2/message/DbException;J)J

    move-result-wide v0
    :try_end_6
    .catch Lorg/h2/message/DbException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    .line 217
    :goto_3
    :try_start_7
    iget-object v0, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/h2/engine/Database;->exceptionThrown(Ljava/sql/SQLException;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const v1, 0x15ffc

    if-ne v0, v1, :cond_3

    .line 222
    :try_start_8
    invoke-virtual {p2}, Lorg/h2/engine/Database;->shutdownImmediately()V

    .line 223
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 225
    :cond_3
    :try_start_9
    invoke-virtual {p2}, Lorg/h2/engine/Database;->checkPowerOff()V

    .line 226
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_4
    if-eqz v4, :cond_4

    .line 229
    :try_start_a
    invoke-direct {p0}, Lorg/h2/command/Command;->stop()V

    :cond_4
    if-eqz v3, :cond_5

    .line 232
    invoke-virtual {p2}, Lorg/h2/engine/Database;->afterWriting()V

    :cond_5
    throw p1

    :catchall_2
    move-exception p1

    .line 235
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p1
.end method

.method public executeUpdate()I
    .locals 10

    .line 241
    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 243
    :goto_0
    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->waitIfExclusiveModeEnabled()V

    .line 245
    invoke-virtual {p0}, Lorg/h2/command/Command;->isReadOnly()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 247
    :goto_1
    invoke-virtual {v0}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 251
    :cond_1
    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v4, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->setSavepoint()Lorg/h2/engine/Session$Savepoint;

    move-result-object v4

    .line 253
    iget-object v5, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, p0}, Lorg/h2/engine/Session;->setCurrentCommand(Lorg/h2/command/Command;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/16 v5, 0x0

    :goto_2
    const/4 v7, 0x0

    .line 256
    :try_start_1
    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkPowerOff()V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 258
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/command/Command;->update()I

    move-result v8
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 288
    :try_start_3
    invoke-direct {p0}, Lorg/h2/command/Command;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    .line 292
    :try_start_4
    invoke-virtual {v0}, Lorg/h2/engine/Database;->afterWriting()V

    :cond_2
    monitor-exit v1

    return v8

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/h2/engine/Database;->afterWriting()V

    :cond_3
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catch_0
    move-exception v5

    .line 266
    :try_start_5
    invoke-static {v5}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v5

    throw v5
    :try_end_5
    .catch Lorg/h2/message/DbException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    move-exception v3

    .line 263
    :try_start_6
    invoke-virtual {v0}, Lorg/h2/engine/Database;->shutdownImmediately()V

    .line 264
    invoke-static {v3}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v3

    throw v3
    :try_end_6
    .catch Lorg/h2/message/DbException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v4

    const/4 v3, 0x0

    goto :goto_5

    :catch_2
    move-exception v5

    const/4 v3, 0x0

    goto :goto_3

    :catch_3
    move-exception v8

    .line 260
    :try_start_7
    invoke-direct {p0, v8, v5, v6}, Lorg/h2/command/Command;->filterConcurrentUpdate(Lorg/h2/message/DbException;J)J

    move-result-wide v5
    :try_end_7
    .catch Lorg/h2/message/DbException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    goto :goto_5

    :catch_4
    move-exception v5

    .line 270
    :goto_3
    :try_start_8
    iget-object v6, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v5

    .line 271
    invoke-virtual {v5}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v6

    .line 272
    iget-object v8, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Lorg/h2/engine/Database;->exceptionThrown(Ljava/sql/SQLException;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v6}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v8

    const v9, 0x15ffc

    if-eq v8, v9, :cond_5

    .line 278
    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkPowerOff()V

    .line 279
    invoke-virtual {v6}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v6

    const v8, 0x9c41

    if-ne v6, v8, :cond_4

    .line 280
    iget-object v4, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->rollback()V

    goto :goto_4

    .line 282
    :cond_4
    iget-object v6, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v4, v7}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    .line 284
    :goto_4
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 275
    :cond_5
    :try_start_9
    invoke-virtual {v0}, Lorg/h2/engine/Database;->shutdownImmediately()V

    .line 276
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_5
    if-eqz v3, :cond_7

    .line 288
    :try_start_a
    invoke-direct {p0}, Lorg/h2/command/Command;->stop()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v3

    if-eqz v2, :cond_6

    .line 292
    :try_start_b
    invoke-virtual {v0}, Lorg/h2/engine/Database;->afterWriting()V

    :cond_6
    throw v3

    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lorg/h2/engine/Database;->afterWriting()V

    :cond_8
    throw v4

    :catchall_4
    move-exception v0

    .line 296
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method

.method public final getMetaData()Lorg/h2/result/ResultInterface;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/h2/command/Command;->queryMeta()Lorg/h2/result/ResultInterface;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParameters()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/h2/expression/ParameterInterface;",
            ">;"
        }
    .end annotation
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isQuery()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract isTransactional()Z
.end method

.method public abstract prepareJoinBatch()V
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 0

    const p1, 0x15f92

    .line 117
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public abstract queryMeta()Lorg/h2/result/ResultInterface;
.end method

.method public reuse()V
    .locals 6

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lorg/h2/command/Command;->canReuse:Z

    .line 363
    invoke-virtual {p0}, Lorg/h2/command/Command;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 365
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/ParameterInterface;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 366
    invoke-interface {v3, v4, v5}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setProgress(I)V
    .locals 3

    .line 135
    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    return-void
.end method

.method start()V
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/h2/command/Command;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getQueryStatistics()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/command/Command;->startTime:J

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/command/Command;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/Trace;->formatParams(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()I
    .locals 1

    const v0, 0x15f91

    .line 106
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
