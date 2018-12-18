.class public Lorg/h2/engine/SessionRemote;
.super Lorg/h2/engine/SessionWithState;
.source "SessionRemote.java"

# interfaces
.implements Lorg/h2/store/DataHandler;


# static fields
.field public static final CHANGE_ID:I = 0x9

.field public static final COMMAND_CLOSE:I = 0x4

.field public static final COMMAND_COMMIT:I = 0x8

.field public static final COMMAND_EXECUTE_QUERY:I = 0x2

.field public static final COMMAND_EXECUTE_UPDATE:I = 0x3

.field public static final COMMAND_GET_META_DATA:I = 0xa

.field public static final LOB_READ:I = 0x11

.field public static final RESULT_CLOSE:I = 0x7

.field public static final RESULT_FETCH_ROWS:I = 0x5

.field public static final RESULT_RESET:I = 0x6

.field public static final SESSION_CANCEL_STATEMENT:I = 0xd

.field public static final SESSION_CHECK_KEY:I = 0xe

.field public static final SESSION_CLOSE:I = 0x1

.field public static final SESSION_HAS_PENDING_TRANSACTION:I = 0x10

.field public static final SESSION_PREPARE:I = 0x0

.field public static final SESSION_PREPARE_READ_PARAMS:I = 0xb

.field public static final SESSION_SET_AUTOCOMMIT:I = 0xf

.field public static final SESSION_SET_ID:I = 0xc

.field public static final STATUS_CLOSED:I = 0x2

.field public static final STATUS_ERROR:I = 0x0

.field public static final STATUS_OK:I = 0x1

.field public static final STATUS_OK_STATE_CHANGED:I = 0x3

.field private static sessionFactory:Lorg/h2/engine/SessionFactory;


# instance fields
.field private autoCommit:Z

.field private autoCommitFalse:Lorg/h2/command/CommandInterface;

.field private autoCommitTrue:Lorg/h2/command/CommandInterface;

.field private autoReconnect:Z

.field private cipher:Ljava/lang/String;

.field private clientVersion:I

.field private cluster:Z

.field private compareMode:Lorg/h2/value/CompareMode;

.field private connectionInfo:Lorg/h2/engine/ConnectionInfo;

.field private databaseName:Ljava/lang/String;

.field private embedded:Lorg/h2/engine/SessionInterface;

.field private eventListener:Lorg/h2/api/DatabaseEventListener;

.field private fileEncryptionKey:[B

.field private javaObjectSerializer:Lorg/h2/api/JavaObjectSerializer;

.field private volatile javaObjectSerializerInitialized:Z

.field private lastReconnect:I

.field private lobStorage:Lorg/h2/store/LobStorageFrontend;

.field private final lobSyncObject:Ljava/lang/Object;

.field private nextId:I

.field private sessionId:Ljava/lang/String;

.field private tempFileDeleter:Lorg/h2/util/TempFileDeleter;

.field private trace:Lorg/h2/message/Trace;

.field private traceSystem:Lorg/h2/message/TraceSystem;

.field private transferList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Transfer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/ConnectionInfo;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Lorg/h2/engine/SessionWithState;-><init>()V

    .line 72
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lorg/h2/engine/SessionRemote;->autoCommit:Z

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/SessionRemote;->lobSyncObject:Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-static {v0, v1}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;I)Lorg/h2/value/CompareMode;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/SessionRemote;->compareMode:Lorg/h2/value/CompareMode;

    .line 97
    iput-object p1, p0, Lorg/h2/engine/SessionRemote;->connectionInfo:Lorg/h2/engine/ConnectionInfo;

    return-void
.end method

.method private autoReconnect(I)Z
    .locals 5

    .line 504
    invoke-virtual {p0}, Lorg/h2/engine/SessionRemote;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 507
    :cond_0
    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->autoReconnect:Z

    if-nez v0, :cond_1

    return v1

    .line 510
    :cond_1
    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->cluster:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->autoCommit:Z

    if-nez v0, :cond_2

    return v1

    .line 513
    :cond_2
    sget v0, Lorg/h2/engine/SysProperties;->MAX_RECONNECT:I

    if-le p1, v0, :cond_3

    return v1

    .line 516
    :cond_3
    iget v0, p0, Lorg/h2/engine/SessionRemote;->lastReconnect:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lorg/h2/engine/SessionRemote;->lastReconnect:I

    .line 519
    :catch_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/h2/engine/SessionRemote;->connectEmbeddedOrServer(Z)Lorg/h2/engine/SessionInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/SessionRemote;->embedded:Lorg/h2/engine/SessionInterface;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->embedded:Lorg/h2/engine/SessionInterface;

    if-ne v0, p0, :cond_4

    const/4 v0, 0x0

    .line 535
    iput-object v0, p0, Lorg/h2/engine/SessionRemote;->embedded:Lorg/h2/engine/SessionInterface;

    goto :goto_1

    .line 540
    :cond_4
    invoke-virtual {p0, v2}, Lorg/h2/engine/SessionRemote;->connectEmbeddedOrServer(Z)Lorg/h2/engine/SessionInterface;

    .line 542
    :goto_1
    invoke-virtual {p0}, Lorg/h2/engine/SessionRemote;->recreateSessionState()V

    .line 543
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->eventListener:Lorg/h2/api/DatabaseEventListener;

    if-eqz v0, :cond_5

    .line 544
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->eventListener:Lorg/h2/api/DatabaseEventListener;

    const/4 v1, 0x4

    iget-object v3, p0, Lorg/h2/engine/SessionRemote;->databaseName:Ljava/lang/String;

    sget v4, Lorg/h2/engine/SysProperties;->MAX_RECONNECT:I

    invoke-interface {v0, v1, v3, p1, v4}, Lorg/h2/api/DatabaseEventListener;->setProgress(ILjava/lang/String;II)V

    :cond_5
    return v2

    :catch_1
    move-exception v0

    .line 522
    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v3

    const v4, 0x16017

    if-ne v3, v4, :cond_6

    const-wide/16 v3, 0x1f4

    .line 527
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 523
    :cond_6
    throw v0
.end method

.method private checkClusterDisableAutoCommit(Ljava/lang/String;)V
    .locals 3

    .line 208
    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->autoCommit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v0}, Lorg/h2/engine/SessionRemote;->setAutoCommitSend(Z)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET CLUSTER "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SessionRemote;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    .line 213
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    .line 215
    iput-boolean v1, p0, Lorg/h2/engine/SessionRemote;->autoCommit:Z

    .line 216
    iput-boolean v1, p0, Lorg/h2/engine/SessionRemote;->cluster:Z

    :cond_0
    return-void
.end method

.method private connectServer(Lorg/h2/engine/ConnectionInfo;)V
    .locals 10

    .line 372
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "//"

    .line 374
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x2f

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_b

    add-int/lit8 v2, v1, 0x1

    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/engine/SessionRemote;->databaseName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 381
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 382
    new-instance v1, Lorg/h2/message/TraceSystem;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/h2/engine/SessionRemote;->traceSystem:Lorg/h2/message/TraceSystem;

    const/16 v1, 0xa

    .line 383
    invoke-virtual {p1, v1, v3}, Lorg/h2/engine/ConnectionInfo;->getProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 386
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 387
    sget-object v4, Lorg/h2/engine/SysProperties;->CLIENT_TRACE_DIRECTORY:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/h2/engine/SessionRemote;->getFilePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    :try_start_0
    iget-object v5, p0, Lorg/h2/engine/SessionRemote;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v5, v1}, Lorg/h2/message/TraceSystem;->setLevelFile(I)V

    if-lez v1, :cond_1

    const/4 v5, 0x4

    if-ge v1, v5, :cond_1

    const-string v1, ".trace.db"

    .line 392
    invoke-static {v4, v1, v2, v2}, Lorg/h2/store/fs/FileUtils;->createTempFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 394
    iget-object v5, p0, Lorg/h2/engine/SessionRemote;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v5, v1}, Lorg/h2/message/TraceSystem;->setFileName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 397
    invoke-static {p1, v4}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const/16 v1, 0x9

    .line 400
    invoke-virtual {p1, v1, v3}, Lorg/h2/engine/ConnectionInfo;->getProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 404
    iget-object v4, p0, Lorg/h2/engine/SessionRemote;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v4, v1}, Lorg/h2/message/TraceSystem;->setLevelSystemOut(I)V

    .line 406
    :cond_2
    iget-object v1, p0, Lorg/h2/engine/SessionRemote;->traceSystem:Lorg/h2/message/TraceSystem;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/engine/SessionRemote;->trace:Lorg/h2/message/Trace;

    const/16 v1, 0x2c

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3

    .line 409
    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CLUSTER"

    const-string v5, "TRUE"

    .line 410
    invoke-virtual {p1, v4, v5}, Lorg/h2/engine/ConnectionInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v4, "AUTO_RECONNECT"

    const-string v5, "false"

    .line 412
    invoke-virtual {p1, v4, v5}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/h2/engine/SessionRemote;->autoReconnect:Z

    const-string v4, "AUTO_SERVER"

    const-string v5, "false"

    .line 415
    invoke-virtual {p1, v4, v5}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "autoServer && serverList != null"

    .line 418
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 421
    :cond_5
    :goto_1
    iget-boolean v5, p0, Lorg/h2/engine/SessionRemote;->autoReconnect:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lorg/h2/engine/SessionRemote;->autoReconnect:Z

    .line 422
    iget-boolean v4, p0, Lorg/h2/engine/SessionRemote;->autoReconnect:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    const-string v4, "DATABASE_EVENT_LISTENER"

    .line 423
    invoke-virtual {p1, v4}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v6, "\'"

    .line 425
    invoke-static {v4, v5, v5, v6}, Lorg/h2/util/StringUtils;->trim(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 427
    :try_start_1
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/api/DatabaseEventListener;

    iput-object v4, p0, Lorg/h2/engine/SessionRemote;->eventListener:Lorg/h2/api/DatabaseEventListener;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 430
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_2
    const-string v4, "CIPHER"

    .line 434
    invoke-virtual {p1, v4}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/engine/SessionRemote;->cipher:Ljava/lang/String;

    .line 435
    iget-object v4, p0, Lorg/h2/engine/SessionRemote;->cipher:Ljava/lang/String;

    const/16 v6, 0x20

    if-eqz v4, :cond_7

    .line 436
    invoke-static {v6}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object v4

    iput-object v4, p0, Lorg/h2/engine/SessionRemote;->fileEncryptionKey:[B

    .line 438
    :cond_7
    invoke-static {v0, v1, v5}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    .line 439
    array-length v1, v0

    .line 440
    iget-object v4, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 441
    invoke-static {v6}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object v4

    invoke-static {v4}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/engine/SessionRemote;->sessionId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v4, v1, :cond_9

    .line 446
    :try_start_2
    aget-object v7, v0, v4
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_3

    .line 448
    :try_start_3
    iget-object v8, p0, Lorg/h2/engine/SessionRemote;->databaseName:Ljava/lang/String;

    invoke-direct {p0, p1, v8, v7}, Lorg/h2/engine/SessionRemote;->initTransfer(Lorg/h2/engine/ConnectionInfo;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/value/Transfer;

    move-result-object v8

    .line 449
    iget-object v9, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/h2/message/DbException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_2
    move-exception v6

    if-eq v1, v5, :cond_8

    const/4 v6, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    const p1, 0x15fd3

    .line 452
    :try_start_4
    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v6, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p1

    goto :goto_5

    .line 457
    :cond_9
    invoke-virtual {p0}, Lorg/h2/engine/SessionRemote;->checkClosed()V

    if-eqz v6, :cond_a

    .line 459
    invoke-direct {p0}, Lorg/h2/engine/SessionRemote;->switchOffCluster()V

    .line 461
    :cond_a
    invoke-direct {p0, v3}, Lorg/h2/engine/SessionRemote;->checkClusterDisableAutoCommit(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/h2/message/DbException; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    .line 463
    :goto_5
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v0}, Lorg/h2/message/TraceSystem;->close()V

    .line 464
    throw p1

    .line 378
    :cond_b
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getFormatException()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private getFilePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2f

    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 299
    :goto_0
    iget-object v1, p0, Lorg/h2/engine/SessionRemote;->databaseName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 300
    iget-object v1, p0, Lorg/h2/engine/SessionRemote;->databaseName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 301
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v1, 0x5f

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initJavaObjectSerializer()V
    .locals 2

    .line 802
    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->javaObjectSerializerInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 805
    :cond_0
    monitor-enter p0

    .line 806
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->javaObjectSerializerInitialized:Z

    if-eqz v0, :cond_1

    .line 807
    monitor-exit p0

    return-void

    .line 809
    :cond_1
    invoke-direct {p0}, Lorg/h2/engine/SessionRemote;->readSerializationSettings()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 811
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 814
    :try_start_1
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/JavaObjectSerializer;

    iput-object v0, p0, Lorg/h2/engine/SessionRemote;->javaObjectSerializer:Lorg/h2/api/JavaObjectSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 817
    :try_start_2
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 821
    iput-boolean v0, p0, Lorg/h2/engine/SessionRemote;->javaObjectSerializerInitialized:Z

    .line 822
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private initTransfer(Lorg/h2/engine/ConnectionInfo;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/value/Transfer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isSSL()Z

    move-result v0

    const/16 v1, 0x2384

    invoke-static {p3, v1, v0}, Lorg/h2/util/NetUtils;->createSocket(Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p3

    .line 116
    new-instance v0, Lorg/h2/value/Transfer;

    invoke-direct {v0, p0}, Lorg/h2/value/Transfer;-><init>(Lorg/h2/engine/SessionInterface;)V

    .line 117
    invoke-virtual {v0, p3}, Lorg/h2/value/Transfer;->setSocket(Ljava/net/Socket;)V

    .line 118
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isSSL()Z

    move-result p3

    invoke-virtual {v0, p3}, Lorg/h2/value/Transfer;->setSSL(Z)V

    .line 119
    invoke-virtual {v0}, Lorg/h2/value/Transfer;->init()V

    const/4 p3, 0x6

    .line 120
    invoke-virtual {v0, p3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/16 p3, 0xf

    .line 121
    invoke-virtual {v0, p3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 122
    invoke-virtual {v0, p2}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    .line 123
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getOriginalURL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    .line 124
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    .line 125
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserPasswordHash()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/h2/value/Transfer;->writeBytes([B)Lorg/h2/value/Transfer;

    .line 126
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getFilePasswordHash()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/h2/value/Transfer;->writeBytes([B)Lorg/h2/value/Transfer;

    .line 127
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getKeys()[Ljava/lang/String;

    move-result-object p2

    .line 128
    array-length v1, p2

    invoke-virtual {v0, v1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 129
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 130
    invoke-virtual {v0, v3}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    move-result-object v4

    invoke-virtual {p1, v3}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V

    .line 134
    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result p2

    iput p2, p0, Lorg/h2/engine/SessionRemote;->clientVersion:I

    .line 135
    iget p2, p0, Lorg/h2/engine/SessionRemote;->clientVersion:I

    invoke-virtual {v0, p2}, Lorg/h2/value/Transfer;->setVersion(I)V

    .line 136
    iget p2, p0, Lorg/h2/engine/SessionRemote;->clientVersion:I

    const/16 v1, 0xe

    if-lt p2, v1, :cond_1

    .line 137
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getFileEncryptionKey()[B

    move-result-object p2

    if-eqz p2, :cond_1

    .line 138
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getFileEncryptionKey()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/value/Transfer;->writeBytes([B)Lorg/h2/value/Transfer;

    :cond_1
    const/16 p1, 0xc

    .line 141
    invoke-virtual {v0, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 142
    iget-object p1, p0, Lorg/h2/engine/SessionRemote;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    .line 143
    invoke-virtual {p0, v0}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V

    .line 144
    iget p1, p0, Lorg/h2/engine/SessionRemote;->clientVersion:I

    if-lt p1, p3, :cond_2

    .line 145
    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/SessionRemote;->autoCommit:Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lorg/h2/engine/SessionRemote;->autoCommit:Z
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {v0}, Lorg/h2/value/Transfer;->close()V

    .line 152
    throw p1
.end method

.method private readSerializationSettings()Ljava/lang/String;
    .locals 4

    const-string v0, "SELECT VALUE FROM INFORMATION_SCHEMA.SETTINGS  WHERE NAME=\'JAVA_OBJECT_SERIALIZER\'"

    const v1, 0x7fffffff

    .line 832
    invoke-virtual {p0, v0, v1}, Lorg/h2/engine/SessionRemote;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v0

    const/4 v1, 0x0

    .line 836
    :try_start_0
    invoke-interface {v0, v1, v1}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v2

    .line 837
    invoke-interface {v2}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 838
    invoke-interface {v2}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    .line 839
    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 842
    :goto_0
    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->close()V

    throw v1
.end method

.method private declared-synchronized setAutoCommitSend(Z)V
    .locals 4

    monitor-enter p0

    .line 246
    :try_start_0
    iget v0, p0, Lorg/h2/engine/SessionRemote;->clientVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 247
    :goto_0
    iget-object v2, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 248
    iget-object v2, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/value/Transfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "SESSION_SET_AUTOCOMMIT"

    .line 250
    invoke-virtual {p0, v3, p1}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    const/16 v3, 0xf

    .line 251
    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    .line 253
    invoke-virtual {p0, v2}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    .line 255
    :try_start_2
    invoke-virtual {p0, v2, v0, v1}, Lorg/h2/engine/SessionRemote;->removeServer(Ljava/io/IOException;II)V

    move v0, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    if-eqz p1, :cond_2

    .line 260
    iget-object p1, p0, Lorg/h2/engine/SessionRemote;->autoCommitTrue:Lorg/h2/command/CommandInterface;

    if-nez p1, :cond_1

    const-string p1, "SET AUTOCOMMIT TRUE"

    .line 261
    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SessionRemote;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/SessionRemote;->autoCommitTrue:Lorg/h2/command/CommandInterface;

    .line 264
    :cond_1
    iget-object p1, p0, Lorg/h2/engine/SessionRemote;->autoCommitTrue:Lorg/h2/command/CommandInterface;

    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    goto :goto_2

    .line 266
    :cond_2
    iget-object p1, p0, Lorg/h2/engine/SessionRemote;->autoCommitFalse:Lorg/h2/command/CommandInterface;

    if-nez p1, :cond_3

    const-string p1, "SET AUTOCOMMIT FALSE"

    .line 267
    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SessionRemote;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/SessionRemote;->autoCommitFalse:Lorg/h2/command/CommandInterface;

    .line 270
    :cond_3
    iget-object p1, p0, Lorg/h2/engine/SessionRemote;->autoCommitFalse:Lorg/h2/command/CommandInterface;

    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->executeUpdate()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 245
    monitor-exit p0

    throw p1
.end method

.method private switchOffCluster()V
    .locals 2

    const-string v0, "SET CLUSTER \'\'"

    const v1, 0x7fffffff

    .line 469
    invoke-virtual {p0, v0, v1}, Lorg/h2/engine/SessionRemote;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v0

    .line 470
    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    return-void
.end method


# virtual methods
.method public addTemporaryLob(Lorg/h2/value/Value;)V
    .locals 0

    return-void
.end method

.method public afterWriting()V
    .locals 0

    return-void
.end method

.method public autoCommitIfCluster()V
    .locals 5

    .line 279
    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->autoCommit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->cluster:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 283
    :goto_0
    iget-object v3, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 284
    iget-object v3, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/value/Transfer;

    :try_start_0
    const-string v4, "COMMAND_COMMIT"

    .line 286
    invoke-virtual {p0, v4, v0}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    const/16 v4, 0x8

    .line 287
    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 288
    invoke-virtual {p0, v3}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    .line 290
    invoke-virtual {p0, v3, v1, v2}, Lorg/h2/engine/SessionRemote;->removeServer(Ljava/io/IOException;II)V

    move v1, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public cancelStatement(I)V
    .locals 4

    .line 189
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Transfer;

    .line 191
    :try_start_0
    invoke-virtual {v1}, Lorg/h2/value/Transfer;->openNewConnection()Lorg/h2/value/Transfer;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lorg/h2/value/Transfer;->init()V

    .line 193
    iget v2, p0, Lorg/h2/engine/SessionRemote;->clientVersion:I

    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 194
    iget v2, p0, Lorg/h2/engine/SessionRemote;->clientVersion:I

    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    .line 196
    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    .line 197
    iget-object v2, p0, Lorg/h2/engine/SessionRemote;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    const/16 v2, 0xd

    .line 198
    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 199
    invoke-virtual {v1, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 200
    invoke-virtual {v1}, Lorg/h2/value/Transfer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 202
    iget-object v2, p0, Lorg/h2/engine/SessionRemote;->trace:Lorg/h2/message/Trace;

    const-string v3, "could not cancel statement"

    invoke-virtual {v2, v1, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkClosed()V
    .locals 2

    .line 556
    invoke-virtual {p0}, Lorg/h2/engine/SessionRemote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15fd3

    const-string v1, "session closed"

    .line 557
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkPowerOff()V
    .locals 0

    return-void
.end method

.method public checkWritingAllowed()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 6

    .line 564
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 565
    monitor-enter p0

    .line 566
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/value/Transfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "SESSION_CLOSE"

    const/4 v5, 0x0

    .line 568
    invoke-virtual {p0, v4, v5}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    const/4 v4, 0x1

    .line 569
    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 570
    invoke-virtual {p0, v3}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V

    .line 571
    invoke-virtual {v3}, Lorg/h2/value/Transfer;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 576
    :try_start_2
    iget-object v4, p0, Lorg/h2/engine/SessionRemote;->trace:Lorg/h2/message/Trace;

    const-string v5, "close"

    invoke-virtual {v4, v3, v5}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 573
    iget-object v3, p0, Lorg/h2/engine/SessionRemote;->trace:Lorg/h2/message/Trace;

    const-string v4, "close"

    invoke-virtual {v3, v2, v4}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    iput-object v1, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 579
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    move-object v2, v1

    .line 582
    :goto_1
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v0}, Lorg/h2/message/TraceSystem;->close()V

    .line 583
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->embedded:Lorg/h2/engine/SessionInterface;

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->embedded:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->close()V

    .line 585
    iput-object v1, p0, Lorg/h2/engine/SessionRemote;->embedded:Lorg/h2/engine/SessionInterface;

    :cond_2
    if-nez v2, :cond_3

    return-void

    .line 588
    :cond_3
    throw v2
.end method

.method public connectEmbeddedOrServer(Z)Lorg/h2/engine/SessionInterface;
    .locals 7

    .line 327
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->connectionInfo:Lorg/h2/engine/ConnectionInfo;

    .line 328
    invoke-virtual {v0}, Lorg/h2/engine/ConnectionInfo;->isRemote()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-direct {p0, v0}, Lorg/h2/engine/SessionRemote;->connectServer(Lorg/h2/engine/ConnectionInfo;)V

    return-object p0

    :cond_0
    const-string v1, "AUTO_SERVER"

    const-string v2, "false"

    .line 334
    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 339
    :try_start_0
    invoke-virtual {v0}, Lorg/h2/engine/ConnectionInfo;->clone()Lorg/h2/engine/ConnectionInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    :try_start_1
    invoke-virtual {v0}, Lorg/h2/engine/ConnectionInfo;->clone()Lorg/h2/engine/ConnectionInfo;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/engine/SessionRemote;->connectionInfo:Lorg/h2/engine/ConnectionInfo;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz p1, :cond_2

    const-string p1, "OPEN_NEW"

    const-string v4, "true"

    .line 343
    invoke-virtual {v0, p1, v4}, Lorg/h2/engine/ConnectionInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_2
    sget-object p1, Lorg/h2/engine/SessionRemote;->sessionFactory:Lorg/h2/engine/SessionFactory;

    if-nez p1, :cond_3

    const-string p1, "org.h2.engine.Engine"

    .line 346
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/SessionFactory;

    sput-object p1, Lorg/h2/engine/SessionRemote;->sessionFactory:Lorg/h2/engine/SessionFactory;

    .line 349
    :cond_3
    sget-object p1, Lorg/h2/engine/SessionRemote;->sessionFactory:Lorg/h2/engine/SessionFactory;

    invoke-interface {p1, v0}, Lorg/h2/engine/SessionFactory;->createSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/SessionInterface;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 351
    :goto_1
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    const v4, 0x15fa4

    if-ne v0, v4, :cond_4

    if-eqz v1, :cond_4

    .line 354
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v0

    check-cast v0, Lorg/h2/jdbc/JdbcSQLException;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcSQLException;->getSQL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 357
    invoke-virtual {v3, v0}, Lorg/h2/engine/ConnectionInfo;->setServerKey(Ljava/lang/String;)V

    const-string p1, "OPEN_NEW"

    .line 361
    invoke-virtual {v3, p1, v2}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    invoke-direct {p0, v3}, Lorg/h2/engine/SessionRemote;->connectServer(Lorg/h2/engine/ConnectionInfo;)V

    return-object p0

    .line 367
    :cond_4
    throw p1
.end method

.method public done(Lorg/h2/value/Transfer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    invoke-virtual {p1}, Lorg/h2/value/Transfer;->flush()V

    .line 617
    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    const v1, 0x15fd3

    if-nez v0, :cond_1

    .line 619
    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v5

    .line 620
    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v3

    .line 621
    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    .line 623
    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v8

    .line 624
    new-instance p1, Lorg/h2/jdbc/JdbcSQLException;

    const/4 v7, 0x0

    move-object v2, p1

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lorg/h2/jdbc/JdbcSQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    if-ne v0, v1, :cond_0

    .line 628
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcSQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 629
    throw v0

    .line 631
    :cond_0
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 633
    iput-object p1, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    const/4 v2, 0x1

    if-ne v0, p1, :cond_3

    .line 635
    iput-boolean v2, p0, Lorg/h2/engine/SessionRemote;->sessionStateChanged:Z

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    :goto_0
    return-void

    .line 639
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected status "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getAutoCommit()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->autoCommit:Z

    return v0
.end method

.method public getClusterServers()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 103
    :goto_0
    iget-object v2, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 104
    iget-object v2, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/value/Transfer;

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    .line 854
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->compareMode:Lorg/h2/value/CompareMode;

    return-object v0
.end method

.method public getCurrentId()I
    .locals 1

    .line 602
    iget v0, p0, Lorg/h2/engine/SessionRemote;->nextId:I

    return v0
.end method

.method public getDataHandler()Lorg/h2/store/DataHandler;
    .locals 0

    return-object p0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;
    .locals 1

    .line 797
    invoke-direct {p0}, Lorg/h2/engine/SessionRemote;->initJavaObjectSerializer()V

    .line 798
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->javaObjectSerializer:Lorg/h2/api/JavaObjectSerializer;

    return-object v0
.end method

.method public getLastReconnect()I
    .locals 1

    .line 732
    iget v0, p0, Lorg/h2/engine/SessionRemote;->lastReconnect:I

    return v0
.end method

.method public getLobCompressionAlgorithm(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLobFileListCache()Lorg/h2/util/SmallLRUCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLobStorage()Lorg/h2/store/LobStorageInterface;
    .locals 1

    .line 760
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->lobStorage:Lorg/h2/store/LobStorageFrontend;

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Lorg/h2/store/LobStorageFrontend;

    invoke-direct {v0, p0}, Lorg/h2/store/LobStorageFrontend;-><init>(Lorg/h2/store/DataHandler;)V

    iput-object v0, p0, Lorg/h2/engine/SessionRemote;->lobStorage:Lorg/h2/store/LobStorageFrontend;

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->lobStorage:Lorg/h2/store/LobStorageFrontend;

    return-object v0
.end method

.method public getLobSyncObject()Ljava/lang/Object;
    .locals 1

    .line 723
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->lobSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxLengthInplaceLob()I
    .locals 1

    .line 692
    sget v0, Lorg/h2/engine/SysProperties;->LOB_CLIENT_MAX_SIZE_MEMORY:I

    return v0
.end method

.method public getNextId()I
    .locals 2

    .line 598
    iget v0, p0, Lorg/h2/engine/SessionRemote;->nextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/h2/engine/SessionRemote;->nextId:I

    return v0
.end method

.method public getPowerOffCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTempFileDeleter()Lorg/h2/util/TempFileDeleter;
    .locals 1

    .line 737
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->tempFileDeleter:Lorg/h2/util/TempFileDeleter;

    if-nez v0, :cond_0

    .line 738
    invoke-static {}, Lorg/h2/util/TempFileDeleter;->getInstance()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/SessionRemote;->tempFileDeleter:Lorg/h2/util/TempFileDeleter;

    .line 740
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->tempFileDeleter:Lorg/h2/util/TempFileDeleter;

    return-object v0
.end method

.method public getTrace()Lorg/h2/message/Trace;
    .locals 2

    .line 594
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->traceSystem:Lorg/h2/message/TraceSystem;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object v0

    return-object v0
.end method

.method public hasPendingTransaction()Z
    .locals 5

    .line 158
    iget v0, p0, Lorg/h2/engine/SessionRemote;->clientVersion:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 161
    :goto_0
    iget-object v3, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 162
    iget-object v3, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/value/Transfer;

    :try_start_0
    const-string v4, "SESSION_HAS_PENDING_TRANSACTION"

    .line 164
    invoke-virtual {p0, v4, v0}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    const/16 v4, 0x10

    .line 165
    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 167
    invoke-virtual {p0, v3}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V

    .line 168
    invoke-virtual {v3}, Lorg/h2/value/Transfer;->readInt()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v3

    add-int/2addr v2, v1

    .line 170
    invoke-virtual {p0, v3, v0, v2}, Lorg/h2/engine/SessionRemote;->removeServer(Ljava/io/IOException;II)V

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isClosed()Z
    .locals 1

    .line 655
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isClustered()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->cluster:Z

    return v0
.end method

.method public isReconnectNeeded(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;
    .locals 6

    if-eqz p3, :cond_1

    .line 697
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x1600c

    .line 698
    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 701
    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/h2/engine/SessionRemote;->cipher:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 702
    invoke-static {p0, p1, p2}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;

    move-result-object p1

    goto :goto_1

    .line 704
    :cond_2
    iget-object v3, p0, Lorg/h2/engine/SessionRemote;->cipher:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/engine/SessionRemote;->fileEncryptionKey:[B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lorg/h2/store/FileStore;

    move-result-object p1

    :goto_1
    const/4 p2, 0x0

    .line 706
    invoke-virtual {p1, p2}, Lorg/h2/store/FileStore;->setCheckedWriting(Z)V

    .line 708
    :try_start_0
    invoke-virtual {p1}, Lorg/h2/store/FileStore;->init()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 710
    invoke-virtual {p1}, Lorg/h2/store/FileStore;->closeSilently()V

    .line 711
    throw p2
.end method

.method public declared-synchronized prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;
    .locals 2

    monitor-enter p0

    .line 493
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/SessionRemote;->checkClosed()V

    .line 494
    new-instance v0, Lorg/h2/command/CommandRemote;

    iget-object v1, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/h2/command/CommandRemote;-><init>(Lorg/h2/engine/SessionRemote;Ljava/util/ArrayList;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 492
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readLob(J[BJ[BII)I
    .locals 6

    monitor-enter p0

    .line 769
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/SessionRemote;->checkClosed()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 770
    :goto_0
    iget-object v2, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    .line 771
    iget-object v2, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/value/Transfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "LOB_READ"

    long-to-int v5, p1

    .line 773
    invoke-virtual {p0, v4, v5}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    const/16 v4, 0x11

    .line 774
    invoke-virtual {v2, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 775
    invoke-virtual {v2, p1, p2}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    .line 776
    iget v4, p0, Lorg/h2/engine/SessionRemote;->clientVersion:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    .line 777
    invoke-virtual {v2, p3}, Lorg/h2/value/Transfer;->writeBytes([B)Lorg/h2/value/Transfer;

    .line 779
    :cond_0
    invoke-virtual {v2, p4, p5}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    .line 780
    invoke-virtual {v2, p8}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 781
    invoke-virtual {p0, v2}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V

    .line 782
    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readInt()I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v4, :cond_1

    .line 784
    monitor-exit p0

    return v4

    .line 786
    :cond_1
    :try_start_2
    invoke-virtual {v2, p6, p7, v4}, Lorg/h2/value/Transfer;->readBytes([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 787
    monitor-exit p0

    return v4

    :catch_0
    move-exception v2

    move p8, v4

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    add-int/2addr v1, v3

    .line 789
    :try_start_3
    invoke-virtual {p0, v2, v0, v1}, Lorg/h2/engine/SessionRemote;->removeServer(Ljava/io/IOException;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 792
    :cond_2
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    .line 768
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic readSessionState()V
    .locals 0

    .line 42
    invoke-super {p0}, Lorg/h2/engine/SessionWithState;->readSessionState()V

    return-void
.end method

.method public reconnect(Z)Lorg/h2/engine/SessionInterface;
    .locals 0

    return-object p0
.end method

.method public removeServer(Ljava/io/IOException;II)V
    .locals 2

    .line 482
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->trace:Lorg/h2/message/Trace;

    const-string v1, "removing server because of exception"

    invoke-virtual {v0, p1, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 483
    iget-object p1, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    iget-object p1, p0, Lorg/h2/engine/SessionRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p3}, Lorg/h2/engine/SessionRemote;->autoReconnect(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/SessionRemote;->checkClosed()V

    .line 488
    invoke-direct {p0}, Lorg/h2/engine/SessionRemote;->switchOffCluster()V

    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 1

    .line 227
    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->cluster:Z

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lorg/h2/engine/SessionRemote;->setAutoCommitSend(Z)V

    .line 230
    :cond_0
    iput-boolean p1, p0, Lorg/h2/engine/SessionRemote;->autoCommit:Z

    return-void
.end method

.method public setAutoCommitFromServer(Z)V
    .locals 1

    .line 234
    iget-boolean v0, p0, Lorg/h2/engine/SessionRemote;->cluster:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 237
    invoke-direct {p0, p1}, Lorg/h2/engine/SessionRemote;->setAutoCommitSend(Z)V

    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Lorg/h2/engine/SessionRemote;->autoCommit:Z

    goto :goto_0

    .line 241
    :cond_0
    iput-boolean p1, p0, Lorg/h2/engine/SessionRemote;->autoCommit:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setPowerOffCount(I)V
    .locals 0

    const-string p1, "remote"

    .line 317
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public traceOperation(Ljava/lang/String;I)V
    .locals 4

    .line 665
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lorg/h2/engine/SessionRemote;->trace:Lorg/h2/message/Trace;

    const-string v1, "{0} {1}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
