.class public Lorg/h2/jdbcx/JdbcConnectionPool;
.super Ljava/lang/Object;
.source "JdbcConnectionPool.java"

# interfaces
.implements Ljavax/sql/ConnectionEventListener;
.implements Ljavax/sql/DataSource;


# static fields
.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_TIMEOUT:I = 0x1e


# instance fields
.field private activeConnections:I

.field private final dataSource:Ljavax/sql/ConnectionPoolDataSource;

.field private isDisposed:Z

.field private logWriter:Ljava/io/PrintWriter;

.field private maxConnections:I

.field private final recycledConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljavax/sql/PooledConnection;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:I


# direct methods
.method protected constructor <init>(Ljavax/sql/ConnectionPoolDataSource;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->recycledConnections:Ljava/util/ArrayList;

    const/16 v0, 0xa

    .line 73
    iput v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I

    const/16 v0, 0x1e

    .line 74
    iput v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->timeout:I

    .line 79
    iput-object p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->dataSource:Ljavax/sql/ConnectionPoolDataSource;

    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    invoke-interface {p1}, Ljavax/sql/ConnectionPoolDataSource;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->logWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private closeConnection(Ljavax/sql/PooledConnection;)V
    .locals 1

    .line 259
    :try_start_0
    invoke-interface {p1}, Ljavax/sql/PooledConnection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 261
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->logWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->logWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/jdbcx/JdbcConnectionPool;
    .locals 1

    .line 109
    new-instance v0, Lorg/h2/jdbcx/JdbcDataSource;

    invoke-direct {v0}, Lorg/h2/jdbcx/JdbcDataSource;-><init>()V

    .line 110
    invoke-virtual {v0, p0}, Lorg/h2/jdbcx/JdbcDataSource;->setURL(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1}, Lorg/h2/jdbcx/JdbcDataSource;->setUser(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p2}, Lorg/h2/jdbcx/JdbcDataSource;->setPassword(Ljava/lang/String;)V

    .line 113
    new-instance p0, Lorg/h2/jdbcx/JdbcConnectionPool;

    invoke-direct {p0, v0}, Lorg/h2/jdbcx/JdbcConnectionPool;-><init>(Ljavax/sql/ConnectionPoolDataSource;)V

    return-object p0
.end method

.method public static create(Ljavax/sql/ConnectionPoolDataSource;)Lorg/h2/jdbcx/JdbcConnectionPool;
    .locals 1

    .line 96
    new-instance v0, Lorg/h2/jdbcx/JdbcConnectionPool;

    invoke-direct {v0, p0}, Lorg/h2/jdbcx/JdbcConnectionPool;-><init>(Ljavax/sql/ConnectionPoolDataSource;)V

    return-object v0
.end method

.method private getConnectionNow()Ljava/sql/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->isDisposed:Z

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->recycledConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->recycledConnections:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->recycledConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sql/PooledConnection;

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->dataSource:Ljavax/sql/ConnectionPoolDataSource;

    invoke-interface {v0}, Ljavax/sql/ConnectionPoolDataSource;->getPooledConnection()Ljavax/sql/PooledConnection;

    move-result-object v0

    .line 229
    :goto_0
    invoke-interface {v0}, Ljavax/sql/PooledConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    .line 230
    iget v2, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    .line 231
    invoke-interface {v0, p0}, Ljavax/sql/PooledConnection;->addConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V

    return-object v1

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection pool has been disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public connectionClosed(Ljavax/sql/ConnectionEvent;)V
    .locals 0

    .line 272
    invoke-virtual {p1}, Ljavax/sql/ConnectionEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/sql/PooledConnection;

    .line 273
    invoke-interface {p1, p0}, Ljavax/sql/PooledConnection;->removeConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V

    .line 274
    invoke-virtual {p0, p1}, Lorg/h2/jdbcx/JdbcConnectionPool;->recycleConnection(Ljavax/sql/PooledConnection;)V

    return-void
.end method

.method public connectionErrorOccurred(Ljavax/sql/ConnectionEvent;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized dispose()V
    .locals 4

    monitor-enter p0

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->isDisposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 171
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 173
    :try_start_1
    iput-boolean v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->isDisposed:Z

    .line 174
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->recycledConnections:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/sql/PooledConnection;

    invoke-direct {p0, v3}, Lorg/h2/jdbcx/JdbcConnectionPool;->closeConnection(Ljavax/sql/PooledConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 169
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActiveConnections()I
    .locals 1

    monitor-enter p0

    .line 294
    :try_start_0
    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->timeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 197
    :goto_0
    monitor-enter p0

    .line 198
    :try_start_0
    iget v2, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    iget v3, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I

    if-ge v2, v3, :cond_0

    .line 199
    invoke-direct {p0}, Lorg/h2/jdbcx/JdbcConnectionPool;->getConnectionNow()Ljava/sql/Connection;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    const-wide/16 v2, 0x3e8

    .line 202
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :catch_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    const/16 v1, 0x1f41

    const-string v2, "Login timeout"

    const-string v3, "08001"

    invoke-direct {v0, v2, v3, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    .line 206
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 0

    .line 216
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getLogWriter()Ljava/io/PrintWriter;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->logWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public declared-synchronized getLoginTimeout()I
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxConnections()I
    .locals 1

    monitor-enter p0

    .line 137
    :try_start_0
    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 0
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

    const-string p1, "isWrapperFor"

    .line 330
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method declared-synchronized recycleConnection(Ljavax/sql/PooledConnection;)V
    .locals 2

    monitor-enter p0

    .line 243
    :try_start_0
    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    if-lez v0, :cond_2

    .line 246
    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    .line 247
    iget-boolean v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->isDisposed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    iget v1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->recycledConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbcx/JdbcConnectionPool;->closeConnection(Ljavax/sql/PooledConnection;)V

    .line 252
    :goto_0
    iget p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_1
    monitor-exit p0

    return-void

    .line 244
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 242
    monitor-exit p0

    throw p1
.end method

.method public setLogWriter(Ljava/io/PrintWriter;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->logWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method public declared-synchronized setLoginTimeout(I)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/16 p1, 0x1e

    .line 162
    :cond_0
    :try_start_0
    iput p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 158
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxConnections(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 126
    :try_start_0
    iput p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid maxConnections value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 122
    monitor-exit p0

    throw p1
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
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

    const-string p1, "unwrap"

    .line 320
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
