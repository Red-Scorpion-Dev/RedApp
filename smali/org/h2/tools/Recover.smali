.class public Lorg/h2/tools/Recover;
.super Lorg/h2/util/Tool;
.source "Recover.java"

# interfaces
.implements Lorg/h2/store/DataHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/tools/Recover$PageInputStream;,
        Lorg/h2/tools/Recover$Stats;
    }
.end annotation


# instance fields
.field private columnTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private databaseName:Ljava/lang/String;

.field private lobMaps:Z

.field private objectIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageSize:I

.field private parents:[I

.field private recordLength:I

.field private remove:Z

.field private schema:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/MetaRecord;",
            ">;"
        }
    .end annotation
.end field

.field private stat:Lorg/h2/tools/Recover$Stats;

.field private storageId:I

.field private storageName:Ljava/lang/String;

.field private store:Lorg/h2/store/FileStore;

.field private tableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trace:Z

.field private transactionLog:Z

.field private valueId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method private checkParent(Ljava/io/PrintWriter;J[II)V
    .locals 3

    .line 1308
    aget p4, p4, p5

    if-ltz p4, :cond_1

    .line 1309
    iget-object v0, p0, Lorg/h2/tools/Recover;->parents:[I

    array-length v0, v0

    if-lt p4, v0, :cond_0

    goto :goto_0

    .line 1312
    :cond_0
    iget-object v0, p0, Lorg/h2/tools/Recover;->parents:[I

    aget v0, v0, p4

    int-to-long v0, v0

    cmp-long v2, v0, p2

    if-eqz v2, :cond_2

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- ERROR ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "] child["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " parent: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/h2/tools/Recover;->parents:[I

    aget p2, p2, p4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1310
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- ERROR ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "] child["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= page count: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/h2/tools/Recover;->parents:[I

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static closeSilently(Lorg/h2/store/FileStore;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1647
    invoke-virtual {p0}, Lorg/h2/store/FileStore;->closeSilently()V

    :cond_0
    return-void
.end method

.method private createRecord(Ljava/io/PrintWriter;Lorg/h2/store/Data;I)[Lorg/h2/value/Value;
    .locals 1

    .line 1458
    iput p3, p0, Lorg/h2/tools/Recover;->recordLength:I

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    const-string p3, "columnCount<0"

    .line 1460
    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    return-object v0

    .line 1465
    :cond_0
    :try_start_0
    new-array p3, p3, [Lorg/h2/value/Value;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    const-string p3, "out of memory"

    .line 1467
    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    return-object v0
.end method

.method private createTemporaryTable(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1591
    iget-object v0, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    iget v1, p0, Lorg/h2/tools/Recover;->storageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1592
    iget-object v0, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    iget v1, p0, Lorg/h2/tools/Recover;->storageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1593
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 1594
    iget-object v1, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    const/4 v1, 0x0

    .line 1595
    :goto_0
    iget v2, p0, Lorg/h2/tools/Recover;->recordLength:I

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    .line 1596
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const/16 v2, 0x43

    .line 1597
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 1598
    iget-object v2, p0, Lorg/h2/tools/Recover;->columnTypeMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "VARCHAR"

    .line 1600
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    .line 1602
    :cond_0
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ");"

    .line 1605
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_2
    return-void
.end method

.method private dumpLob(Ljava/lang/String;Z)V
    .locals 9

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, ".comp"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 395
    :try_start_0
    invoke-static {v0, v1}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v6, "r"

    .line 396
    invoke-static {v4, p1, v6}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 397
    :try_start_2
    invoke-virtual {p1}, Lorg/h2/store/FileStore;->init()V

    .line 398
    new-instance v6, Lorg/h2/store/FileStoreInputStream;

    invoke-direct {v6, p1, p0, p2, v1}, Lorg/h2/store/FileStoreInputStream;-><init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;ZZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 399
    :try_start_3
    invoke-static {v6, v5}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v7
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    invoke-static {v5}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 405
    invoke-static {v6}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    .line 406
    invoke-static {p1}, Lorg/h2/tools/Recover;->closeSilently(Lorg/h2/store/FileStore;)V

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v4, v6

    goto :goto_1

    :catch_0
    move-object v4, v6

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object p1, v4

    goto :goto_1

    :catch_1
    move-object p1, v4

    goto :goto_2

    :catchall_3
    move-exception p2

    move-object p1, v4

    move-object v5, p1

    .line 404
    :goto_1
    invoke-static {v5}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 405
    invoke-static {v4}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    .line 406
    invoke-static {p1}, Lorg/h2/tools/Recover;->closeSilently(Lorg/h2/store/FileStore;)V

    throw p2

    :catch_2
    move-object p1, v4

    move-object v5, p1

    .line 404
    :catch_3
    :goto_2
    invoke-static {v5}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 405
    invoke-static {v4}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    .line 406
    invoke-static {p1}, Lorg/h2/tools/Recover;->closeSilently(Lorg/h2/store/FileStore;)V

    move-wide v7, v2

    :goto_3
    cmp-long p1, v7, v2

    if-nez p1, :cond_1

    .line 410
    :try_start_4
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 412
    invoke-direct {p0, v0, p1}, Lorg/h2/tools/Recover;->traceError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    return-void
.end method

.method private dumpLobMaps(Ljava/io/PrintWriter;Lorg/h2/mvstore/MVStore;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "lobData"

    .line 688
    invoke-virtual {v0, v3}, Lorg/h2/mvstore/MVStore;->hasMap(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lorg/h2/tools/Recover;->lobMaps:Z

    .line 689
    iget-boolean v3, v1, Lorg/h2/tools/Recover;->lobMaps:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v3, "lobData"

    .line 692
    invoke-virtual {v0, v3}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v3

    .line 693
    new-instance v4, Lorg/h2/mvstore/StreamStore;

    invoke-direct {v4, v3}, Lorg/h2/mvstore/StreamStore;-><init>(Ljava/util/Map;)V

    const-string v5, "lobMap"

    .line 694
    invoke-virtual {v0, v5}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v5

    const-string v0, "-- LOB"

    .line 695
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS INFORMATION_SCHEMA.LOB_BLOCKS(LOB_ID BIGINT, SEQ INT, DATA BINARY, PRIMARY KEY(LOB_ID, SEQ));"

    .line 696
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v5}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 702
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 703
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 704
    aget-object v8, v8, v7

    check-cast v8, [B

    .line 705
    invoke-virtual {v4, v8}, Lorg/h2/mvstore/StreamStore;->get([B)Ljava/io/InputStream;

    move-result-object v8

    const/16 v11, 0x2000

    .line 707
    new-array v12, v11, [B

    const/4 v13, 0x0

    .line 710
    :goto_1
    :try_start_0
    array-length v14, v12

    invoke-static {v8, v12, v14}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v14

    .line 711
    invoke-static {v12, v14}, Lorg/h2/util/StringUtils;->convertBytesToHex([BI)Ljava/lang/String;

    move-result-object v15

    if-lez v14, :cond_1

    .line 713
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INSERT INTO INFORMATION_SCHEMA.LOB_BLOCKS VALUES("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", \'"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\');"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/16 v7, 0x2000

    if-eq v14, v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    const/16 v11, 0x2000

    goto :goto_1

    :catch_0
    move-exception v0

    .line 721
    invoke-direct {v1, v2, v0}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    :goto_2
    const/4 v7, 0x0

    goto :goto_0

    .line 725
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- lobMap.size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- lobData.size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/mvstore/MVMap;->sizeAsLong()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const-string v0, "-- lobMap"

    .line 729
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v5}, Lorg/h2/mvstore/MVMap;->keyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 731
    invoke-virtual {v5, v4}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 732
    aget-object v6, v6, v7

    check-cast v6, [B

    .line 733
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/h2/mvstore/StreamStore;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v0, "-- lobData"

    .line 735
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v3}, Lorg/h2/mvstore/MVMap;->keyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--     "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " len "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method private dumpMVStoreFile(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12

    const-string v0, "-- MVStore"

    .line 585
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE ALIAS IF NOT EXISTS READ_BLOB FOR \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".readBlob\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE ALIAS IF NOT EXISTS READ_CLOB FOR \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".readClob\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE ALIAS IF NOT EXISTS READ_BLOB_DB FOR \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".readBlobDb\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE ALIAS IF NOT EXISTS READ_CLOB_DB FOR \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".readClobDb\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE ALIAS IF NOT EXISTS READ_BLOB_MAP FOR \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".readBlobMap\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE ALIAS IF NOT EXISTS READ_CLOB_MAP FOR \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".readClobMap\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    invoke-direct {p0}, Lorg/h2/tools/Recover;->resetSchema()V

    .line 599
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ".mv.db"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/tools/Recover;->setDatabaseName(Ljava/lang/String;)V

    .line 601
    new-instance v0, Lorg/h2/mvstore/MVStore$Builder;

    invoke-direct {v0}, Lorg/h2/mvstore/MVStore$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lorg/h2/mvstore/MVStore$Builder;->fileName(Ljava/lang/String;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore$Builder;->readOnly()Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore$Builder;->open()Lorg/h2/mvstore/MVStore;

    move-result-object p2

    .line 603
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/Recover;->dumpLobMaps(Ljava/io/PrintWriter;Lorg/h2/mvstore/MVStore;)V

    const-string v0, "-- Meta"

    .line 604
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    invoke-static {p1, p2}, Lorg/h2/tools/Recover;->dumpMeta(Ljava/io/PrintWriter;Lorg/h2/mvstore/MVStore;)V

    const-string v0, "-- Tables"

    .line 606
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v0, Lorg/h2/mvstore/db/TransactionStore;

    invoke-direct {v0, p2}, Lorg/h2/mvstore/db/TransactionStore;-><init>(Lorg/h2/mvstore/MVStore;)V

    .line 609
    :try_start_0
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore;->init()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 611
    invoke-direct {p0, p1, v2}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 614
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore;->getMapNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "table."

    .line 615
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "table."

    .line 618
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 619
    new-instance v5, Lorg/h2/mvstore/db/ValueDataType;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0, v6}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 621
    new-instance v7, Lorg/h2/mvstore/db/ValueDataType;

    invoke-direct {v7, v6, p0, v6}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 623
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore;->begin()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v8

    invoke-virtual {v8, v3, v5, v7}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v3

    .line 625
    invoke-virtual {v3, v6}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    .line 627
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 628
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/value/Value;

    .line 629
    invoke-virtual {v3, v7}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/value/ValueArray;

    invoke-virtual {v7}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v7

    .line 630
    array-length v8, v7

    iput v8, p0, Lorg/h2/tools/Recover;->recordLength:I

    const/4 v8, 0x1

    if-nez v6, :cond_4

    .line 632
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 634
    iput v1, p0, Lorg/h2/tools/Recover;->valueId:I

    :goto_3
    iget v6, p0, Lorg/h2/tools/Recover;->valueId:I

    iget v9, p0, Lorg/h2/tools/Recover;->recordLength:I

    if-ge v6, v9, :cond_3

    .line 635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lorg/h2/tools/Recover;->valueId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 636
    iget v9, p0, Lorg/h2/tools/Recover;->valueId:I

    aget-object v9, v7, v9

    invoke-direct {p0, v6, v9}, Lorg/h2/tools/Recover;->getSQL(Ljava/lang/String;Lorg/h2/value/Value;)Ljava/lang/String;

    .line 634
    iget v6, p0, Lorg/h2/tools/Recover;->valueId:I

    add-int/2addr v6, v8

    iput v6, p0, Lorg/h2/tools/Recover;->valueId:I

    goto :goto_3

    .line 638
    :cond_3
    invoke-direct {p0, p1}, Lorg/h2/tools/Recover;->createTemporaryTable(Ljava/io/PrintWriter;)V

    const/4 v6, 0x1

    .line 641
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "INSERT INTO O_"

    .line 642
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " VALUES("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iput v1, p0, Lorg/h2/tools/Recover;->valueId:I

    :goto_4
    iget v10, p0, Lorg/h2/tools/Recover;->valueId:I

    iget v11, p0, Lorg/h2/tools/Recover;->recordLength:I

    if-ge v10, v11, :cond_6

    .line 645
    iget v10, p0, Lorg/h2/tools/Recover;->valueId:I

    if-lez v10, :cond_5

    const-string v10, ", "

    .line 646
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lorg/h2/tools/Recover;->valueId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 649
    iget v11, p0, Lorg/h2/tools/Recover;->valueId:I

    aget-object v11, v7, v11

    invoke-direct {p0, v10, v11}, Lorg/h2/tools/Recover;->getSQL(Ljava/lang/String;Lorg/h2/value/Value;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget v10, p0, Lorg/h2/tools/Recover;->valueId:I

    add-int/2addr v10, v8

    iput v10, p0, Lorg/h2/tools/Recover;->valueId:I

    goto :goto_4

    :cond_6
    const-string v8, ");"

    .line 651
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    iget v8, p0, Lorg/h2/tools/Recover;->storageId:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_2

    .line 655
    :try_start_2
    new-instance v8, Lorg/h2/result/SimpleRow;

    invoke-direct {v8, v7}, Lorg/h2/result/SimpleRow;-><init>([Lorg/h2/value/Value;)V

    .line 656
    new-instance v9, Lorg/h2/engine/MetaRecord;

    invoke-direct {v9, v8}, Lorg/h2/engine/MetaRecord;-><init>(Lorg/h2/result/SearchRow;)V

    .line 657
    iget-object v8, p0, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-virtual {v9}, Lorg/h2/engine/MetaRecord;->getObjectType()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x3

    .line 659
    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v7

    .line 660
    invoke-static {v7}, Lorg/h2/tools/Recover;->extractTableOrViewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 661
    iget-object v8, p0, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Lorg/h2/engine/MetaRecord;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v7

    .line 664
    :try_start_3
    invoke-direct {p0, p1, v7}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 669
    :cond_7
    invoke-direct {p0, p1}, Lorg/h2/tools/Recover;->writeSchema(Ljava/io/PrintWriter;)V

    const-string v0, "DROP ALIAS READ_BLOB_MAP;"

    .line 670
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "DROP ALIAS READ_CLOB_MAP;"

    .line 671
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS INFORMATION_SCHEMA.LOB_BLOCKS;"

    .line 672
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception v0

    .line 674
    :try_start_4
    invoke-direct {p0, p1, v0}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 676
    :goto_5
    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore;->close()V

    return-void

    :goto_6
    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore;->close()V

    throw p1
.end method

.method private static dumpMeta(Ljava/io/PrintWriter;Lorg/h2/mvstore/MVStore;)V
    .locals 3

    .line 681
    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->getMetaMap()Lorg/h2/mvstore/MVMap;

    move-result-object p1

    .line 682
    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpPage(Ljava/io/PrintWriter;Lorg/h2/store/Data;JJ)V
    .locals 11

    move-object v9, p0

    move-object v10, p1

    move-wide v5, p3

    .line 778
    :try_start_0
    invoke-virtual {p2}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v0, v0, -0x11

    .line 786
    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    long-to-int v3, v5

    iget v7, v9, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {v2, v3, v7}, Lorg/h2/store/PageStore;->checksumTest([BII)Z

    move-result v2

    if-nez v2, :cond_1

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checksum mismatch type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    .line 789
    :cond_1
    invoke-virtual {p2}, Lorg/h2/store/Data;->readShortInt()S

    packed-switch v0, :pswitch_data_0

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 862
    :pswitch_0
    iget-object v2, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v2, v2, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": log data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 857
    :pswitch_1
    iget-object v2, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v2, v2, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": log trunk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 851
    :pswitch_2
    iget-object v2, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v2, v2, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": free list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    const-string v1, "(last)"

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    iget-object v0, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget v1, v0, Lorg/h2/tools/Recover$Stats;->free:I

    invoke-direct/range {p0 .. p6}, Lorg/h2/tools/Recover;->dumpPageFreeList(Ljava/io/PrintWriter;Lorg/h2/store/Data;JJ)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/h2/tools/Recover$Stats;->free:I

    goto/16 :goto_8

    .line 841
    :pswitch_3
    iget-object v2, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v2, v2, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 842
    invoke-virtual {p2}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    .line 843
    invoke-virtual {p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ": b-tree node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    const-string v3, "(last) "

    goto :goto_2

    :cond_3
    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " index: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    xor-int/lit8 v0, v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, v0

    .line 847
    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->dumpPageBtreeNode(Ljava/io/PrintWriter;Lorg/h2/store/Data;JZ)V

    goto/16 :goto_8

    .line 827
    :pswitch_4
    iget-object v2, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v2, v2, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 828
    invoke-virtual {p2}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    .line 829
    invoke-virtual {p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 830
    invoke-virtual {p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v2

    .line 831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- page "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ": b-tree leaf "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    const-string v5, "(last) "

    goto :goto_3

    :cond_4
    const-string v5, ""

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "parent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " index: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    iget-boolean v0, v9, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v0, :cond_9

    xor-int/lit8 v0, v4, 0x1

    move-object v3, p2

    .line 835
    invoke-direct {p0, p1, p2, v2, v0}, Lorg/h2/tools/Recover;->dumpPageBtreeLeaf(Ljava/io/PrintWriter;Lorg/h2/store/Data;IZ)V

    goto/16 :goto_8

    .line 821
    :pswitch_5
    iget-object v2, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v2, v2, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": data overflow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    const-string v1, "(last) "

    goto :goto_4

    :cond_5
    const-string v1, ""

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_6
    move-object v3, p2

    .line 807
    iget-object v2, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v2, v2, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v7, v2, v0

    add-int/2addr v7, v1

    aput v7, v2, v0

    .line 808
    invoke-virtual {p2}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    .line 809
    invoke-virtual {p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 810
    invoke-virtual {p2}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    .line 811
    invoke-virtual {p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v7

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-- page "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ": data node "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_6

    const-string v4, "(last) "

    goto :goto_5

    :cond_6
    const-string v4, ""

    :goto_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "parent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " table: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rowCount: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, v7

    .line 816
    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->dumpPageDataNode(Ljava/io/PrintWriter;Lorg/h2/store/Data;JI)V

    goto/16 :goto_8

    :pswitch_7
    move-object v3, p2

    .line 793
    iget-object v2, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v2, v2, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v7, v2, v0

    add-int/2addr v7, v1

    aput v7, v2, v0

    .line 794
    invoke-virtual {p2}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    .line 795
    invoke-virtual {p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 796
    invoke-virtual {p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result v7

    .line 797
    invoke-virtual {p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v8

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ": data leaf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_7

    const-string v2, "(last) "

    goto :goto_6

    :cond_7
    const-string v2, ""

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " table: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " columns: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    .line 802
    invoke-direct/range {v1 .. v8}, Lorg/h2/tools/Recover;->dumpPageDataLeaf(Ljava/io/PrintWriter;Lorg/h2/store/Data;ZJII)V

    goto :goto_8

    .line 866
    :goto_7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- ERROR page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 781
    :cond_8
    iget-object v2, v9, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v2, v2, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 870
    invoke-direct {p0, p1, v0}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpPageBtreeLeaf(Ljava/io/PrintWriter;Lorg/h2/store/Data;IZ)V
    .locals 7

    .line 1278
    new-array v0, p3, [I

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_0
    if-ge v2, p3, :cond_0

    .line 1281
    invoke-virtual {p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v4

    .line 1282
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1283
    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1285
    :cond_0
    invoke-virtual {p2}, Lorg/h2/store/Data;->length()I

    move-result v2

    sub-int/2addr v3, v2

    .line 1286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--   empty: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    if-ge v1, p3, :cond_2

    .line 1288
    aget v2, v0, v1

    .line 1289
    invoke-virtual {p2, v2}, Lorg/h2/store/Data;->setPos(I)V

    .line 1290
    invoke-virtual {p2}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v2

    if-eqz p4, :cond_1

    .line 1293
    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v4

    goto :goto_2

    .line 1296
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v2

    .line 1298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private dumpPageBtreeNode(Ljava/io/PrintWriter;Lorg/h2/store/Data;JZ)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    .line 1202
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v9

    .line 1203
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v10

    add-int/lit8 v0, v10, 0x1

    .line 1204
    new-array v11, v0, [I

    .line 1205
    new-array v12, v10, [I

    .line 1206
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    aput v0, v11, v10

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-object v5, v11

    move v6, v10

    .line 1207
    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->checkParent(Ljava/io/PrintWriter;J[II)V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v13, 0x0

    const v14, 0x7fffffff

    :goto_0
    if-ge v13, v10, :cond_0

    .line 1210
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    aput v1, v11, v13

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-object v5, v11

    move v6, v13

    .line 1211
    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->checkParent(Ljava/io/PrintWriter;J[II)V

    .line 1212
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v1

    .line 1213
    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1214
    aput v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1216
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->length()I

    move-result v1

    sub-int/2addr v14, v1

    .line 1217
    iget-boolean v1, v7, Lorg/h2/tools/Recover;->trace:Z

    if-nez v1, :cond_1

    return-void

    .line 1220
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--   empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v10, :cond_3

    .line 1222
    aget v0, v12, v1

    move-object/from16 v2, p2

    .line 1223
    invoke-virtual {v2, v0}, Lorg/h2/store/Data;->setPos(I)V

    .line 1224
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v3

    if-eqz p5, :cond_2

    .line 1227
    invoke-static {v3, v4}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    goto :goto_2

    .line 1230
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-- ["

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] child: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v11, v1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " key: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " data: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v8, v0, v3}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1239
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] child: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v11, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rowCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpPageDataLeaf(Ljava/io/PrintWriter;Lorg/h2/store/Data;ZJII)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p7

    .line 1340
    new-array v10, v9, [J

    .line 1341
    new-array v11, v9, [I

    if-nez p3, :cond_0

    .line 1344
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    int-to-long v1, v1

    .line 1345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--   next: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 1347
    :goto_0
    iget v3, v6, Lorg/h2/tools/Recover;->pageSize:I

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_1

    .line 1349
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v15

    aput-wide v15, v10, v3

    .line 1350
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->readShortInt()S

    move-result v5

    .line 1351
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1352
    aput v5, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1354
    :cond_1
    iget-object v3, v6, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v12, v3, Lorg/h2/tools/Recover$Stats;->pageDataRows:J

    iget v5, v6, Lorg/h2/tools/Recover;->pageSize:I

    sub-int/2addr v5, v4

    int-to-long v14, v5

    add-long/2addr v12, v14

    iput-wide v12, v3, Lorg/h2/tools/Recover$Stats;->pageDataRows:J

    .line 1355
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->length()I

    move-result v3

    sub-int/2addr v4, v3

    .line 1356
    iget-object v3, v6, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v12, v3, Lorg/h2/tools/Recover$Stats;->pageDataHead:J

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->length()I

    move-result v5

    int-to-long v14, v5

    add-long/2addr v12, v14

    iput-wide v12, v3, Lorg/h2/tools/Recover$Stats;->pageDataHead:J

    .line 1357
    iget-object v3, v6, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v12, v3, Lorg/h2/tools/Recover$Stats;->pageDataEmpty:J

    int-to-long v14, v4

    add-long/2addr v12, v14

    iput-wide v12, v3, Lorg/h2/tools/Recover$Stats;->pageDataEmpty:J

    .line 1358
    iget-boolean v3, v6, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v3, :cond_2

    .line 1359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--   empty: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v13, 0x1

    if-nez p3, :cond_6

    .line 1362
    iget v0, v6, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {v6, v0}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v14

    .line 1363
    iget v0, v6, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v8, v0}, Lorg/h2/store/Data;->setPos(I)V

    move-wide v4, v1

    move-wide/from16 v2, p4

    .line 1366
    :goto_2
    new-array v15, v13, [I

    long-to-int v0, v4

    const/4 v1, 0x0

    aput v0, v15, v1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v12, v4

    move-object v4, v15

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/h2/tools/Recover;->checkParent(Ljava/io/PrintWriter;J[II)V

    .line 1368
    invoke-direct {v6, v12, v13}, Lorg/h2/tools/Recover;->seek(J)V

    .line 1369
    iget-object v0, v6, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v14}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    iget v2, v6, Lorg/h2/tools/Recover;->pageSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 1370
    invoke-virtual {v14}, Lorg/h2/store/Data;->reset()V

    .line 1371
    invoke-virtual {v14}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    .line 1372
    invoke-virtual {v14}, Lorg/h2/store/Data;->readShortInt()S

    .line 1373
    invoke-virtual {v14}, Lorg/h2/store/Data;->readInt()I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3

    .line 1375
    invoke-virtual {v14}, Lorg/h2/store/Data;->readShortInt()S

    move-result v1

    .line 1376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- chain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " size: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {v8, v1}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 1379
    invoke-virtual {v14}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    invoke-virtual {v14}, Lorg/h2/store/Data;->length()I

    move-result v2

    invoke-virtual {v8, v0, v2, v1}, Lorg/h2/store/Data;->write([BII)V

    goto :goto_3

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1382
    invoke-virtual {v14}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v1, 0x0

    cmp-long v3, v4, v1

    if-nez v3, :cond_4

    const-string v0, "next:0"

    .line 1384
    invoke-virtual {v14}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    invoke-direct {v6, v7, v0, v1}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    goto :goto_3

    .line 1387
    :cond_4
    iget v3, v6, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v14}, Lorg/h2/store/Data;->length()I

    move-result v15

    sub-int/2addr v3, v15

    .line 1388
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- chain: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " size: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " next: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v8, v3}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 1391
    invoke-virtual {v14}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    invoke-virtual {v14}, Lorg/h2/store/Data;->length()I

    move-result v1

    invoke-virtual {v8, v0, v1, v3}, Lorg/h2/store/Data;->write([BII)V

    move-wide v2, v12

    const/4 v13, 0x1

    goto/16 :goto_2

    .line 1393
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    invoke-direct {v6, v7, v0, v1}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v9, :cond_c

    .line 1399
    aget-wide v1, v10, v0

    .line 1400
    aget v3, v11, v0

    .line 1401
    iget-boolean v4, v6, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v4, :cond_7

    .line 1402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " off: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    :cond_7
    invoke-virtual {v8, v3}, Lorg/h2/store/Data;->setPos(I)V

    move/from16 v1, p6

    .line 1406
    invoke-direct {v6, v7, v8, v1}, Lorg/h2/tools/Recover;->createRecord(Ljava/io/PrintWriter;Lorg/h2/store/Data;I)[Lorg/h2/value/Value;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1408
    invoke-direct/range {p0 .. p1}, Lorg/h2/tools/Recover;->createTemporaryTable(Ljava/io/PrintWriter;)V

    .line 1409
    invoke-direct {v6, v7, v8, v2}, Lorg/h2/tools/Recover;->writeRow(Ljava/io/PrintWriter;Lorg/h2/store/Data;[Lorg/h2/value/Value;)V

    .line 1410
    iget-boolean v4, v6, Lorg/h2/tools/Recover;->remove:Z

    if-eqz v4, :cond_b

    iget v4, v6, Lorg/h2/tools/Recover;->storageId:I

    if-nez v4, :cond_b

    const/4 v4, 0x3

    .line 1411
    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "CREATE USER "

    .line 1412
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1413
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v5

    const-string v12, "SALT "

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v5, v12, v3}, Lorg/h2/util/Utils;->indexOf([B[BI)I

    move-result v3

    if-ltz v3, :cond_b

    const-string v5, "CREATE USER "

    .line 1415
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v12, "SALT "

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v2, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "IF NOT EXISTS "

    .line 1417
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "IF NOT EXISTS "

    .line 1418
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_8
    const-string v5, "\""

    .line 1420
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1423
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    invoke-virtual {v2, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_9
    const/4 v12, 0x1

    :goto_5
    const-string v5, ""

    .line 1425
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v2, v5}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object v5

    const/16 v13, 0x8

    .line 1427
    invoke-static {v13}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object v13

    .line 1428
    invoke-static {v5, v13}, Lorg/h2/security/SHA256;->getHashWithSalt([B[B)[B

    move-result-object v5

    .line 1430
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SALT \'"

    .line 1431
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\' HASH \'"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x27

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1436
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1437
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v13

    array-length v14, v5

    const/4 v15, 0x0

    invoke-static {v5, v15, v13, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-wide/from16 v13, p4

    .line 1439
    invoke-direct {v6, v13, v14}, Lorg/h2/tools/Recover;->seek(J)V

    .line 1440
    iget-object v3, v6, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v5

    iget v4, v6, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v3, v5, v15, v4}, Lorg/h2/store/FileStore;->write([BII)V

    .line 1441
    iget-boolean v3, v6, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v3, :cond_a

    .line 1442
    iget-object v3, v6, Lorg/h2/tools/Recover;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    const/4 v2, 0x0

    .line 1444
    iput-boolean v2, v6, Lorg/h2/tools/Recover;->remove:Z

    goto :goto_6

    :cond_b
    move-wide/from16 v13, p4

    const/4 v2, 0x0

    const/4 v12, 0x1

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_c
    return-void
.end method

.method private dumpPageDataNode(Ljava/io/PrintWriter;Lorg/h2/store/Data;JI)V
    .locals 10

    add-int/lit8 v0, p5, 0x1

    .line 1320
    new-array v0, v0, [I

    .line 1321
    new-array v7, p5, [J

    .line 1322
    invoke-virtual {p2}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    aput v1, v0, p5

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move-object v5, v0

    move v6, p5

    .line 1323
    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->checkParent(Ljava/io/PrintWriter;J[II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, p5, :cond_0

    .line 1325
    invoke-virtual {p2}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    aput v1, v0, v9

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move-object v5, v0

    move v6, v9

    .line 1326
    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/Recover;->checkParent(Ljava/io/PrintWriter;J[II)V

    .line 1327
    invoke-virtual {p2}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v1

    aput-wide v1, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1329
    :cond_0
    iget-boolean p2, p0, Lorg/h2/tools/Recover;->trace:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ge v8, p5, :cond_2

    .line 1333
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-- ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] child: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, v0, v8

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " key: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide p3, v7, v8

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1335
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-- ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] child: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, v0, p5

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpPageFreeList(Ljava/io/PrintWriter;Lorg/h2/store/Data;JJ)I
    .locals 9

    .line 1245
    iget v0, p0, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {v0}, Lorg/h2/store/PageFreeList;->getPagesAddressed(I)I

    move-result v0

    .line 1246
    new-instance v1, Lorg/h2/util/BitField;

    invoke-direct {v1}, Lorg/h2/util/BitField;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1248
    invoke-virtual {p2}, Lorg/h2/store/Data;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    const/4 v6, 0x1

    shl-int/2addr v6, v5

    and-int/2addr v6, v4

    if-eqz v6, :cond_0

    add-int v6, v3, v5

    .line 1251
    invoke-virtual {v1, v6}, Lorg/h2/util/BitField;->set(I)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x8

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    move-wide v5, p3

    move-wide p2, v3

    :goto_2
    int-to-long v7, v0

    cmp-long p4, p2, v7

    if-gez p4, :cond_a

    cmp-long p4, v5, p5

    if-gez p4, :cond_a

    cmp-long p4, p2, v3

    if-eqz p4, :cond_5

    const-wide/16 v7, 0x64

    .line 1257
    rem-long v7, v5, v7

    cmp-long p4, v7, v3

    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v7, 0x14

    .line 1262
    rem-long v7, v5, v7

    cmp-long p4, v7, v3

    if-nez p4, :cond_4

    const-string p4, " - "

    .line 1263
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-wide/16 v7, 0xa

    .line 1264
    rem-long v7, v5, v7

    cmp-long p4, v7, v3

    if-nez p4, :cond_7

    const/16 p4, 0x20

    .line 1265
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_4

    :cond_5
    :goto_3
    cmp-long p4, p2, v3

    if-lez p4, :cond_6

    .line 1259
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1261
    :cond_6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- "

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    :goto_4
    long-to-int p4, p2

    .line 1267
    invoke-virtual {v1, p4}, Lorg/h2/util/BitField;->get(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x31

    goto :goto_5

    :cond_8
    const/16 v7, 0x30

    :goto_5
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 1268
    invoke-virtual {v1, p4}, Lorg/h2/util/BitField;->get(I)Z

    move-result p4

    if-nez p4, :cond_9

    add-int/lit8 v2, v2, 0x1

    :cond_9
    const-wide/16 v7, 0x1

    add-long/2addr p2, v7

    add-long/2addr v5, v7

    goto :goto_2

    .line 1272
    :cond_a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return v2
.end method

.method private dumpPageLogStream(Ljava/io/PrintWriter;IIIJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 877
    iget v1, v11, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {v11, v1}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v12

    .line 878
    new-instance v13, Lorg/h2/store/DataReader;

    new-instance v14, Lorg/h2/tools/Recover$PageInputStream;

    iget-object v4, v11, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    move/from16 v1, p3

    int-to-long v6, v1

    move/from16 v1, p4

    int-to-long v8, v1

    iget v10, v11, Lorg/h2/tools/Recover;->pageSize:I

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v5, p2

    invoke-direct/range {v1 .. v10}, Lorg/h2/tools/Recover$PageInputStream;-><init>(Ljava/io/PrintWriter;Lorg/h2/store/DataHandler;Lorg/h2/store/FileStore;IJJI)V

    invoke-direct {v13, v14}, Lorg/h2/store/DataReader;-><init>(Ljava/io/InputStream;)V

    const-string v1, "---- Transaction log ----"

    .line 882
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    new-instance v9, Lorg/h2/compress/CompressLZF;

    invoke-direct {v9}, Lorg/h2/compress/CompressLZF;-><init>()V

    .line 885
    :cond_0
    :goto_0
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    if-gez v1, :cond_1

    goto/16 :goto_b

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    const/4 v14, 0x1

    if-ne v1, v14, :cond_c

    .line 892
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    .line 893
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v5

    .line 894
    iget v2, v11, Lorg/h2/tools/Recover;->pageSize:I

    new-array v15, v2, [B

    if-nez v5, :cond_3

    .line 896
    iget v2, v11, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v13, v15, v2}, Lorg/h2/store/DataReader;->readFully([BI)V

    goto :goto_1

    :cond_3
    if-ne v5, v14, :cond_4

    goto :goto_1

    .line 900
    :cond_4
    new-array v3, v5, [B

    .line 901
    invoke-virtual {v13, v3, v5}, Lorg/h2/store/DataReader;->readFully([BI)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 903
    :try_start_0
    iget v8, v11, Lorg/h2/tools/Recover;->pageSize:I

    move-object v2, v9

    move-object v6, v15

    invoke-virtual/range {v2 .. v8}, Lorg/h2/compress/CompressLZF;->expand([BII[BII)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :goto_1
    aget-byte v2, v15, v10

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_5

    const/4 v10, 0x1

    :cond_5
    and-int/lit8 v2, v2, -0x11

    packed-switch v2, :pswitch_data_0

    .line 941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: unknown type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :pswitch_0
    const-string v2, "log data"

    goto/16 :goto_8

    :pswitch_1
    const-string v2, "log trunk"

    goto/16 :goto_8

    .line 932
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "free list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_6

    const-string v3, "(last)"

    goto :goto_2

    :cond_6
    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    .line 929
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "b-tree node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_7

    const-string v3, "(last)"

    goto :goto_3

    :cond_7
    const-string v3, ""

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 926
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "b-tree leaf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_8

    const-string v3, "(last)"

    goto :goto_4

    :cond_8
    const-string v3, ""

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 923
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data overflow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_9

    const-string v3, "(last)"

    goto :goto_5

    :cond_9
    const-string v3, ""

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 920
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_a

    const-string v3, "(last)"

    goto :goto_6

    :cond_a
    const-string v3, ""

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 917
    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data leaf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_b

    const-string v3, "(last)"

    goto :goto_7

    :cond_b
    const-string v3, ""

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :pswitch_8
    const-string v2, "empty"

    .line 944
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- undo page "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    iget-boolean v2, v11, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 946
    invoke-static {v2, v15}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;[B)Lorg/h2/store/Data;

    move-result-object v3

    int-to-long v4, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p5

    .line 947
    invoke-direct/range {v1 .. v7}, Lorg/h2/tools/Recover;->dumpPage(Ljava/io/PrintWriter;Lorg/h2/store/Data;JJ)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 905
    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-ne v1, v2, :cond_10

    .line 950
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    .line 951
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v2

    invoke-direct {v11, v2}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 952
    sget-object v2, Lorg/h2/result/RowFactory;->DEFAULT:Lorg/h2/result/RowFactory;

    invoke-static {v2, v13, v12}, Lorg/h2/store/PageLog;->readRow(Lorg/h2/result/RowFactory;Lorg/h2/store/DataReader;Lorg/h2/store/Data;)Lorg/h2/result/Row;

    move-result-object v2

    .line 953
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " table "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    iget-boolean v1, v11, Lorg/h2/tools/Recover;->transactionLog:Z

    if-eqz v1, :cond_0

    .line 957
    iget v1, v11, Lorg/h2/tools/Recover;->storageId:I

    if-nez v1, :cond_e

    invoke-virtual {v2}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v1

    if-lt v1, v5, :cond_e

    .line 958
    invoke-virtual {v2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v5

    long-to-int v1, v5

    .line 959
    invoke-virtual {v2, v3}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    .line 960
    invoke-static {v3}, Lorg/h2/tools/Recover;->extractTableOrViewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 961
    invoke-virtual {v2, v4}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-nez v2, :cond_d

    .line 962
    iget-object v2, v11, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 966
    :cond_e
    iget-object v1, v11, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    iget v3, v11, Lorg/h2/tools/Recover;->storageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 968
    new-instance v3, Lorg/h2/util/StatementBuilder;

    invoke-direct {v3}, Lorg/h2/util/StatementBuilder;-><init>()V

    const-string v4, "INSERT INTO "

    .line 969
    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v4, " VALUES("

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 971
    :goto_9
    invoke-virtual {v2}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v1

    if-ge v10, v1, :cond_f

    const-string v1, ", "

    .line 972
    invoke-virtual {v3, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v2, v10}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_f
    const-string v1, ");"

    .line 975
    invoke-virtual {v3, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 976
    invoke-virtual {v3}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x6

    if-ne v1, v2, :cond_12

    .line 981
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    .line 982
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v2

    invoke-direct {v11, v2}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 983
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarLong()J

    move-result-wide v2

    .line 984
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " table "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    iget-boolean v1, v11, Lorg/h2/tools/Recover;->transactionLog:Z

    if-eqz v1, :cond_0

    .line 988
    iget v1, v11, Lorg/h2/tools/Recover;->storageId:I

    if-nez v1, :cond_11

    long-to-int v1, v2

    .line 990
    iget-object v2, v11, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 995
    :cond_11
    iget-object v1, v11, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    iget v4, v11, Lorg/h2/tools/Recover;->storageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE _ROWID_ = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 999
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x7

    if-ne v1, v2, :cond_13

    .line 1004
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    .line 1005
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v2

    invoke-direct {v11, v2}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " table "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " truncate"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    iget-boolean v1, v11, Lorg/h2/tools/Recover;->transactionLog:Z

    if-eqz v1, :cond_0

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRUNCATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    if-ne v1, v4, :cond_14

    .line 1013
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- commit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    if-ne v1, v5, :cond_15

    .line 1016
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    .line 1017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- rollback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    if-ne v1, v3, :cond_16

    .line 1019
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    .line 1020
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- prepare commit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x8

    if-ne v1, v2, :cond_18

    const-string v1, "-- checkpoint"

    .line 1025
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0x9

    if-ne v1, v2, :cond_1a

    .line 1027
    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v1

    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-- free"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_a
    if-ge v10, v1, :cond_19

    const/16 v3, 0x20

    .line 1030
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 1032
    :cond_19
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1034
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- ERROR: unknown operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpPageStore(Ljava/io/PrintWriter;J)V
    .locals 9

    .line 767
    iget v0, p0, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {p0, v0}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    const-wide/16 v0, 0x3

    :goto_0
    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    .line 769
    iget v2, p0, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {p0, v2}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v4

    .line 770
    invoke-direct {p0, v0, v1}, Lorg/h2/tools/Recover;->seek(J)V

    .line 771
    iget-object v2, p0, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v4}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    const/4 v5, 0x0

    iget v6, p0, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v2, v3, v5, v6}, Lorg/h2/store/FileStore;->readFully([BII)V

    move-object v2, p0

    move-object v3, p1

    move-wide v5, v0

    move-wide v7, p2

    .line 772
    invoke-direct/range {v2 .. v8}, Lorg/h2/tools/Recover;->dumpPage(Ljava/io/PrintWriter;Lorg/h2/store/Data;JJ)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpPageStore(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    .line 463
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".h2.db"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/tools/Recover;->setDatabaseName(Ljava/lang/String;)V

    .line 466
    new-instance v2, Lorg/h2/tools/Recover$Stats;

    invoke-direct {v2}, Lorg/h2/tools/Recover$Stats;-><init>()V

    iput-object v2, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, ".sql"

    .line 468
    invoke-direct {v8, v1, v3}, Lorg/h2/tools/Recover;->getWriter(Ljava/lang/String;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 469
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE ALIAS IF NOT EXISTS READ_BLOB FOR \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".readBlob\";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE ALIAS IF NOT EXISTS READ_CLOB FOR \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".readClob\";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE ALIAS IF NOT EXISTS READ_BLOB_DB FOR \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".readBlobDb\";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE ALIAS IF NOT EXISTS READ_CLOB_DB FOR \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".readClobDb\";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    invoke-direct/range {p0 .. p0}, Lorg/h2/tools/Recover;->resetSchema()V

    .line 478
    iget-boolean v3, v8, Lorg/h2/tools/Recover;->remove:Z

    if-eqz v3, :cond_0

    const-string v3, "rw"

    goto :goto_0

    :cond_0
    const-string v3, "r"

    :goto_0
    invoke-static {v2, v1, v3}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;

    move-result-object v1

    iput-object v1, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    .line 479
    iget-object v1, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v1}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :try_start_2
    iget-object v3, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v3}, Lorg/h2/store/FileStore;->init()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 483
    :try_start_3
    invoke-direct {v8, v10, v3}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    :goto_1
    const/16 v3, 0x80

    .line 485
    invoke-static {v8, v3}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 486
    invoke-direct {v8, v5, v6}, Lorg/h2/tools/Recover;->seek(J)V

    .line 487
    iget-object v5, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v4}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6, v9, v3}, Lorg/h2/store/FileStore;->readFully([BII)V

    const/16 v3, 0x30

    .line 488
    invoke-virtual {v4, v3}, Lorg/h2/store/Data;->setPos(I)V

    .line 489
    invoke-virtual {v4}, Lorg/h2/store/Data;->readInt()I

    move-result v3

    iput v3, v8, Lorg/h2/tools/Recover;->pageSize:I

    .line 490
    invoke-virtual {v4}, Lorg/h2/store/Data;->readByte()B

    move-result v3

    .line 491
    invoke-virtual {v4}, Lorg/h2/store/Data;->readByte()B

    move-result v4

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- pageSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " writeVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " readVersion: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    iget v3, v8, Lorg/h2/tools/Recover;->pageSize:I

    const/16 v4, 0x40

    if-lt v3, v4, :cond_1

    iget v3, v8, Lorg/h2/tools/Recover;->pageSize:I

    const v4, 0x8000

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v3, 0x1000

    .line 497
    iput v3, v8, Lorg/h2/tools/Recover;->pageSize:I

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- ERROR: page size; using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    :cond_2
    iget v3, v8, Lorg/h2/tools/Recover;->pageSize:I

    int-to-long v3, v3

    div-long v11, v1, v3

    long-to-int v1, v11

    .line 501
    new-array v1, v1, [I

    iput-object v1, v8, Lorg/h2/tools/Recover;->parents:[I

    .line 502
    iget v1, v8, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {v8, v1}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v1

    const-wide/16 v2, 0x3

    move-wide v4, v2

    :goto_2
    const-wide/16 v13, 0x1

    cmp-long v6, v4, v11

    if-gez v6, :cond_3

    .line 504
    invoke-virtual {v1}, Lorg/h2/store/Data;->reset()V

    .line 505
    invoke-direct {v8, v4, v5}, Lorg/h2/tools/Recover;->seek(J)V

    .line 506
    iget-object v6, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v7

    const/16 v15, 0x20

    invoke-virtual {v6, v7, v9, v15}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 507
    invoke-virtual {v1}, Lorg/h2/store/Data;->readByte()B

    .line 508
    invoke-virtual {v1}, Lorg/h2/store/Data;->readShortInt()S

    .line 509
    iget-object v6, v8, Lorg/h2/tools/Recover;->parents:[I

    long-to-int v7, v4

    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v15

    aput v15, v6, v7

    const/4 v6, 0x0

    add-long/2addr v4, v13

    goto :goto_2

    .line 512
    :cond_3
    iget v1, v8, Lorg/h2/tools/Recover;->pageSize:I

    invoke-static {v8, v1}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v1

    move-wide v4, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_3
    cmp-long v16, v4, v2

    if-nez v16, :cond_6

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- log "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Lorg/h2/tools/Recover$2;

    invoke-direct {v2, v8}, Lorg/h2/tools/Recover$2;-><init>(Lorg/h2/tools/Recover;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 548
    invoke-direct {v8, v1, v11, v12}, Lorg/h2/tools/Recover;->dumpPageStore(Ljava/io/PrintWriter;J)V

    .line 549
    new-instance v1, Lorg/h2/tools/Recover$Stats;

    invoke-direct {v1}, Lorg/h2/tools/Recover$Stats;-><init>()V

    iput-object v1, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    .line 550
    iget-object v1, v8, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 551
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, v8, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    .line 552
    invoke-direct {v8, v10, v11, v12}, Lorg/h2/tools/Recover;->dumpPageStore(Ljava/io/PrintWriter;J)V

    .line 553
    invoke-direct {v8, v10}, Lorg/h2/tools/Recover;->writeSchema(Ljava/io/PrintWriter;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, p0

    move-object v2, v10

    move v3, v6

    move v4, v7

    move v5, v15

    move-wide v6, v11

    .line 555
    :try_start_4
    invoke-direct/range {v1 .. v7}, Lorg/h2/tools/Recover;->dumpPageLogStream(Ljava/io/PrintWriter;IIIJ)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :try_start_5
    const-string v1, "---- Statistics ----"

    .line 560
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- page count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", free: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget v2, v2, Lorg/h2/tools/Recover$Stats;->free:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    iget-object v1, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v1, v1, Lorg/h2/tools/Recover$Stats;->pageDataRows:J

    iget-object v3, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v3, v3, Lorg/h2/tools/Recover$Stats;->pageDataEmpty:J

    const/4 v5, 0x0

    add-long/2addr v1, v3

    iget-object v3, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v3, v3, Lorg/h2/tools/Recover$Stats;->pageDataHead:J

    const/4 v5, 0x0

    add-long/2addr v1, v3

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- page data bytes: head "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v4, v4, Lorg/h2/tools/Recover$Stats;->pageDataHead:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", empty "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v4, v4, Lorg/h2/tools/Recover$Stats;->pageDataEmpty:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", rows "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v4, v4, Lorg/h2/tools/Recover$Stats;->pageDataRows:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-wide v4, v4, Lorg/h2/tools/Recover$Stats;->pageDataEmpty:J

    const-wide/16 v6, 0x64

    mul-long v4, v4, v6

    div-long/2addr v4, v1

    const/4 v1, 0x0

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "% full)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    :goto_4
    iget-object v1, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v1, v1, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    array-length v1, v1

    if-ge v9, v1, :cond_5

    .line 569
    iget-object v1, v8, Lorg/h2/tools/Recover;->stat:Lorg/h2/tools/Recover$Stats;

    iget-object v1, v1, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    aget v1, v1, v9

    if-lez v1, :cond_4

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lorg/h2/tools/Recover;->getPageType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x64

    int-to-long v3, v3

    div-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "%, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " page(s)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 575
    :cond_5
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 579
    invoke-static {v10}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Writer;)V

    goto/16 :goto_8

    .line 517
    :cond_6
    :try_start_6
    invoke-virtual {v1}, Lorg/h2/store/Data;->reset()V

    .line 518
    invoke-direct {v8, v4, v5}, Lorg/h2/tools/Recover;->seek(J)V

    .line 519
    iget-object v2, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    iget v13, v8, Lorg/h2/tools/Recover;->pageSize:I

    invoke-virtual {v2, v3, v9, v13}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 520
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 521
    invoke-virtual {v1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    iget v13, v8, Lorg/h2/tools/Recover;->pageSize:I

    const/4 v14, 0x4

    sub-int/2addr v13, v14

    invoke-virtual {v2, v3, v14, v13}, Ljava/util/zip/CRC32;->update([BII)V

    .line 522
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    .line 523
    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v3

    .line 524
    invoke-virtual {v1}, Lorg/h2/store/Data;->readLong()J

    move-result-wide v13

    .line 525
    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v9

    move/from16 v17, v6

    .line 526
    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v6

    move/from16 v18, v7

    .line 527
    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v7

    if-ne v2, v3, :cond_7

    move-object/from16 v19, v1

    move/from16 v18, v6

    move v15, v7

    move/from16 v17, v9

    goto :goto_5

    :cond_7
    move-object/from16 v19, v1

    .line 533
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v20, v11

    const-string v11, "-- head "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ": writeCounter: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " log "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " crc "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v3, :cond_8

    const-string v2, "ok"

    goto :goto_6

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v1, 0x0

    const-wide/16 v1, 0x1

    add-long/2addr v4, v1

    move-wide v13, v1

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v1, v19

    move-wide/from16 v11, v20

    const-wide/16 v2, 0x3

    const/4 v9, 0x0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v2, v10

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v10, v2

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 577
    :goto_7
    :try_start_7
    invoke-direct {v8, v2, v1}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 579
    invoke-static {v2}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Writer;)V

    .line 580
    :goto_8
    iget-object v1, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-static {v1}, Lorg/h2/tools/Recover;->closeSilently(Lorg/h2/store/FileStore;)V

    return-void

    .line 579
    :goto_9
    invoke-static {v10}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Writer;)V

    .line 580
    iget-object v2, v8, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    invoke-static {v2}, Lorg/h2/tools/Recover;->closeSilently(Lorg/h2/store/FileStore;)V

    throw v1
.end method

.method public static execute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 320
    :try_start_0
    new-instance v0, Lorg/h2/tools/Recover;

    invoke-direct {v0}, Lorg/h2/tools/Recover;-><init>()V

    invoke-direct {v0, p0, p1}, Lorg/h2/tools/Recover;->process(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 322
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method private static extractTableOrViewName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, " TABLE "

    .line 1611
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, " VIEW "

    .line 1612
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    if-ge v0, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    if-lez v1, :cond_2

    const-string v0, " VIEW "

    .line 1621
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-lez v0, :cond_8

    const-string v1, " TABLE "

    .line 1623
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v0, "IF NOT EXISTS "

    .line 1627
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "IF NOT EXISTS "

    .line 1628
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1632
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 1633
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_4

    xor-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    if-nez v2, :cond_6

    const/16 v4, 0x20

    if-le v3, v4, :cond_5

    const/16 v4, 0x28

    if-ne v3, v4, :cond_6

    .line 1637
    :cond_5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const-string p0, "UNKNOWN"

    return-object p0

    :cond_8
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method private static getPageType(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "stream data"

    return-object p0

    :pswitch_1
    const-string p0, "stream trunk"

    return-object p0

    :pswitch_2
    const-string p0, "free list"

    return-object p0

    :pswitch_3
    const-string p0, "btree node"

    return-object p0

    :pswitch_4
    const-string p0, "btree leaf"

    return-object p0

    :pswitch_5
    const-string p0, "data overflow"

    return-object p0

    :pswitch_6
    const-string p0, "data node"

    return-object p0

    :pswitch_7
    const-string p0, "data leaf"

    return-object p0

    :pswitch_8
    const-string p0, "free"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSQL(Ljava/lang/String;Lorg/h2/value/Value;)Ljava/lang/String;
    .locals 6

    .line 418
    instance-of v0, p2, Lorg/h2/value/ValueLob;

    const/16 v1, 0xf

    if-eqz v0, :cond_2

    .line 419
    move-object p1, p2

    check-cast p1, Lorg/h2/value/ValueLob;

    .line 420
    invoke-virtual {p1}, Lorg/h2/value/ValueLob;->getSmall()[B

    move-result-object v0

    if-nez v0, :cond_5

    .line 422
    invoke-virtual {p1}, Lorg/h2/value/ValueLob;->getFileName()Ljava/lang/String;

    move-result-object p2

    .line 423
    invoke-virtual {p1}, Lorg/h2/value/ValueLob;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "BLOB"

    goto :goto_0

    :cond_0
    const-string v0, "CLOB"

    .line 424
    :goto_0
    invoke-virtual {p1}, Lorg/h2/value/ValueLob;->isCompressed()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 425
    invoke-direct {p0, p2, p1}, Lorg/h2/tools/Recover;->dumpLob(Ljava/lang/String;Z)V

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".comp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 428
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "READ_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".txt\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 430
    :cond_2
    instance-of v0, p2, Lorg/h2/value/ValueLobDb;

    if-eqz v0, :cond_5

    .line 431
    move-object v0, p2

    check-cast v0, Lorg/h2/value/ValueLobDb;

    .line 432
    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getSmall()[B

    move-result-object v2

    if-nez v2, :cond_5

    .line 434
    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getType()I

    move-result p2

    .line 435
    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v2

    .line 436
    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v4

    if-ne p2, v1, :cond_3

    const-string p2, "BLOB"

    const-string v0, "READ_BLOB"

    goto :goto_1

    :cond_3
    const-string p2, "CLOB"

    const-string v0, "READ_CLOB"

    .line 446
    :goto_1
    iget-boolean v1, p0, Lorg/h2/tools/Recover;->lobMaps:Z

    if-eqz v1, :cond_4

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_MAP"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 449
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_DB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    :goto_2
    iget-object v1, p0, Lorg/h2/tools/Recover;->columnTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 455
    :cond_5
    invoke-virtual {p2}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getWriter(Ljava/lang/String;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2

    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Created file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/h2/tools/Recover;->trace(Ljava/lang/String;)V

    .line 356
    :try_start_0
    new-instance p2, Ljava/io/PrintWriter;

    invoke-static {p1, v1}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/IOUtils;->getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 359
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private static isSchemaObjectTypeDelayed(Lorg/h2/engine/MetaRecord;)Z
    .locals 1

    .line 1581
    invoke-virtual {p0}, Lorg/h2/engine/MetaRecord;->getObjectType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/h2/tools/Recover;

    invoke-direct {v0}, Lorg/h2/tools/Recover;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/Recover;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 327
    invoke-static {p1, p2, v0}, Lorg/h2/store/FileLister;->getDatabaseFiles(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 329
    invoke-virtual {p0, p1, p2}, Lorg/h2/tools/Recover;->printNoDatabaseFilesFound(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, ".h2.db"

    .line 332
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    invoke-direct {p0, p2}, Lorg/h2/tools/Recover;->dumpPageStore(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, ".lob.db"

    .line 334
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 335
    invoke-direct {p0, p2, v2}, Lorg/h2/tools/Recover;->dumpLob(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v1, ".mv.db"

    .line 336
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, ".h2.db"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".txt"

    .line 340
    invoke-direct {p0, p2, v2}, Lorg/h2/tools/Recover;->getWriter(Ljava/lang/String;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 341
    invoke-static {p2, v2, v0}, Lorg/h2/mvstore/MVStoreTool;->dump(Ljava/lang/String;Ljava/io/Writer;Z)V

    .line 342
    invoke-static {p2, v2}, Lorg/h2/mvstore/MVStoreTool;->info(Ljava/lang/String;Ljava/io/Writer;)V

    .line 343
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".h2.db"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".sql"

    invoke-direct {p0, v1, v2}, Lorg/h2/tools/Recover;->getWriter(Ljava/lang/String;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 345
    invoke-direct {p0, v1, p2}, Lorg/h2/tools/Recover;->dumpMVStoreFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static readBlob(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static readBlobDb(Ljava/sql/Connection;JJ)Lorg/h2/value/Value$ValueBlob;
    .locals 8

    .line 219
    check-cast p0, Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v1

    .line 220
    invoke-static {v1}, Lorg/h2/tools/Recover;->verifyPageStore(Lorg/h2/store/DataHandler;)V

    const/16 v0, 0xf

    const/4 v2, -0x2

    const/4 v5, 0x0

    move-wide v3, p1

    move-wide v6, p3

    .line 221
    invoke-static/range {v0 .. v7}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p0

    return-object p0
.end method

.method public static readBlobMap(Ljava/sql/Connection;JJ)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "SELECT DATA FROM INFORMATION_SCHEMA.LOB_BLOCKS WHERE LOB_ID = ? AND SEQ = ? AND ? > 0"

    .line 249
    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 252
    invoke-interface {p0, v0, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 p1, 0x3

    .line 255
    invoke-interface {p0, p1, p3, p4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 256
    new-instance p1, Ljava/io/SequenceInputStream;

    new-instance p2, Lorg/h2/tools/Recover$1;

    invoke-direct {p2, p0}, Lorg/h2/tools/Recover$1;-><init>(Ljava/sql/PreparedStatement;)V

    invoke-direct {p1, p2}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    return-object p1
.end method

.method public static readClob(Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lorg/h2/tools/Recover;->readBlob(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static readClobDb(Ljava/sql/Connection;JJ)Lorg/h2/value/Value$ValueClob;
    .locals 8

    .line 238
    check-cast p0, Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v1

    .line 239
    invoke-static {v1}, Lorg/h2/tools/Recover;->verifyPageStore(Lorg/h2/store/DataHandler;)V

    const/16 v0, 0x10

    const/4 v2, -0x2

    const/4 v5, 0x0

    move-wide v3, p1

    move-wide v6, p3

    .line 240
    invoke-static/range {v0 .. v7}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p0

    return-object p0
.end method

.method public static readClobMap(Ljava/sql/Connection;JJ)Ljava/io/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    invoke-static {p0, p1, p2, p3, p4}, Lorg/h2/tools/Recover;->readBlobMap(Ljava/sql/Connection;JJ)Ljava/io/InputStream;

    move-result-object p0

    .line 296
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    sget-object p3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p0, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method private resetSchema()V
    .locals 1

    .line 1512
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    .line 1513
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    .line 1514
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    .line 1515
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Recover;->columnTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method private seek(J)V
    .locals 3

    .line 1454
    iget-object v0, p0, Lorg/h2/tools/Recover;->store:Lorg/h2/store/FileStore;

    iget v1, p0, Lorg/h2/tools/Recover;->pageSize:I

    int-to-long v1, v1

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/FileStore;->seek(J)V

    return-void
.end method

.method private setDatabaseName(Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lorg/h2/tools/Recover;->databaseName:Ljava/lang/String;

    return-void
.end method

.method private setStorage(I)Ljava/lang/String;
    .locals 3

    .line 1041
    iput p1, p0, Lorg/h2/tools/Recover;->storageId:I

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "O_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2d

    const/16 v2, 0x4d

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    .line 1043
    iget-object p1, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    return-object p1
.end method

.method private trace(Ljava/lang/String;)V
    .locals 1

    .line 300
    iget-boolean v0, p0, Lorg/h2/tools/Recover;->trace:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/h2/tools/Recover;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private traceError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lorg/h2/tools/Recover;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    iget-boolean p1, p0, Lorg/h2/tools/Recover;->trace:Z

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lorg/h2/tools/Recover;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    return-void
.end method

.method private static verifyPageStore(Lorg/h2/store/DataHandler;)V
    .locals 1

    .line 226
    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p0

    instance-of p0, p0, Lorg/h2/store/LobStorageMap;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const p0, 0xc3b4

    const-string v0, "Restore page store recovery SQL script can only be restored to a PageStore file"

    .line 227
    invoke-static {p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V
    .locals 4

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " storageId: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/h2/tools/Recover;->storageId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " recordLength: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/h2/tools/Recover;->recordLength:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " valueId: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/h2/tools/Recover;->valueId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 367
    :goto_0
    array-length v2, p3

    const/16 v3, 0x20

    if-ge v1, v2, :cond_1

    .line 368
    aget-byte v2, p3, v1

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v3, :cond_0

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    int-to-char v2, v2

    .line 370
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v2, 0x3f

    .line 372
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    :goto_2
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 378
    aget-byte v1, p3, v0

    and-int/lit16 v1, v1, 0xff

    .line 379
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    const/16 v2, 0x30

    .line 381
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 385
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-- dump: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "// error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string p1, "Error"

    .line 1655
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/Recover;->traceError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private writeRow(Ljava/io/PrintWriter;Lorg/h2/store/Data;[Lorg/h2/value/Value;)V
    .locals 4

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " VALUES("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1476
    :goto_0
    iput v1, p0, Lorg/h2/tools/Recover;->valueId:I

    iget v1, p0, Lorg/h2/tools/Recover;->valueId:I

    iget v2, p0, Lorg/h2/tools/Recover;->recordLength:I

    if-ge v1, v2, :cond_1

    .line 1478
    :try_start_0
    invoke-virtual {p2}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v1

    .line 1479
    iget v2, p0, Lorg/h2/tools/Recover;->valueId:I

    aput-object v1, p3, v2

    .line 1480
    iget v2, p0, Lorg/h2/tools/Recover;->valueId:I

    if-lez v2, :cond_0

    const-string v2, ", "

    .line 1481
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/h2/tools/Recover;->valueId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1484
    invoke-direct {p0, v2, v1}, Lorg/h2/tools/Recover;->getSQL(Ljava/lang/String;Lorg/h2/value/Value;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "out of memory"

    .line 1489
    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/h2/tools/Recover;->writeDataError(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    .line 1476
    :goto_1
    iget v1, p0, Lorg/h2/tools/Recover;->valueId:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, ");"

    .line 1493
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    iget p2, p0, Lorg/h2/tools/Recover;->storageId:I

    if-nez p2, :cond_2

    .line 1497
    :try_start_1
    new-instance p2, Lorg/h2/result/SimpleRow;

    invoke-direct {p2, p3}, Lorg/h2/result/SimpleRow;-><init>([Lorg/h2/value/Value;)V

    .line 1498
    new-instance v0, Lorg/h2/engine/MetaRecord;

    invoke-direct {v0, p2}, Lorg/h2/engine/MetaRecord;-><init>(Lorg/h2/result/SearchRow;)V

    .line 1499
    iget-object p2, p0, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-virtual {v0}, Lorg/h2/engine/MetaRecord;->getObjectType()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x3

    .line 1501
    aget-object p2, p3, p2

    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p2

    .line 1502
    invoke-static {p2}, Lorg/h2/tools/Recover;->extractTableOrViewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1503
    iget-object p3, p0, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/h2/engine/MetaRecord;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 1506
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/Recover;->writeError(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private writeSchema(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "---- Schema ----"

    .line 1519
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    iget-object v0, p0, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1521
    iget-object v0, p0, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/MetaRecord;

    .line 1522
    invoke-static {v1}, Lorg/h2/tools/Recover;->isSchemaObjectTypeDelayed(Lorg/h2/engine/MetaRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1525
    invoke-virtual {v1}, Lorg/h2/engine/MetaRecord;->getSQL()Ljava/lang/String;

    move-result-object v1

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1533
    iget-object v1, p0, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1534
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1535
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1536
    iget-object v4, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "INFORMATION_SCHEMA.LOB"

    .line 1537
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1538
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 1539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "INFORMATION_SCHEMA.LOBS"

    .line 1541
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SET TABLE = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1549
    :cond_3
    iget-object v1, p0, Lorg/h2/tools/Recover;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1550
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1551
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1552
    iget-object v4, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1553
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    const-string v3, "INFORMATION_SCHEMA.LOB"

    .line 1554
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 1557
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SELECT * FROM "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1560
    :cond_6
    iget-object v1, p0, Lorg/h2/tools/Recover;->objectIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1561
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/h2/tools/Recover;->setStorage(I)Ljava/lang/String;

    .line 1562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/tools/Recover;->storageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v1, "DROP ALIAS READ_BLOB;"

    .line 1564
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "DROP ALIAS READ_CLOB;"

    .line 1565
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "DROP ALIAS READ_BLOB_DB;"

    .line 1566
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "DROP ALIAS READ_CLOB_DB;"

    .line 1567
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    const-string v0, "DELETE FROM INFORMATION_SCHEMA.LOBS WHERE TABLE = -2;"

    .line 1569
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1572
    :cond_8
    iget-object v0, p0, Lorg/h2/tools/Recover;->schema:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/MetaRecord;

    .line 1573
    invoke-static {v1}, Lorg/h2/tools/Recover;->isSchemaObjectTypeDelayed(Lorg/h2/engine/MetaRecord;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1574
    invoke-virtual {v1}, Lorg/h2/engine/MetaRecord;->getSQL()Ljava/lang/String;

    move-result-object v1

    .line 1575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    return-void
.end method


# virtual methods
.method public checkPowerOff()V
    .locals 0

    return-void
.end method

.method public checkWritingAllowed()V
    .locals 0

    return-void
.end method

.method public getCompareMode()Lorg/h2/value/CompareMode;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1754
    invoke-static {v0, v1}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;I)Lorg/h2/value/CompareMode;

    move-result-object v0

    return-object v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    .line 1663
    iget-object v0, p0, Lorg/h2/tools/Recover;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

.method public getLobStorage()Lorg/h2/store/LobStorageBackend;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLobStorage()Lorg/h2/store/LobStorageInterface;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/h2/tools/Recover;->getLobStorage()Lorg/h2/store/LobStorageBackend;

    move-result-object v0

    return-object v0
.end method

.method public getLobSyncObject()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getMaxLengthInplaceLob()I
    .locals 1

    .line 1695
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getTempFileDeleter()Lorg/h2/util/TempFileDeleter;
    .locals 1

    .line 1727
    invoke-static {}, Lorg/h2/util/TempFileDeleter;->getInstance()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;
    .locals 0

    const-string p2, "rw"

    .line 1671
    invoke-static {p0, p1, p2}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;

    move-result-object p1

    return-object p1
.end method

.method public readLob(J[BJ[BII)I
    .locals 0

    .line 1744
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "."

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 177
    array-length v3, p1

    if-ge v2, v3, :cond_7

    .line 178
    aget-object v3, p1, v2

    const-string v4, "-dir"

    .line 179
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 180
    aget-object v0, p1, v2

    goto :goto_1

    :cond_0
    const-string v4, "-db"

    .line 181
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 182
    aget-object v1, p1, v2

    goto :goto_1

    :cond_1
    const-string v4, "-removePassword"

    .line 183
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    iput-boolean v5, p0, Lorg/h2/tools/Recover;->remove:Z

    goto :goto_1

    :cond_2
    const-string v4, "-trace"

    .line 185
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    iput-boolean v5, p0, Lorg/h2/tools/Recover;->trace:Z

    goto :goto_1

    :cond_3
    const-string v4, "-transactionLog"

    .line 187
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 188
    iput-boolean v5, p0, Lorg/h2/tools/Recover;->transactionLog:Z

    goto :goto_1

    :cond_4
    const-string v4, "-help"

    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "-?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 193
    :cond_5
    invoke-virtual {p0, v3}, Lorg/h2/tools/Recover;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 190
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/h2/tools/Recover;->showUsage()V

    return-void

    .line 196
    :cond_7
    invoke-direct {p0, v0, v1}, Lorg/h2/tools/Recover;->process(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
