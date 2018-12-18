.class public Lorg/h2/server/TcpServerThread;
.super Ljava/lang/Object;
.source "TcpServerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/server/TcpServerThread$CachedInputStream;
    }
.end annotation


# instance fields
.field private final cache:Lorg/h2/util/SmallMap;

.field private clientVersion:I

.field private commit:Lorg/h2/command/Command;

.field private final lobs:Lorg/h2/util/SmallLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/Long;",
            "Lorg/h2/server/TcpServerThread$CachedInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final server:Lorg/h2/server/TcpServer;

.field private session:Lorg/h2/engine/Session;

.field private sessionId:Ljava/lang/String;

.field private stop:Z

.field private thread:Ljava/lang/Thread;

.field private final threadId:I

.field protected final transfer:Lorg/h2/value/Transfer;


# direct methods
.method constructor <init>(Ljava/net/Socket;Lorg/h2/server/TcpServer;I)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/h2/util/SmallMap;

    sget v1, Lorg/h2/engine/SysProperties;->SERVER_CACHED_OBJECTS:I

    invoke-direct {v0, v1}, Lorg/h2/util/SmallMap;-><init>(I)V

    iput-object v0, p0, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    .line 54
    sget v0, Lorg/h2/engine/SysProperties;->SERVER_CACHED_OBJECTS:I

    sget v1, Lorg/h2/engine/SysProperties;->SERVER_RESULT_SET_FETCH_SIZE:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lorg/h2/util/SmallLRUCache;->newInstance(I)Lorg/h2/util/SmallLRUCache;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    .line 63
    iput-object p2, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    .line 64
    iput p3, p0, Lorg/h2/server/TcpServerThread;->threadId:I

    .line 65
    new-instance p2, Lorg/h2/value/Transfer;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/h2/value/Transfer;-><init>(Lorg/h2/engine/SessionInterface;)V

    iput-object p2, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    .line 66
    iget-object p2, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {p2, p1}, Lorg/h2/value/Transfer;->setSocket(Ljava/net/Socket;)V

    return-void
.end method

.method private closeSession()V
    .locals 4

    .line 172
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 175
    :try_start_0
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    const-string v2, "ROLLBACK"

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->prepareLocal(Ljava/lang/String;)Lorg/h2/command/Command;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lorg/h2/command/Command;->executeUpdate()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 181
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v2, v1}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 179
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v2, v1}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V

    .line 184
    :goto_1
    :try_start_1
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->close()V

    .line 185
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    iget v3, p0, Lorg/h2/server/TcpServerThread;->threadId:I

    invoke-virtual {v2, v3}, Lorg/h2/server/TcpServer;->removeConnection(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    .line 192
    :try_start_2
    iget-object v3, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v3, v2}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v2

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v1, v2}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_3

    .line 194
    :goto_2
    iput-object v0, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    throw v1

    :cond_0
    :goto_3
    iput-object v0, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    if-nez v1, :cond_1

    goto :goto_4

    .line 197
    :cond_1
    throw v1

    :cond_2
    :goto_4
    return-void
.end method

.method private getState(I)I
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getModificationId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method private process()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 256
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    const/16 v2, 0xb

    packed-switch v0, :pswitch_data_0

    .line 470
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V

    .line 471
    invoke-direct/range {p0 .. p0}, Lorg/h2/server/TcpServerThread;->closeSession()V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lorg/h2/server/TcpServerThread;->close()V

    goto/16 :goto_8

    .line 420
    :pswitch_1
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v13

    .line 424
    iget v0, v1, Lorg/h2/server/TcpServerThread;->clientVersion:I

    const/4 v5, 0x0

    if-lt v0, v2, :cond_1

    .line 425
    iget v0, v1, Lorg/h2/server/TcpServerThread;->clientVersion:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    .line 426
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v0

    move-object v2, v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v5

    const/4 v0, 0x0

    .line 432
    :goto_0
    iget-object v6, v1, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/h2/util/SmallLRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/server/TcpServerThread$CachedInputStream;

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    .line 434
    new-instance v6, Lorg/h2/server/TcpServerThread$CachedInputStream;

    invoke-direct {v6, v5}, Lorg/h2/server/TcpServerThread$CachedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 435
    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lorg/h2/util/SmallLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 440
    :cond_1
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/SmallLRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/h2/server/TcpServerThread$CachedInputStream;

    move-object v2, v5

    const/4 v0, 0x0

    .line 442
    :cond_2
    :goto_1
    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v5}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v11

    .line 443
    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v5}, Lorg/h2/value/Transfer;->readInt()I

    move-result v15

    if-eqz v0, :cond_3

    .line 445
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0, v2, v13, v14}, Lorg/h2/value/Transfer;->verifyLobMac([BJ)V

    :cond_3
    if-eqz v6, :cond_5

    .line 450
    invoke-virtual {v6}, Lorg/h2/server/TcpServerThread$CachedInputStream;->getPos()J

    move-result-wide v7

    cmp-long v0, v7, v11

    if-eqz v0, :cond_4

    .line 451
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-wide/16 v16, -0x1

    move-wide v8, v13

    move-object v10, v2

    move-wide v3, v11

    move-wide/from16 v11, v16

    .line 453
    invoke-static/range {v5 .. v12}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v5

    const-wide/16 v6, -0x1

    .line 454
    invoke-interface {v0, v5, v2, v6, v7}, Lorg/h2/store/LobStorageInterface;->getInputStream(Lorg/h2/value/ValueLobDb;[BJ)Ljava/io/InputStream;

    move-result-object v0

    .line 455
    new-instance v6, Lorg/h2/server/TcpServerThread$CachedInputStream;

    invoke-direct {v6, v0}, Lorg/h2/server/TcpServerThread$CachedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 456
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Lorg/h2/util/SmallLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    :cond_4
    const/high16 v0, 0x10000

    .line 460
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 461
    new-array v2, v0, [B

    .line 462
    invoke-static {v6, v2, v0}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v0

    .line 463
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 464
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 465
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Lorg/h2/value/Transfer;->writeBytes([BII)Lorg/h2/value/Transfer;

    .line 466
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    goto/16 :goto_8

    :cond_5
    const v0, 0x15f97

    .line 448
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 415
    :pswitch_2
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->hasPendingTransaction()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    goto/16 :goto_8

    .line 409
    :pswitch_3
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readBoolean()Z

    move-result v0

    .line 410
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    .line 411
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    goto/16 :goto_8

    :pswitch_4
    const/4 v2, 0x1

    .line 402
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/server/TcpServerThread;->sessionId:Ljava/lang/String;

    .line 403
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 404
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    .line 405
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    goto/16 :goto_8

    .line 295
    :pswitch_5
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    .line 296
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    .line 297
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/command/Command;

    .line 298
    invoke-virtual {v0}, Lorg/h2/command/Command;->getMetaData()Lorg/h2/result/ResultInterface;

    move-result-object v0

    .line 299
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v3, v2, v0}, Lorg/h2/util/SmallMap;->addObject(ILjava/lang/Object;)I

    .line 300
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result v2

    .line 301
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    .line 304
    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-static {v4, v0, v3}, Lorg/h2/result/ResultColumn;->writeColumn(Lorg/h2/value/Transfer;Lorg/h2/result/ResultInterface;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 306
    :cond_6
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    goto/16 :goto_8

    .line 394
    :pswitch_6
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    .line 395
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    .line 396
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v3

    .line 397
    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v4, v0}, Lorg/h2/util/SmallMap;->freeObject(I)V

    .line 398
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v0, v2, v3}, Lorg/h2/util/SmallMap;->addObject(ILjava/lang/Object;)I

    goto/16 :goto_8

    .line 286
    :pswitch_7
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->commit:Lorg/h2/command/Command;

    if-nez v0, :cond_7

    .line 287
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    const-string v2, "COMMIT"

    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->prepareLocal(Ljava/lang/String;)Lorg/h2/command/Command;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/server/TcpServerThread;->commit:Lorg/h2/command/Command;

    .line 289
    :cond_7
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getModificationId()I

    move-result v0

    .line 290
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->commit:Lorg/h2/command/Command;

    invoke-virtual {v2}, Lorg/h2/command/Command;->executeUpdate()I

    .line 291
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->getState(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    goto/16 :goto_8

    .line 385
    :pswitch_8
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    .line 386
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/result/ResultInterface;

    if-eqz v2, :cond_d

    .line 388
    invoke-interface {v2}, Lorg/h2/result/ResultInterface;->close()V

    .line 389
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v2, v0}, Lorg/h2/util/SmallMap;->freeObject(I)V

    goto/16 :goto_8

    .line 379
    :pswitch_9
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    .line 380
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/ResultInterface;

    .line 381
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->reset()V

    goto/16 :goto_8

    :pswitch_a
    const/4 v3, 0x0

    .line 368
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    .line 369
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    .line 370
    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v4, v0, v3}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/ResultInterface;

    .line 371
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_8

    .line 373
    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->sendRow(Lorg/h2/result/ResultInterface;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 375
    :cond_8
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    goto/16 :goto_8

    .line 359
    :pswitch_b
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    .line 360
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/command/Command;

    if-eqz v2, :cond_d

    .line 362
    invoke-virtual {v2}, Lorg/h2/command/Command;->close()V

    .line 363
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v2, v0}, Lorg/h2/util/SmallMap;->freeObject(I)V

    goto/16 :goto_8

    .line 338
    :pswitch_c
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    .line 339
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/command/Command;

    .line 340
    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->setParameters(Lorg/h2/command/Command;)V

    .line 341
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getModificationId()I

    move-result v2

    .line 343
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    monitor-enter v3

    .line 344
    :try_start_0
    invoke-virtual {v0}, Lorg/h2/command/Command;->executeUpdate()I

    move-result v0

    .line 345
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 349
    iput-boolean v3, v1, Lorg/h2/server/TcpServerThread;->stop:Z

    goto :goto_4

    .line 351
    :cond_9
    invoke-direct {v1, v2}, Lorg/h2/server/TcpServerThread;->getState(I)I

    move-result v2

    .line 353
    :goto_4
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    .line 355
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    .line 345
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 310
    :pswitch_d
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    .line 311
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    .line 312
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3}, Lorg/h2/value/Transfer;->readInt()I

    move-result v3

    .line 313
    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->readInt()I

    move-result v4

    .line 314
    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/command/Command;

    .line 315
    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->setParameters(Lorg/h2/command/Command;)V

    .line 316
    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getModificationId()I

    move-result v5

    .line 318
    iget-object v7, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    monitor-enter v7

    .line 319
    :try_start_2
    invoke-virtual {v0, v3, v6}, Lorg/h2/command/Command;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v0

    .line 320
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v3, v2, v0}, Lorg/h2/util/SmallMap;->addObject(ILjava/lang/Object;)I

    .line 322
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result v2

    .line 323
    invoke-direct {v1, v5}, Lorg/h2/server/TcpServerThread;->getState(I)I

    move-result v3

    .line 324
    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v5, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 325
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v3

    .line 326
    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v5, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_a

    .line 328
    iget-object v7, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-static {v7, v0, v5}, Lorg/h2/result/ResultColumn;->writeColumn(Lorg/h2/value/Transfer;Lorg/h2/result/ResultInterface;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 330
    :cond_a
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_6
    if-ge v6, v2, :cond_b

    .line 332
    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->sendRow(Lorg/h2/result/ResultInterface;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 334
    :cond_b
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    goto :goto_8

    :catchall_1
    move-exception v0

    .line 320
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_e
    const/4 v0, 0x1

    .line 279
    iput-boolean v0, v1, Lorg/h2/server/TcpServerThread;->stop:Z

    .line 280
    invoke-direct/range {p0 .. p0}, Lorg/h2/server/TcpServerThread;->closeSession()V

    .line 281
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lorg/h2/server/TcpServerThread;->close()V

    goto :goto_8

    .line 260
    :pswitch_f
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3}, Lorg/h2/value/Transfer;->readInt()I

    move-result v3

    .line 261
    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v4

    .line 262
    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getModificationId()I

    move-result v5

    .line 263
    iget-object v6, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v4}, Lorg/h2/engine/Session;->prepareLocal(Ljava/lang/String;)Lorg/h2/command/Command;

    move-result-object v4

    .line 264
    invoke-virtual {v4}, Lorg/h2/command/Command;->isReadOnly()Z

    move-result v6

    .line 265
    iget-object v7, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v7, v3, v4}, Lorg/h2/util/SmallMap;->addObject(ILjava/lang/Object;)I

    .line 266
    invoke-virtual {v4}, Lorg/h2/command/Command;->isQuery()Z

    move-result v3

    .line 267
    invoke-virtual {v4}, Lorg/h2/command/Command;->getParameters()Ljava/util/ArrayList;

    move-result-object v4

    .line 268
    iget-object v7, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-direct {v1, v5}, Lorg/h2/server/TcpServerThread;->getState(I)I

    move-result v5

    invoke-virtual {v7, v5}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    if-ne v0, v2, :cond_c

    .line 271
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/ParameterInterface;

    .line 272
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-static {v3, v2}, Lorg/h2/expression/ParameterRemote;->writeMetaData(Lorg/h2/value/Transfer;Lorg/h2/expression/ParameterInterface;)V

    goto :goto_7

    .line 275
    :cond_c
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    :cond_d
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_f
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sendError(Ljava/lang/Throwable;)V
    .locals 5

    .line 220
    :try_start_0
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    .line 221
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 222
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 223
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    instance-of v1, p1, Lorg/h2/jdbc/JdbcSQLException;

    if-eqz v1, :cond_0

    .line 227
    move-object v1, p1

    check-cast v1, Lorg/h2/jdbc/JdbcSQLException;

    .line 228
    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcSQLException;->getOriginalMessage()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcSQLException;->getSQL()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    .line 234
    :goto_0
    iget-object v3, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 238
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v0, p1}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lorg/h2/server/TcpServerThread;->stop:Z

    :goto_1
    return-void
.end method

.method private sendRow(Lorg/h2/result/ResultInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    .line 486
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    .line 487
    :goto_0
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 488
    iget v2, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 489
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeValue(Lorg/h2/value/Value;)V

    goto :goto_1

    .line 491
    :cond_0
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lorg/h2/server/TcpServerThread;->writeValue(Lorg/h2/value/Value;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :cond_1
    iget-object p1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {p1, v1}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    :cond_2
    return-void
.end method

.method private setParameters(Lorg/h2/command/Command;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    .line 248
    invoke-virtual {p1}, Lorg/h2/command/Command;->getParameters()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 250
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    .line 251
    iget-object v3, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3}, Lorg/h2/value/Transfer;->readValue()Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private trace(Ljava/lang/String;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/server/TcpServer;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private writeValue(Lorg/h2/value/Value;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 501
    :cond_0
    instance-of v0, p1, Lorg/h2/value/ValueLobDb;

    if-eqz v0, :cond_1

    .line 502
    move-object v0, p1

    check-cast v0, Lorg/h2/value/ValueLobDb;

    .line 503
    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->isStored()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    .line 505
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lorg/h2/server/TcpServerThread$CachedInputStream;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/h2/server/TcpServerThread$CachedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0, v1}, Lorg/h2/util/SmallLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_1
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0, p1}, Lorg/h2/value/Transfer;->writeValue(Lorg/h2/value/Value;)V

    return-void
.end method


# virtual methods
.method cancelStatement(Ljava/lang/String;I)V
    .locals 1

    .line 527
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->sessionId:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 528
    iget-object p1, p0, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/command/Command;

    .line 529
    invoke-virtual {p1}, Lorg/h2/command/Command;->cancel()V

    :cond_0
    return-void
.end method

.method close()V
    .locals 2

    const/4 v0, 0x1

    .line 207
    :try_start_0
    iput-boolean v0, p0, Lorg/h2/server/TcpServerThread;->stop:Z

    .line 208
    invoke-direct {p0}, Lorg/h2/server/TcpServerThread;->closeSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_0
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->close()V

    const-string v0, "Close"

    .line 213
    invoke-direct {p0, v0}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v0, p0}, Lorg/h2/server/TcpServer;->remove(Lorg/h2/server/TcpServerThread;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 210
    :try_start_1
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 212
    :goto_2
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->close()V

    const-string v1, "Close"

    .line 213
    invoke-direct {p0, v1}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v1, p0}, Lorg/h2/server/TcpServer;->remove(Lorg/h2/server/TcpServerThread;)V

    throw v0
.end method

.method getThread()Ljava/lang/Thread;
    .locals 1

    .line 517
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public run()V
    .locals 9

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->init()V

    const-string v0, "Connect"

    .line 77
    invoke-direct {p0, v0}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 81
    :try_start_1
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/server/TcpServer;->allow(Ljava/net/Socket;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 84
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x2

    const v4, 0x15fbf

    const/4 v5, 0x0

    if-lt v1, v2, :cond_a

    const/16 v2, 0xf

    if-gt v1, v2, :cond_9

    .line 92
    iget-object v3, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3}, Lorg/h2/value/Transfer;->readInt()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 94
    iput v2, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    goto :goto_0

    .line 96
    :cond_0
    iput v1, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    .line 98
    :goto_0
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    iget v2, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->setVersion(I)V

    .line 99
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 102
    iget-object v4, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v4

    .line 103
    iget-object v6, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v6}, Lorg/h2/value/Transfer;->readInt()I

    move-result v6

    .line 104
    iput-boolean v0, p0, Lorg/h2/server/TcpServerThread;->stop:Z

    if-ne v6, v3, :cond_1

    .line 107
    iget-object v6, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v6}, Lorg/h2/value/Transfer;->readInt()I

    move-result v6

    .line 108
    iget-object v7, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v7, v4, v6}, Lorg/h2/server/TcpServer;->cancelStatement(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/16 v7, 0xe

    if-ne v6, v7, :cond_3

    .line 111
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v1, v4}, Lorg/h2/server/TcpServer;->checkKeyAndGetDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 113
    iget-object v4, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v4, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    goto :goto_1

    .line 115
    :cond_2
    iget-object v4, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v4, v5}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 119
    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v4}, Lorg/h2/server/TcpServer;->getBaseDir()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 121
    invoke-static {}, Lorg/h2/engine/SysProperties;->getBaseDir()Ljava/lang/String;

    move-result-object v4

    .line 123
    :cond_4
    iget-object v6, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v6, v1}, Lorg/h2/server/TcpServer;->checkKeyAndGetDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v6, Lorg/h2/engine/ConnectionInfo;

    invoke-direct {v6, v1}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v6, v2}, Lorg/h2/engine/ConnectionInfo;->setOriginalURL(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/h2/engine/ConnectionInfo;->setUserName(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/h2/engine/ConnectionInfo;->setUserPasswordHash([B)V

    .line 128
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/h2/engine/ConnectionInfo;->setFilePasswordHash([B)V

    .line 129
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1

    :goto_2
    if-ge v5, v1, :cond_5

    .line 131
    iget-object v7, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v7}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v8}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/h2/engine/ConnectionInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    .line 135
    invoke-virtual {v6, v4}, Lorg/h2/engine/ConnectionInfo;->setBaseDir(Ljava/lang/String;)V

    .line 137
    :cond_6
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v1}, Lorg/h2/server/TcpServer;->getIfExists()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "IFEXISTS"

    const-string v4, "TRUE"

    .line 138
    invoke-virtual {v6, v1, v4}, Lorg/h2/engine/ConnectionInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_7
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 141
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    iget v4, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    invoke-virtual {v1, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 142
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->flush()V

    .line 143
    iget v1, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    if-lt v1, v3, :cond_8

    .line 144
    invoke-virtual {v6}, Lorg/h2/engine/ConnectionInfo;->getFilePasswordHash()[B

    move-result-object v1

    if-eqz v1, :cond_8

    .line 145
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/h2/engine/ConnectionInfo;->setFileEncryptionKey([B)V

    .line 148
    :cond_8
    invoke-static {}, Lorg/h2/engine/Engine;->getInstance()Lorg/h2/engine/Engine;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/h2/engine/Engine;->createSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    .line 149
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    iget-object v3, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v3}, Lorg/h2/value/Transfer;->setSession(Lorg/h2/engine/SessionInterface;)V

    .line 150
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    iget v3, p0, Lorg/h2/server/TcpServerThread;->threadId:I

    invoke-virtual {v6}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lorg/h2/server/TcpServer;->addConnection(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connected"

    .line 151
    invoke-direct {p0, v1}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V

    goto :goto_3

    .line 89
    :cond_9
    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "15"

    aput-object v2, v1, v0

    invoke-static {v4, v1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    .line 86
    :cond_a
    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "6"

    aput-object v2, v1, v0

    invoke-static {v4, v1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_b
    const v1, 0x16005

    .line 82
    invoke-static {v1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    .line 153
    :try_start_2
    invoke-direct {p0, v1}, Lorg/h2/server/TcpServerThread;->sendError(Ljava/lang/Throwable;)V

    .line 154
    iput-boolean v0, p0, Lorg/h2/server/TcpServerThread;->stop:Z

    .line 156
    :goto_3
    iget-boolean v0, p0, Lorg/h2/server/TcpServerThread;->stop:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_c

    .line 158
    :try_start_3
    invoke-direct {p0}, Lorg/h2/server/TcpServerThread;->process()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 160
    :try_start_4
    invoke-direct {p0, v0}, Lorg/h2/server/TcpServerThread;->sendError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_c
    const-string v0, "Disconnect"

    .line 163
    invoke-direct {p0, v0}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 165
    :try_start_5
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    :goto_4
    invoke-virtual {p0}, Lorg/h2/server/TcpServerThread;->close()V

    return-void

    :goto_5
    invoke-virtual {p0}, Lorg/h2/server/TcpServerThread;->close()V

    throw v0
.end method

.method setThread(Ljava/lang/Thread;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lorg/h2/server/TcpServerThread;->thread:Ljava/lang/Thread;

    return-void
.end method
