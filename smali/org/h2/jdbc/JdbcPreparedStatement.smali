.class public Lorg/h2/jdbc/JdbcPreparedStatement;
.super Lorg/h2/jdbc/JdbcStatement;
.source "JdbcPreparedStatement.java"

# interfaces
.implements Ljava/sql/PreparedStatement;


# instance fields
.field private batchIdentities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private batchParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private cachedColumnLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected command:Lorg/h2/command/CommandInterface;

.field private final sqlStatement:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;IIIZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 70
    invoke-direct/range {v0 .. v5}, Lorg/h2/jdbc/JdbcStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;IIIZ)V

    .line 71
    iget-object p4, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p4}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p4

    const/4 p5, 0x3

    invoke-virtual {p0, p4, p5, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setTrace(Lorg/h2/message/Trace;II)V

    .line 72
    iput-object p2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->sqlStatement:Ljava/lang/String;

    .line 73
    iget p3, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->fetchSize:I

    invoke-virtual {p1, p2, p3}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    return-void
.end method

.method private executeUpdateInternal()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->closeOldResultSet()V

    .line 157
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0

    const/4 v1, 0x0

    .line 159
    :try_start_0
    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-virtual {p0, v2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    .line 160
    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v2}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    move-result v2

    iput v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->updateCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    .line 164
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    iget v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->updateCount:I

    return v0

    :catchall_0
    move-exception v2

    .line 162
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw v2

    :catchall_1
    move-exception v1

    .line 164
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private setParameter(ILorg/h2/value/Value;)V
    .locals 3

    .line 1402
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosed()Z

    add-int/lit8 p1, p1, -0x1

    .line 1404
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-ltz p1, :cond_1

    .line 1405
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1409
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/expression/ParameterInterface;

    .line 1411
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, p2, v1}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    return-void

    :cond_1
    add-int/2addr p1, v1

    .line 1406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "parameterIndex"

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public addBatch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "addBatch"

    .line 1240
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1246
    new-array v2, v1, [Lorg/h2/value/Value;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1248
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/ParameterInterface;

    .line 1249
    invoke-interface {v4}, Lorg/h2/expression/ParameterInterface;->getParamValue()Lorg/h2/value/Value;

    move-result-object v4

    .line 1250
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1252
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1253
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    .line 1255
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1257
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1260
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public addBatch(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "addBatch"

    .line 262
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x16012

    .line 263
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected checkClosed(Z)Z
    .locals 6

    .line 1644
    invoke-super {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->checkClosed(Z)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1646
    iget-object p1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object p1

    .line 1647
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->sqlStatement:Ljava/lang/String;

    iget v3, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->fetchSize:I

    invoke-virtual {v1, v2, v3}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    .line 1648
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v1}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    .line 1649
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 1650
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/ParameterInterface;

    .line 1651
    invoke-interface {v4}, Lorg/h2/expression/ParameterInterface;->getParamValue()Lorg/h2/value/Value;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1653
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/expression/ParameterInterface;

    .line 1654
    invoke-interface {v5, v4, v0}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public clearBatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "clearBatch"

    .line 1129
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosed()Z

    const/4 v0, 0x0

    .line 1131
    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1133
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public clearParameters()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "clearParameters"

    .line 224
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosed()Z

    .line 226
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 228
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/ParameterInterface;

    const/4 v5, 0x0

    .line 230
    iget-object v6, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-interface {v4, v5, v6}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1145
    :try_start_0
    invoke-super {p0}, Lorg/h2/jdbc/JdbcStatement;->close()V

    const/4 v0, 0x0

    .line 1146
    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    .line 1147
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    if-eqz v1, :cond_0

    .line 1148
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v1}, Lorg/h2/command/CommandInterface;->close()V

    .line 1149
    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 1152
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public execute()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 180
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->getNextId(I)I

    move-result v5

    .line 181
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "execute"

    .line 182
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 188
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->closeOldResultSet()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v9, 0x0

    .line 190
    :try_start_3
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    .line 191
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v1}, Lorg/h2/command/CommandInterface;->isQuery()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_3

    .line 193
    iget v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->resultSetType:I

    const/16 v3, 0x3eb

    if-eq v1, v3, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 194
    :goto_0
    iget v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->resultSetConcurrency:I

    const/16 v3, 0x3f0

    if-ne v1, v3, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 195
    :goto_1
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    iget v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->maxRows:I

    invoke-interface {v1, v2, v7}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v4

    .line 196
    new-instance v11, Lorg/h2/jdbc/JdbcResultSet;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-boolean v6, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->closedByResultSet:Z

    move-object v1, v11

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcStatement;Lorg/h2/result/ResultInterface;IZZZ)V

    iput-object v11, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    const/4 v2, 0x1

    goto :goto_2

    .line 201
    :cond_3
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v1}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    move-result v1

    iput v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->updateCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    :goto_2
    :try_start_4
    invoke-virtual {p0, v9}, Lorg/h2/jdbc/JdbcPreparedStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    .line 206
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 209
    :try_start_5
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return v2

    :catchall_0
    move-exception v1

    .line 204
    :try_start_6
    invoke-virtual {p0, v9}, Lorg/h2/jdbc/JdbcPreparedStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 206
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 209
    :try_start_8
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "execute"

    .line 294
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x16012

    .line 295
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 297
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1333
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    const p1, 0x16012

    .line 1334
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1337
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1351
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    const p1, 0x16012

    .line 1352
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1354
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1369
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    const p1, 0x16012

    .line 1370
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1373
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeBatch()[I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1165
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->getNextId(I)I

    move-result v0

    const-string v1, "executeBatch"

    .line 1166
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 1167
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1170
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    .line 1172
    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;

    .line 1173
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1174
    new-array v2, v1, [I

    .line 1177
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v1, :cond_4

    .line 1180
    :try_start_1
    iget-object v8, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/h2/value/Value;

    .line 1181
    iget-object v9, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v9}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    .line 1183
    :goto_1
    array-length v11, v8

    if-ge v10, v11, :cond_1

    .line 1184
    aget-object v11, v8, v10

    .line 1185
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/h2/expression/ParameterInterface;

    .line 1186
    invoke-interface {v12, v11, v4}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    .line 1189
    :try_start_2
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->executeUpdateInternal()I

    move-result v9

    aput v9, v2, v5

    .line 1190
    iget-object v9, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v9, p0, v0}, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys(Lorg/h2/jdbc/JdbcStatement;I)Ljava/sql/ResultSet;

    move-result-object v9

    .line 1191
    :goto_2
    invoke-interface {v9}, Ljava/sql/ResultSet;->next()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1192
    iget-object v10, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;

    invoke-interface {v9, v8}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 1195
    :try_start_3
    invoke-virtual {p0, v6}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v6

    if-nez v7, :cond_2

    goto :goto_3

    .line 1199
    :cond_2
    invoke-virtual {v6, v7}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    :goto_3
    const/4 v7, -0x3

    .line 1202
    aput v7, v2, v5

    move-object v7, v6

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1206
    :cond_4
    iput-object v3, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_5

    .line 1213
    :try_start_4
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v2

    .line 1208
    :cond_5
    :try_start_5
    new-instance v0, Lorg/h2/jdbc/JdbcBatchUpdateException;

    invoke-direct {v0, v7, v2}, Lorg/h2/jdbc/JdbcBatchUpdateException;-><init>(Ljava/sql/SQLException;[I)V

    .line 1209
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1213
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    .line 1216
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 97
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->getNextId(I)I

    move-result v5

    .line 98
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ResultSet"

    const-string v2, "executeQuery()"

    .line 99
    invoke-virtual {p0, v1, v0, v5, v2}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;

    .line 102
    iget-object v10, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosed()Z

    .line 104
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->closeOldResultSet()V

    .line 106
    iget v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->resultSetType:I

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 107
    :goto_0
    iget v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->resultSetConcurrency:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x3f0

    if-ne v1, v2, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 109
    :goto_1
    :try_start_2
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    .line 110
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    iget v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->maxRows:I

    invoke-interface {v1, v2, v7}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :try_start_3
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    .line 114
    new-instance v0, Lorg/h2/jdbc/JdbcResultSet;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-boolean v6, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->closedByResultSet:Z

    iget-object v9, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->cachedColumnLabelMap:Ljava/util/HashMap;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/result/ResultInterface;IZZZLjava/util/HashMap;)V

    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    .line 116
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    :try_start_4
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 112
    :try_start_5
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 116
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "executeQuery"

    .line 246
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x16012

    .line 247
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 249
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "executeUpdate"

    .line 142
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->executeUpdateInternal()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "executeUpdate"

    .line 278
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x16012

    .line 279
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 281
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1275
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    const p1, 0x16012

    .line 1276
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1278
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1294
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    const p1, 0x16012

    .line 1296
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1298
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1313
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    const p1, 0x16012

    .line 1315
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1318
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1223
    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v0}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const-string v1, "identity"

    const/4 v2, 0x4

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 1224
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 1226
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    .line 1227
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0

    .line 1231
    :cond_1
    invoke-super {p0}, Lorg/h2/jdbc/JdbcStatement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getMetaData"

    .line 1103
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosed()Z

    .line 1105
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getMetaData()Lorg/h2/result/ResultInterface;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    .line 1109
    invoke-static {v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->getNextId(I)I

    move-result v7

    .line 1110
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ResultSetMetaData"

    const-string v2, "getMetaData()"

    .line 1111
    invoke-virtual {p0, v1, v0, v7, v2}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1114
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getCatalog()Ljava/lang/String;

    move-result-object v5

    .line 1115
    new-instance v0, Lorg/h2/jdbc/JdbcResultSetMetaData;

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lorg/h2/jdbc/JdbcResultSetMetaData;-><init>(Lorg/h2/jdbc/JdbcResultSet;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/result/ResultInterface;Ljava/lang/String;Lorg/h2/message/Trace;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1119
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1385
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->getNextId(I)I

    move-result v1

    .line 1386
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ParameterMetaData"

    const-string v3, "getParameterMetaData()"

    .line 1387
    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1390
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosed()Z

    .line 1391
    new-instance v0, Lorg/h2/jdbc/JdbcParameterMetaData;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-direct {v0, v2, p0, v3, v1}, Lorg/h2/jdbc/JdbcParameterMetaData;-><init>(Lorg/h2/message/Trace;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/command/CommandInterface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1395
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "setArray"

    .line 882
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1022
    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    int-to-long v0, p3

    .line 978
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setAsciiStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 995
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAsciiStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 998
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-static {p2}, Lorg/h2/util/IOUtils;->getAsciiReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 1001
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1006
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBigDecimal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 375
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p2

    .line 376
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 962
    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    int-to-long v0, p3

    .line 947
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBinaryStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 919
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBinaryStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 922
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 925
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 930
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 800
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 803
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 806
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 811
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1582
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 1585
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 1588
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1590
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1593
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 768
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 771
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    .line 775
    :try_start_1
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 777
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 779
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 784
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBoolean(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 534
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBoolean("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 537
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 539
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setByte(IB)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 553
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setByte("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 556
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 558
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBytes(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 895
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBytes("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 898
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueBytes;->get([B)Lorg/h2/value/ValueBytes;

    move-result-object p2

    .line 899
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 901
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method setCachedColumnLabelMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->cachedColumnLabelMap:Ljava/util/HashMap;

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1053
    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    int-to-long v0, p3

    .line 1038
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1070
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCharacterStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 1076
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1081
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 857
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 860
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    .line 864
    :try_start_1
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 866
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 868
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 870
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 873
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1553
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 1556
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 1559
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1561
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1564
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 825
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 828
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    .line 832
    :try_start_1
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 834
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 836
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 841
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 393
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 396
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDate;->get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;

    move-result-object p2

    .line 397
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 399
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 659
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", calendar);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 663
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V

    goto :goto_0

    .line 665
    :cond_1
    invoke-static {p2, p3}, Lorg/h2/util/DateTimeUtils;->convertDate(Ljava/sql/Date;Ljava/util/Calendar;)Lorg/h2/value/ValueDate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 668
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setDouble(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDouble("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "d);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 632
    :cond_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 634
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setFloat(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 610
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFloat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "f);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 613
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 615
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setInt(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 335
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 337
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setLong(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 591
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLong("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 594
    :cond_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 596
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1484
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1456
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNCharacterStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 1460
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 1463
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1465
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1468
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1525
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNClob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 1528
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1530
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 1531
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1536
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1611
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNClob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 1614
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 1617
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1619
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1622
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1497
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNClob("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 1500
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosedForWrite()Z

    if-nez p2, :cond_1

    .line 1503
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    .line 1505
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    .line 1507
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1509
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1432
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1435
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    .line 1436
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1438
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNull(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNull("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 316
    :cond_0
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 749
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNull("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ");"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 752
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNull(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 754
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setObject("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 461
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->session:Lorg/h2/engine/SessionInterface;

    const/4 v1, -0x1

    invoke-static {v0, p2, v1}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 467
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 485
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setObject("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 488
    :cond_0
    invoke-static {p3}, Lorg/h2/value/DataType;->convertSQLTypeToValueType(I)I

    move-result p3

    if-nez p2, :cond_1

    .line 490
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p2

    .line 493
    invoke-virtual {p2, p3}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 496
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 515
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setObject("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ");"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 518
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setObject(ILjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 520
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "ref"

    .line 643
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "rowId"

    .line 1419
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "SQLXML"

    .line 1631
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setShort(IS)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShort("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", (short) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    .line 575
    :cond_0
    invoke-static {p2}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 577
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setString(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 354
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    .line 355
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 357
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 414
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteTime(Ljava/sql/Time;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 417
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTime;->get(Ljava/sql/Time;)Lorg/h2/value/ValueTime;

    move-result-object p2

    .line 418
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 420
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 685
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteTime(Ljava/sql/Time;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", calendar);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 689
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V

    goto :goto_0

    .line 691
    :cond_1
    invoke-static {p2, p3}, Lorg/h2/util/DateTimeUtils;->convertTime(Ljava/sql/Time;Ljava/util/Calendar;)Lorg/h2/value/ValueTime;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 694
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 435
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimestamp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 438
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object p2

    .line 439
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 441
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 711
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimestamp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->quoteTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", calendar);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 716
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V

    goto :goto_0

    .line 718
    :cond_1
    invoke-static {p2, p3}, Lorg/h2/util/DateTimeUtils;->convertTimestamp(Ljava/sql/Timestamp;Ljava/util/Calendar;)Lorg/h2/value/ValueTimestamp;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 721
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "url"

    .line 1090
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "unicodeStream"

    .line 734
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcPreparedStatement;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
