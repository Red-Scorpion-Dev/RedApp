.class public Lorg/h2/jdbc/JdbcStatement;
.super Lorg/h2/message/TraceObject;
.source "JdbcStatement.java"

# interfaces
.implements Ljava/sql/Statement;


# instance fields
.field private batchCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cancelled:Z

.field protected final closedByResultSet:Z

.field protected conn:Lorg/h2/jdbc/JdbcConnection;

.field private escapeProcessing:Z

.field private executingCommand:Lorg/h2/command/CommandInterface;

.field protected fetchSize:I

.field private lastExecutedCommandType:I

.field protected maxRows:I

.field protected resultSet:Lorg/h2/jdbc/JdbcResultSet;

.field protected final resultSetConcurrency:I

.field protected final resultSetType:I

.field protected session:Lorg/h2/engine/SessionInterface;

.field protected updateCount:I


# direct methods
.method constructor <init>(Lorg/h2/jdbc/JdbcConnection;IIIZ)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    .line 32
    sget v0, Lorg/h2/engine/SysProperties;->SERVER_RESULT_SET_FETCH_SIZE:I

    iput v0, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z

    .line 45
    iput-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 46
    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    .line 47
    iget-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, p2}, Lorg/h2/jdbc/JdbcStatement;->setTrace(Lorg/h2/message/Trace;II)V

    .line 48
    iput p3, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I

    .line 49
    iput p4, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetConcurrency:I

    .line 50
    iput-boolean p5, p0, Lorg/h2/jdbc/JdbcStatement;->closedByResultSet:Z

    return-void
.end method

.method private executeInternal(Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 165
    invoke-static {v0}, Lorg/h2/jdbc/JdbcStatement;->getNextId(I)I

    move-result v5

    .line 166
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V

    .line 169
    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z

    invoke-static {p1, v0}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    invoke-virtual {v0, p1, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    .line 172
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 173
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v9, 0x0

    .line 175
    :try_start_2
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->isQuery()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    .line 177
    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I

    const/16 v3, 0x3eb

    if-eq v1, v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 178
    :goto_0
    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetConcurrency:I

    const/16 v3, 0x3f0

    if-ne v1, v3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 179
    :goto_1
    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I

    invoke-interface {p1, v1, v7}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v4

    .line 180
    new-instance v11, Lorg/h2/jdbc/JdbcResultSet;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-boolean v6, p0, Lorg/h2/jdbc/JdbcStatement;->closedByResultSet:Z

    move-object v1, v11

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcStatement;Lorg/h2/result/ResultInterface;IZZZ)V

    iput-object v11, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    const/4 v2, 0x1

    goto :goto_2

    .line 184
    :cond_2
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    move-result v1

    iput v1, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :goto_2
    :try_start_3
    invoke-virtual {p0, v9}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    .line 189
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    :try_start_4
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 193
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return v2

    :catchall_0
    move-exception p1

    .line 187
    :try_start_5
    invoke-virtual {p0, v9}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 189
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 193
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
.end method

.method private executeUpdateInternal(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V

    .line 125
    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z

    invoke-static {p1, v0}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    invoke-virtual {v0, p1, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 128
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    .line 130
    :try_start_2
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    move-result v2

    iput v2, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :try_start_3
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    .line 134
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    :try_start_4
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->close()V

    .line 136
    iget p1, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 138
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return p1

    :catchall_0
    move-exception p1

    .line 132
    :try_start_5
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 134
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 138
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "addBatch"

    .line 611
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 613
    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z

    invoke-static {p1, v0}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 614
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 615
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    .line 617
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 619
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method afterWriting()V
    .locals 1

    .line 999
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "cancel"

    .line 530
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 533
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->executingCommand:Lorg/h2/command/CommandInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 536
    :try_start_1
    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->cancel()V

    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->cancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 540
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw v0

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 543
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method checkClosed()Z
    .locals 1

    const/4 v0, 0x0

    .line 959
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed(Z)Z

    move-result v0

    return v0
.end method

.method protected checkClosed(Z)Z
    .locals 1

    .line 982
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcConnection;->checkClosed(Z)V

    .line 986
    iget-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p1

    .line 987
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    if-eq p1, v0, :cond_0

    .line 988
    iput-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    .line 989
    iget-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->trace:Lorg/h2/message/Trace;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const p1, 0x15f97

    .line 983
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method checkClosedForWrite()Z
    .locals 1

    const/4 v0, 0x1

    .line 970
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed(Z)Z

    move-result v0

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

    .line 629
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    const/4 v0, 0x0

    .line 631
    iput-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 633
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public clearWarnings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "clearWarnings"

    .line 292
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 295
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

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

    :try_start_0
    const-string v0, "close"

    .line 245
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V

    .line 248
    iget-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 249
    iput-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 251
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected closeOldResultSet()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1010
    :try_start_0
    iget-boolean v3, p0, Lorg/h2/jdbc/JdbcStatement;->closedByResultSet:Z

    if-nez v3, :cond_0

    .line 1011
    iget-object v3, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    if-eqz v3, :cond_0

    .line 1012
    iget-object v3, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    invoke-virtual {v3}, Lorg/h2/jdbc/JdbcResultSet;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    :cond_0
    iput-boolean v2, p0, Lorg/h2/jdbc/JdbcStatement;->cancelled:Z

    .line 1017
    iput-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    .line 1018
    iput v0, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I

    return-void

    :catchall_0
    move-exception v3

    .line 1016
    iput-boolean v2, p0, Lorg/h2/jdbc/JdbcStatement;->cancelled:Z

    .line 1017
    iput-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    .line 1018
    iput v0, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I

    throw v3
.end method

.method public closeOnCompletion()V
    .locals 0

    return-void
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

    .line 157
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeInternal(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

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

    .line 854
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcStatement;->debugCode(Ljava/lang/String;)V

    .line 857
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeInternal(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 859
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

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

    .line 879
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcStatement;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcStatement;->debugCode(Ljava/lang/String;)V

    .line 882
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeInternal(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 884
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

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

    .line 904
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcStatement;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcStatement;->debugCode(Ljava/lang/String;)V

    .line 907
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeInternal(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 909
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeBatch()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "executeBatch"

    .line 646
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 649
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 652
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    .line 654
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 655
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 659
    iget-object v6, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    :try_start_2
    invoke-direct {p0, v6}, Lorg/h2/jdbc/JdbcStatement;->executeUpdateInternal(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 663
    :try_start_3
    invoke-virtual {p0, v4}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 667
    :cond_1
    invoke-virtual {v4, v5}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    :goto_1
    const/4 v5, -0x3

    .line 670
    aput v5, v1, v3

    const/4 v5, 0x1

    move-object v5, v4

    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    :cond_2
    iput-object v2, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    .line 680
    :try_start_4
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v1

    .line 676
    :cond_3
    :try_start_5
    new-instance v0, Lorg/h2/jdbc/JdbcBatchUpdateException;

    invoke-direct {v0, v5, v1}, Lorg/h2/jdbc/JdbcBatchUpdateException;-><init>(Ljava/sql/SQLException;[I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    .line 680
    :try_start_6
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    .line 683
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 64
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcStatement;->getNextId(I)I

    move-result v5

    .line 65
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ResultSet"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeQuery("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v5, v2}, Lorg/h2/jdbc/JdbcStatement;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 71
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V

    .line 72
    iget-boolean v1, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z

    invoke-static {p1, v1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget v2, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    invoke-virtual {v1, p1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    .line 75
    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 76
    :goto_0
    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetConcurrency:I

    const/16 v2, 0x3f0

    if-ne v1, v2, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 77
    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    .line 79
    :try_start_2
    iget v2, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I

    invoke-interface {p1, v2, v7}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :try_start_3
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    .line 83
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->close()V

    .line 84
    new-instance p1, Lorg/h2/jdbc/JdbcResultSet;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-boolean v6, p0, Lorg/h2/jdbc/JdbcStatement;->closedByResultSet:Z

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcStatement;Lorg/h2/result/ResultInterface;IZZZ)V

    iput-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    .line 86
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :try_start_4
    iget-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 81
    :try_start_5
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 86
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
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

    .line 114
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeUpdateInternal(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

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

    .line 779
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcStatement;->debugCode(Ljava/lang/String;)V

    .line 782
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeUpdateInternal(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 784
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

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

    .line 804
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcStatement;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcStatement;->debugCode(Ljava/lang/String;)V

    .line 807
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeUpdateInternal(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 809
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

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

    .line 829
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcStatement;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcStatement;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcStatement;->debugCode(Ljava/lang/String;)V

    .line 832
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeUpdateInternal(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 834
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    const-string v0, "getConnection"

    .line 264
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getFetchDirection"

    .line 341
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x3e8

    return v0

    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFetchSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getFetchSize"

    .line 423
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 425
    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 699
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcStatement;->getNextId(I)I

    move-result v1

    .line 700
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ResultSet"

    const-string v3, "getGeneratedKeys()"

    .line 701
    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcStatement;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 703
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 704
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p0, v1}, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys(Lorg/h2/jdbc/JdbcStatement;I)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 706
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getLastExecutedCommandType()I
    .locals 1

    .line 1043
    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->lastExecutedCommandType:I

    return v0
.end method

.method public getMaxFieldSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getMaxFieldSize"

    .line 473
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 477
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMaxRows()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getMaxRows"

    .line 358
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 360
    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMoreResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getMoreResults"

    .line 722
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 724
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 727
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMoreResults(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getMoreResults"

    int-to-long v1, p1

    .line 743
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;J)V

    packed-switch p1, :pswitch_data_0

    const-string v0, "current"

    goto :goto_0

    .line 747
    :pswitch_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 748
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V

    :pswitch_1
    const/4 p1, 0x0

    return p1

    .line 754
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 758
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getQueryTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getQueryTimeout"

    .line 571
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 573
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 575
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 206
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcResultSet;->getTraceId()I

    move-result v0

    const-string v1, "ResultSet"

    const/4 v2, 0x4

    const-string v3, "getResultSet()"

    .line 208
    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/h2/jdbc/JdbcStatement;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "getResultSet"

    .line 210
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 212
    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSetConcurrency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getResultSetConcurrency"

    .line 439
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 441
    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetConcurrency:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 443
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getResultSetHoldability"

    .line 921
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 925
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSetType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getResultSetType"

    .line 456
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 458
    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 460
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getUpdateCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getUpdateCount"

    .line 229
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 231
    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getWarnings"

    .line 277
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isCloseOnCompletion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isClosed"

    .line 1054
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 1057
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isPoolable()Z
    .locals 1

    const-string v0, "isPoolable"

    .line 1093
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1084
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "setCursorName"

    .line 308
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 311
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setEscapeProcessing(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 508
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEscapeProcessing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->debugCode(Ljava/lang/String;)V

    .line 511
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    .line 512
    iput-boolean p1, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 514
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected setExecutingStatement(Lorg/h2/command/CommandInterface;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1030
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->setExecutingStatement(Ljava/sql/Statement;)V

    goto :goto_0

    .line 1032
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p0}, Lorg/h2/jdbc/JdbcConnection;->setExecutingStatement(Ljava/sql/Statement;)V

    .line 1033
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->getCommandType()I

    move-result v0

    iput v0, p0, Lorg/h2/jdbc/JdbcStatement;->lastExecutedCommandType:I

    .line 1035
    :goto_0
    iput-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->executingCommand:Lorg/h2/command/CommandInterface;

    return-void
.end method

.method public setFetchDirection(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "setFetchDirection"

    int-to-long v1, p1

    .line 325
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;J)V

    .line 326
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setFetchSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "setFetchSize"

    int-to-long v1, p1

    .line 400
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;J)V

    .line 401
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    if-ltz p1, :cond_2

    if-lez p1, :cond_0

    .line 402
    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I

    if-gt p1, v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    .line 406
    sget p1, Lorg/h2/engine/SysProperties;->SERVER_RESULT_SET_FETCH_SIZE:I

    .line 408
    :cond_1
    iput p1, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    return-void

    :cond_2
    const-string v0, "rows"

    .line 403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 410
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setMaxFieldSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "setMaxFieldSize"

    int-to-long v1, p1

    .line 491
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;J)V

    .line 492
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 494
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setMaxRows(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "setMaxRows"

    int-to-long v1, p1

    .line 375
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;J)V

    .line 376
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    if-ltz p1, :cond_0

    .line 380
    iput p1, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I

    return-void

    :cond_0
    const-string v0, "maxRows"

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 382
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setPoolable(Z)V
    .locals 2

    .line 1105
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPoolable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->debugCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "setQueryTimeout"

    int-to-long v1, p1

    .line 592
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcStatement;->debugCodeCall(Ljava/lang/String;J)V

    .line 593
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    if-ltz p1, :cond_0

    .line 597
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout(I)V

    return-void

    :cond_0
    const-string v0, "seconds"

    .line 595
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 599
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1115
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->getTraceObjectName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1070
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "iface"

    .line 1073
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public wasCancelled()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->cancelled:Z

    return v0
.end method
