.class public Lorg/h2/jdbcx/JdbcXAConnection;
.super Lorg/h2/message/TraceObject;
.source "JdbcXAConnection.java"

# interfaces
.implements Ljavax/sql/XAConnection;
.implements Ljavax/transaction/xa/XAResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;
    }
.end annotation


# instance fields
.field private currentTransaction:Ljavax/transaction/xa/Xid;

.field private final factory:Lorg/h2/jdbcx/JdbcDataSourceFactory;

.field private volatile handleConn:Ljava/sql/Connection;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljavax/sql/ConnectionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private physicalConn:Lorg/h2/jdbc/JdbcConnection;

.field private prepared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 50
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    return-void
.end method

.method constructor <init>(Lorg/h2/jdbcx/JdbcDataSourceFactory;ILorg/h2/jdbc/JdbcConnection;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    .line 45
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->factory:Lorg/h2/jdbcx/JdbcDataSourceFactory;

    .line 56
    invoke-virtual {p1}, Lorg/h2/jdbcx/JdbcDataSourceFactory;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p0, p1, v0, p2}, Lorg/h2/jdbcx/JdbcXAConnection;->setTrace(Lorg/h2/message/Trace;II)V

    .line 57
    iput-object p3, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    return-void
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_0

    return-void

    .line 447
    :cond_0
    new-instance v0, Ljavax/transaction/xa/XAException;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v0
.end method

.method private static convertException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;
    .locals 2

    .line 405
    new-instance v0, Ljavax/transaction/xa/XAException;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/transaction/xa/XAException;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0, p0}, Ljavax/transaction/xa/XAException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method private static quoteFlags(I)Ljava/lang/String;
    .locals 2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const-string v1, "|XAResource.TMENDRSCAN"

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    const-string v1, "|XAResource.TMFAIL"

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    const-string v1, "|XAResource.TMJOIN"

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    const-string v1, "|XAResource.TMONEPHASE"

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    const-string v1, "|XAResource.TMRESUME"

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_5

    const-string v1, "|XAResource.TMSTARTRSCAN"

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_6

    const-string v1, "|XAResource.TMSUCCESS"

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    const-string v1, "|XAResource.TMSUSPEND"

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_8

    const-string p0, "|XAResource.XA_RDONLY"

    .line 437
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "|XAResource.TMNOFLAGS"

    .line 440
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
    .locals 1

    const-string v0, "addConnectionEventListener(listener);"

    .line 119
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCode(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStatementEventListener(Ljavax/sql/StatementEventListener;)V
    .locals 0

    .line 383
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "close"

    .line 77
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->handleConn:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 85
    :try_start_0
    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iput-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method closedHandle()V
    .locals 3

    const-string v0, "closedHandle();"

    .line 138
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCode(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljavax/sql/ConnectionEvent;

    invoke-direct {v0, p0}, Ljavax/sql/ConnectionEvent;-><init>(Ljavax/sql/PooledConnection;)V

    .line 142
    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 143
    iget-object v2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sql/ConnectionEventListener;

    .line 144
    invoke-interface {v2, v0}, Ljavax/sql/ConnectionEventListener;->connectionClosed(Ljavax/sql/ConnectionEvent;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->handleConn:Ljava/sql/Connection;

    return-void
.end method

.method public commit(Ljavax/transaction/xa/Xid;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcXAConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 361
    :try_start_0
    iget-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->commit()V

    move-object p2, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 363
    :cond_1
    iget-object p2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p2}, Lorg/h2/jdbc/JdbcConnection;->createStatement()Ljava/sql/Statement;

    move-result-object p2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COMMIT TRANSACTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 365
    iput-boolean p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z

    .line 367
    :goto_0
    iget-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/h2/jdbc/JdbcConnection;->setAutoCommit(Z)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 371
    invoke-static {p2}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 373
    iput-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, p2

    .line 369
    :goto_1
    :try_start_2
    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXAConnection;->convertException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    :goto_2
    invoke-static {p2}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    throw p1
.end method

.method public end(Ljavax/transaction/xa/Xid;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcXAConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbcx/JdbcXAConnection;->quoteFlags(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x2000000

    if-ne p2, v0, :cond_1

    return-void

    .line 311
    :cond_1
    iget-object p2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 314
    iput-boolean p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z

    return-void

    .line 312
    :cond_2
    new-instance p1, Ljavax/transaction/xa/XAException;

    const/16 p2, -0x9

    invoke-direct {p1, p2}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw p1
.end method

.method public forget(Ljavax/transaction/xa/Xid;)V
    .locals 2

    .line 260
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcXAConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forget("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z

    return-void
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "getConnection"

    .line 101
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->handleConn:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->rollback()V

    .line 108
    new-instance v0, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, p0, v1}, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;-><init>(Lorg/h2/jdbcx/JdbcXAConnection;Lorg/h2/jdbc/JdbcConnection;)V

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->handleConn:Ljava/sql/Connection;

    .line 109
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->handleConn:Ljava/sql/Connection;

    return-object v0
.end method

.method public getTransactionTimeout()I
    .locals 1

    const-string v0, "getTransactionTimeout"

    .line 156
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getXAResource()Ljavax/transaction/xa/XAResource;
    .locals 1

    const-string v0, "getXAResource"

    .line 67
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCodeCall(Ljava/lang/String;)V

    return-object p0
.end method

.method public isSameRM(Ljavax/transaction/xa/XAResource;)Z
    .locals 1

    const-string v0, "isSameRM(xares);"

    .line 180
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCode(Ljava/lang/String;)V

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public prepare(Ljavax/transaction/xa/Xid;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcXAConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCode(Ljava/lang/String;)V

    .line 235
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbcx/JdbcXAConnection;->checkOpen()V

    .line 236
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 241
    :try_start_0
    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PREPARE COMMIT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const/4 p1, 0x1

    .line 243
    iput-boolean p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 245
    :goto_0
    :try_start_2
    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXAConnection;->convertException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    :goto_1
    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    throw p1

    .line 237
    :cond_1
    new-instance p1, Ljavax/transaction/xa/XAException;

    const/4 v0, -0x5

    invoke-direct {p1, v0}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw p1
.end method

.method public recover(I)[Ljavax/transaction/xa/Xid;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    const-string v0, "recover"

    .line 194
    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXAConnection;->quoteFlags(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lorg/h2/jdbcx/JdbcXAConnection;->checkOpen()V

    const/4 p1, 0x0

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "SELECT * FROM INFORMATION_SCHEMA.IN_DOUBT ORDER BY TRANSACTION"

    .line 199
    invoke-interface {v0, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 201
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 202
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TRANSACTION"

    .line 203
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    .line 204
    invoke-static {v3}, Lorg/h2/jdbcx/JdbcXAConnection;->getNextId(I)I

    move-result v3

    .line 205
    new-instance v4, Lorg/h2/jdbcx/JdbcXid;

    iget-object v5, p0, Lorg/h2/jdbcx/JdbcXAConnection;->factory:Lorg/h2/jdbcx/JdbcDataSourceFactory;

    invoke-direct {v4, v5, v3, v2}, Lorg/h2/jdbcx/JdbcXid;-><init>(Lorg/h2/jdbcx/JdbcDataSourceFactory;ILjava/lang/String;)V

    .line 206
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    .line 209
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/transaction/xa/Xid;

    .line 210
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 211
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 212
    iput-boolean v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    :cond_1
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 216
    :goto_1
    :try_start_2
    new-instance v1, Ljavax/transaction/xa/XAException;

    const/4 v2, -0x3

    invoke-direct {v1, v2}, Ljavax/transaction/xa/XAException;-><init>(I)V

    .line 217
    invoke-virtual {v1, p1}, Ljavax/transaction/xa/XAException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 218
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 220
    :goto_2
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    throw p1
.end method

.method public removeConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
    .locals 1

    const-string v0, "removeConnectionEventListener(listener);"

    .line 130
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCode(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeStatementEventListener(Ljavax/sql/StatementEventListener;)V
    .locals 0

    .line 393
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public rollback(Ljavax/transaction/xa/Xid;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcXAConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rollback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCode(Ljava/lang/String;)V

    .line 277
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 280
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 281
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ROLLBACK TRANSACTION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :try_start_3
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    const/4 p1, 0x0

    .line 285
    iput-boolean p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, v1

    .line 283
    :goto_0
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    throw p1

    .line 287
    :cond_1
    iget-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->rollback()V

    .line 289
    :goto_1
    iget-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/jdbc/JdbcConnection;->setAutoCommit(Z)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 293
    iput-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    return-void

    :catch_0
    move-exception p1

    .line 291
    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXAConnection;->convertException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p1

    throw p1
.end method

.method public setTransactionTimeout(I)Z
    .locals 3

    const-string v0, "setTransactionTimeout"

    int-to-long v1, p1

    .line 168
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public start(Ljavax/transaction/xa/Xid;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcXAConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbcx/JdbcXAConnection;->quoteFlags(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcXAConnection;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x8000000

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x200000

    if-ne p2, v0, :cond_3

    .line 332
    iget-object p2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 333
    :cond_2
    new-instance p1, Ljavax/transaction/xa/XAException;

    const/4 p2, -0x3

    invoke-direct {p1, p2}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw p1

    .line 335
    :cond_3
    iget-object p2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    if-nez p2, :cond_5

    .line 339
    :cond_4
    :goto_0
    :try_start_0
    iget-object p2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/h2/jdbc/JdbcConnection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    iput-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    .line 344
    iput-boolean v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z

    return-void

    :catch_0
    move-exception p1

    .line 341
    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXAConnection;->convertException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p1

    throw p1

    .line 336
    :cond_5
    new-instance p1, Ljavax/transaction/xa/XAException;

    const/4 p2, -0x4

    invoke-direct {p1, p2}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcXAConnection;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
