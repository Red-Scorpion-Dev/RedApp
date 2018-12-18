.class public Lorg/h2/mvstore/db/MVTableEngine$Store;
.super Ljava/lang/Object;
.source "MVTableEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/MVTableEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Store"
.end annotation


# instance fields
.field private encrypted:Z

.field private fileName:Ljava/lang/String;

.field private statisticsStart:J

.field private store:Lorg/h2/mvstore/MVStore;

.field final tableMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/mvstore/db/MVTable;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryMapId:I

.field private transactionStore:Lorg/h2/mvstore/db/TransactionStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->tableMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public close(J)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 372
    :try_start_0
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVStore;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 374
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/db/TransactionStore;->close()V

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 380
    :goto_0
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/mvstore/FileStore;->getFileName()Ljava/lang/String;

    move-result-object p2

    .line 381
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVStore;->close()V

    if-eqz p1, :cond_1

    .line 382
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 385
    invoke-static {p2, v1}, Lorg/h2/mvstore/MVStoreTool;->compact(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 389
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/mvstore/DataUtils;->getErrorCode(Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x2

    .line 395
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore;->closeImmediately()V

    const p2, 0x15fac

    .line 396
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Closing"

    aput-object v2, v1, v0

    invoke-static {p2, p1, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public closeImmediately()V
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->closeImmediately()V

    return-void
.end method

.method public compactFile(J)V
    .locals 7

    .line 351
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVStore;->setRetentionTime(I)V

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 353
    :cond_0
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    const/high16 v3, 0x1000000

    const/16 v4, 0x5f

    invoke-virtual {v2, v4, v3}, Lorg/h2/mvstore/MVStore;->compact(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVStore;->sync()V

    .line 355
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    const-wide/32 v5, 0x1000000

    invoke-virtual {v2, v4, v5, v6}, Lorg/h2/mvstore/MVStore;->compactMoveChunks(IJ)Z

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v4, v2, p1

    if-lez v4, :cond_0

    :cond_1
    return-void
.end method

.method convertIllegalStateException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;
    .locals 4

    .line 179
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->getErrorCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    .line 181
    iget-boolean v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->encrypted:Z

    if-eqz v0, :cond_1

    const v0, 0x15fc1

    .line 182
    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->fileName:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, p1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    const v0, 0x15fac

    .line 191
    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->fileName:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, p1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    const v0, 0x15fae

    .line 195
    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->fileName:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, p1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const v0, 0x15fa4

    .line 187
    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->fileName:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, p1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public flush()V
    .locals 3

    .line 226
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    const/16 v1, 0x32

    const/high16 v2, 0x400000

    invoke-virtual {v0, v1, v2}, Lorg/h2/mvstore/MVStore;->compact(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->commit()J

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public getInDoubtTransactions()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/InDoubtTransaction;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore;->getOpenTransactions()Ljava/util/List;

    move-result-object v0

    .line 308
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/db/TransactionStore$Transaction;

    .line 310
    invoke-virtual {v2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 311
    new-instance v3, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;

    iget-object v4, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-direct {v3, v4, v2}, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;-><init>(Lorg/h2/mvstore/MVStore;Lorg/h2/mvstore/db/TransactionStore$Transaction;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .line 327
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getEncryptedFile()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getFile()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 331
    :cond_0
    new-instance v1, Lorg/h2/store/fs/FileChannelInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/h2/store/fs/FileChannelInputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v1
.end method

.method public getStore()Lorg/h2/mvstore/MVStore;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    return-object v0
.end method

.method public getTables()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/mvstore/db/MVTable;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->tableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getTransactionStore()Lorg/h2/mvstore/db/TransactionStore;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    return-object v0
.end method

.method public initTransactions()V
    .locals 4

    .line 250
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore;->getOpenTransactions()Ljava/util/List;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/db/TransactionStore$Transaction;

    .line 252
    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 253
    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 255
    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->rollback()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public declared-synchronized nextTemporaryMapName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 290
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->temporaryMapId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->temporaryMapId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method open(Lorg/h2/engine/Database;Lorg/h2/mvstore/MVStore$Builder;Z)V
    .locals 2

    .line 152
    iput-boolean p3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->encrypted:Z

    .line 154
    :try_start_0
    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore$Builder;->open()Lorg/h2/mvstore/MVStore;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    .line 155
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 157
    invoke-virtual {p2}, Lorg/h2/mvstore/FileStore;->getFileName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->fileName:Ljava/lang/String;

    .line 159
    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/DbSettings;->reuseSpace:Z

    if-nez p2, :cond_1

    .line 160
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/h2/mvstore/MVStore;->setReuseSpace(Z)V

    .line 162
    :cond_1
    new-instance p2, Lorg/h2/mvstore/db/TransactionStore;

    iget-object p3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    new-instance v0, Lorg/h2/mvstore/db/ValueDataType;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    invoke-direct {p2, p3, v0}, Lorg/h2/mvstore/db/TransactionStore;-><init>(Lorg/h2/mvstore/MVStore;Lorg/h2/mvstore/type/DataType;)V

    iput-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    .line 165
    iget-object p1, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore;->init()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->convertIllegalStateException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    .locals 0

    .line 300
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransaction()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    .line 301
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->setName(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->prepare()V

    .line 303
    iget-object p1, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->commit()J

    return-void
.end method

.method public removeTable(Lorg/h2/mvstore/db/MVTable;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->tableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/MVTable;->getMapName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTemporaryMaps(Lorg/h2/util/BitField;)V
    .locals 5

    .line 266
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getMapNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "temp."

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v1

    .line 269
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVStore;->removeMap(Lorg/h2/mvstore/MVMap;)V

    goto :goto_0

    :cond_1
    const-string v2, "table."

    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "index."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const-string v2, "."

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 272
    invoke-virtual {p1, v2}, Lorg/h2/util/BitField;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    new-instance v2, Lorg/h2/mvstore/db/ValueDataType;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 274
    new-instance v4, Lorg/h2/mvstore/db/ValueDataType;

    invoke-direct {v4, v3, v3, v3}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 275
    iget-object v3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v3}, Lorg/h2/mvstore/db/TransactionStore;->begin()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v3

    .line 276
    invoke-virtual {v3, v1, v2, v4}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/db/TransactionStore;->removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V

    .line 278
    invoke-virtual {v3}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setCacheSize(I)V
    .locals 2

    .line 323
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    div-int/lit16 p1, p1, 0x400

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVStore;->setCacheSize(I)V

    return-void
.end method

.method public statisticsEnd()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 414
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {v1}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->statisticsStart:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    :goto_0
    const-string v2, "reads"

    .line 417
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public statisticsStart()V
    .locals 2

    .line 404
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->statisticsStart:J

    return-void
.end method

.method public sync()V
    .locals 1

    .line 338
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->flush()V

    .line 339
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->sync()V

    return-void
.end method
