.class public Lorg/h2/store/LobStorageBackend;
.super Ljava/lang/Object;
.source "LobStorageBackend.java"

# interfaces
.implements Lorg/h2/store/LobStorageInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/LobStorageBackend$LobInputStream;
    }
.end annotation


# static fields
.field private static final BLOCK_LENGTH:I = 0x4e20

.field private static final HASH_CACHE_SIZE:I = 0x1000

.field private static final LOBS:Ljava/lang/String; = "INFORMATION_SCHEMA.LOBS"

.field private static final LOB_DATA:Ljava/lang/String; = "INFORMATION_SCHEMA.LOB_DATA"

.field public static final LOB_DATA_TABLE:Ljava/lang/String; = "LOB_DATA"

.field private static final LOB_MAP:Ljava/lang/String; = "INFORMATION_SCHEMA.LOB_MAP"

.field private static final LOB_SCHEMA:Ljava/lang/String; = "INFORMATION_SCHEMA"


# instance fields
.field private final compress:Lorg/h2/tools/CompressTool;

.field conn:Lorg/h2/jdbc/JdbcConnection;

.field final database:Lorg/h2/engine/Database;

.field private hashBlocks:[J

.field private init:Z

.field private nextBlock:J

.field private final prepared:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/sql/PreparedStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/LobStorageBackend;->prepared:Ljava/util/HashMap;

    .line 95
    invoke-static {}, Lorg/h2/tools/CompressTool;->getInstance()Lorg/h2/tools/CompressTool;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/LobStorageBackend;->compress:Lorg/h2/tools/CompressTool;

    .line 101
    iput-object p1, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    return-void
.end method

.method private addLob(Ljava/io/InputStream;JILorg/h2/store/CountingReaderInputStream;)Lorg/h2/value/ValueLobDb;
    .locals 29

    move-object/from16 v10, p0

    move/from16 v0, p4

    const/16 v11, 0x4e20

    .line 352
    :try_start_0
    new-array v12, v11, [B

    const-wide/16 v13, 0x0

    cmp-long v3, p2, v13

    if-gez v3, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p2

    .line 358
    :goto_0
    iget-object v3, v10, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getMaxLengthInplaceLob()I

    move-result v15

    .line 359
    iget-object v3, v10, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3, v0}, Lorg/h2/engine/Database;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v17, -0x1

    const/4 v8, 0x0

    move-wide/from16 v20, v13

    move-wide/from16 v22, v17

    const/16 v19, 0x0

    :goto_1
    const/4 v7, 0x0

    cmp-long v3, v1, v13

    if-lez v3, :cond_5

    const-wide/16 v3, 0x4e20

    .line 363
    :try_start_1
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    move-object/from16 v5, p1

    .line 364
    invoke-static {v5, v12, v3}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_6

    :cond_1
    int-to-long v13, v3

    sub-long v24, v1, v13

    .line 371
    array-length v1, v12

    if-eq v3, v1, :cond_2

    .line 372
    new-array v1, v3, [B

    .line 373
    invoke-static {v12, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v12

    :goto_2
    if-nez v19, :cond_3

    .line 377
    array-length v1, v6

    if-ge v1, v11, :cond_3

    array-length v1, v6

    if-gt v1, v15, :cond_3

    const/4 v11, 0x0

    goto :goto_7

    .line 382
    :cond_3
    iget-object v1, v10, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    .line 384
    iget-object v4, v10, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    :try_start_2
    iget-object v1, v10, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v26

    monitor-enter v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v19, :cond_4

    .line 387
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/LobStorageBackend;->getNextLobId()J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v22, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v27, v4

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-object/from16 v27, v4

    move/from16 v4, v19

    move-object/from16 v28, v6

    move-wide/from16 v5, v20

    move-object v11, v7

    move-object/from16 v7, v28

    const/4 v11, 0x0

    move-object/from16 v8, v16

    .line 389
    :try_start_4
    invoke-virtual/range {v1 .. v8}, Lorg/h2/store/LobStorageBackend;->storeBlock(JIJ[BLjava/lang/String;)V

    .line 390
    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 391
    :try_start_5
    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v1, 0x0

    add-long v20, v20, v13

    add-int/lit8 v19, v19, 0x1

    move-wide/from16 v1, v24

    const/4 v8, 0x0

    const/16 v11, 0x4e20

    const-wide/16 v13, 0x0

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 390
    :goto_4
    :try_start_6
    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v27, v4

    .line 391
    :goto_5
    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-wide/from16 v1, v22

    goto :goto_a

    :cond_5
    :goto_6
    const/4 v11, 0x0

    const/4 v6, 0x0

    :goto_7
    cmp-long v1, v22, v17

    if-nez v1, :cond_6

    if-nez v6, :cond_6

    .line 396
    new-array v6, v11, [B

    :cond_6
    if-eqz v6, :cond_8

    if-nez p5, :cond_7

    .line 401
    array-length v1, v6

    int-to-long v1, v1

    goto :goto_8

    :cond_7
    invoke-virtual/range {p5 .. p5}, Lorg/h2/store/CountingReaderInputStream;->getLength()J

    move-result-wide v1

    .line 403
    :goto_8
    invoke-static {v0, v6, v1, v2}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0

    return-object v0

    :cond_8
    if-nez p5, :cond_9

    move-wide/from16 v8, v20

    goto :goto_9

    .line 408
    :cond_9
    invoke-virtual/range {p5 .. p5}, Lorg/h2/store/CountingReaderInputStream;->getLength()J

    move-result-wide v1

    move-wide v8, v1

    :goto_9
    const/4 v5, -0x2

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-wide/from16 v3, v22

    move-wide/from16 v6, v20

    .line 410
    invoke-direct/range {v1 .. v9}, Lorg/h2/store/LobStorageBackend;->registerLob(IJIJJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_1

    return-object v0

    :goto_a
    cmp-long v3, v1, v17

    if-eqz v3, :cond_a

    .line 414
    :try_start_9
    invoke-direct {v10, v1, v2}, Lorg/h2/store/LobStorageBackend;->removeLob(J)V

    :cond_a
    const/4 v1, 0x0

    .line 416
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    .line 419
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method static assertHoldsLock(Ljava/lang/Object;)V
    .locals 0

    .line 621
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 622
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static assertNotHolds(Ljava/lang/Object;)V
    .locals 0

    .line 610
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 611
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private getHashCacheBlock(I)J
    .locals 6

    .line 488
    invoke-direct {p0}, Lorg/h2/store/LobStorageBackend;->initHashCache()V

    and-int/lit16 v0, p1, 0xfff

    .line 490
    iget-object v1, p0, Lorg/h2/store/LobStorageBackend;->hashBlocks:[J

    aget-wide v2, v1, v0

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    .line 492
    iget-object p1, p0, Lorg/h2/store/LobStorageBackend;->hashBlocks:[J

    add-int/lit16 v0, v0, 0x1000

    aget-wide v0, p1, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getNextLobId()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "SELECT MAX(LOB) FROM INFORMATION_SCHEMA.LOB_MAP"

    .line 178
    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 179
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 180
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    const/4 v3, 0x1

    .line 181
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 182
    invoke-virtual {p0, v0, v1}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    const-string v0, "SELECT MAX(ID) FROM INFORMATION_SCHEMA.LOBS"

    .line 184
    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 186
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 187
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 188
    invoke-virtual {p0, v0, v1}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    return-wide v2
.end method

.method private initHashCache()V
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->hashBlocks:[J

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    .line 509
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/h2/store/LobStorageBackend;->hashBlocks:[J

    :cond_0
    return-void
.end method

.method private registerLob(IJIJJ)Lorg/h2/value/ValueLobDb;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v1, p0

    .line 425
    iget-object v0, v1, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    .line 427
    iget-object v2, v1, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v2

    .line 428
    :try_start_0
    iget-object v0, v1, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "INSERT INTO INFORMATION_SCHEMA.LOBS(ID, BYTE_COUNT, TABLE) VALUES(?, ?, ?)"

    .line 431
    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    const/4 v5, 0x1

    move-wide/from16 v9, p2

    .line 432
    invoke-interface {v4, v5, v9, v10}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v5, 0x2

    move-wide/from16 v6, p5

    .line 433
    invoke-interface {v4, v5, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v5, 0x3

    move/from16 v8, p4

    .line 434
    invoke-interface {v4, v5, v8}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 435
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->execute()Z

    .line 436
    invoke-virtual {p0, v0, v4}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    .line 437
    iget-object v7, v1, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    const/4 v11, 0x0

    move v6, p1

    move/from16 v8, p4

    move-wide/from16 v9, p2

    move-wide/from16 v12, p7

    invoke-static/range {v6 .. v13}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0

    .line 439
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_0
    move-exception v0

    .line 440
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    .line 441
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private removeLob(J)V
    .locals 11

    .line 287
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :try_start_1
    iget-object v1, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "SELECT BLOCK, HASH FROM INFORMATION_SCHEMA.LOB_MAP D WHERE D.LOB = ? AND NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.LOB_MAP O WHERE O.BLOCK = D.BLOCK AND O.LOB <> ?)"

    .line 293
    invoke-virtual {p0, v2}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    const/4 v4, 0x1

    .line 294
    invoke-interface {v3, v4, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v5, 0x2

    .line 295
    invoke-interface {v3, v5, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 296
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v6

    .line 297
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 298
    :goto_0
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 299
    invoke-interface {v6, v4}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-interface {v6, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v8

    const-wide/16 v9, -0x1

    .line 301
    invoke-direct {p0, v8, v9, v10}, Lorg/h2/store/LobStorageBackend;->setHashCacheBlock(IJ)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    const-string v2, "DELETE FROM INFORMATION_SCHEMA.LOB_MAP WHERE LOB = ?"

    .line 306
    invoke-virtual {p0, v2}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 307
    invoke-interface {v3, v4, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 308
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->execute()Z

    .line 309
    invoke-virtual {p0, v2, v3}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    const-string v2, "DELETE FROM INFORMATION_SCHEMA.LOB_DATA WHERE BLOCK = ?"

    .line 312
    invoke-virtual {p0, v2}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 313
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 314
    invoke-interface {v3, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 315
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->execute()Z

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {p0, v2, v3}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    const-string v2, "DELETE FROM INFORMATION_SCHEMA.LOBS WHERE ID = ?"

    .line 320
    invoke-virtual {p0, v2}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 321
    invoke-interface {v3, v4, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 322
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->execute()Z

    .line 323
    invoke-virtual {p0, v2, v3}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    .line 324
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 324
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 325
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 327
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private setHashCacheBlock(IJ)V
    .locals 4

    .line 500
    invoke-direct {p0}, Lorg/h2/store/LobStorageBackend;->initHashCache()V

    and-int/lit16 v0, p1, 0xfff

    .line 502
    iget-object v1, p0, Lorg/h2/store/LobStorageBackend;->hashBlocks:[J

    int-to-long v2, p1

    aput-wide v2, v1, v0

    .line 503
    iget-object p1, p0, Lorg/h2/store/LobStorageBackend;->hashBlocks:[J

    add-int/lit16 v0, v0, 0x1000

    aput-wide p2, p1, v0

    return-void
.end method


# virtual methods
.method public copyLob(Lorg/h2/value/ValueLobDb;IJ)Lorg/h2/value/ValueLobDb;
    .locals 14

    move-object v1, p0

    .line 451
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getType()I

    move-result v2

    .line 452
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v3

    .line 453
    iget-object v0, v1, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    .line 455
    iget-object v10, v1, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v10

    .line 456
    :try_start_0
    iget-object v0, v1, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 458
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    .line 459
    invoke-direct {p0}, Lorg/h2/store/LobStorageBackend;->getNextLobId()J

    move-result-wide v5

    const-string v0, "INSERT INTO INFORMATION_SCHEMA.LOB_MAP(LOB, SEQ, POS, HASH, BLOCK) SELECT ?, SEQ, POS, HASH, BLOCK FROM INFORMATION_SCHEMA.LOB_MAP WHERE LOB = ?"

    .line 462
    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v7

    const/4 v8, 0x1

    .line 463
    invoke-interface {v7, v8, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v9, 0x2

    .line 464
    invoke-interface {v7, v9, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 465
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 466
    invoke-virtual {p0, v0, v7}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    const-string v0, "INSERT INTO INFORMATION_SCHEMA.LOBS(ID, BYTE_COUNT, TABLE) SELECT ?, BYTE_COUNT, ? FROM INFORMATION_SCHEMA.LOBS WHERE ID = ?"

    .line 470
    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v7

    .line 471
    invoke-interface {v7, v8, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    move/from16 v8, p2

    int-to-long v12, v8

    .line 472
    invoke-interface {v7, v9, v12, v13}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v9, 0x3

    .line 473
    invoke-interface {v7, v9, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 474
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 475
    invoke-virtual {p0, v0, v7}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    .line 477
    iget-object v3, v1, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    const/4 v7, 0x0

    move/from16 v4, p2

    move-wide/from16 v8, p3

    invoke-static/range {v2 .. v9}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 480
    :try_start_4
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 482
    :goto_0
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    .line 483
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;
    .locals 6

    .line 574
    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 575
    invoke-direct/range {v0 .. v5}, Lorg/h2/store/LobStorageBackend;->addLob(Ljava/io/InputStream;JILorg/h2/store/CountingReaderInputStream;)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1
.end method

.method public createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;
    .locals 6

    .line 580
    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    .line 582
    :cond_0
    new-instance v5, Lorg/h2/store/CountingReaderInputStream;

    invoke-direct {v5, p1, p2, p3}, Lorg/h2/store/CountingReaderInputStream;-><init>(Ljava/io/Reader;J)V

    const-wide v2, 0x7fffffffffffffffL

    const/16 v4, 0x10

    move-object v0, p0

    move-object v1, v5

    .line 583
    invoke-direct/range {v0 .. v5}, Lorg/h2/store/LobStorageBackend;->addLob(Ljava/io/InputStream;JILorg/h2/store/CountingReaderInputStream;)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1
.end method

.method public getInputStream(Lorg/h2/value/ValueLobDb;[BJ)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    .line 336
    iget-object p2, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p2}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    .line 338
    iget-object p2, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter p2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :try_start_1
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    :try_start_2
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v3

    .line 341
    new-instance p1, Lorg/h2/store/LobStorageBackend$LobInputStream;

    move-object v1, p1

    move-object v2, p0

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/h2/store/LobStorageBackend$LobInputStream;-><init>(Lorg/h2/store/LobStorageBackend;JJ)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    .line 342
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 343
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 345
    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public init()V
    .locals 8

    .line 106
    iget-boolean v0, p0, Lorg/h2/store/LobStorageBackend;->init:Z

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-boolean v1, p0, Lorg/h2/store/LobStorageBackend;->init:Z

    if-eqz v1, :cond_1

    .line 113
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lorg/h2/store/LobStorageBackend;->init:Z

    .line 116
    iget-object v2, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getLobConnectionForRegularUse()Lorg/h2/jdbc/JdbcConnection;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 117
    iget-object v2, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getLobConnectionForInit()Lorg/h2/jdbc/JdbcConnection;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    invoke-virtual {v2}, Lorg/h2/jdbc/JdbcConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v3

    const-string v4, "SELECT ZERO() FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA=? AND TABLE_NAME=? AND COLUMN_NAME=?"

    .line 123
    invoke-virtual {v2, v4}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    const-string v5, "INFORMATION_SCHEMA"

    .line 126
    invoke-interface {v4, v1, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const-string v5, "LOB_MAP"

    const/4 v6, 0x2

    .line 127
    invoke-interface {v4, v6, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v5, 0x3

    const-string v7, "POS"

    .line 128
    invoke-interface {v4, v5, v7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 130
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v4

    .line 131
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SELECT ZERO() FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA=? AND TABLE_NAME=?"

    .line 132
    invoke-virtual {v2, v4}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    const-string v4, "INFORMATION_SCHEMA"

    .line 135
    invoke-interface {v2, v1, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const-string v4, "LOB_DATA"

    .line 136
    invoke-interface {v2, v6, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 137
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 138
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    const-string v2, "CREATE CACHED TABLE IF NOT EXISTS INFORMATION_SCHEMA.LOBS(ID BIGINT PRIMARY KEY, BYTE_COUNT BIGINT, TABLE INT) HIDDEN"

    .line 143
    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "CREATE INDEX IF NOT EXISTS INFORMATION_SCHEMA.INDEX_LOB_TABLE ON INFORMATION_SCHEMA.LOBS(TABLE)"

    .line 145
    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "CREATE CACHED TABLE IF NOT EXISTS INFORMATION_SCHEMA.LOB_MAP(LOB BIGINT, SEQ INT, POS BIGINT, HASH INT, BLOCK BIGINT, PRIMARY KEY(LOB, SEQ)) HIDDEN"

    .line 148
    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "ALTER TABLE INFORMATION_SCHEMA.LOB_MAP RENAME TO INFORMATION_SCHEMA.LOB_MAP HIDDEN"

    .line 151
    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "ALTER TABLE INFORMATION_SCHEMA.LOB_MAP ADD IF NOT EXISTS POS BIGINT BEFORE HASH"

    .line 153
    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "ALTER TABLE INFORMATION_SCHEMA.LOB_MAP DROP COLUMN IF EXISTS \"OFFSET\""

    .line 157
    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "CREATE INDEX IF NOT EXISTS INFORMATION_SCHEMA.INDEX_LOB_MAP_DATA_LOB ON INFORMATION_SCHEMA.LOB_MAP(BLOCK, LOB)"

    .line 159
    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "CREATE CACHED TABLE IF NOT EXISTS INFORMATION_SCHEMA.LOB_DATA(BLOCK BIGINT PRIMARY KEY, COMPRESSED INT, DATA BINARY) HIDDEN"

    .line 162
    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    :cond_3
    const-string v2, "SELECT MAX(BLOCK) FROM INFORMATION_SCHEMA.LOB_DATA"

    .line 166
    invoke-interface {v3, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 167
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 168
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v1

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, p0, Lorg/h2/store/LobStorageBackend;->nextBlock:J

    .line 169
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    .line 171
    invoke-static {v1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :catchall_0
    move-exception v1

    .line 173
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isReadOnly()Z
    .locals 1

    .line 446
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 252
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 257
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->prepared:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/PreparedStatement;

    if-nez v0, :cond_2

    .line 259
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method readBlock(J)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "SELECT COMPRESSED, DATA FROM INFORMATION_SCHEMA.LOB_DATA WHERE BLOCK = ?"

    .line 226
    invoke-virtual {p0, v2}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    const/4 v4, 0x1

    .line 227
    invoke-interface {v3, v4, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 228
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v5

    .line 229
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 234
    invoke-interface {v5, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p1

    const/4 p2, 0x2

    .line 235
    invoke-interface {v5, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p2

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lorg/h2/store/LobStorageBackend;->compress:Lorg/h2/tools/CompressTool;

    invoke-virtual {p1, p2}, Lorg/h2/tools/CompressTool;->expand([B)[B

    move-result-object p2

    .line 239
    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    .line 240
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p2

    :cond_1
    const v2, 0x15fac

    .line 230
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing lob entry, block: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 241
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 242
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public removeAllForTable(I)V
    .locals 6

    .line 194
    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    :try_start_0
    const-string v0, "SELECT ID FROM INFORMATION_SCHEMA.LOBS WHERE TABLE = ?"

    .line 197
    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 198
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 199
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 200
    :goto_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-interface {v3, v2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/h2/store/LobStorageBackend;->removeLob(J)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x2

    .line 208
    invoke-virtual {p0, p1}, Lorg/h2/store/LobStorageBackend;->removeAllForTable(I)V

    const/4 p1, -0x3

    .line 209
    invoke-virtual {p0, p1}, Lorg/h2/store/LobStorageBackend;->removeAllForTable(I)V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 205
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public removeLob(Lorg/h2/value/ValueLobDb;)V
    .locals 2

    .line 281
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/h2/store/LobStorageBackend;->removeLob(J)V

    return-void
.end method

.method reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V
    .locals 1

    .line 271
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 276
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->prepared:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTable(Lorg/h2/value/ValueLobDb;I)V
    .locals 6

    .line 589
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    .line 590
    iget-object p1, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    .line 592
    iget-object p1, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter p1

    .line 593
    :try_start_0
    iget-object v2, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v2}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 595
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    const-string v3, "UPDATE INFORMATION_SCHEMA.LOBS SET TABLE = ? WHERE ID = ?"

    .line 597
    invoke-virtual {p0, v3}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    const/4 v5, 0x1

    .line 598
    invoke-interface {v4, v5, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x2

    .line 599
    invoke-interface {v4, p2, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 600
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 601
    invoke-virtual {p0, v3, v4}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 606
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 603
    :try_start_4
    invoke-static {p2}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p2

    throw p2

    .line 605
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p2

    :catchall_1
    move-exception p2

    .line 606
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p2
.end method

.method storeBlock(JIJ[BLjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    if-eqz v1, :cond_0

    .line 527
    iget-object v2, v0, Lorg/h2/store/LobStorageBackend;->compress:Lorg/h2/tools/CompressTool;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3, v1}, Lorg/h2/tools/CompressTool;->compress([BLjava/lang/String;)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v3, p6

    move-object v2, v3

    .line 529
    :goto_0
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    .line 530
    iget-object v4, v0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v4}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/store/LobStorageBackend;->assertHoldsLock(Ljava/lang/Object;)V

    .line 531
    iget-object v4, v0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-static {v4}, Lorg/h2/store/LobStorageBackend;->assertHoldsLock(Ljava/lang/Object;)V

    .line 532
    invoke-direct {p0, v3}, Lorg/h2/store/LobStorageBackend;->getHashCacheBlock(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    cmp-long v11, v4, v6

    if-eqz v11, :cond_4

    const-string v6, "SELECT COMPRESSED, DATA FROM INFORMATION_SCHEMA.LOB_DATA WHERE BLOCK = ?"

    .line 536
    invoke-virtual {p0, v6}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v7

    .line 537
    invoke-interface {v7, v10, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 538
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v11

    .line 539
    invoke-interface {v11}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 540
    invoke-interface {v11, v10}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 541
    :goto_1
    invoke-interface {v11, v8}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v11

    if-eqz v1, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    if-ne v12, v13, :cond_3

    .line 542
    invoke-static {v2, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 546
    :goto_3
    invoke-virtual {p0, v6, v7}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    const/4 v6, 0x3

    if-nez v11, :cond_6

    .line 549
    iget-wide v4, v0, Lorg/h2/store/LobStorageBackend;->nextBlock:J

    const-wide/16 v11, 0x1

    add-long/2addr v11, v4

    iput-wide v11, v0, Lorg/h2/store/LobStorageBackend;->nextBlock:J

    .line 550
    invoke-direct {p0, v3, v4, v5}, Lorg/h2/store/LobStorageBackend;->setHashCacheBlock(IJ)V

    const-string v7, "INSERT INTO INFORMATION_SCHEMA.LOB_DATA(BLOCK, COMPRESSED, DATA) VALUES(?, ?, ?)"

    .line 553
    invoke-virtual {p0, v7}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v11

    .line 554
    invoke-interface {v11, v10, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v9, 0x1

    .line 555
    :goto_5
    invoke-interface {v11, v8, v9}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 556
    invoke-interface {v11, v6, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 557
    invoke-interface {v11}, Ljava/sql/PreparedStatement;->execute()Z

    .line 558
    invoke-virtual {p0, v7, v11}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    :cond_6
    const-string v1, "INSERT INTO INFORMATION_SCHEMA.LOB_MAP(LOB, SEQ, POS, HASH, BLOCK) VALUES(?, ?, ?, ?, ?)"

    .line 562
    invoke-virtual {p0, v1}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    move-wide v11, p1

    .line 563
    invoke-interface {v2, v10, v11, v12}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    move/from16 v7, p3

    .line 564
    invoke-interface {v2, v8, v7}, Ljava/sql/PreparedStatement;->setInt(II)V

    move-wide/from16 v7, p4

    .line 565
    invoke-interface {v2, v6, v7, v8}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v6, 0x4

    int-to-long v7, v3

    .line 566
    invoke-interface {v2, v6, v7, v8}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x5

    .line 567
    invoke-interface {v2, v3, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 568
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->execute()Z

    .line 569
    invoke-virtual {p0, v1, v2}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    return-void
.end method
