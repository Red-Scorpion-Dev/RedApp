.class public Lorg/h2/server/TcpServer;
.super Ljava/lang/Object;
.source "TcpServer.java"

# interfaces
.implements Lorg/h2/server/Service;


# static fields
.field private static final MANAGEMENT_DB_PREFIX:Ljava/lang/String; = "management_db_"

.field private static final SERVERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/h2/server/TcpServer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHUTDOWN_FORCE:I = 0x1

.field private static final SHUTDOWN_NORMAL:I


# instance fields
.field private allowOthers:Z

.field private baseDir:Ljava/lang/String;

.field private ifExists:Z

.field private isDaemon:Z

.field private key:Ljava/lang/String;

.field private keyDatabase:Ljava/lang/String;

.field private listenerThread:Ljava/lang/Thread;

.field private managementDb:Ljava/sql/Connection;

.field private managementDbAdd:Ljava/sql/PreparedStatement;

.field private managementDbRemove:Ljava/sql/PreparedStatement;

.field private managementPassword:Ljava/lang/String;

.field private nextThreadId:I

.field private port:I

.field private portIsSet:Z

.field private final running:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/h2/server/TcpServerThread;",
            ">;"
        }
    .end annotation
.end field

.field private serverSocket:Ljava/net/ServerSocket;

.field private shutdownHandler:Lorg/h2/server/ShutdownHandler;

.field private ssl:Z

.field private stop:Z

.field private trace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/h2/server/TcpServer;->SERVERS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->running:Ljava/util/Set;

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lorg/h2/server/TcpServer;->managementPassword:Ljava/lang/String;

    return-void
.end method

.method public static getManagementDbName(I)Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mem:management_db_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initManagementDb()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "user"

    const-string v2, ""

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "password"

    .line 90
    iget-object v2, p0, Lorg/h2/server/TcpServer;->managementPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jdbc:h2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/h2/server/TcpServer;->port:I

    invoke-static {v3}, Lorg/h2/server/TcpServer;->getManagementDbName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/h2/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    .line 94
    iput-object v0, p0, Lorg/h2/server/TcpServer;->managementDb:Ljava/sql/Connection;

    .line 97
    :try_start_0
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE ALIAS IF NOT EXISTS STOP_SERVER FOR \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lorg/h2/server/TcpServer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".stopServer\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "CREATE TABLE IF NOT EXISTS SESSIONS(ID INT PRIMARY KEY, URL VARCHAR, USER VARCHAR, CONNECTED TIMESTAMP)"

    .line 100
    invoke-interface {v1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "INSERT INTO SESSIONS VALUES(?, ?, ?, NOW())"

    .line 103
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/server/TcpServer;->managementDbAdd:Ljava/sql/PreparedStatement;

    const-string v2, "DELETE FROM SESSIONS WHERE ID=?"

    .line 105
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->managementDbRemove:Ljava/sql/PreparedStatement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 110
    sget-object v0, Lorg/h2/server/TcpServer;->SERVERS:Ljava/util/Map;

    iget v1, p0, Lorg/h2/server/TcpServer;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    .line 108
    :goto_0
    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    throw v0
.end method

.method public static declared-synchronized shutdown(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-class v0, Lorg/h2/server/TcpServer;

    monitor-enter v0

    const/16 v1, 0x2384

    const/16 v2, 0x3a

    .line 434
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    add-int/2addr v2, v3

    .line 436
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-static {v2}, Lorg/h2/util/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 441
    :cond_0
    invoke-static {v1}, Lorg/h2/server/TcpServer;->getManagementDbName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 443
    :try_start_1
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    const/4 v7, 0x0

    .line 451
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jdbc:h2:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, p1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v8
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v9, "CALL STOP_SERVER(?, ?, ?)"

    .line 452
    invoke-interface {v8, v9}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v9
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p3, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move v7, v1

    .line 453
    :goto_1
    :try_start_4
    invoke-interface {v9, v3, v7}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 454
    invoke-interface {v9, v6, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v6, 0x3

    .line 455
    invoke-interface {v9, v6, p2}, Ljava/sql/PreparedStatement;->setInt(II)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 457
    :try_start_5
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    if-eqz p2, :cond_2

    goto :goto_2

    .line 462
    :cond_2
    :try_start_6
    invoke-virtual {v6}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v7
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const v10, 0x15fd3

    if-ne v7, v10, :cond_3

    .line 473
    :goto_2
    :try_start_7
    invoke-static {v9}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 474
    invoke-static {v8}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    .line 463
    :cond_3
    :try_start_8
    throw v6
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p0

    move-object v7, v9

    goto :goto_4

    :catch_1
    move-exception v6

    move-object v7, v9

    goto :goto_3

    :catch_2
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v8, v7

    goto :goto_4

    :catch_3
    move-exception v6

    move-object v8, v7

    :goto_3
    if-eq v5, v3, :cond_4

    .line 473
    :try_start_9
    invoke-static {v7}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 474
    invoke-static {v8}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 470
    :cond_4
    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p0

    .line 473
    :goto_4
    :try_start_b
    invoke-static {v7}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 474
    invoke-static {v8}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    throw p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 480
    :cond_5
    :goto_5
    monitor-exit v0

    return-void

    :catch_4
    move-exception p0

    .line 445
    :try_start_c
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception p0

    goto :goto_6

    :catch_5
    move-exception p0

    .line 478
    :try_start_d
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 432
    :goto_6
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized stopManagementDb()V
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->managementDb:Ljava/sql/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 161
    :try_start_1
    iget-object v0, p0, Lorg/h2/server/TcpServer;->managementDb:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    :try_start_2
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lorg/h2/server/TcpServer;->managementDb:Ljava/sql/Connection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 158
    monitor-exit p0

    throw v0
.end method

.method public static stopServer(ILjava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 334
    sget-object p0, Lorg/h2/server/TcpServer;->SERVERS:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Integer;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    invoke-static {v2, p1, p2}, Lorg/h2/server/TcpServer;->stopServer(ILjava/lang/String;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 341
    :cond_2
    sget-object v1, Lorg/h2/server/TcpServer;->SERVERS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/TcpServer;

    if-nez v1, :cond_3

    return-void

    .line 345
    :cond_3
    iget-object v2, v1, Lorg/h2/server/TcpServer;->managementPassword:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x1

    if-nez p2, :cond_5

    .line 349
    invoke-direct {v1}, Lorg/h2/server/TcpServer;->stopManagementDb()V

    .line 350
    iput-boolean p1, v1, Lorg/h2/server/TcpServer;->stop:Z

    .line 352
    :try_start_0
    invoke-static {p0, v0}, Lorg/h2/util/NetUtils;->createLoopbackSocket(IZ)Ljava/net/Socket;

    move-result-object p0

    .line 353
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    if-ne p2, p1, :cond_6

    .line 358
    invoke-virtual {v1}, Lorg/h2/server/TcpServer;->stop()V

    .line 360
    :catch_0
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lorg/h2/server/TcpServer;->shutdown()V

    return-void
.end method


# virtual methods
.method declared-synchronized addConnection(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->managementDbAdd:Ljava/sql/PreparedStatement;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 136
    iget-object p1, p0, Lorg/h2/server/TcpServer;->managementDbAdd:Ljava/sql/PreparedStatement;

    const/4 v0, 0x2

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 137
    iget-object p1, p0, Lorg/h2/server/TcpServer;->managementDbAdd:Ljava/sql/PreparedStatement;

    const/4 p2, 0x3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 138
    iget-object p1, p0, Lorg/h2/server/TcpServer;->managementDbAdd:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 140
    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method allow(Ljava/net/Socket;)Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->allowOthers:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 221
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/h2/util/NetUtils;->isLocalAddress(Ljava/net/Socket;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p0, p1}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method cancelStatement(Ljava/lang/String;I)V
    .locals 2

    .line 489
    iget-object v0, p0, Lorg/h2/server/TcpServer;->running:Ljava/util/Set;

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/TcpServerThread;

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {v1, p1, p2}, Lorg/h2/server/TcpServerThread;->cancelStatement(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public checkKeyAndGetDatabaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 506
    iget-object v0, p0, Lorg/h2/server/TcpServer;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p1

    .line 509
    :cond_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 510
    iget-object p1, p0, Lorg/h2/server/TcpServer;->keyDatabase:Ljava/lang/String;

    return-object p1

    :cond_1
    const/16 p1, 0x6d60

    .line 512
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getAllowOthers()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->allowOthers:Z

    return v0
.end method

.method getBaseDir()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/h2/server/TcpServer;->baseDir:Ljava/lang/String;

    return-object v0
.end method

.method getIfExists()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->ifExists:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "H2 TCP Server"

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 206
    iget v0, p0, Lorg/h2/server/TcpServer;->port:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "TCP"

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/h2/server/TcpServer;->ssl:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl"

    goto :goto_0

    :cond_0
    const-string v1, "tcp"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/h2/util/NetUtils;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/server/TcpServer;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs init([Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x2384

    .line 171
    iput v0, p0, Lorg/h2/server/TcpServer;->port:I

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_9

    .line 172
    array-length v1, p1

    if-ge v0, v1, :cond_9

    .line 173
    aget-object v1, p1, v0

    const-string v2, "-trace"

    .line 174
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 175
    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->trace:Z

    goto/16 :goto_1

    :cond_0
    const-string v2, "-tcpSSL"

    .line 176
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->ssl:Z

    goto/16 :goto_1

    :cond_1
    const-string v2, "-tcpPort"

    .line 178
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 179
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/h2/server/TcpServer;->port:I

    .line 180
    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->portIsSet:Z

    goto :goto_1

    :cond_2
    const-string v2, "-tcpPassword"

    .line 181
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 182
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/h2/server/TcpServer;->managementPassword:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "-baseDir"

    .line 183
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 184
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/h2/server/TcpServer;->baseDir:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v2, "-key"

    .line 185
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 186
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/h2/server/TcpServer;->key:Ljava/lang/String;

    add-int/2addr v0, v3

    .line 187
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/h2/server/TcpServer;->keyDatabase:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v2, "-tcpAllowOthers"

    .line 188
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->allowOthers:Z

    goto :goto_1

    :cond_6
    const-string v2, "-tcpDaemon"

    .line 190
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 191
    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->isDaemon:Z

    goto :goto_1

    :cond_7
    const-string v2, "-ifExists"

    .line 192
    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 193
    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->ifExists:Z

    :cond_8
    :goto_1
    add-int/2addr v0, v3

    goto/16 :goto_0

    .line 196
    :cond_9
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    return-void
.end method

.method public isDaemon()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->isDaemon:Z

    return v0
.end method

.method public declared-synchronized isRunning(Z)Z
    .locals 3

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 270
    monitor-exit p0

    return v1

    .line 273
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/h2/server/TcpServer;->port:I

    iget-boolean v2, p0, Lorg/h2/server/TcpServer;->ssl:Z

    invoke-static {v0, v2}, Lorg/h2/util/NetUtils;->createLoopbackSocket(IZ)Ljava/net/Socket;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 275
    monitor-exit p0

    return p1

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 278
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 268
    monitor-exit p0

    throw p1
.end method

.method public listen()V
    .locals 5

    .line 246
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->listenerThread:Ljava/lang/Thread;

    .line 247
    iget-object v0, p0, Lorg/h2/server/TcpServer;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/h2/server/TcpServer;->stop:Z

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 251
    new-instance v2, Lorg/h2/server/TcpServerThread;

    iget v3, p0, Lorg/h2/server/TcpServer;->nextThreadId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/h2/server/TcpServer;->nextThreadId:I

    invoke-direct {v2, v1, p0, v3}, Lorg/h2/server/TcpServerThread;-><init>(Ljava/net/Socket;Lorg/h2/server/TcpServer;I)V

    .line 252
    iget-object v1, p0, Lorg/h2/server/TcpServer;->running:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 254
    iget-boolean v3, p0, Lorg/h2/server/TcpServer;->isDaemon:Z

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 255
    invoke-virtual {v2, v1}, Lorg/h2/server/TcpServerThread;->setThread(Ljava/lang/Thread;)V

    .line 256
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lorg/h2/util/NetUtils;->closeSilently(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 260
    iget-boolean v1, p0, Lorg/h2/server/TcpServer;->stop:Z

    if-nez v1, :cond_1

    .line 261
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    .line 264
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/h2/server/TcpServer;->stopManagementDb()V

    return-void
.end method

.method remove(Lorg/h2/server/TcpServerThread;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/h2/server/TcpServer;->running:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method declared-synchronized removeConnection(I)V
    .locals 2

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->managementDbRemove:Ljava/sql/PreparedStatement;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 152
    iget-object p1, p0, Lorg/h2/server/TcpServer;->managementDbRemove:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 154
    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    .line 150
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/h2/server/TcpServer;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    return-void
.end method

.method shutdown()V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/h2/server/TcpServer;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/h2/server/TcpServer;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    invoke-interface {v0}, Lorg/h2/server/ShutdownHandler;->shutdown()V

    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 230
    :try_start_0
    iput-boolean v0, p0, Lorg/h2/server/TcpServer;->stop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :try_start_1
    iget v1, p0, Lorg/h2/server/TcpServer;->port:I

    iget-boolean v2, p0, Lorg/h2/server/TcpServer;->ssl:Z

    invoke-static {v1, v2}, Lorg/h2/util/NetUtils;->createServerSocket(IZ)Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 234
    :try_start_2
    iget-boolean v2, p0, Lorg/h2/server/TcpServer;->portIsSet:Z

    if-nez v2, :cond_0

    .line 235
    iget-boolean v1, p0, Lorg/h2/server/TcpServer;->ssl:Z

    invoke-static {v0, v1}, Lorg/h2/util/NetUtils;->createServerSocket(IZ)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 240
    :goto_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lorg/h2/server/TcpServer;->port:I

    .line 241
    invoke-direct {p0}, Lorg/h2/server/TcpServer;->initManagementDb()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 237
    :cond_0
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 229
    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 4

    .line 289
    sget-object v0, Lorg/h2/server/TcpServer;->SERVERS:Ljava/util/Map;

    iget v1, p0, Lorg/h2/server/TcpServer;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->stop:Z

    if-nez v0, :cond_1

    .line 291
    invoke-direct {p0}, Lorg/h2/server/TcpServer;->stopManagementDb()V

    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lorg/h2/server/TcpServer;->stop:Z

    .line 293
    iget-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 295
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :catch_1
    :goto_0
    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->listenerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 305
    :try_start_1
    iget-object v0, p0, Lorg/h2/server/TcpServer;->listenerThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 307
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    .line 312
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/h2/server/TcpServer;->running:Ljava/util/Set;

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/TcpServerThread;

    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {v1}, Lorg/h2/server/TcpServerThread;->close()V

    .line 316
    :try_start_2
    invoke-virtual {v1}, Lorg/h2/server/TcpServerThread;->getThread()Ljava/lang/Thread;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    .line 318
    invoke-static {v1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method trace(Ljava/lang/String;)V
    .locals 1

    .line 387
    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->trace:Z

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method traceError(Ljava/lang/Throwable;)V
    .locals 1

    .line 397
    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->trace:Z

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
