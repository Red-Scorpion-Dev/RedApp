.class public Lorg/h2/jdbc/JdbcConnection;
.super Lorg/h2/message/TraceObject;
.source "JdbcConnection.java"

# interfaces
.implements Ljava/sql/Connection;


# static fields
.field private static final NUM_SERVERS:Ljava/lang/String; = "numServers"

.field private static final PREFIX_SERVER:Ljava/lang/String; = "server"

.field private static keepOpenStackTrace:Z


# instance fields
.field private catalog:Ljava/lang/String;

.field private clientInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private commit:Lorg/h2/command/CommandInterface;

.field private executingStatement:Ljava/sql/Statement;

.field private getGeneratedKeys:Lorg/h2/command/CommandInterface;

.field private getLockMode:Lorg/h2/command/CommandInterface;

.field private getQueryTimeout:Lorg/h2/command/CommandInterface;

.field private getReadOnly:Lorg/h2/command/CommandInterface;

.field private holdability:I

.field private mode:Ljava/lang/String;

.field private queryTimeoutCache:I

.field private rollback:Lorg/h2/command/CommandInterface;

.field private savepointId:I

.field private session:Lorg/h2/engine/SessionInterface;

.field private setLockMode:Lorg/h2/command/CommandInterface;

.field private setQueryTimeout:Lorg/h2/command/CommandInterface;

.field private final url:Ljava/lang/String;

.field private final user:Ljava/lang/String;

.field private final watcher:Lorg/h2/util/CloseWatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/h2/engine/ConnectionInfo;

    invoke-direct {v0, p1, p2}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/ConnectionInfo;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/ConnectionInfo;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lorg/h2/jdbc/JdbcConnection;->holdability:I

    const/4 v1, -0x1

    .line 93
    iput v1, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I

    if-eqz p2, :cond_0

    .line 112
    :try_start_0
    invoke-static {}, Lorg/h2/engine/SysProperties;->getBaseDir()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p1, p2}, Lorg/h2/engine/ConnectionInfo;->setBaseDir(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 118
    :cond_0
    :goto_0
    new-instance p2, Lorg/h2/engine/SessionRemote;

    invoke-direct {p2, p1}, Lorg/h2/engine/SessionRemote;-><init>(Lorg/h2/engine/ConnectionInfo;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/h2/engine/SessionRemote;->connectEmbeddedOrServer(Z)Lorg/h2/engine/SessionInterface;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    .line 119
    iget-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p2}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    .line 120
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result p2

    .line 121
    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p0, v1, v0, p2}, Lorg/h2/jdbc/JdbcConnection;->setTrace(Lorg/h2/message/Trace;II)V

    .line 122
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isInfoEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 124
    iget-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = DriverManager.getConnection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getOriginalURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \"\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/h2/message/Trace;->infoCode(Ljava/lang/String;)V

    .line 128
    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getURL()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->closeOld()V

    .line 130
    iget-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    sget-boolean p2, Lorg/h2/jdbc/JdbcConnection;->keepOpenStackTrace:Z

    invoke-static {p0, p1, p2}, Lorg/h2/util/CloseWatcher;->register(Ljava/lang/Object;Ljava/io/Closeable;Z)Lorg/h2/util/CloseWatcher;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->watcher:Lorg/h2/util/CloseWatcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 132
    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Lorg/h2/engine/SessionInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 162
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lorg/h2/jdbc/JdbcConnection;->holdability:I

    const/4 v1, -0x1

    .line 93
    iput v1, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I

    .line 163
    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    .line 164
    invoke-interface {p1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    .line 165
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result p1

    .line 166
    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p0, v1, v0, p1}, Lorg/h2/jdbc/JdbcConnection;->setTrace(Lorg/h2/message/Trace;II)V

    .line 167
    iput-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->watcher:Lorg/h2/util/CloseWatcher;

    return-void
.end method

.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;)V
    .locals 3

    .line 139
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lorg/h2/jdbc/JdbcConnection;->holdability:I

    const/4 v1, -0x1

    .line 93
    iput v1, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I

    .line 140
    iget-object v1, p1, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    .line 141
    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    .line 142
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v1

    .line 143
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p0, v2, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->setTrace(Lorg/h2/message/Trace;II)V

    .line 144
    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    .line 146
    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->catalog:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->catalog:Ljava/lang/String;

    .line 147
    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    .line 148
    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    .line 149
    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    .line 150
    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    .line 151
    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    .line 152
    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->watcher:Lorg/h2/util/CloseWatcher;

    .line 154
    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private checkClosedForWrite()V
    .locals 1

    const/4 v0, 0x1

    .line 1467
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed(Z)V

    return-void
.end method

.method private static checkHoldability(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1444
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "resultSetHoldability"

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static checkMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1958
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "map.size > 0"

    .line 1959
    invoke-static {p0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static checkRunOver(IILjava/lang/String;)V
    .locals 0

    if-ge p0, p1, :cond_0

    return-void

    .line 1410
    :cond_0
    invoke-static {p2, p0}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static checkTypeConcurrency(II)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1426
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "resultSetType"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 1434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "resultSetConcurrency"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ef
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;
    .locals 0

    if-eqz p0, :cond_0

    .line 422
    invoke-interface {p0}, Lorg/h2/command/CommandInterface;->close()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private closeOld()V
    .locals 4

    .line 174
    :goto_0
    invoke-static {}, Lorg/h2/util/CloseWatcher;->pollUnclosed()Lorg/h2/util/CloseWatcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/h2/util/CloseWatcher;->getCloseable()Ljava/io/Closeable;

    move-result-object v1

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 181
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    const-string v3, "closing session"

    invoke-virtual {v2, v1, v3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x1

    .line 185
    sput-boolean v1, Lorg/h2/jdbc/JdbcConnection;->keepOpenStackTrace:Z

    .line 186
    invoke-virtual {v0}, Lorg/h2/util/CloseWatcher;->getOpenStackTrace()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fa2

    .line 187
    invoke-static {v1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v2, v1, v0}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closePreparedCommands()V
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    .line 411
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    .line 412
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    .line 413
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    .line 414
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    .line 415
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setLockMode:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setLockMode:Lorg/h2/command/CommandInterface;

    .line 416
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    .line 417
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout:Lorg/h2/command/CommandInterface;

    return-void
.end method

.method private static convertSavepoint(Ljava/sql/Savepoint;)Lorg/h2/jdbc/JdbcSavepoint;
    .locals 3

    .line 1077
    instance-of v0, p0, Lorg/h2/jdbc/JdbcSavepoint;

    if-eqz v0, :cond_0

    .line 1080
    check-cast p0, Lorg/h2/jdbc/JdbcSavepoint;

    return-object p0

    :cond_0
    const v0, 0x15fcf

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static convertToClientInfoException(Ljava/sql/SQLException;)Ljava/sql/SQLClientInfoException;
    .locals 7

    .line 1739
    instance-of v0, p0, Ljava/sql/SQLClientInfoException;

    if-eqz v0, :cond_0

    .line 1740
    check-cast p0, Ljava/sql/SQLClientInfoException;

    return-object p0

    .line 1742
    :cond_0
    new-instance v6, Ljava/sql/SQLClientInfoException;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/sql/SQLClientInfoException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method private static found(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6

    .line 1415
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static isInternalProperty(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "numServers"

    .line 1734
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "server"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;
    .locals 1

    if-nez p2, :cond_0

    .line 1206
    iget-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    const v0, 0x7fffffff

    invoke-interface {p2, p1, v0}, Lorg/h2/engine/SessionInterface;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private rollbackInternal()V
    .locals 2

    const-string v0, "ROLLBACK"

    .line 1513
    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    .line 1514
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    return-void
.end method

.method private static translateGetEnd(Ljava/lang/String;IC)I
    .locals 6

    .line 1210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x22

    if-eq p2, v1, :cond_c

    const/16 v1, 0x24

    if-eq p2, v1, :cond_8

    const/16 v1, 0x27

    if-eq p2, v1, :cond_6

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/16 v3, 0x2d

    if-eq p2, v3, :cond_4

    const/16 v3, 0x2f

    if-ne p2, v3, :cond_3

    add-int/lit8 p2, p1, 0x1

    .line 1238
    invoke-static {p2, v0, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    .line 1239
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_1

    const-string p2, "*/"

    add-int/lit8 v0, p1, 0x2

    .line 1241
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_0

    add-int/lit8 p1, p2, 0x1

    goto :goto_1

    .line 1243
    :cond_0
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    .line 1246
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v3, :cond_2

    add-int/lit8 p1, p1, 0x2

    :goto_0
    if-ge p1, v0, :cond_2

    .line 1249
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1

    .line 1267
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "c="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_4
    add-int/lit8 p2, p1, 0x1

    .line 1256
    invoke-static {p2, v0, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    .line 1257
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v3, :cond_5

    add-int/lit8 p1, p1, 0x2

    :goto_2
    if-ge p1, v0, :cond_5

    .line 1260
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return p1

    :cond_6
    add-int/lit8 p2, p1, 0x1

    .line 1224
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-ltz p2, :cond_7

    return p2

    .line 1226
    :cond_7
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_b

    add-int/lit8 p2, p1, 0x1

    .line 1213
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v1, :cond_b

    if-eqz p1, :cond_9

    add-int/lit8 p2, p1, -0x1

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_b

    :cond_9
    const-string p2, "$$"

    add-int/lit8 v0, p1, 0x2

    .line 1215
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_a

    add-int/lit8 p2, p2, 0x1

    return p2

    .line 1217
    :cond_a
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_b
    return p1

    :cond_c
    add-int/lit8 p2, p1, 0x1

    .line 1231
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-ltz p2, :cond_d

    return p2

    .line 1233
    :cond_d
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static translateSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1279
    invoke-static {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static translateSQL(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/16 p1, 0x7b

    .line 1297
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    return-object p0

    .line 1300
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_1a

    .line 1304
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_18

    const/16 v7, 0x24

    if-eq v5, v7, :cond_17

    const/16 v7, 0x27

    if-eq v5, v7, :cond_18

    const/16 v8, 0x2d

    if-eq v5, v8, :cond_18

    const/16 v9, 0x2f

    if-eq v5, v9, :cond_18

    const/16 v10, 0x7d

    const/16 v11, 0x20

    if-eq v5, p1, :cond_4

    if-eq v5, v10, :cond_2

    goto/16 :goto_9

    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 1391
    aput-char v11, v4, v0

    goto/16 :goto_9

    .line 1389
    :cond_3
    invoke-static {p0, v0}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_5

    .line 1315
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 1317
    :cond_5
    aput-char v11, v4, v0

    .line 1318
    :goto_1
    aget-char v5, v4, v0

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 1320
    invoke-static {v0, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    goto :goto_1

    .line 1323
    :cond_6
    aget-char v5, v4, v0

    const/16 v12, 0x30

    if-lt v5, v12, :cond_9

    aget-char v5, v4, v0

    const/16 v12, 0x39

    if-gt v5, v12, :cond_9

    add-int/lit8 v5, v0, -0x1

    .line 1324
    aput-char p1, v4, v5

    .line 1326
    :goto_2
    invoke-static {v0, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    .line 1327
    aget-char v5, v4, v0

    if-ne v5, v10, :cond_7

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_9

    :cond_7
    if-eq v5, v6, :cond_8

    if-eq v5, v7, :cond_8

    if-eq v5, v8, :cond_8

    if-eq v5, v9, :cond_8

    goto :goto_3

    .line 1336
    :cond_8
    invoke-static {p0, v0, v5}, Lorg/h2/jdbc/JdbcConnection;->translateGetEnd(Ljava/lang/String;IC)I

    move-result v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1344
    :cond_9
    aget-char v5, v4, v0

    const/16 v6, 0x3f

    if-ne v5, v6, :cond_c

    add-int/lit8 v5, v0, 0x1

    .line 1346
    invoke-static {v5, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    .line 1347
    :goto_4
    aget-char v6, v4, v5

    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v5, v5, 0x1

    .line 1349
    invoke-static {v5, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    goto :goto_4

    .line 1351
    :cond_a
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_b

    add-int/lit8 v5, v5, 0x1

    .line 1355
    invoke-static {v5, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    .line 1356
    :goto_5
    aget-char v6, v4, v5

    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    if-eqz v6, :cond_d

    add-int/lit8 v5, v5, 0x1

    .line 1358
    invoke-static {v5, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    goto :goto_5

    :cond_b
    const-string p1, "="

    .line 1352
    invoke-static {p0, v5, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_c
    move v5, v0

    .line 1361
    :cond_d
    :goto_6
    aget-char v6, v4, v5

    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    if-nez v6, :cond_e

    add-int/lit8 v5, v5, 0x1

    .line 1363
    invoke-static {v5, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    goto :goto_6

    :cond_e
    const-string v6, "fn"

    .line 1366
    invoke-static {p0, v0, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_f

    goto :goto_8

    :cond_f
    const-string v6, "escape"

    .line 1368
    invoke-static {p0, v0, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_7

    :cond_10
    const-string v6, "call"

    .line 1370
    invoke-static {p0, v0, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_7

    :cond_11
    const-string v6, "oj"

    .line 1372
    invoke-static {p0, v0, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_8

    :cond_12
    const-string v6, "ts"

    .line 1374
    invoke-static {p0, v0, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_7

    :cond_13
    const-string v6, "t"

    .line 1376
    invoke-static {p0, v0, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_7

    :cond_14
    const-string v6, "d"

    .line 1378
    invoke-static {p0, v0, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    :goto_7
    move v0, v5

    goto :goto_9

    :cond_15
    const-string v5, "params"

    .line 1380
    invoke-static {p0, v0, v5}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "params"

    .line 1381
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v7, v5

    goto :goto_8

    :cond_16
    const/4 v7, 0x0

    :goto_8
    if-lez v7, :cond_19

    .line 1384
    aput-char v11, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    .line 1394
    :cond_17
    invoke-static {p0, v0, v5}, Lorg/h2/jdbc/JdbcConnection;->translateGetEnd(Ljava/lang/String;IC)I

    move-result v0

    goto :goto_9

    .line 1310
    :cond_18
    invoke-static {p0, v0, v5}, Lorg/h2/jdbc/JdbcConnection;->translateGetEnd(Ljava/lang/String;IC)I

    move-result v0

    :cond_19
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1a
    if-nez v3, :cond_1c

    if-eqz v4, :cond_1b

    .line 1403
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    :cond_1b
    return-object p0

    .line 1400
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1d
    const-string p0, "SQL"

    .line 1292
    invoke-static {p0, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 0

    return-void
.end method

.method protected afterWriting()V
    .locals 1

    .line 1497
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->afterWriting()V

    :cond_0
    return-void
.end method

.method protected checkClosed()V
    .locals 1

    const/4 v0, 0x0

    .line 1457
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed(Z)V

    return-void
.end method

.method protected checkClosed(Z)V
    .locals 2

    .line 1478
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz v0, :cond_2

    .line 1481
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1484
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0, p1}, Lorg/h2/engine/SessionInterface;->isReconnectNeeded(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    const-string v1, "reconnect"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 1486
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->closePreparedCommands()V

    .line 1487
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0, p1}, Lorg/h2/engine/SessionInterface;->reconnect(Z)Lorg/h2/engine/SessionInterface;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    .line 1488
    iget-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    :cond_0
    return-void

    :cond_1
    const p1, 0x16009

    .line 1482
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const p1, 0x15f97

    .line 1479
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
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

    .line 646
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 649
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "close"

    .line 360
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    .line 362
    monitor-exit p0

    return-void

    .line 364
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->watcher:Lorg/h2/util/CloseWatcher;

    invoke-static {v0}, Lorg/h2/util/CloseWatcher;->unregister(Lorg/h2/util/CloseWatcher;)V

    .line 365
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->cancel()V

    .line 366
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->executingStatement:Ljava/sql/Statement;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_1

    .line 368
    :try_start_2
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->executingStatement:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->cancel()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 373
    :catch_0
    :cond_1
    :try_start_3
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v1, 0x0

    .line 375
    :try_start_4
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2}, Lorg/h2/engine/SessionInterface;->isClosed()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v2, :cond_5

    .line 377
    :try_start_5
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2}, Lorg/h2/engine/SessionInterface;->hasPendingTransaction()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 381
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/h2/engine/SessionInterface;->isReconnectNeeded(Z)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_3

    .line 383
    :try_start_6
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->rollbackInternal()V
    :try_end_6
    .catch Lorg/h2/message/DbException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    .line 387
    :try_start_7
    invoke-virtual {v2}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v3

    const v4, 0x15fd3

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 389
    :cond_2
    throw v2

    .line 393
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2}, Lorg/h2/engine/SessionInterface;->afterWriting()V

    .line 395
    :cond_4
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->closePreparedCommands()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 397
    :try_start_8
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2}, Lorg/h2/engine/SessionInterface;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v3}, Lorg/h2/engine/SessionInterface;->close()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 401
    :cond_5
    :goto_1
    :try_start_9
    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    .line 403
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 407
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v2

    .line 401
    :try_start_a
    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    throw v2

    :catchall_2
    move-exception v1

    .line 403
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 405
    :try_start_c
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 359
    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "commit"

    .line 477
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "COMMIT"

    .line 480
    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    .line 481
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 488
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 483
    :try_start_3
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 486
    :try_start_4
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 476
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method convertToDefaultObject(Lorg/h2/value/Value;)Ljava/lang/Object;
    .locals 2

    .line 1980
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xa

    .line 1982
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v0

    .line 1983
    new-instance v1, Lorg/h2/jdbc/JdbcClob;

    invoke-direct {v1, p0, p1, v0}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x9

    .line 1987
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v0

    .line 1988
    new-instance v1, Lorg/h2/jdbc/JdbcBlob;

    invoke-direct {v1, p0, p1, v0}, Lorg/h2/jdbc/JdbcBlob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V

    goto :goto_1

    .line 1992
    :cond_0
    sget-boolean v0, Lorg/h2/engine/SysProperties;->serializeJavaObject:Z

    if-eqz v0, :cond_1

    .line 1993
    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/util/JdbcUtils;->deserialize([BLorg/h2/store/DataHandler;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1997
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "createArray"

    .line 1641
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 1586
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v1

    const-string v2, "Blob"

    const-string v3, "createClob()"

    .line 1587
    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1588
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Lorg/h2/util/Utils;->EMPTY_BYTES:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object v0

    .line 1592
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2, v0}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    .line 1593
    new-instance v2, Lorg/h2/jdbc/JdbcBlob;

    invoke-direct {v2, p0, v0, v1}, Lorg/h2/jdbc/JdbcBlob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1595
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1598
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;
    .locals 3

    if-nez p1, :cond_0

    .line 1884
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    const-wide/16 p2, -0x1

    .line 1889
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p1

    .line 1890
    iget-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p2, p1}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    return-object p1
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1561
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v1

    const-string v2, "Clob"

    const-string v3, "createClob()"

    .line 1562
    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1563
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lorg/h2/util/Utils;->EMPTY_BYTES:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object v0

    .line 1568
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2, v0}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    .line 1569
    new-instance v2, Lorg/h2/jdbc/JdbcClob;

    invoke-direct {v2, p0, v0, v1}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1571
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1574
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;
    .locals 3

    if-nez p1, :cond_0

    .line 1864
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    const-wide/16 p2, -0x1

    .line 1869
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p1

    .line 1870
    iget-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p2, p1}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    return-object p1
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1610
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v1

    const-string v2, "NClob"

    const-string v3, "createNClob()"

    .line 1611
    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1612
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lorg/h2/util/Utils;->EMPTY_BYTES:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object v0

    .line 1617
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2, v0}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    .line 1618
    new-instance v2, Lorg/h2/jdbc/JdbcClob;

    invoke-direct {v2, p0, v0, v1}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1620
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1623
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "SQLXML"

    .line 1632
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 201
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v3

    .line 202
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Statement"

    const-string v2, "createStatement()"

    .line 203
    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 206
    new-instance v0, Lorg/h2/jdbc/JdbcStatement;

    const/16 v4, 0x3eb

    const/16 v5, 0x3ef

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/h2/jdbc/JdbcStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 228
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v3

    .line 229
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Statement"

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createStatement("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 233
    :cond_0
    invoke-static {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    .line 234
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 235
    new-instance v0, Lorg/h2/jdbc/JdbcStatement;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/h2/jdbc/JdbcStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 257
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v3

    .line 258
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Statement"

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createStatement("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 263
    :cond_0
    invoke-static {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    .line 264
    invoke-static {p3}, Lorg/h2/jdbc/JdbcConnection;->checkHoldability(I)V

    .line 265
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 266
    new-instance p3, Lorg/h2/jdbc/JdbcStatement;

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/h2/jdbc/JdbcStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "Struct"

    .line 1650
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized getAutoCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const-string v0, "getAutoCommit"

    .line 461
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getAutoCommit()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 464
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getCatalog"

    .line 609
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 611
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->catalog:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "CALL DATABASE()"

    const v1, 0x7fffffff

    .line 612
    invoke-virtual {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v0

    const/4 v1, 0x0

    .line 613
    invoke-interface {v0, v1, v1}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v2

    .line 614
    invoke-interface {v2}, Lorg/h2/result/ResultInterface;->next()Z

    .line 615
    invoke-interface {v2}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->catalog:Ljava/lang/String;

    .line 616
    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->close()V

    .line 618
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->catalog:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 620
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1818
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getClientInfo"

    .line 1819
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 1822
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getClientInfo()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1824
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1783
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getClientInfo();"

    .line 1784
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCode(Ljava/lang/String;)V

    .line 1786
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 1787
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getClusterServers()Ljava/util/ArrayList;

    move-result-object v0

    .line 1788
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 1790
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 1791
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1792
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v2, "numServers"

    .line 1796
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1797
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :catch_0
    move-exception v0

    .line 1804
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    .line 2003
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v0

    return-object v0
.end method

.method getGeneratedKeys(Lorg/h2/jdbc/JdbcStatement;I)Ljava/sql/ResultSet;
    .locals 10

    const-string v0, "SELECT SCOPE_IDENTITY() WHERE SCOPE_IDENTITY() IS NOT NULL"

    .line 1545
    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    .line 1548
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v5

    .line 1549
    new-instance v0, Lorg/h2/jdbc/JdbcResultSet;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v2 .. v9}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcStatement;Lorg/h2/result/ResultInterface;IZZZ)V

    return-object v0
.end method

.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getHoldability"

    .line 854
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 856
    iget v0, p0, Lorg/h2/jdbc/JdbcConnection;->holdability:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 858
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 332
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v1

    .line 333
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DatabaseMetaData"

    const-string v3, "getMetaData()"

    .line 334
    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 337
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 338
    new-instance v0, Lorg/h2/jdbc/JdbcDatabaseMetaData;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    invoke-direct {v0, p0, v2, v1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/message/Trace;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method getMode()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2014
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->mode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "SELECT VALUE FROM INFORMATION_SCHEMA.SETTINGS WHERE NAME=?"

    .line 2015
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const-string v1, "MODE"

    const/4 v2, 0x1

    .line 2017
    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2018
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1

    .line 2019
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    .line 2020
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->mode:Ljava/lang/String;

    .line 2021
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 2023
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkTimeout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPowerOffCount()I
    .locals 1

    .line 1521
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getPowerOffCount()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method getQueryTimeout()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 762
    :try_start_0
    iget v0, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 763
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const-string v0, "SELECT VALUE FROM INFORMATION_SCHEMA.SETTINGS WHERE NAME=?"

    .line 764
    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    .line 767
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/ParameterInterface;

    const-string v2, "QUERY_TIMEOUT"

    invoke-static {v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    .line 769
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-interface {v0, v1, v1}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v0

    .line 770
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    .line 771
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getInt()I

    move-result v1

    .line 772
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->close()V

    if-eqz v1, :cond_0

    add-int/lit16 v1, v1, 0x3e7

    .line 776
    div-int/lit16 v1, v1, 0x3e8

    .line 778
    :cond_0
    iput v1, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I

    .line 780
    :cond_1
    iget v0, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 782
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession()Lorg/h2/engine/SessionInterface;
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getTransactionIsolation"

    .line 795
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const-string v0, "CALL LOCK_MODE()"

    .line 797
    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    .line 798
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v0

    .line 799
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    .line 800
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getInt()I

    move-result v1

    .line 801
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->close()V

    packed-switch v1, :pswitch_data_0

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :goto_1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 819
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getTypeMap"

    .line 871
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 875
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method getURL()Ljava/lang/String;
    .locals 1

    .line 1503
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 1504
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    return-object v0
.end method

.method getUser()Ljava/lang/String;
    .locals 1

    .line 1508
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 1509
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    return-object v0
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

    .line 632
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 636
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
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

    .line 519
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    .line 522
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isReadOnly()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isReadOnly"

    .line 572
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const-string v0, "CALL READONLY()"

    .line 574
    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    .line 575
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v0

    .line 576
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    .line 577
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 580
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized isValid(I)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isValid"

    int-to-long v2, p1

    .line 1663
    invoke-virtual {p0, v1, v2, v3}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;J)V

    .line 1664
    iget-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p1}, Lorg/h2/engine/SessionInterface;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1668
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getTransactionIsolation()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 1669
    monitor-exit p0

    return p1

    .line 1665
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1672
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1673
    monitor-exit p0

    return v0

    .line 1662
    :goto_1
    monitor-exit p0

    throw p1
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

    .line 1851
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

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "nativeSQL"

    .line 536
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 538
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 540
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 307
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v4

    .line 308
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PreparedStatement"

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareStatement("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 313
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 314
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    new-instance p1, Lorg/h2/jdbc/JdbcPreparedStatement;

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/h2/jdbc/JdbcPreparedStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 319
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 904
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v4

    .line 905
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CallableStatement"

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 910
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 911
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 912
    new-instance p1, Lorg/h2/jdbc/JdbcCallableStatement;

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/h2/jdbc/JdbcCallableStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 916
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 936
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v4

    .line 937
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CallableStatement"

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 943
    :cond_0
    invoke-static {p2, p3}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    .line 944
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 945
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 946
    new-instance p1, Lorg/h2/jdbc/JdbcCallableStatement;

    move-object v1, p1

    move-object v2, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/h2/jdbc/JdbcCallableStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 949
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 970
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v4

    .line 971
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CallableStatement"

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 978
    :cond_0
    invoke-static {p2, p3}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    .line 979
    invoke-static {p4}, Lorg/h2/jdbc/JdbcConnection;->checkHoldability(I)V

    .line 980
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 981
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 982
    new-instance p1, Lorg/h2/jdbc/JdbcCallableStatement;

    move-object v1, p1

    move-object v2, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/h2/jdbc/JdbcCallableStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 985
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;
    .locals 1

    .line 1202
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0, p1, p2}, Lorg/h2/engine/SessionInterface;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 282
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v4

    .line 283
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PreparedStatement"

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareStatement("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 289
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    new-instance p1, Lorg/h2/jdbc/JdbcPreparedStatement;

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/h2/jdbc/JdbcPreparedStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 294
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1133
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareStatement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcConnection;->debugCode(Ljava/lang/String;)V

    .line 1136
    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1138
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 669
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v4

    .line 670
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PreparedStatement"

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareStatement("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 676
    :cond_0
    invoke-static {p2, p3}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    .line 677
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 678
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 679
    new-instance p1, Lorg/h2/jdbc/JdbcPreparedStatement;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/h2/jdbc/JdbcPreparedStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 682
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1100
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v4

    .line 1101
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PreparedStatement"

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareStatement("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1107
    :cond_0
    invoke-static {p2, p3}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    .line 1108
    invoke-static {p4}, Lorg/h2/jdbc/JdbcConnection;->checkHoldability(I)V

    .line 1109
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 1110
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1111
    new-instance p1, Lorg/h2/jdbc/JdbcPreparedStatement;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/h2/jdbc/JdbcPreparedStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1114
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1157
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareStatement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcConnection;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcConnection;->debugCode(Ljava/lang/String;)V

    .line 1161
    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1163
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1182
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareStatement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcConnection;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcConnection;->debugCode(Ljava/lang/String;)V

    .line 1186
    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1188
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "releaseSavepoint(savepoint);"

    .line 1068
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCode(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 1070
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->convertSavepoint(Ljava/sql/Savepoint;)Lorg/h2/jdbc/JdbcSavepoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcSavepoint;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1072
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized rollback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "rollback"

    .line 499
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 502
    :try_start_1
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->rollbackInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 509
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 504
    :try_start_3
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 507
    :try_start_4
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 498
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1047
    :try_start_0
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->convertSavepoint(Ljava/sql/Savepoint;)Lorg/h2/jdbc/JdbcSavepoint;

    move-result-object p1

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rollback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcSavepoint;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCode(Ljava/lang/String;)V

    .line 1049
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :try_start_1
    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcSavepoint;->rollback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1056
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized setAutoCommit(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoCommit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCode(Ljava/lang/String;)V

    .line 441
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    if-eqz p1, :cond_1

    .line 442
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getAutoCommit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->commit()V

    .line 445
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0, p1}, Lorg/h2/engine/SessionInterface;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 447
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "setCatalog"

    .line 593
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 596
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 1703
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClientInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCode(Ljava/lang/String;)V

    .line 1708
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 1710
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->isInternalProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1716
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/engine/Mode;->getInstance(Ljava/lang/String;)Lorg/h2/engine/Mode;

    move-result-object v0

    iget-object v0, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_2

    .line 1719
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1720
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    .line 1723
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1725
    :cond_2
    new-instance p2, Ljava/sql/SQLClientInfoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client info name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/sql/SQLClientInfoException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    throw p2

    .line 1711
    :cond_3
    new-instance p2, Ljava/sql/SQLClientInfoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is used internally by H2."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/sql/SQLClientInfoException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1729
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->convertToClientInfoException(Ljava/sql/SQLException;)Ljava/sql/SQLClientInfoException;

    move-result-object p1

    throw p1
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 1758
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setClientInfo(properties);"

    .line 1759
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCode(Ljava/lang/String;)V

    .line 1761
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 1762
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1763
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    goto :goto_0

    .line 1765
    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1767
    :goto_0
    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1768
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/h2/jdbc/JdbcConnection;->setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 1771
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->convertToClientInfoException(Ljava/sql/SQLException;)Ljava/sql/SQLClientInfoException;

    move-result-object p1

    throw p1
.end method

.method public setExecutingStatement(Ljava/sql/Statement;)V
    .locals 0

    .line 1538
    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->executingStatement:Ljava/sql/Statement;

    return-void
.end method

.method public setHoldability(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "setHoldability"

    int-to-long v1, p1

    .line 836
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;J)V

    .line 837
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 838
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->checkHoldability(I)V

    .line 839
    iput p1, p0, Lorg/h2/jdbc/JdbcConnection;->holdability:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 841
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .locals 0

    return-void
.end method

.method public setPowerOffCount(I)V
    .locals 1

    .line 1529
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0, p1}, Lorg/h2/engine/SessionInterface;->setPowerOffCount(I)V

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

    .line 745
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;J)V

    .line 746
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const-string v0, "SET QUERY_TIMEOUT ?"

    .line 747
    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout:Lorg/h2/command/CommandInterface;

    .line 748
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/ParameterInterface;

    mul-int/lit16 v2, p1, 0x3e8

    invoke-static {v2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    .line 750
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    .line 751
    iput p1, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 753
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setReadOnly(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 554
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReadOnly("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->debugCode(Ljava/lang/String;)V

    .line 557
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 559
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 997
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v6

    .line 998
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Savepoint"

    const-string v2, "setSavepoint()"

    .line 999
    invoke-virtual {p0, v1, v0, v6, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAVEPOINT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget v2, p0, Lorg/h2/jdbc/JdbcConnection;->savepointId:I

    invoke-static {v1, v2}, Lorg/h2/jdbc/JdbcSavepoint;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v0

    .line 1005
    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    .line 1006
    new-instance v0, Lorg/h2/jdbc/JdbcSavepoint;

    iget v3, p0, Lorg/h2/jdbc/JdbcConnection;->savepointId:I

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/h2/jdbc/JdbcSavepoint;-><init>(Lorg/h2/jdbc/JdbcConnection;ILjava/lang/String;Lorg/h2/message/Trace;I)V

    .line 1007
    iget v1, p0, Lorg/h2/jdbc/JdbcConnection;->savepointId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/jdbc/JdbcConnection;->savepointId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1010
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 1023
    :try_start_0
    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->getNextId(I)I

    move-result v6

    .line 1024
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Savepoint"

    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSavepoint("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v6, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    .line 1028
    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAVEPOINT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/h2/jdbc/JdbcSavepoint;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v0

    .line 1031
    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    .line 1032
    new-instance v0, Lorg/h2/jdbc/JdbcSavepoint;

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/h2/jdbc/JdbcSavepoint;-><init>(Lorg/h2/jdbc/JdbcConnection;ILjava/lang/String;Lorg/h2/message/Trace;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1035
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTraceLevel(I)V
    .locals 1

    .line 2010
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->setLevel(I)V

    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "setTransactionIsolation"

    int-to-long v1, p1

    .line 714
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->debugCodeCall(Ljava/lang/String;J)V

    .line 715
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "level"

    .line 729
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_0
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 731
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->commit()V

    const-string v0, "SET LOCK_MODE ?"

    .line 732
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->setLockMode:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setLockMode:Lorg/h2/command/CommandInterface;

    .line 733
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setLockMode:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/ParameterInterface;

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    .line 734
    iget-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->setLockMode:Lorg/h2/command/CommandInterface;

    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->executeUpdate()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 736
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 886
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTypeMap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->quoteMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->debugCode(Ljava/lang/String;)V

    .line 887
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->checkMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 889
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 1837
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "iface"

    .line 1840
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
