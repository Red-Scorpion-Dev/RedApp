.class Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;
.super Lorg/h2/jdbc/JdbcConnection;
.source "JdbcXAConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/jdbcx/JdbcXAConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PooledJdbcConnection"
.end annotation


# instance fields
.field private isClosed:Z

.field final synthetic this$0:Lorg/h2/jdbcx/JdbcXAConnection;


# direct methods
.method public constructor <init>(Lorg/h2/jdbcx/JdbcXAConnection;Lorg/h2/jdbc/JdbcConnection;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;->this$0:Lorg/h2/jdbcx/JdbcXAConnection;

    .line 459
    invoke-direct {p0, p2}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/jdbc/JdbcConnection;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized checkClosed(Z)V
    .locals 1

    monitor-enter p0

    .line 483
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;->isClosed:Z

    if-nez v0, :cond_0

    .line 486
    invoke-super {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->checkClosed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p0

    return-void

    :cond_0
    const p1, 0x15f97

    .line 484
    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 482
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 464
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 466
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;->rollback()V

    .line 467
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;->setAutoCommit(Z)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    :catch_0
    :try_start_2
    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;->this$0:Lorg/h2/jdbcx/JdbcXAConnection;

    invoke-virtual {v1}, Lorg/h2/jdbcx/JdbcXAConnection;->closedHandle()V

    .line 472
    iput-boolean v0, p0, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;->isClosed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 463
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 478
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;->isClosed:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/h2/jdbc/JdbcConnection;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
