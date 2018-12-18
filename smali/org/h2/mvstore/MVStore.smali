.class public Lorg/h2/mvstore/MVStore;
.super Ljava/lang/Object;
.source "MVStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/MVStore$Builder;,
        Lorg/h2/mvstore/MVStore$BackgroundWriterThread;
    }
.end annotation


# static fields
.field public static final ASSERT:Z = false

.field static final BLOCK_SIZE:I = 0x1000

.field private static final FORMAT_READ:I = 0x1

.field private static final FORMAT_WRITE:I = 0x1

.field private static final MARKED_FREE:I = 0x989680


# instance fields
.field private autoCommitDelay:I

.field private autoCommitMemory:I

.field private autoCompactFillRate:I

.field private autoCompactLastFileOpCount:J

.field private final backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field volatile backgroundWriterThread:Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

.field private cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS<",
            "Lorg/h2/mvstore/Page;",
            ">;"
        }
    .end annotation
.end field

.field private cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS<",
            "Lorg/h2/mvstore/Page$PageChildren;",
            ">;"
        }
    .end annotation
.end field

.field private final chunks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/mvstore/Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z

.field private compactSync:Ljava/lang/Object;

.field private final compressionLevel:I

.field private compressorFast:Lorg/h2/compress/Compressor;

.field private compressorHigh:Lorg/h2/compress/Compressor;

.field private creationTime:J

.field private currentStoreThread:Ljava/lang/Thread;

.field private volatile currentStoreVersion:J

.field private currentVersion:J

.field private fileStore:Lorg/h2/mvstore/FileStore;

.field private fileStoreIsProvided:Z

.field private final freedPageSpace:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/mvstore/Chunk;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastChunk:Lorg/h2/mvstore/Chunk;

.field private lastCommitTime:J

.field private lastFreeUnusedChunks:J

.field private lastMapId:I

.field private lastStoredVersion:J

.field private lastTimeAbsolute:J

.field private final maps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/mvstore/MVMap<",
            "**>;>;"
        }
    .end annotation
.end field

.field private meta:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile metaChanged:Z

.field private final pageSplitSize:I

.field private panicException:Ljava/lang/IllegalStateException;

.field private retainChunk:Lorg/h2/mvstore/Chunk;

.field private retentionTime:I

.field private volatile reuseSpace:Z

.field private saveNeeded:Z

.field private storeHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private unsavedMemory:I

.field private versionsToKeep:I

.field private writeBuffer:Lorg/h2/mvstore/WriteBuffer;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    .line 182
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 190
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Ljava/util/concurrent/ConcurrentHashMap;

    .line 200
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 203
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const/4 v1, 0x5

    .line 209
    iput v1, p0, Lorg/h2/mvstore/MVStore;->versionsToKeep:I

    const-wide/16 v1, -0x1

    .line 262
    iput-wide v1, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    .line 276
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->compactSync:Ljava/lang/Object;

    const-string v1, "compress"

    .line 293
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 294
    :cond_0
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    iput v1, p0, Lorg/h2/mvstore/MVStore;->compressionLevel:I

    const-string v1, "fileName"

    .line 295
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "pageSplitSize"

    .line 296
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1000

    if-nez v3, :cond_2

    if-nez v1, :cond_1

    const/16 v3, 0x1000

    goto :goto_1

    :cond_1
    const/16 v3, 0x4000

    .line 298
    :goto_1
    iput v3, p0, Lorg/h2/mvstore/MVStore;->pageSplitSize:I

    goto :goto_2

    .line 300
    :cond_2
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/h2/mvstore/MVStore;->pageSplitSize:I

    :goto_2
    const-string v3, "backgroundExceptionHandler"

    .line 302
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 303
    check-cast v3, Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v3, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 304
    new-instance v3, Lorg/h2/mvstore/MVMap;

    sget-object v5, Lorg/h2/mvstore/type/StringDataType;->INSTANCE:Lorg/h2/mvstore/type/StringDataType;

    sget-object v6, Lorg/h2/mvstore/type/StringDataType;->INSTANCE:Lorg/h2/mvstore/type/StringDataType;

    invoke-direct {v3, v5, v6}, Lorg/h2/mvstore/MVMap;-><init>(Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)V

    iput-object v3, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    .line 306
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v3

    const-string v5, "id"

    .line 307
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "createVersion"

    .line 308
    iget-wide v6, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v5, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v5, p0, v3}, Lorg/h2/mvstore/MVMap;->init(Lorg/h2/mvstore/MVStore;Ljava/util/HashMap;)V

    const-string v3, "fileStore"

    .line 310
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/FileStore;

    iput-object v3, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-nez v1, :cond_3

    .line 311
    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-nez v3, :cond_3

    const/4 p1, 0x0

    .line 312
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    .line 313
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    return-void

    .line 316
    :cond_3
    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-nez v3, :cond_4

    .line 317
    iput-boolean v2, p0, Lorg/h2/mvstore/MVStore;->fileStoreIsProvided:Z

    .line 318
    new-instance v3, Lorg/h2/mvstore/FileStore;

    invoke-direct {v3}, Lorg/h2/mvstore/FileStore;-><init>()V

    iput-object v3, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    goto :goto_3

    .line 320
    :cond_4
    iput-boolean v0, p0, Lorg/h2/mvstore/MVStore;->fileStoreIsProvided:Z

    .line 322
    :goto_3
    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v3}, Lorg/h2/mvstore/FileStore;->getDefaultRetentionTime()I

    move-result v3

    iput v3, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    const-string v3, "readOnly"

    .line 323
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "cacheSize"

    .line 324
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    const/16 v5, 0x10

    goto :goto_4

    .line 325
    :cond_5
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_4
    if-lez v5, :cond_6

    .line 327
    new-instance v6, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;

    invoke-direct {v6}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;-><init>()V

    int-to-long v7, v5

    const-wide/16 v9, 0x400

    mul-long v7, v7, v9

    mul-long v7, v7, v9

    .line 328
    iput-wide v7, v6, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->maxMemory:J

    .line 329
    new-instance v5, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-direct {v5, v6}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;-><init>(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;)V

    iput-object v5, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    .line 330
    iget-wide v7, v6, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->maxMemory:J

    const-wide/16 v9, 0x4

    div-long/2addr v7, v9

    iput-wide v7, v6, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->maxMemory:J

    .line 331
    new-instance v5, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-direct {v5, v6}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;-><init>(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;)V

    iput-object v5, p0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    :cond_6
    const-string v5, "autoCommitBufferSize"

    .line 333
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x400

    if-nez v5, :cond_7

    const/16 v5, 0x400

    goto :goto_5

    .line 334
    :cond_7
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_5
    mul-int/lit16 v5, v5, 0x400

    mul-int/lit8 v5, v5, 0x13

    .line 336
    iput v5, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    const-string v5, "autoCompactFillRate"

    .line 338
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    const/16 v5, 0x32

    goto :goto_6

    .line 339
    :cond_8
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_6
    iput v5, p0, Lorg/h2/mvstore/MVStore;->autoCompactFillRate:I

    const-string v5, "encryptionKey"

    .line 341
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    .line 343
    :try_start_0
    iget-boolean v6, p0, Lorg/h2/mvstore/MVStore;->fileStoreIsProvided:Z

    if-nez v6, :cond_9

    .line 344
    iget-object v6, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v6, v1, v3, v5}, Lorg/h2/mvstore/FileStore;->open(Ljava/lang/String;Z[C)V

    .line 346
    :cond_9
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v1}, Lorg/h2/mvstore/FileStore;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_a

    .line 347
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeAbsolute()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/h2/mvstore/MVStore;->creationTime:J

    .line 348
    iget-wide v6, p0, Lorg/h2/mvstore/MVStore;->creationTime:J

    iput-wide v6, p0, Lorg/h2/mvstore/MVStore;->lastCommitTime:J

    .line 349
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v3, "H"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v3, "blockSize"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v3, "format"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v1, "created"

    iget-wide v3, p0, Lorg/h2/mvstore/MVStore;->creationTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->writeStoreHeader()V

    goto :goto_7

    .line 355
    :cond_a
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->readStoreHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    if-eqz v5, :cond_b

    goto :goto_8

    :catchall_0
    move-exception p1

    goto :goto_a

    :catch_0
    move-exception v0

    .line 358
    :try_start_1
    invoke-direct {p0, v0}, Lorg/h2/mvstore/MVStore;->panic(Ljava/lang/IllegalStateException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_b

    .line 361
    :goto_8
    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 364
    :cond_b
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/MVStore;->lastCommitTime:J

    const-string v0, "autoCommitDelay"

    .line 368
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c

    const/16 p1, 0x3e8

    goto :goto_9

    .line 369
    :cond_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 370
    :goto_9
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVStore;->setAutoCommitDelay(I)V

    return-void

    :goto_a
    if-eqz v5, :cond_d

    .line 361
    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([CC)V

    :cond_d
    throw p1
.end method

.method private applyFreedSpace(J)V
    .locals 11

    .line 1469
    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1471
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1472
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1473
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1474
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-lez v5, :cond_1

    goto :goto_0

    .line 1478
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1479
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/Chunk;

    .line 1480
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, v3, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/mvstore/Chunk;

    if-nez v4, :cond_2

    goto :goto_1

    .line 1487
    :cond_2
    iget-wide v5, v4, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    iget-wide v7, v3, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    .line 1488
    iget v5, v4, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    iget v3, v3, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    add-int/2addr v5, v3

    iput v5, v4, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    .line 1489
    iget v3, v4, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    if-gez v3, :cond_3

    iget v3, v4, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    const v5, -0x989680

    if-le v3, v5, :cond_3

    const/4 v3, 0x0

    .line 1491
    iput v3, v4, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    .line 1493
    :cond_3
    iget-wide v5, v4, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_4

    iget-wide v5, v4, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    const-wide/32 v9, -0x989680

    cmp-long v3, v5, v9

    if-lez v3, :cond_4

    .line 1495
    iput-wide v7, v4, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    .line 1497
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1499
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1501
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    .line 1502
    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v4, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v4}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1504
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private canOverwriteChunk(Lorg/h2/mvstore/Chunk;J)Z
    .locals 6

    .line 1428
    iget v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 1429
    iget-wide v2, p1, Lorg/h2/mvstore/Chunk;->time:J

    iget v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    cmp-long v0, v2, p2

    if-lez v0, :cond_0

    return v1

    .line 1432
    :cond_0
    iget-wide v2, p1, Lorg/h2/mvstore/Chunk;->unused:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lorg/h2/mvstore/Chunk;->unused:J

    iget v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    div-int/lit8 v0, v0, 0x2

    int-to-long v4, v0

    add-long/2addr v2, v4

    cmp-long v0, v2, p2

    if-lez v0, :cond_2

    :cond_1
    return v1

    .line 1436
    :cond_2
    iget-object p2, p0, Lorg/h2/mvstore/MVStore;->retainChunk:Lorg/h2/mvstore/Chunk;

    if-eqz p2, :cond_3

    .line 1437
    iget-wide v2, p1, Lorg/h2/mvstore/Chunk;->version:J

    iget-wide p1, p2, Lorg/h2/mvstore/Chunk;->version:J

    cmp-long p3, v2, p1

    if-lez p3, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private checkOpen()V
    .locals 4

    .line 2400
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 2401
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->panicException:Ljava/lang/IllegalStateException;

    aput-object v3, v1, v2

    const-string v2, "This store is closed"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method private closeStore(Z)V
    .locals 2

    .line 880
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 886
    :cond_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->stopBackgroundThread()V

    const/4 v0, 0x1

    .line 887
    iput-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    .line 888
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-nez v0, :cond_1

    return-void

    .line 891
    :cond_1
    monitor-enter p0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 893
    :try_start_0
    invoke-direct {p0, p1}, Lorg/h2/mvstore/MVStore;->shrinkFileIfPossible(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 897
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    .line 898
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    .line 899
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/MVMap;

    .line 900
    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->close()V

    goto :goto_1

    .line 902
    :cond_3
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    .line 903
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 904
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    :try_start_1
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->fileStoreIsProvided:Z

    if-nez v0, :cond_4

    .line 907
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 910
    :cond_4
    :try_start_2
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    .line 912
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 910
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    throw v0

    .line 912
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private collectReferencedChunks()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v0, v0, Lorg/h2/mvstore/Chunk;->version:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Collect references on version 0"

    .line 1299
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1300
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    iget-wide v0, v0, Lorg/h2/mvstore/FileStore;->readCount:J

    .line 1301
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1302
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v2, "root."

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/MVMap;->cursor(Ljava/lang/Object;)Lorg/h2/mvstore/Cursor;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1303
    invoke-virtual {v1}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "root."

    .line 1304
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 1307
    :cond_1
    invoke-virtual {v1}, Lorg/h2/mvstore/Cursor;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/h2/mvstore/DataUtils;->parseHexLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v8, v3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "root."

    .line 1311
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/mvstore/DataUtils;->parseHexInt(Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v0

    .line 1312
    invoke-direct/range {v5 .. v10}, Lorg/h2/mvstore/MVStore;->collectReferencedChunks(Ljava/util/Set;IJI)V

    goto :goto_1

    .line 1314
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v8, v1, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v0

    .line 1315
    invoke-direct/range {v5 .. v10}, Lorg/h2/mvstore/MVStore;->collectReferencedChunks(Ljava/util/Set;IJI)V

    .line 1316
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    iget-wide v1, v1, Lorg/h2/mvstore/FileStore;->readCount:J

    return-object v0
.end method

.method private collectReferencedChunks(Ljava/util/Set;IJI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;IJI)V"
        }
    .end annotation

    .line 1322
    invoke-static {p3, p4}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v0

    .line 1323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1324
    invoke-static {p3, p4}, Lorg/h2/mvstore/DataUtils;->getPageType(J)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 1327
    invoke-direct {p0, p2, p3, p4, v1}, Lorg/h2/mvstore/MVStore;->readPageChunkReferences(IJI)Lorg/h2/mvstore/Page$PageChildren;

    move-result-object p3

    .line 1328
    iget-boolean p4, p3, Lorg/h2/mvstore/Page$PageChildren;->chunkList:Z

    const/4 v1, 0x0

    if-nez p4, :cond_3

    .line 1329
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object p4

    const/4 v8, 0x0

    .line 1330
    :goto_0
    iget-object v2, p3, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v8, v2, :cond_1

    .line 1331
    iget-object v2, p3, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    aget-wide v5, v2, v8

    add-int/lit8 v7, p5, 0x1

    move-object v2, p0

    move-object v3, p4

    move v4, p2

    .line 1332
    invoke-direct/range {v2 .. v7}, Lorg/h2/mvstore/MVStore;->collectReferencedChunks(Ljava/util/Set;IJI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1335
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1336
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [J

    .line 1338
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 p5, 0x0

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v2, p5, 0x1

    .line 1339
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1, v1, v1}, Lorg/h2/mvstore/DataUtils;->getPagePos(IIII)J

    move-result-wide v4

    aput-wide v4, p2, p5

    move p5, v2

    goto :goto_1

    .line 1342
    :cond_2
    iput-object p2, p3, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    .line 1343
    iput-boolean v3, p3, Lorg/h2/mvstore/Page$PageChildren;->chunkList:Z

    .line 1344
    iget-object p2, p0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz p2, :cond_3

    .line 1345
    iget-object p2, p0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    iget-wide p4, p3, Lorg/h2/mvstore/Page$PageChildren;->pos:J

    invoke-virtual {p3}, Lorg/h2/mvstore/Page$PageChildren;->getMemory()I

    move-result v0

    invoke-virtual {p2, p4, p5, p3, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->put(JLjava/lang/Object;I)Ljava/lang/Object;

    .line 1348
    :cond_3
    iget-object p2, p3, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length p3, p2

    :goto_2
    if-ge v1, p3, :cond_4

    aget-wide p4, p2, v1

    .line 1349
    invoke-static {p4, p5}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private declared-synchronized commitAndSave()J
    .locals 7

    monitor-enter p0

    .line 1015
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-eqz v0, :cond_0

    .line 1016
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 1018
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 1023
    iget-wide v3, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 1025
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 1027
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->hasUnsavedChanges()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1028
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 1030
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 1035
    :try_start_4
    iget-wide v3, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    iput-wide v3, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    .line 1036
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/mvstore/MVStore;->currentStoreThread:Ljava/lang/Thread;

    .line 1037
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->storeNow()J

    move-result-wide v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1041
    :try_start_5
    iput-wide v1, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    .line 1042
    iput-object v0, p0, Lorg/h2/mvstore/MVStore;->currentStoreThread:Ljava/lang/Thread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-wide v3

    :catchall_0
    move-exception v3

    .line 1041
    :try_start_6
    iput-wide v1, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    .line 1042
    iput-object v0, p0, Lorg/h2/mvstore/MVStore;->currentStoreThread:Ljava/lang/Thread;

    throw v3

    :cond_3
    const-string v0, "This store is read-only"

    .line 1031
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_4
    const-string v0, "This is an in-memory store"

    .line 1019
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 1014
    monitor-exit p0

    throw v0
.end method

.method private compactGetMoveBlocks(JJ)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/mvstore/Chunk;",
            ">;"
        }
    .end annotation

    .line 1657
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1658
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    .line 1659
    iget-wide v3, v2, Lorg/h2/mvstore/Chunk;->block:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_0

    .line 1660
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1664
    :cond_1
    new-instance p1, Lorg/h2/mvstore/MVStore$1;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/MVStore$1;-><init>(Lorg/h2/mvstore/MVStore;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    .line 1673
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/Chunk;

    .line 1674
    iget v3, v3, Lorg/h2/mvstore/Chunk;->len:I

    int-to-long v3, v3

    const-wide/16 v5, 0x1000

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    cmp-long v3, v1, p3

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1683
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_4

    .line 1684
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private compactGetOldChunks(II)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/mvstore/Chunk;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1808
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 1817
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v3

    .line 1819
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v5, 0x0

    move-wide v7, v5

    move-wide v9, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/h2/mvstore/Chunk;

    .line 1821
    iget-wide v12, v11, Lorg/h2/mvstore/Chunk;->time:J

    iget v14, v0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    int-to-long v14, v14

    add-long/2addr v12, v14

    cmp-long v14, v12, v3

    if-lez v14, :cond_1

    goto :goto_0

    .line 1824
    :cond_1
    iget-wide v12, v11, Lorg/h2/mvstore/Chunk;->maxLen:J

    add-long/2addr v9, v12

    .line 1825
    iget-wide v11, v11, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    add-long/2addr v7, v11

    goto :goto_0

    :cond_2
    cmp-long v1, v7, v5

    if-gez v1, :cond_3

    return-object v2

    :cond_3
    const-wide/16 v11, 0x1

    cmp-long v1, v9, v5

    if-gtz v1, :cond_4

    move-wide v9, v11

    :cond_4
    const-wide/16 v13, 0x64

    mul-long v7, v7, v13

    .line 1836
    div-long/2addr v7, v9

    long-to-int v1, v7

    move/from16 v7, p1

    if-lt v1, v7, :cond_5

    return-object v2

    .line 1842
    :cond_5
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1843
    iget-object v7, v0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget v8, v8, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/mvstore/Chunk;

    .line 1844
    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/h2/mvstore/Chunk;

    .line 1848
    iget-wide v13, v9, Lorg/h2/mvstore/Chunk;->time:J

    iget v10, v0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    int-to-long v5, v10

    add-long/2addr v13, v5

    cmp-long v5, v13, v3

    if-lez v5, :cond_6

    :goto_2
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 1851
    :cond_6
    iget-wide v5, v7, Lorg/h2/mvstore/Chunk;->version:J

    iget-wide v13, v9, Lorg/h2/mvstore/Chunk;->version:J

    sub-long/2addr v5, v13

    add-long/2addr v5, v11

    .line 1852
    invoke-virtual {v9}, Lorg/h2/mvstore/Chunk;->getFillRate()I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v13, v10

    div-long/2addr v13, v5

    long-to-int v5, v13

    iput v5, v9, Lorg/h2/mvstore/Chunk;->collectPriority:I

    .line 1853
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1855
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    return-object v2

    .line 1860
    :cond_8
    new-instance v3, Lorg/h2/mvstore/MVStore$2;

    invoke-direct {v3, v0}, Lorg/h2/mvstore/MVStore$2;-><init>(Lorg/h2/mvstore/MVStore;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1876
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    const-wide/16 v16, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/mvstore/Chunk;

    if-eqz v5, :cond_9

    .line 1878
    iget v8, v7, Lorg/h2/mvstore/Chunk;->collectPriority:I

    if-lez v8, :cond_9

    move/from16 v8, p2

    int-to-long v9, v8

    cmp-long v11, v16, v9

    if-lez v11, :cond_a

    goto :goto_4

    :cond_9
    move/from16 v8, p2

    .line 1882
    :cond_a
    iget-wide v9, v7, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    add-long v16, v16, v9

    add-int/lit8 v6, v6, 0x1

    move-object v5, v7

    goto :goto_3

    :cond_b
    :goto_4
    const/4 v3, 0x1

    if-ge v6, v3, :cond_c

    return-object v2

    .line 1891
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1892
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/mvstore/Chunk;

    if-ne v5, v6, :cond_e

    const/4 v4, 0x1

    goto :goto_5

    :cond_e
    if-eqz v4, :cond_d

    .line 1896
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_f
    return-object v1
.end method

.method private compactMoveChunks(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/mvstore/Chunk;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1691
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1000

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    .line 1692
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getWriteBuffer()Lorg/h2/mvstore/WriteBuffer;

    move-result-object v8

    .line 1693
    iget-wide v9, v2, Lorg/h2/mvstore/Chunk;->block:J

    mul-long v9, v9, v5

    .line 1694
    iget v11, v2, Lorg/h2/mvstore/Chunk;->len:I

    mul-int/lit16 v11, v11, 0x1000

    .line 1695
    invoke-virtual {v8, v11}, Lorg/h2/mvstore/WriteBuffer;->limit(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1696
    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v9, v10, v11}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 1697
    invoke-static {v12, v9, v10}, Lorg/h2/mvstore/Chunk;->readChunkHeader(Ljava/nio/ByteBuffer;J)Lorg/h2/mvstore/Chunk;

    .line 1698
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 1699
    invoke-virtual {v8, v13}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1700
    invoke-virtual {v8, v12}, Lorg/h2/mvstore/WriteBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/h2/mvstore/WriteBuffer;

    .line 1701
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getFileLengthInUse()J

    move-result-wide v14

    .line 1702
    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v14, v15, v11}, Lorg/h2/mvstore/FileStore;->markUsed(JI)V

    .line 1703
    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v9, v10, v11}, Lorg/h2/mvstore/FileStore;->free(JI)V

    .line 1704
    div-long v5, v14, v5

    iput-wide v5, v2, Lorg/h2/mvstore/Chunk;->block:J

    .line 1705
    iput-wide v3, v2, Lorg/h2/mvstore/Chunk;->next:J

    .line 1706
    invoke-virtual {v8, v7}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1707
    invoke-virtual {v2, v8, v13}, Lorg/h2/mvstore/Chunk;->writeChunkHeader(Lorg/h2/mvstore/WriteBuffer;I)V

    add-int/lit8 v11, v11, -0x80

    .line 1708
    invoke-virtual {v8, v11}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1709
    invoke-virtual {v2}, Lorg/h2/mvstore/Chunk;->getFooterBytes()[B

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    .line 1710
    invoke-virtual {v8, v7}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1711
    invoke-virtual {v8}, Lorg/h2/mvstore/WriteBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v0, v14, v15, v3}, Lorg/h2/mvstore/MVStore;->write(JLjava/nio/ByteBuffer;)V

    .line 1712
    invoke-direct {v0, v8}, Lorg/h2/mvstore/MVStore;->releaseWriteBuffer(Lorg/h2/mvstore/WriteBuffer;)V

    .line 1713
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    .line 1714
    iget-object v3, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v4, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v4}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1718
    :cond_0
    iput-boolean v7, v0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    .line 1719
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    .line 1720
    invoke-virtual/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->sync()V

    const/4 v1, 0x1

    .line 1723
    iput-boolean v1, v0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    .line 1724
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    .line 1725
    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    iget v9, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 1730
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getWriteBuffer()Lorg/h2/mvstore/WriteBuffer;

    move-result-object v8

    .line 1731
    iget-wide v9, v2, Lorg/h2/mvstore/Chunk;->block:J

    mul-long v9, v9, v5

    .line 1732
    iget v11, v2, Lorg/h2/mvstore/Chunk;->len:I

    mul-int/lit16 v11, v11, 0x1000

    .line 1733
    invoke-virtual {v8, v11}, Lorg/h2/mvstore/WriteBuffer;->limit(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1734
    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v9, v10, v11}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 1735
    invoke-static {v12, v3, v4}, Lorg/h2/mvstore/Chunk;->readChunkHeader(Ljava/nio/ByteBuffer;J)Lorg/h2/mvstore/Chunk;

    .line 1736
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 1737
    invoke-virtual {v8, v13}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1738
    invoke-virtual {v8, v12}, Lorg/h2/mvstore/WriteBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/h2/mvstore/WriteBuffer;

    .line 1739
    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v11}, Lorg/h2/mvstore/FileStore;->allocate(I)J

    move-result-wide v14

    .line 1740
    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v9, v10, v11}, Lorg/h2/mvstore/FileStore;->free(JI)V

    .line 1741
    invoke-virtual {v8, v7}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1742
    div-long v9, v14, v5

    iput-wide v9, v2, Lorg/h2/mvstore/Chunk;->block:J

    .line 1743
    invoke-virtual {v2, v8, v13}, Lorg/h2/mvstore/Chunk;->writeChunkHeader(Lorg/h2/mvstore/WriteBuffer;I)V

    add-int/lit8 v11, v11, -0x80

    .line 1744
    invoke-virtual {v8, v11}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1745
    invoke-virtual {v2}, Lorg/h2/mvstore/Chunk;->getFooterBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    .line 1746
    invoke-virtual {v8, v7}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1747
    invoke-virtual {v8}, Lorg/h2/mvstore/WriteBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-direct {v0, v14, v15, v9}, Lorg/h2/mvstore/MVStore;->write(JLjava/nio/ByteBuffer;)V

    .line 1748
    invoke-direct {v0, v8}, Lorg/h2/mvstore/MVStore;->releaseWriteBuffer(Lorg/h2/mvstore/WriteBuffer;)V

    .line 1749
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    .line 1750
    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v9, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v9}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1754
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    .line 1755
    invoke-virtual/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->sync()V

    .line 1756
    invoke-direct {v0, v7}, Lorg/h2/mvstore/MVStore;->shrinkFileIfPossible(I)V

    return-void
.end method

.method private compactRewrite(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/mvstore/Chunk;",
            ">;)V"
        }
    .end annotation

    .line 1903
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1904
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/Chunk;

    .line 1905
    iget v1, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1907
    :cond_0
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/MVMap;

    .line 1910
    invoke-virtual {v1, v0}, Lorg/h2/mvstore/MVMap;->rewrite(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1914
    :cond_2
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/MVMap;->rewrite(Ljava/util/Set;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 1917
    :cond_3
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->freeUnusedChunks()V

    .line 1918
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    return-void
.end method

.method private declared-synchronized freeUnusedChunks()V
    .locals 9

    monitor-enter p0

    .line 1268
    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1271
    :cond_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->collectReferencedChunks()Ljava/util/Set;

    move-result-object v0

    .line 1272
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1273
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v2

    .line 1274
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/mvstore/Chunk;

    .line 1275
    iget v6, v5, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1276
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1279
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/Chunk;

    .line 1280
    invoke-direct {p0, v1, v2, v3}, Lorg/h2/mvstore/MVStore;->canOverwriteChunk(Lorg/h2/mvstore/Chunk;J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1281
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    .line 1283
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v5, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v5}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    iget-wide v4, v1, Lorg/h2/mvstore/Chunk;->block:J

    const-wide/16 v6, 0x1000

    mul-long v4, v4, v6

    .line 1285
    iget v1, v1, Lorg/h2/mvstore/Chunk;->len:I

    mul-int/lit16 v1, v1, 0x1000

    .line 1286
    iget-object v6, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v6, v4, v5, v1}, Lorg/h2/mvstore/FileStore;->free(JI)V

    goto :goto_1

    .line 1288
    :cond_4
    iget-wide v4, v1, Lorg/h2/mvstore/Chunk;->unused:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 1289
    iput-wide v2, v1, Lorg/h2/mvstore/Chunk;->unused:J

    .line 1290
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v5, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v5}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1295
    :cond_5
    monitor-exit p0

    return-void

    .line 1269
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1267
    monitor-exit p0

    throw v0
.end method

.method private getChunk(J)Lorg/h2/mvstore/Chunk;
    .locals 2

    .line 933
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->getChunkIfFound(J)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 935
    :cond_0
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result p1

    const/4 p2, 0x6

    const/4 v0, 0x1

    .line 936
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Chunk {0} not found"

    invoke-static {p2, p1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method private getChunkForVersion(J)Lorg/h2/mvstore/Chunk;
    .locals 6

    .line 531
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    .line 532
    iget-wide v3, v2, Lorg/h2/mvstore/Chunk;->version:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_0

    if-eqz v1, :cond_1

    .line 533
    iget v3, v2, Lorg/h2/mvstore/Chunk;->id:I

    iget v4, v1, Lorg/h2/mvstore/Chunk;->id:I

    if-le v3, v4, :cond_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getChunkIfFound(J)Lorg/h2/mvstore/Chunk;
    .locals 7

    .line 944
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result p1

    .line 945
    iget-object p2, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/h2/mvstore/Chunk;

    if-nez p2, :cond_3

    .line 947
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 948
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 956
    iget-object p2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 960
    :cond_0
    invoke-static {p2}, Lorg/h2/mvstore/Chunk;->fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;

    move-result-object p2

    .line 961
    iget-wide v2, p2, Lorg/h2/mvstore/Chunk;->block:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 966
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p2, 0x6

    .line 962
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Chunk {0} is invalid"

    invoke-static {p2, p1, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_2
    const/16 p2, 0x9

    .line 951
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Chunk {0} no longer exists"

    invoke-static {p2, p1, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    return-object p2
.end method

.method private getFileLengthInUse()J
    .locals 8

    .line 1542
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x2000

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/Chunk;

    .line 1543
    iget v4, v3, Lorg/h2/mvstore/Chunk;->len:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    .line 1544
    iget-wide v4, v3, Lorg/h2/mvstore/Chunk;->block:J

    iget v3, v3, Lorg/h2/mvstore/Chunk;->len:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1000

    mul-long v4, v4, v6

    .line 1545
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method private getMetaMap(J)Lorg/h2/mvstore/MVMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 521
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->getChunkForVersion(J)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Unknown version {0}"

    .line 522
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v3, v4, v2}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 523
    iget-wide v0, v0, Lorg/h2/mvstore/Chunk;->block:J

    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/MVStore;->readChunkHeader(J)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->openReadOnly()Lorg/h2/mvstore/MVMap;

    move-result-object v1

    .line 525
    iget-wide v2, v0, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    return-object v1
.end method

.method private static getRootPos(Lorg/h2/mvstore/MVMap;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .line 2351
    invoke-static {p1}, Lorg/h2/mvstore/MVMap;->getMapRootKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 2352
    :cond_0
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->parseHexLong(Ljava/lang/String;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private getTimeAbsolute()J
    .locals 7

    .line 1448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1449
    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->lastTimeAbsolute:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->lastTimeAbsolute:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 1453
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->lastTimeAbsolute:J

    goto :goto_0

    .line 1455
    :cond_0
    iput-wide v0, p0, Lorg/h2/mvstore/MVStore;->lastTimeAbsolute:J

    :goto_0
    return-wide v0
.end method

.method private getTimeSinceCreation()J
    .locals 4

    .line 1444
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeAbsolute()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->creationTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getWriteBuffer()Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 1406
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->writeBuffer:Lorg/h2/mvstore/WriteBuffer;

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->writeBuffer:Lorg/h2/mvstore/WriteBuffer;

    .line 1408
    invoke-virtual {v0}, Lorg/h2/mvstore/WriteBuffer;->clear()Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    .line 1410
    :cond_0
    new-instance v0, Lorg/h2/mvstore/WriteBuffer;

    invoke-direct {v0}, Lorg/h2/mvstore/WriteBuffer;-><init>()V

    :goto_0
    return-object v0
.end method

.method private isKnownVersion(J)Z
    .locals 6

    .line 2137
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_a

    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    goto :goto_4

    .line 2140
    :cond_0
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-eqz v4, :cond_9

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 2145
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->getChunkForVersion(J)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 2151
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->getMetaMap(J)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    :try_start_0
    const-string p2, "chunk."

    .line 2156
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/MVMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    .line 2157
    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2158
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "chunk."

    .line 2159
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 2162
    :cond_5
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/MVMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2163
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2164
    invoke-static {v0}, Lorg/h2/mvstore/Chunk;->fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    .line 2165
    iget-wide v4, v0, Lorg/h2/mvstore/Chunk;->block:J

    invoke-direct {p0, v4, v5}, Lorg/h2/mvstore/MVStore;->readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2166
    iget v1, v1, Lorg/h2/mvstore/Chunk;->id:I

    iget v4, v0, Lorg/h2/mvstore/Chunk;->id:I

    if-eq v1, v4, :cond_6

    goto :goto_1

    .line 2170
    :cond_6
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v0, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_7
    :goto_1
    return v2

    :cond_8
    :goto_2
    return v3

    :catch_0
    return v2

    :cond_9
    :goto_3
    return v3

    :cond_a
    :goto_4
    return v2
.end method

.method private loadChunkMeta()V
    .locals 7

    .line 691
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v1, "chunk."

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 692
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "chunk."

    .line 693
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 696
    :cond_1
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 697
    invoke-static {v1}, Lorg/h2/mvstore/Chunk;->fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;

    move-result-object v1

    .line 698
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 699
    iget-wide v2, v1, Lorg/h2/mvstore/Chunk;->block:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 704
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    const/4 v2, 0x1

    .line 700
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v1, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "Chunk {0} is invalid"

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method private markMetaChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 554
    iput-boolean v0, p0, Lorg/h2/mvstore/MVStore;->metaChanged:Z

    return-void
.end method

.method public static open(Ljava/lang/String;)Lorg/h2/mvstore/MVStore;
    .locals 2

    .line 390
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "fileName"

    .line 391
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-instance p0, Lorg/h2/mvstore/MVStore;

    invoke-direct {p0, v0}, Lorg/h2/mvstore/MVStore;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method

.method private panic(Ljava/lang/IllegalStateException;)V
    .locals 2

    .line 374
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 377
    :cond_0
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->panicException:Ljava/lang/IllegalStateException;

    .line 378
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->closeImmediately()V

    .line 379
    throw p1
.end method

.method private readChunkFooter(J)Lorg/h2/mvstore/Chunk;
    .locals 5

    .line 794
    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    const-wide/16 v1, 0x80

    sub-long/2addr p1, v1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, p2, v1}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 796
    new-array p2, v1, [B

    .line 797
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 798
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 799
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->parseMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    const-string v0, "fletcher"

    const/4 v1, 0x0

    .line 800
    invoke-static {p2, v0, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "fletcher"

    .line 801
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fletcher"

    .line 802
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 803
    sget-object v2, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 804
    array-length v2, p1

    invoke-static {p1, v2}, Lorg/h2/mvstore/DataUtils;->getFletcher32([BI)I

    move-result p1

    if-ne v0, p1, :cond_0

    const-string p1, "chunk"

    .line 806
    invoke-static {p2, p1, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result p1

    .line 807
    new-instance v0, Lorg/h2/mvstore/Chunk;

    invoke-direct {v0, p1}, Lorg/h2/mvstore/Chunk;-><init>(I)V

    const-string p1, "version"

    const-wide/16 v1, 0x0

    .line 808
    invoke-static {p2, p1, v1, v2}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/h2/mvstore/Chunk;->version:J

    const-string p1, "block"

    .line 809
    invoke-static {p2, p1, v1, v2}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, v0, Lorg/h2/mvstore/Chunk;->block:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private readChunkHeader(J)Lorg/h2/mvstore/Chunk;
    .locals 2

    const-wide/16 v0, 0x1000

    mul-long p1, p1, v0

    .line 1574
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    const/16 v1, 0x400

    invoke-virtual {v0, p1, p2, v1}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1575
    invoke-static {v0, p1, p2}, Lorg/h2/mvstore/Chunk;->readChunkHeader(Ljava/nio/ByteBuffer;J)Lorg/h2/mvstore/Chunk;

    move-result-object p1

    return-object p1
.end method

.method private readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;
    .locals 4

    const/4 v0, 0x0

    .line 769
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->readChunkHeader(J)Lorg/h2/mvstore/Chunk;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 777
    :cond_0
    iget v2, v1, Lorg/h2/mvstore/Chunk;->len:I

    int-to-long v2, v2

    add-long/2addr p1, v2

    const-wide/16 v2, 0x1000

    mul-long p1, p1, v2

    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->readChunkFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 778
    iget p1, p1, Lorg/h2/mvstore/Chunk;->id:I

    iget p2, v1, Lorg/h2/mvstore/Chunk;->id:I

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    return-object v0
.end method

.method private readPageChunkReferences(IJI)Lorg/h2/mvstore/Page$PageChildren;
    .locals 14

    move-object v0, p0

    move-wide/from16 v9, p2

    .line 1354
    invoke-static/range {p2 .. p3}, Lorg/h2/mvstore/DataUtils;->getPageType(J)I

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_0

    return-object v11

    .line 1358
    :cond_0
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz v1, :cond_1

    .line 1359
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v1, v9, v10}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/Page$PageChildren;

    goto :goto_0

    :cond_1
    move-object v1, v11

    :goto_0
    if-nez v1, :cond_5

    .line 1365
    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz v2, :cond_2

    .line 1366
    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v2, v9, v10}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Page;

    if-eqz v2, :cond_2

    .line 1368
    new-instance v1, Lorg/h2/mvstore/Page$PageChildren;

    invoke-direct {v1, v2}, Lorg/h2/mvstore/Page$PageChildren;-><init>(Lorg/h2/mvstore/Page;)V

    :cond_2
    if-nez v1, :cond_4

    .line 1373
    invoke-direct {p0, v9, v10}, Lorg/h2/mvstore/MVStore;->getChunk(J)Lorg/h2/mvstore/Chunk;

    move-result-object v1

    .line 1374
    iget-wide v2, v1, Lorg/h2/mvstore/Chunk;->block:J

    const-wide/16 v4, 0x1000

    mul-long v2, v2, v4

    .line 1375
    invoke-static/range {p2 .. p3}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    const-wide/16 v2, 0x0

    cmp-long v8, v6, v2

    if-ltz v8, :cond_3

    .line 1381
    iget-wide v2, v1, Lorg/h2/mvstore/Chunk;->block:J

    iget v1, v1, Lorg/h2/mvstore/Chunk;->len:I

    int-to-long v12, v1

    add-long/2addr v2, v12

    mul-long v12, v2, v4

    .line 1382
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    move-wide/from16 v2, p2

    move v4, p1

    move-wide v5, v6

    move-wide v7, v12

    invoke-static/range {v1 .. v8}, Lorg/h2/mvstore/Page$PageChildren;->read(Lorg/h2/mvstore/FileStore;JIJJ)Lorg/h2/mvstore/Page$PageChildren;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x6

    const/4 v3, 0x3

    .line 1377
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Lorg/h2/mvstore/Chunk;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Negative position {0}; p={1}, c={2}"

    invoke-static {v2, v1, v3}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1

    .line 1384
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lorg/h2/mvstore/Page$PageChildren;->removeDuplicateChunkReferences()V

    .line 1385
    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz v2, :cond_5

    .line 1386
    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v1}, Lorg/h2/mvstore/Page$PageChildren;->getMemory()I

    move-result v3

    invoke-virtual {v2, v9, v10, v1, v3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->put(JLjava/lang/Object;I)Ljava/lang/Object;

    .line 1389
    :cond_5
    iget-object v2, v1, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v2, v2

    if-nez v2, :cond_6

    .line 1390
    invoke-static/range {p2 .. p3}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v2

    move/from16 v3, p4

    if-ne v2, v3, :cond_6

    return-object v11

    :cond_6
    return-object v1
.end method

.method private declared-synchronized readStoreHeader()V
    .locals 16

    move-object/from16 v8, p0

    monitor-enter p0

    const/4 v0, 0x0

    .line 562
    :try_start_0
    iget-object v1, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    const/16 v2, 0x2000

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v9, 0x1000

    .line 563
    new-array v2, v9, [B

    const/4 v5, 0x0

    move-object v7, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v10, 0x5

    const/4 v11, 0x1

    if-gt v0, v9, :cond_5

    .line 565
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :try_start_1
    new-instance v12, Ljava/lang/String;

    sget-object v13, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-direct {v12, v2, v5, v9, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 570
    invoke-static {v12}, Lorg/h2/mvstore/DataUtils;->parseMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v13

    const-string v14, "blockSize"

    .line 571
    invoke-static {v13, v14, v9}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v9, :cond_4

    const-string v10, "fletcher"

    .line 579
    invoke-static {v13, v10, v5}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v10

    const-string v14, "fletcher"

    .line 580
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "fletcher"

    .line 581
    invoke-virtual {v12, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    sub-int/2addr v14, v11

    invoke-virtual {v12, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 582
    sget-object v14, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    .line 583
    array-length v14, v12

    invoke-static {v12, v14}, Lorg/h2/mvstore/DataUtils;->getFletcher32([BI)I

    move-result v12

    if-eq v10, v12, :cond_0

    goto :goto_3

    :cond_0
    const-string v10, "version"

    .line 588
    invoke-static {v13, v10, v3, v4}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v14

    if-eqz v7, :cond_2

    .line 589
    iget-wide v9, v7, Lorg/h2/mvstore/Chunk;->version:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v12, v14, v9

    if-lez v12, :cond_1

    goto :goto_1

    :cond_1
    move v11, v6

    goto :goto_2

    .line 591
    :cond_2
    :goto_1
    :try_start_2
    iget-object v6, v8, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v6, "created"

    .line 592
    invoke-static {v13, v6, v3, v4}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v8, Lorg/h2/mvstore/MVStore;->creationTime:J

    const-string v6, "chunk"

    .line 593
    invoke-static {v13, v6, v5}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v6

    const-string v9, "block"

    .line 594
    invoke-static {v13, v9, v3, v4}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v9

    .line 595
    invoke-direct {v8, v9, v10}, Lorg/h2/mvstore/MVStore;->readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 596
    iget v10, v9, Lorg/h2/mvstore/Chunk;->id:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v10, v6, :cond_3

    move-object v7, v9

    :cond_3
    :goto_2
    move v6, v11

    goto :goto_3

    :catch_0
    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    :try_start_3
    const-string v9, "Block size {0} is currently not supported"

    .line 574
    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v10, v9, v11}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v9

    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :goto_3
    add-int/lit16 v0, v0, 0x1000

    const/16 v9, 0x1000

    goto/16 :goto_0

    :cond_5
    if-eqz v6, :cond_13

    .line 609
    :try_start_4
    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v1, "format"

    const-wide/16 v12, 0x1

    invoke-static {v0, v1, v12, v13}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x2

    cmp-long v6, v0, v12

    if-lez v6, :cond_7

    .line 610
    iget-object v6, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v6}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    const-string v3, "The write format {0} is larger than the supported format {1}, and the file was not opened in read-only mode"

    .line 611
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v11

    invoke-static {v10, v3, v2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    .line 618
    :cond_7
    :goto_4
    iget-object v6, v8, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v9, "formatRead"

    invoke-static {v6, v9, v0, v1}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v6, v0, v12

    if-gtz v6, :cond_12

    const-wide/16 v0, -0x1

    .line 626
    iput-wide v0, v8, Lorg/h2/mvstore/MVStore;->lastStoredVersion:J

    .line 627
    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v5, 0x758fac300L

    .line 631
    div-long v5, v0, v5

    long-to-int v2, v5

    add-int/lit16 v2, v2, 0x7b2

    const/16 v5, 0x7de

    if-ge v2, v5, :cond_8

    .line 637
    iget-object v2, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/FileStore;->getDefaultRetentionTime()I

    move-result v2

    int-to-long v5, v2

    sub-long/2addr v0, v5

    iput-wide v0, v8, Lorg/h2/mvstore/MVStore;->creationTime:J

    goto :goto_5

    .line 638
    :cond_8
    iget-wide v5, v8, Lorg/h2/mvstore/MVStore;->creationTime:J

    cmp-long v2, v0, v5

    if-gez v2, :cond_9

    .line 641
    iput-wide v0, v8, Lorg/h2/mvstore/MVStore;->creationTime:J

    .line 642
    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v1, "created"

    iget-wide v5, v8, Lorg/h2/mvstore/MVStore;->creationTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_9
    :goto_5
    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->size()J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lorg/h2/mvstore/MVStore;->readChunkFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 646
    iget-wide v0, v0, Lorg/h2/mvstore/Chunk;->block:J

    invoke-direct {v8, v0, v1}, Lorg/h2/mvstore/MVStore;->readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eqz v7, :cond_b

    .line 648
    iget-wide v1, v0, Lorg/h2/mvstore/Chunk;->version:J

    iget-wide v5, v7, Lorg/h2/mvstore/Chunk;->version:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v9, v1, v5

    if-lez v9, :cond_a

    goto :goto_6

    :cond_a
    move-object v0, v7

    :cond_b
    :goto_6
    if-nez v0, :cond_c

    .line 655
    monitor-exit p0

    return-void

    .line 660
    :cond_c
    :goto_7
    :try_start_5
    iget-wide v1, v0, Lorg/h2/mvstore/Chunk;->next:J

    const-wide/16 v9, 0x1000

    cmp-long v5, v1, v3

    if-eqz v5, :cond_f

    iget-wide v1, v0, Lorg/h2/mvstore/Chunk;->next:J

    iget-object v5, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v5}, Lorg/h2/mvstore/FileStore;->size()J

    move-result-wide v5

    div-long/2addr v5, v9

    cmp-long v7, v1, v5

    if-ltz v7, :cond_d

    goto :goto_8

    .line 665
    :cond_d
    iget-wide v1, v0, Lorg/h2/mvstore/Chunk;->next:J

    invoke-direct {v8, v1, v2}, Lorg/h2/mvstore/MVStore;->readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 666
    iget v2, v1, Lorg/h2/mvstore/Chunk;->id:I

    iget v5, v0, Lorg/h2/mvstore/Chunk;->id:I

    if-gt v2, v5, :cond_e

    goto :goto_8

    :cond_e
    move-object v0, v1

    goto :goto_7

    .line 671
    :cond_f
    :goto_8
    invoke-direct {v8, v0}, Lorg/h2/mvstore/MVStore;->setLastChunk(Lorg/h2/mvstore/Chunk;)V

    .line 672
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->loadChunkMeta()V

    .line 675
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->verifyLastChunks()V

    .line 677
    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lorg/h2/mvstore/Chunk;

    .line 678
    iget v1, v11, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    if-nez v1, :cond_10

    .line 680
    iget-wide v2, v8, Lorg/h2/mvstore/MVStore;->currentVersion:J

    iget v4, v11, Lorg/h2/mvstore/Chunk;->id:I

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/h2/mvstore/MVStore;->registerFreePage(JIJI)V

    .line 682
    :cond_10
    iget-wide v1, v11, Lorg/h2/mvstore/Chunk;->block:J

    mul-long v1, v1, v9

    .line 683
    iget v3, v11, Lorg/h2/mvstore/Chunk;->len:I

    const/16 v4, 0x1000

    mul-int/lit16 v3, v3, 0x1000

    .line 684
    iget-object v5, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v5, v1, v2, v3}, Lorg/h2/mvstore/FileStore;->markUsed(JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    .line 686
    :cond_11
    monitor-exit p0

    return-void

    :cond_12
    :try_start_6
    const-string v3, "The read format {0} is larger than the supported format {1}"

    .line 620
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v11

    invoke-static {v10, v3, v2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_13
    const/4 v0, 0x6

    const-string v1, "Store header is corrupt: {0}"

    .line 605
    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    .line 557
    monitor-exit p0

    throw v0
.end method

.method private registerFreePage(JIJI)V
    .locals 2

    .line 1998
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2000
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 2001
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 2008
    :cond_0
    monitor-enter v0

    .line 2009
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/Chunk;

    if-nez p1, :cond_1

    .line 2011
    new-instance p1, Lorg/h2/mvstore/Chunk;

    invoke-direct {p1, p3}, Lorg/h2/mvstore/Chunk;-><init>(I)V

    .line 2012
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    :cond_1
    iget-wide p2, p1, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    const/4 v1, 0x0

    sub-long/2addr p2, p4

    iput-wide p2, p1, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    .line 2015
    iget p2, p1, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    sub-int/2addr p2, p6

    iput p2, p1, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    .line 2016
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private releaseWriteBuffer(Lorg/h2/mvstore/WriteBuffer;)V
    .locals 2

    .line 1422
    invoke-virtual {p1}, Lorg/h2/mvstore/WriteBuffer;->capacity()I

    move-result v0

    const/high16 v1, 0x400000

    if-gt v0, v1, :cond_0

    .line 1423
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->writeBuffer:Lorg/h2/mvstore/WriteBuffer;

    :cond_0
    return-void
.end method

.method private revertTemp(J)V
    .locals 4

    .line 2356
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2357
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2358
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    goto :goto_0

    .line 2362
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2364
    :cond_1
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/h2/mvstore/MVMap;

    .line 2365
    invoke-virtual {p2}, Lorg/h2/mvstore/MVMap;->removeUnusedOldVersions()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setLastChunk(Lorg/h2/mvstore/Chunk;)V
    .locals 5

    .line 710
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 713
    iput p1, p0, Lorg/h2/mvstore/MVStore;->lastMapId:I

    const-wide/16 v2, 0x0

    .line 714
    iput-wide v2, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    .line 715
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1, v2, v3, v0, v1}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    goto :goto_0

    .line 717
    :cond_0
    iget v2, p1, Lorg/h2/mvstore/Chunk;->mapId:I

    iput v2, p0, Lorg/h2/mvstore/MVStore;->lastMapId:I

    .line 718
    iget-wide v2, p1, Lorg/h2/mvstore/Chunk;->version:J

    iput-wide v2, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    .line 719
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget-wide v3, p1, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    invoke-virtual {v2, v3, v4, v0, v1}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    .line 722
    :goto_0
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/MVStore;->setWriteVersion(J)V

    return-void
.end method

.method private setWriteVersion(J)V
    .locals 2

    .line 972
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/MVMap;

    .line 973
    invoke-virtual {v1, p1, p2}, Lorg/h2/mvstore/MVMap;->setWriteVersion(J)V

    goto :goto_0

    .line 975
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    if-nez v0, :cond_1

    .line 977
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 979
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/h2/mvstore/MVMap;->setWriteVersion(J)V

    return-void
.end method

.method private shrinkFileIfPossible(I)V
    .locals 9

    .line 1517
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getFileLengthInUse()J

    move-result-wide v0

    .line 1518
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/FileStore;->size()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    sub-long v4, v2, v0

    const-wide/16 v6, 0x1000

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    return-void

    :cond_1
    const-wide/16 v4, 0x64

    mul-long v6, v0, v4

    .line 1525
    div-long/2addr v6, v2

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-ge v2, p1, :cond_2

    return-void

    .line 1529
    :cond_2
    iget-boolean p1, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-nez p1, :cond_3

    .line 1530
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->sync()V

    .line 1532
    :cond_3
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/FileStore;->truncate(J)V

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 3

    .line 2531
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->backgroundWriterThread:Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2535
    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->backgroundWriterThread:Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

    .line 2536
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, v0, :cond_1

    return-void

    .line 2540
    :cond_1
    iget-object v1, v0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 2541
    :try_start_0
    iget-object v2, v0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2542
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2543
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 2549
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    .line 2542
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private storeNow()J
    .locals 2

    .line 1048
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->storeNowTry()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 1050
    invoke-direct {p0, v0}, Lorg/h2/mvstore/MVStore;->panic(Ljava/lang/IllegalStateException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private storeNowTry()J
    .locals 25

    move-object/from16 v0, p0

    .line 1056
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v1

    .line 1057
    iget v3, v0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    div-int/lit8 v3, v3, 0xa

    .line 1058
    iget-wide v4, v0, Lorg/h2/mvstore/MVStore;->lastFreeUnusedChunks:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v3, v1, v4

    if-ltz v3, :cond_0

    .line 1059
    iput-wide v1, v0, Lorg/h2/mvstore/MVStore;->lastFreeUnusedChunks:J

    .line 1060
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->freeUnusedChunks()V

    .line 1062
    :cond_0
    iget v3, v0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    .line 1063
    iget-wide v4, v0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    .line 1064
    iget-wide v6, v0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    .line 1065
    invoke-direct {v0, v6, v7}, Lorg/h2/mvstore/MVStore;->setWriteVersion(J)V

    .line 1066
    iput-wide v1, v0, Lorg/h2/mvstore/MVStore;->lastCommitTime:J

    const/4 v8, 0x0

    .line 1067
    iput-object v8, v0, Lorg/h2/mvstore/MVStore;->retainChunk:Lorg/h2/mvstore/Chunk;

    .line 1073
    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-nez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    .line 1076
    :cond_1
    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget v8, v8, Lorg/h2/mvstore/Chunk;->id:I

    .line 1077
    iget-object v10, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v8}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    invoke-virtual {v12}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    iget-object v10, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v10, v10, Lorg/h2/mvstore/Chunk;->time:J

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_0
    const/4 v10, 0x1

    add-int/2addr v8, v10

    const v11, 0x3ffffff

    .line 1083
    rem-int/2addr v8, v11

    .line 1084
    iget-object v11, v0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/h2/mvstore/Chunk;

    const-wide v12, 0x7fffffffffffffffL

    if-nez v11, :cond_16

    .line 1095
    new-instance v11, Lorg/h2/mvstore/Chunk;

    invoke-direct {v11, v8}, Lorg/h2/mvstore/Chunk;-><init>(I)V

    const v8, 0x7fffffff

    .line 1097
    iput v8, v11, Lorg/h2/mvstore/Chunk;->pageCount:I

    .line 1098
    iput v8, v11, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    .line 1099
    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->maxLen:J

    .line 1100
    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    .line 1101
    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    .line 1102
    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->block:J

    .line 1103
    iput v8, v11, Lorg/h2/mvstore/Chunk;->len:I

    .line 1104
    iput-wide v1, v11, Lorg/h2/mvstore/Chunk;->time:J

    .line 1105
    iput-wide v6, v11, Lorg/h2/mvstore/Chunk;->version:J

    .line 1106
    iget v1, v0, Lorg/h2/mvstore/MVStore;->lastMapId:I

    iput v1, v11, Lorg/h2/mvstore/Chunk;->mapId:I

    .line 1107
    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->next:J

    .line 1108
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v11, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v2, v11, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v2}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v2, v11, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v2}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1113
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1114
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-wide/16 v12, 0x0

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/mvstore/MVMap;

    .line 1115
    invoke-virtual {v8, v6, v7}, Lorg/h2/mvstore/MVMap;->setWriteVersion(J)V

    .line 1116
    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->getVersion()J

    move-result-wide v14

    .line 1117
    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->getCreateVersion()J

    move-result-wide v16

    cmp-long v18, v16, v4

    if-lez v18, :cond_2

    goto :goto_1

    .line 1121
    :cond_2
    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->isVolatile()Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_1

    :cond_3
    cmp-long v16, v14, v12

    if-ltz v16, :cond_4

    .line 1124
    iget-wide v9, v0, Lorg/h2/mvstore/MVStore;->lastStoredVersion:J

    cmp-long v16, v14, v9

    if-ltz v16, :cond_4

    .line 1125
    invoke-virtual {v8, v4, v5}, Lorg/h2/mvstore/MVMap;->openVersion(J)Lorg/h2/mvstore/MVMap;

    move-result-object v8

    .line 1126
    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->getRoot()Lorg/h2/mvstore/Page;

    move-result-object v9

    invoke-virtual {v9}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v9

    cmp-long v14, v9, v12

    if-nez v14, :cond_4

    .line 1127
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v10, 0x1

    goto :goto_1

    .line 1131
    :cond_5
    invoke-direct {v0, v4, v5}, Lorg/h2/mvstore/MVStore;->applyFreedSpace(J)V

    .line 1132
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getWriteBuffer()Lorg/h2/mvstore/WriteBuffer;

    move-result-object v1

    const/4 v8, 0x0

    .line 1134
    invoke-virtual {v11, v1, v8}, Lorg/h2/mvstore/Chunk;->writeChunkHeader(Lorg/h2/mvstore/WriteBuffer;I)V

    .line 1135
    invoke-virtual {v1}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v9

    .line 1136
    iput v8, v11, Lorg/h2/mvstore/Chunk;->pageCount:I

    .line 1137
    iput v8, v11, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    .line 1138
    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->maxLen:J

    .line 1139
    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    .line 1140
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/h2/mvstore/MVMap;

    .line 1141
    invoke-virtual {v10}, Lorg/h2/mvstore/MVMap;->getRoot()Lorg/h2/mvstore/Page;

    move-result-object v14

    .line 1142
    invoke-virtual {v10}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result v10

    invoke-static {v10}, Lorg/h2/mvstore/MVMap;->getMapRootKey(I)Ljava/lang/String;

    move-result-object v10

    .line 1143
    invoke-virtual {v14}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v15

    cmp-long v17, v15, v12

    if-nez v17, :cond_6

    .line 1144
    iget-object v14, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v15, "0"

    invoke-virtual {v14, v10, v15}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1146
    :cond_6
    invoke-virtual {v14, v11, v1}, Lorg/h2/mvstore/Page;->writeUnsavedRecursive(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/WriteBuffer;)V

    .line 1147
    invoke-virtual {v14}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v14

    .line 1148
    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-wide/16 v12, 0x0

    goto :goto_2

    .line 1151
    :cond_7
    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v8, v6, v7}, Lorg/h2/mvstore/MVMap;->setWriteVersion(J)V

    .line 1153
    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->getRoot()Lorg/h2/mvstore/Page;

    move-result-object v8

    .line 1154
    invoke-virtual {v8, v11, v1}, Lorg/h2/mvstore/Page;->writeUnsavedRecursive(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/WriteBuffer;)V

    .line 1156
    invoke-virtual {v1}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v10

    add-int/lit16 v10, v10, 0x80

    const/16 v12, 0x1000

    .line 1159
    invoke-static {v10, v12}, Lorg/h2/util/MathUtils;->roundUpInt(II)I

    move-result v10

    .line 1161
    invoke-virtual {v1, v10}, Lorg/h2/mvstore/WriteBuffer;->limit(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1165
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getFileLengthInUse()J

    move-result-wide v13

    .line 1167
    iget-boolean v15, v0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    if-eqz v15, :cond_8

    .line 1168
    iget-object v15, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v15, v10}, Lorg/h2/mvstore/FileStore;->allocate(I)J

    move-result-wide v15

    move-wide/from16 v19, v13

    move-wide v12, v15

    goto :goto_4

    :cond_8
    move-wide/from16 v19, v13

    move-wide/from16 v12, v19

    :goto_4
    int-to-long v14, v10

    add-long/2addr v14, v12

    move-wide/from16 v21, v6

    .line 1173
    iget-object v6, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v6}, Lorg/h2/mvstore/FileStore;->size()J

    move-result-wide v6

    cmp-long v16, v14, v6

    if-ltz v16, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    .line 1175
    :goto_5
    iget-boolean v7, v0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    if-nez v7, :cond_a

    .line 1179
    iget-object v7, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    move-wide/from16 v14, v19

    invoke-virtual {v7, v14, v15, v10}, Lorg/h2/mvstore/FileStore;->markUsed(JI)V

    :cond_a
    const-wide/16 v14, 0x1000

    move-object/from16 v24, v2

    move/from16 v23, v3

    .line 1182
    div-long v2, v12, v14

    iput-wide v2, v11, Lorg/h2/mvstore/Chunk;->block:J

    const/16 v2, 0x1000

    .line 1183
    div-int/2addr v10, v2

    iput v10, v11, Lorg/h2/mvstore/Chunk;->len:I

    .line 1184
    invoke-virtual {v8}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v14

    iput-wide v14, v11, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    .line 1186
    iget-boolean v3, v0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    if-eqz v3, :cond_b

    .line 1187
    iget v3, v11, Lorg/h2/mvstore/Chunk;->len:I

    .line 1188
    iget-object v7, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    mul-int/lit16 v3, v3, 0x1000

    invoke-virtual {v7, v3}, Lorg/h2/mvstore/FileStore;->allocate(I)J

    move-result-wide v14

    .line 1190
    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v2, v14, v15, v3}, Lorg/h2/mvstore/FileStore;->free(JI)V

    const-wide/16 v2, 0x1000

    .line 1191
    div-long/2addr v14, v2

    iput-wide v14, v11, Lorg/h2/mvstore/Chunk;->next:J

    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_b
    const-wide/16 v2, 0x0

    .line 1194
    iput-wide v2, v11, Lorg/h2/mvstore/Chunk;->next:J

    goto :goto_6

    .line 1196
    :goto_7
    invoke-virtual {v1, v2}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1197
    invoke-virtual {v11, v1, v9}, Lorg/h2/mvstore/Chunk;->writeChunkHeader(Lorg/h2/mvstore/WriteBuffer;I)V

    .line 1198
    invoke-direct {v0, v4, v5}, Lorg/h2/mvstore/MVStore;->revertTemp(J)V

    .line 1200
    invoke-virtual {v1}, Lorg/h2/mvstore/WriteBuffer;->limit()I

    move-result v3

    add-int/lit8 v3, v3, -0x80

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1201
    invoke-virtual {v11}, Lorg/h2/mvstore/Chunk;->getFooterBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    .line 1203
    invoke-virtual {v1, v2}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    .line 1204
    invoke-virtual {v1}, Lorg/h2/mvstore/WriteBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v12, v13, v2}, Lorg/h2/mvstore/MVStore;->write(JLjava/nio/ByteBuffer;)V

    .line 1205
    invoke-direct {v0, v1}, Lorg/h2/mvstore/MVStore;->releaseWriteBuffer(Lorg/h2/mvstore/WriteBuffer;)V

    if-nez v6, :cond_11

    .line 1210
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-nez v1, :cond_c

    :goto_8
    const/4 v1, 0x1

    goto :goto_b

    .line 1212
    :cond_c
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v1, v1, Lorg/h2/mvstore/Chunk;->next:J

    iget-wide v9, v11, Lorg/h2/mvstore/Chunk;->block:J

    cmp-long v3, v1, v9

    if-eqz v3, :cond_d

    goto :goto_8

    .line 1216
    :cond_d
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v2, "version"

    const-wide/16 v9, 0x0

    invoke-static {v1, v2, v9, v10}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1218
    iget-object v3, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v9, v3, Lorg/h2/mvstore/Chunk;->version:J

    sub-long/2addr v9, v1

    const-wide/16 v1, 0x14

    cmp-long v3, v9, v1

    if-lez v3, :cond_e

    goto :goto_8

    .line 1222
    :cond_e
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v2, "chunk"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    .line 1224
    :goto_9
    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    if-nez v2, :cond_f

    goto :goto_8

    .line 1231
    :cond_f
    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget v2, v2, Lorg/h2/mvstore/Chunk;->id:I

    if-ne v1, v2, :cond_10

    goto :goto_a

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    :goto_a
    const/4 v1, 0x0

    .line 1240
    :goto_b
    iput-object v11, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-eqz v1, :cond_12

    .line 1242
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->writeStoreHeader()V

    :cond_12
    if-nez v6, :cond_13

    const/4 v1, 0x1

    .line 1246
    invoke-direct {v0, v1}, Lorg/h2/mvstore/MVStore;->shrinkFileIfPossible(I)V

    .line 1248
    :cond_13
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/MVMap;

    .line 1249
    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->getRoot()Lorg/h2/mvstore/Page;

    move-result-object v2

    .line 1250
    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v3, v6, v9

    if-lez v3, :cond_14

    .line 1251
    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->writeEnd()V

    goto :goto_c

    .line 1254
    :cond_15
    invoke-virtual {v8}, Lorg/h2/mvstore/Page;->writeEnd()V

    .line 1258
    iget v1, v0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    sub-int v1, v1, v23

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    .line 1261
    iput-boolean v3, v0, Lorg/h2/mvstore/MVStore;->metaChanged:Z

    .line 1262
    iput-wide v4, v0, Lorg/h2/mvstore/MVStore;->lastStoredVersion:J

    return-wide v21

    :cond_16
    move/from16 v23, v3

    move-wide/from16 v21, v6

    const/4 v3, 0x0

    .line 1088
    iget-wide v6, v11, Lorg/h2/mvstore/Chunk;->block:J

    cmp-long v9, v6, v12

    if-nez v9, :cond_17

    const/4 v6, 0x3

    const-string v7, "Last block not stored, possibly due to out-of-memory"

    .line 1089
    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v6, v7, v9}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v6

    .line 1092
    invoke-direct {v0, v6}, Lorg/h2/mvstore/MVStore;->panic(Ljava/lang/IllegalStateException;)V

    :cond_17
    move-wide/from16 v6, v21

    move/from16 v3, v23

    goto/16 :goto_0
.end method

.method private verifyLastChunks()V
    .locals 11

    .line 726
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v0

    .line 727
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 728
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 731
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 732
    iget-object v6, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/mvstore/Chunk;

    if-eqz v4, :cond_0

    .line 733
    iget-wide v7, v6, Lorg/h2/mvstore/Chunk;->time:J

    iget-wide v9, v4, Lorg/h2/mvstore/Chunk;->time:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_0

    goto :goto_2

    .line 738
    :cond_0
    iget-wide v7, v6, Lorg/h2/mvstore/Chunk;->time:J

    iget v4, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    cmp-long v4, v7, v0

    if-gez v4, :cond_1

    .line 740
    iget v3, v6, Lorg/h2/mvstore/Chunk;->id:I

    :goto_1
    move-object v4, v6

    goto :goto_0

    .line 743
    :cond_1
    iget-wide v7, v6, Lorg/h2/mvstore/Chunk;->block:J

    invoke-direct {p0, v7, v8}, Lorg/h2/mvstore/MVStore;->readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 744
    iget v4, v4, Lorg/h2/mvstore/Chunk;->id:I

    iget v7, v6, Lorg/h2/mvstore/Chunk;->id:I

    if-eq v4, v7, :cond_2

    goto :goto_2

    .line 747
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 749
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/Chunk;

    .line 750
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-eq v0, v1, :cond_5

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_3

    .line 755
    :cond_4
    iget-wide v0, v0, Lorg/h2/mvstore/Chunk;->version:J

    :goto_3
    invoke-virtual {p0, v0, v1}, Lorg/h2/mvstore/MVStore;->rollbackTo(J)V

    :cond_5
    return-void
.end method

.method private write(JLjava/nio/ByteBuffer;)V
    .locals 1

    .line 841
    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/mvstore/FileStore;->writeFully(JLjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 843
    invoke-direct {p0, p1}, Lorg/h2/mvstore/MVStore;->panic(Ljava/lang/IllegalStateException;)V

    .line 844
    throw p1
.end method

.method private writeStoreHeader()V
    .locals 5

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v2, "block"

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v3, v3, Lorg/h2/mvstore/Chunk;->block:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v2, "chunk"

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget v3, v3, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v2, "version"

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v3, v3, Lorg/h2/mvstore/Chunk;->version:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :cond_0
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/util/HashMap;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 827
    array-length v2, v1

    invoke-static {v1, v2}, Lorg/h2/mvstore/DataUtils;->getFletcher32([BI)I

    move-result v1

    const-string v2, "fletcher"

    .line 828
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "\n"

    .line 829
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v1, 0x2000

    .line 831
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 832
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x1000

    .line 833
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 834
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 835
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 836
    invoke-direct {p0, v2, v3, v1}, Lorg/h2/mvstore/MVStore;->write(JLjava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method beforeWrite(Lorg/h2/mvstore/MVMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;)V"
        }
    .end annotation

    .line 2199
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->saveNeeded:Z

    if-eqz v0, :cond_1

    .line 2200
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2207
    iput-boolean p1, p0, Lorg/h2/mvstore/MVStore;->saveNeeded:Z

    .line 2209
    iget p1, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    if-lez p1, :cond_1

    .line 2210
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    :cond_1
    return-void
.end method

.method cachePage(JLorg/h2/mvstore/Page;I)V
    .locals 1

    .line 2625
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz v0, :cond_0

    .line 2626
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->put(JLjava/lang/Object;I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 852
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-eqz v0, :cond_1

    .line 856
    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 857
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->stopBackgroundThread()V

    .line 858
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->hasUnsavedChanges()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    :cond_1
    const/4 v0, 0x1

    .line 862
    invoke-direct {p0, v0}, Lorg/h2/mvstore/MVStore;->closeStore(Z)V

    return-void
.end method

.method public closeImmediately()V
    .locals 3

    const/4 v0, 0x0

    .line 871
    :try_start_0
    invoke-direct {p0, v0}, Lorg/h2/mvstore/MVStore;->closeStore(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 873
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 874
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public commit()J
    .locals 4

    .line 997
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-eqz v0, :cond_0

    .line 998
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    move-result-wide v0

    return-wide v0

    .line 1000
    :cond_0
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    .line 1001
    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/MVStore;->setWriteVersion(J)V

    return-wide v0
.end method

.method public compact(II)Z
    .locals 2

    .line 1790
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1793
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->compactSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1794
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 1796
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1797
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->compactGetOldChunks(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 1798
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 1799
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1802
    :cond_1
    invoke-direct {p0, p1}, Lorg/h2/mvstore/MVStore;->compactRewrite(Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    .line 1803
    monitor-exit v0

    return p1

    .line 1800
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    :catchall_0
    move-exception p1

    .line 1798
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 1804
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public declared-synchronized compactMoveChunks()Z
    .locals 3

    monitor-enter p0

    const/16 v0, 0x64

    const-wide v1, 0x7fffffffffffffffL

    .line 1616
    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/mvstore/MVStore;->compactMoveChunks(IJ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized compactMoveChunks(IJ)Z
    .locals 7

    monitor-enter p0

    .line 1631
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 1632
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1636
    :cond_0
    iget v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    .line 1637
    iget-boolean v2, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, -0x1

    .line 1639
    :try_start_1
    iput v3, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    .line 1640
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->freeUnusedChunks()V

    .line 1641
    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v3}, Lorg/h2/mvstore/FileStore;->getFillRate()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v3, p1, :cond_1

    .line 1650
    :try_start_2
    iput-boolean v2, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    .line 1651
    iput v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v1

    .line 1644
    :cond_1
    :try_start_3
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/FileStore;->getFirstFree()J

    move-result-wide v3

    const-wide/16 v5, 0x1000

    div-long/2addr v3, v5

    .line 1645
    invoke-direct {p0, v3, v4, p2, p3}, Lorg/h2/mvstore/MVStore;->compactGetMoveBlocks(JJ)Ljava/util/ArrayList;

    move-result-object p1

    .line 1646
    invoke-direct {p0, p1}, Lorg/h2/mvstore/MVStore;->compactMoveChunks(Ljava/util/ArrayList;)V

    .line 1647
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->freeUnusedChunks()V

    .line 1648
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->storeNow()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1650
    :try_start_4
    iput-boolean v2, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    .line 1651
    iput v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 p1, 0x1

    .line 1653
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 1650
    :try_start_5
    iput-boolean v2, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    .line 1651
    iput v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1634
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    .line 1630
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized compactRewriteFully()Z
    .locals 7

    monitor-enter p0

    .line 1584
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 1585
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1587
    monitor-exit p0

    return v1

    .line 1589
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/MVMap;

    const/4 v3, 0x0

    .line 1592
    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap;->cursor(Ljava/lang/Object;)Lorg/h2/mvstore/Cursor;

    move-result-object v4

    .line 1594
    :goto_0
    invoke-virtual {v4}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1595
    invoke-virtual {v4}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    .line 1596
    invoke-virtual {v4}, Lorg/h2/mvstore/Cursor;->getPage()Lorg/h2/mvstore/Page;

    move-result-object v5

    if-ne v5, v3, :cond_2

    goto :goto_0

    .line 1600
    :cond_2
    invoke-virtual {v5, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    .line 1601
    invoke-virtual {v5, v1}, Lorg/h2/mvstore/Page;->getValue(I)Ljava/lang/Object;

    move-result-object v6

    .line 1602
    invoke-virtual {v2, v3, v6}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v5

    goto :goto_0

    .line 1606
    :cond_3
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 1607
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 1583
    monitor-exit p0

    throw v0
.end method

.method public getAutoCommitDelay()I
    .locals 1

    .line 2592
    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCommitDelay:I

    return v0
.end method

.method public getAutoCommitMemory()I
    .locals 1

    .line 2602
    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    return v0
.end method

.method public getCache()Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS<",
            "Lorg/h2/mvstore/Page;",
            ">;"
        }
    .end annotation

    .line 2660
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    return-object v0
.end method

.method public getCacheSize()I
    .locals 4

    .line 2648
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2651
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getMaxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getCacheSizeUsed()I
    .locals 4

    .line 2636
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2639
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getUsedMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method getCompressionLevel()I
    .locals 1

    .line 2034
    iget v0, p0, Lorg/h2/mvstore/MVStore;->compressionLevel:I

    return v0
.end method

.method getCompressorFast()Lorg/h2/compress/Compressor;
    .locals 1

    .line 2020
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorFast:Lorg/h2/compress/Compressor;

    if-nez v0, :cond_0

    .line 2021
    new-instance v0, Lorg/h2/compress/CompressLZF;

    invoke-direct {v0}, Lorg/h2/compress/CompressLZF;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorFast:Lorg/h2/compress/Compressor;

    .line 2023
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorFast:Lorg/h2/compress/Compressor;

    return-object v0
.end method

.method getCompressorHigh()Lorg/h2/compress/Compressor;
    .locals 1

    .line 2027
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorHigh:Lorg/h2/compress/Compressor;

    if-nez v0, :cond_0

    .line 2028
    new-instance v0, Lorg/h2/compress/CompressDeflate;

    invoke-direct {v0}, Lorg/h2/compress/CompressDeflate;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorHigh:Lorg/h2/compress/Compressor;

    .line 2030
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorHigh:Lorg/h2/compress/Compressor;

    return-object v0
.end method

.method public getCurrentVersion()J
    .locals 2

    .line 2376
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    return-wide v0
.end method

.method public getFileStore()Lorg/h2/mvstore/FileStore;
    .locals 1

    .line 2385
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    return-object v0
.end method

.method public declared-synchronized getMapName(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 2458
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 2459
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/MVMap;->getMapKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2460
    :cond_0
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->parseMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2457
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMapNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 484
    :try_start_0
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 485
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 486
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v2, "name."

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/MVMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "name."

    .line 488
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "name."

    .line 491
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 493
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 483
    monitor-exit p0

    throw v0
.end method

.method public getMetaMap()Lorg/h2/mvstore/MVMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 516
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 517
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    return-object v0
.end method

.method getOldestVersionToKeep()J
    .locals 7

    .line 2117
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    .line 2118
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-nez v2, :cond_0

    .line 2119
    iget v2, p0, Lorg/h2/mvstore/MVStore;->versionsToKeep:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 2121
    :cond_0
    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 2123
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public getPageSplitSize()I
    .locals 1

    .line 2038
    iget v0, p0, Lorg/h2/mvstore/MVStore;->pageSplitSize:I

    return v0
.end method

.method public getRetentionTime()I
    .locals 1

    .line 2063
    iget v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    return v0
.end method

.method public getReuseSpace()Z
    .locals 1

    .line 2042
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    return v0
.end method

.method public getStoreHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2396
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStoreVersion()I
    .locals 2

    .line 2223
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 2224
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v1, "setting.storeVersion"

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2225
    :cond_0
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->parseHexInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getUnsavedMemory()I
    .locals 1

    .line 2614
    iget v0, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    return v0
.end method

.method public getVersionsToKeep()J
    .locals 2

    .line 2107
    iget v0, p0, Lorg/h2/mvstore/MVStore;->versionsToKeep:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hasMap(Ljava/lang/String;)Z
    .locals 3

    .line 548
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasUnsavedChanges()Z
    .locals 7

    .line 1557
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 1558
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->metaChanged:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1561
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/MVMap;

    .line 1562
    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1563
    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->getVersion()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 1564
    iget-wide v4, p0, Lorg/h2/mvstore/MVStore;->lastStoredVersion:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method isChunkLive(I)Z
    .locals 1

    .line 922
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isClosed()Z
    .locals 1

    .line 2527
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    return v0
.end method

.method public openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/h2/mvstore/MVMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 424
    new-instance v0, Lorg/h2/mvstore/MVMap$Builder;

    invoke-direct {v0}, Lorg/h2/mvstore/MVMap$Builder;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/h2/mvstore/MVMap<",
            "TK;TV;>;K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/h2/mvstore/MVMap$MapBuilder<",
            "TM;TK;TV;>;)TM;"
        }
    .end annotation

    monitor-enter p0

    .line 440
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 441
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 447
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->parseHexInt(Ljava/lang/String;)I

    move-result p1

    .line 449
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/MVMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 451
    monitor-exit p0

    return-object v0

    .line 453
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/h2/mvstore/MVMap$MapBuilder;->create()Lorg/h2/mvstore/MVMap;

    move-result-object p2

    .line 454
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/MVMap;->getMapKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 456
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->parseMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v0, "id"

    .line 457
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-virtual {p2, p0, v1}, Lorg/h2/mvstore/MVMap;->init(Lorg/h2/mvstore/MVStore;Ljava/util/HashMap;)V

    .line 459
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v0, p1}, Lorg/h2/mvstore/MVStore;->getRootPos(Lorg/h2/mvstore/MVMap;I)J

    move-result-wide v0

    goto :goto_0

    .line 461
    :cond_1
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 462
    iget v1, p0, Lorg/h2/mvstore/MVStore;->lastMapId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/mvstore/MVStore;->lastMapId:I

    const-string v2, "id"

    .line 463
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "createVersion"

    .line 464
    iget-wide v3, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-interface {p2}, Lorg/h2/mvstore/MVMap$MapBuilder;->create()Lorg/h2/mvstore/MVMap;

    move-result-object p2

    .line 466
    invoke-virtual {p2, p0, v0}, Lorg/h2/mvstore/MVMap;->init(Lorg/h2/mvstore/MVStore;Ljava/util/HashMap;)V

    .line 467
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    .line 468
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v1}, Lorg/h2/mvstore/MVMap;->getMapKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/MVMap;->asString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    move p1, v1

    move-wide v0, v2

    :goto_0
    const-wide/16 v2, -0x1

    .line 473
    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    .line 474
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    .line 439
    monitor-exit p0

    throw p1
.end method

.method openMapVersion(JILorg/h2/mvstore/MVMap;)Lorg/h2/mvstore/MVMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/h2/mvstore/MVMap<",
            "**>;>(JI",
            "Lorg/h2/mvstore/MVMap<",
            "**>;)TT;"
        }
    .end annotation

    .line 406
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->getMetaMap(J)Lorg/h2/mvstore/MVMap;

    move-result-object v0

    .line 407
    invoke-static {v0, p3}, Lorg/h2/mvstore/MVStore;->getRootPos(Lorg/h2/mvstore/MVMap;I)J

    move-result-wide v0

    .line 408
    invoke-virtual {p4}, Lorg/h2/mvstore/MVMap;->openReadOnly()Lorg/h2/mvstore/MVMap;

    move-result-object p3

    .line 409
    invoke-virtual {p3, v0, v1, p1, p2}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    return-object p3
.end method

.method readPage(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;J)",
            "Lorg/h2/mvstore/Page;"
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v9, p2

    const/4 v1, 0x0

    const/4 v2, 0x6

    const-wide/16 v3, 0x0

    cmp-long v5, v9, v3

    if-eqz v5, :cond_3

    .line 1933
    iget-object v5, v0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v5, v9, v10}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/mvstore/Page;

    :goto_0
    if-nez v5, :cond_2

    .line 1935
    invoke-direct {p0, v9, v10}, Lorg/h2/mvstore/MVStore;->getChunk(J)Lorg/h2/mvstore/Chunk;

    move-result-object v5

    .line 1936
    iget-wide v6, v5, Lorg/h2/mvstore/Chunk;->block:J

    const-wide/16 v11, 0x1000

    mul-long v6, v6, v11

    .line 1937
    invoke-static/range {p2 .. p3}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result v8

    int-to-long v13, v8

    add-long/2addr v6, v13

    cmp-long v8, v6, v3

    if-ltz v8, :cond_1

    .line 1943
    iget-wide v1, v5, Lorg/h2/mvstore/Chunk;->block:J

    iget v3, v5, Lorg/h2/mvstore/Chunk;->len:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    mul-long v11, v11, v1

    .line 1944
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    move-wide/from16 v2, p2

    move-object/from16 v4, p1

    move-wide v5, v6

    move-wide v7, v11

    invoke-static/range {v1 .. v8}, Lorg/h2/mvstore/Page;->read(Lorg/h2/mvstore/FileStore;JLorg/h2/mvstore/MVMap;JJ)Lorg/h2/mvstore/Page;

    move-result-object v5

    .line 1945
    invoke-virtual {v5}, Lorg/h2/mvstore/Page;->getMemory()I

    move-result v1

    invoke-virtual {p0, v9, v10, v5, v1}, Lorg/h2/mvstore/MVStore;->cachePage(JLorg/h2/mvstore/Page;I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 1939
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Negative position {0}"

    invoke-static {v2, v1, v3}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1

    :cond_2
    :goto_1
    return-object v5

    .line 1930
    :cond_3
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Position 0"

    invoke-static {v2, v3, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method registerUnsavedPage(I)V
    .locals 1

    .line 2186
    iget v0, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    .line 2187
    iget p1, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    .line 2188
    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 2189
    iput-boolean p1, p0, Lorg/h2/mvstore/MVStore;->saveNeeded:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized removeMap(Lorg/h2/mvstore/MVMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2438
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 2439
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Removing the meta map is not allowed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2441
    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->clear()V

    .line 2442
    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result p1

    .line 2443
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVStore;->getMapName(I)Ljava/lang/String;

    move-result-object v0

    .line 2444
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    .line 2445
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/MVMap;->getMapKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/MVMap;->getMapRootKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2449
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2437
    monitor-exit p0

    throw p1
.end method

.method removePage(Lorg/h2/mvstore/MVMap;JI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;JI)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 1965
    iget p2, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    sub-int/2addr p2, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    return-void

    .line 1973
    :cond_0
    iget-object p4, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz p4, :cond_1

    .line 1974
    invoke-static {p2, p3}, Lorg/h2/mvstore/DataUtils;->getPageType(J)I

    move-result p4

    if-nez p4, :cond_1

    .line 1977
    iget-object p4, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {p4, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->remove(J)Ljava/lang/Object;

    .line 1981
    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/h2/mvstore/MVStore;->getChunk(J)Lorg/h2/mvstore/Chunk;

    move-result-object p4

    .line 1982
    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    .line 1983
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    if-ne p1, v4, :cond_2

    iget-wide v4, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    cmp-long p1, v4, v0

    if-ltz p1, :cond_2

    .line 1984
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->currentStoreThread:Ljava/lang/Thread;

    if-ne p1, v0, :cond_2

    .line 1989
    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    :cond_2
    move-wide v5, v2

    .line 1992
    iget v7, p4, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {p2, p3}, Lorg/h2/mvstore/DataUtils;->getPageMaxLength(J)I

    move-result p1

    int-to-long v8, p1

    const/4 v10, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lorg/h2/mvstore/MVStore;->registerFreePage(JIJI)V

    return-void
.end method

.method public declared-synchronized renameMap(Lorg/h2/mvstore/MVMap;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 2413
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 2414
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Renaming the meta map is not allowed"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2416
    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result v0

    .line 2417
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/MVStore;->getMapName(I)Ljava/lang/String;

    move-result-object v3

    .line 2418
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 2419
    monitor-exit p0

    return-void

    .line 2421
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/mvstore/MVMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v5, "A map named {0} already exists"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v4, v5, v2}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2424
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    .line 2425
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2426
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2427
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v0}, Lorg/h2/mvstore/MVMap;->getMapKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/MVMap;->asString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2428
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2429
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2412
    monitor-exit p0

    throw p1
.end method

.method public rollback()V
    .locals 2

    .line 2244
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-virtual {p0, v0, v1}, Lorg/h2/mvstore/MVStore;->rollbackTo(J)V

    return-void
.end method

.method public declared-synchronized rollbackTo(J)V
    .locals 9

    monitor-enter p0

    .line 2256
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    .line 2259
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/MVMap;

    .line 2260
    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->close()V

    goto :goto_0

    .line 2262
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->clear()V

    .line 2263
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2264
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-eqz v0, :cond_1

    .line 2265
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->clear()V

    .line 2267
    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2268
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2269
    iput-wide p1, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    .line 2270
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->setWriteVersion(J)V

    .line 2271
    iput-boolean v2, p0, Lorg/h2/mvstore/MVStore;->metaChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2272
    monitor-exit p0

    return-void

    .line 2274
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->isKnownVersion(J)Z

    move-result v0

    const-string v1, "Unknown version {0}"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2277
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/MVMap;

    .line 2278
    invoke-virtual {v1, p1, p2}, Lorg/h2/mvstore/MVMap;->rollbackTo(J)V

    goto :goto_1

    .line 2280
    :cond_3
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    :goto_2
    cmp-long v4, v0, p1

    if-ltz v4, :cond_5

    .line 2281
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    .line 2284
    :cond_4
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    goto :goto_2

    .line 2286
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0, p1, p2}, Lorg/h2/mvstore/MVMap;->rollbackTo(J)V

    .line 2287
    iput-boolean v2, p0, Lorg/h2/mvstore/MVStore;->metaChanged:Z

    .line 2292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2294
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/mvstore/Chunk;

    .line 2295
    iget-wide v6, v5, Lorg/h2/mvstore/Chunk;->version:J

    cmp-long v8, v6, p1

    if-lez v8, :cond_7

    .line 2296
    iget v5, v5, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    .line 2297
    iget v6, v1, Lorg/h2/mvstore/Chunk;->id:I

    iget v7, v5, Lorg/h2/mvstore/Chunk;->id:I

    if-ge v6, v7, :cond_6

    :cond_8
    move-object v1, v5

    goto :goto_4

    .line 2301
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 2304
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2305
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->revertTemp(J)V

    .line 2307
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2308
    iget-object v5, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/mvstore/Chunk;

    .line 2309
    iget-wide v5, v4, Lorg/h2/mvstore/Chunk;->block:J

    const-wide/16 v7, 0x1000

    mul-long v5, v5, v7

    .line 2310
    iget v4, v4, Lorg/h2/mvstore/Chunk;->len:I

    mul-int/lit16 v4, v4, 0x1000

    .line 2311
    iget-object v7, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v7, v5, v6, v4}, Lorg/h2/mvstore/FileStore;->free(JI)V

    .line 2314
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getWriteBuffer()Lorg/h2/mvstore/WriteBuffer;

    move-result-object v7

    .line 2315
    invoke-virtual {v7, v4}, Lorg/h2/mvstore/WriteBuffer;->limit(I)Lorg/h2/mvstore/WriteBuffer;

    .line 2317
    invoke-virtual {v7}, Lorg/h2/mvstore/WriteBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 2318
    invoke-virtual {v7}, Lorg/h2/mvstore/WriteBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, v5, v6, v4}, Lorg/h2/mvstore/MVStore;->write(JLjava/nio/ByteBuffer;)V

    .line 2319
    invoke-direct {p0, v7}, Lorg/h2/mvstore/MVStore;->releaseWriteBuffer(Lorg/h2/mvstore/WriteBuffer;)V

    .line 2323
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->sync()V

    goto :goto_5

    .line 2325
    :cond_a
    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    .line 2326
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->writeStoreHeader()V

    .line 2327
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->readStoreHeader()V

    const/4 v2, 0x1

    .line 2329
    :cond_b
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/MVMap;

    .line 2330
    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result v3

    .line 2331
    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->getCreateVersion()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-ltz v6, :cond_d

    .line 2332
    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->close()V

    .line 2333
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    if-eqz v2, :cond_c

    .line 2336
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v4, v3}, Lorg/h2/mvstore/MVStore;->getRootPos(Lorg/h2/mvstore/MVMap;I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    goto :goto_6

    .line 2341
    :cond_e
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-eqz v0, :cond_f

    .line 2342
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/Chunk;

    .line 2343
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v3, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v3}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2346
    :cond_f
    iput-wide p1, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    .line 2347
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->setWriteVersion(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2348
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2255
    monitor-exit p0

    throw p1
.end method

.method public setAutoCommitDelay(I)V
    .locals 2

    .line 2567
    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCommitDelay:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2570
    :cond_0
    iput p1, p0, Lorg/h2/mvstore/MVStore;->autoCommitDelay:I

    .line 2571
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2574
    :cond_1
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->stopBackgroundThread()V

    if-lez p1, :cond_2

    const/4 v0, 0x1

    .line 2577
    div-int/lit8 p1, p1, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2578
    new-instance v0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v1}, Lorg/h2/mvstore/FileStore;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;-><init>(Lorg/h2/mvstore/MVStore;ILjava/lang/String;)V

    .line 2581
    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->start()V

    .line 2582
    iput-object v0, p0, Lorg/h2/mvstore/MVStore;->backgroundWriterThread:Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public setCacheSize(I)V
    .locals 5

    .line 2520
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz v0, :cond_0

    .line 2521
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    int-to-long v1, p1

    const-wide/16 v3, 0x400

    mul-long v1, v1, v3

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->setMaxMemory(J)V

    .line 2522
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->clear()V

    :cond_0
    return-void
.end method

.method public setRetentionTime(I)V
    .locals 0

    .line 2088
    iput p1, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    return-void
.end method

.method public setReuseSpace(Z)V
    .locals 0

    .line 2059
    iput-boolean p1, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    return-void
.end method

.method public declared-synchronized setStoreVersion(I)V
    .locals 2

    monitor-enter p0

    .line 2234
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 2235
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    .line 2236
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v1, "setting.storeVersion"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2233
    monitor-exit p0

    throw p1
.end method

.method public setVersionsToKeep(I)V
    .locals 0

    .line 2098
    iput p1, p0, Lorg/h2/mvstore/MVStore;->versionsToKeep:I

    return-void
.end method

.method public sync()V
    .locals 1

    .line 1764
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    .line 1765
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->sync()V

    :cond_0
    return-void
.end method

.method writeInBackground()V
    .locals 6

    .line 2468
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2475
    :cond_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v0

    .line 2476
    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->lastCommitTime:J

    iget v4, p0, Lorg/h2/mvstore/MVStore;->autoCommitDelay:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    return-void

    .line 2479
    :cond_1
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->hasUnsavedChanges()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2481
    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2483
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_2

    .line 2484
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 2489
    :cond_2
    :goto_0
    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCompactFillRate:I

    if-lez v0, :cond_5

    .line 2494
    :try_start_1
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getWriteCount()J

    move-result-wide v2

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v4

    const/4 v0, 0x0

    add-long/2addr v2, v4

    .line 2495
    iget-wide v4, p0, Lorg/h2/mvstore/MVStore;->autoCompactLastFileOpCount:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 2501
    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCompactFillRate:I

    div-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_4
    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCompactFillRate:I

    .line 2504
    :goto_2
    iget v2, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    invoke-virtual {p0, v0, v2}, Lorg/h2/mvstore/MVStore;->compact(II)Z

    .line 2505
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getWriteCount()J

    move-result-wide v2

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v4

    const/4 v0, 0x0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/mvstore/MVStore;->autoCompactLastFileOpCount:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 2507
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_5

    .line 2508
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method
