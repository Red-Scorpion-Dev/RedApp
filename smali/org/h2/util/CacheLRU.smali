.class public Lorg/h2/util/CacheLRU;
.super Ljava/lang/Object;
.source "CacheLRU.java"

# interfaces
.implements Lorg/h2/util/Cache;


# static fields
.field static final TYPE_NAME:Ljava/lang/String; = "LRU"


# instance fields
.field private final fifo:Z

.field private final head:Lorg/h2/util/CacheObject;

.field private final len:I

.field private final mask:I

.field private maxMemory:I

.field private memory:I

.field private recordCount:I

.field private values:[Lorg/h2/util/CacheObject;

.field private final writer:Lorg/h2/util/CacheWriter;


# direct methods
.method constructor <init>(Lorg/h2/util/CacheWriter;IZ)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/h2/util/CacheHead;

    invoke-direct {v0}, Lorg/h2/util/CacheHead;-><init>()V

    iput-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    .line 51
    iput-object p1, p0, Lorg/h2/util/CacheLRU;->writer:Lorg/h2/util/CacheWriter;

    .line 52
    iput-boolean p3, p0, Lorg/h2/util/CacheLRU;->fifo:Z

    .line 53
    invoke-virtual {p0, p2}, Lorg/h2/util/CacheLRU;->setMaxMemory(I)V

    .line 54
    iget p1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    div-int/lit8 p1, p1, 0x40

    invoke-static {p1}, Lorg/h2/util/MathUtils;->nextPowerOf2(I)I

    move-result p1

    iput p1, p0, Lorg/h2/util/CacheLRU;->len:I

    .line 55
    iget p1, p0, Lorg/h2/util/CacheLRU;->len:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/util/CacheLRU;->mask:I

    .line 56
    invoke-virtual {p0}, Lorg/h2/util/CacheLRU;->clear()V

    return-void
.end method

.method private addToFront(Lorg/h2/util/CacheObject;)V
    .locals 1

    .line 233
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    if-ne p1, v0, :cond_0

    const-string v0, "try to move head"

    .line 234
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iput-object v0, p1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    .line 237
    iget-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iget-object v0, v0, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    iput-object v0, p1, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    .line 238
    iget-object v0, p1, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    iput-object p1, v0, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    .line 239
    iget-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iput-object p1, v0, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    return-void
.end method

.method public static getCache(Lorg/h2/util/CacheWriter;Ljava/lang/String;I)Lorg/h2/util/Cache;
    .locals 2

    const-string v0, "SOFT_"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lorg/h2/util/SoftHashMap;

    invoke-direct {v0}, Lorg/h2/util/SoftHashMap;-><init>()V

    const-string v1, "SOFT_"

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "LRU"

    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    new-instance p1, Lorg/h2/util/CacheLRU;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v1}, Lorg/h2/util/CacheLRU;-><init>(Lorg/h2/util/CacheWriter;IZ)V

    goto :goto_1

    :cond_1
    const-string v1, "TQ"

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    new-instance p1, Lorg/h2/util/CacheTQ;

    invoke-direct {p1, p0, p2}, Lorg/h2/util/CacheTQ;-><init>(Lorg/h2/util/CacheWriter;I)V

    :goto_1
    if-eqz v0, :cond_2

    .line 83
    new-instance p0, Lorg/h2/util/CacheSecondLevel;

    invoke-direct {p0, p1, v0}, Lorg/h2/util/CacheSecondLevel;-><init>(Lorg/h2/util/Cache;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    move-object p0, p1

    :goto_2
    return-object p0

    :cond_3
    const-string p0, "CACHE_TYPE"

    .line 80
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private removeFromLinkedList(Lorg/h2/util/CacheObject;)V
    .locals 2

    .line 243
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    if-ne p1, v0, :cond_0

    const-string v0, "try to remove head"

    .line 244
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 246
    :cond_0
    iget-object v0, p1, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    iget-object v1, p1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    iput-object v1, v0, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    .line 247
    iget-object v0, p1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    iget-object v1, p1, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    iput-object v1, v0, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    const/4 v0, 0x0

    .line 250
    iput-object v0, p1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    .line 251
    iput-object v0, p1, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    return-void
.end method

.method private removeOld()V
    .locals 10

    .line 147
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    iget v1, p0, Lorg/h2/util/CacheLRU;->memory:I

    .line 149
    iget v2, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    .line 151
    iget-object v3, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iget-object v3, v3, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x10

    if-gt v2, v7, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 157
    iget v7, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    if-gt v1, v7, :cond_2

    goto :goto_1

    :cond_1
    mul-int/lit8 v7, v1, 0x4

    .line 161
    iget v8, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    mul-int/lit8 v8, v8, 0x3

    if-gt v7, v8, :cond_2

    goto :goto_1

    .line 166
    :cond_2
    iget-object v7, v3, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    const/4 v8, 0x1

    add-int/2addr v5, v8

    .line 168
    iget v9, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    if-lt v5, v9, :cond_9

    if-nez v6, :cond_3

    .line 170
    iget-object v5, p0, Lorg/h2/util/CacheLRU;->writer:Lorg/h2/util/CacheWriter;

    invoke-interface {v5}, Lorg/h2/util/CacheWriter;->flushLog()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_5

    .line 177
    :cond_3
    iget-object v1, p0, Lorg/h2/util/CacheLRU;->writer:Lorg/h2/util/CacheWriter;

    invoke-interface {v1}, Lorg/h2/util/CacheWriter;->getTrace()Lorg/h2/message/Trace;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot remove records, cache size too small? records:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " memory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/h2/util/CacheLRU;->memory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/message/Trace;->info(Ljava/lang/String;)V

    .line 202
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    if-nez v6, :cond_4

    .line 204
    iget-object v1, p0, Lorg/h2/util/CacheLRU;->writer:Lorg/h2/util/CacheWriter;

    invoke-interface {v1}, Lorg/h2/util/CacheWriter;->flushLog()V

    .line 206
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 207
    iget v1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const v3, 0x7fffffff

    .line 212
    :try_start_0
    iput v3, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 214
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/util/CacheObject;

    .line 215
    iget-object v6, p0, Lorg/h2/util/CacheLRU;->writer:Lorg/h2/util/CacheWriter;

    invoke-interface {v6, v5}, Lorg/h2/util/CacheWriter;->writeBack(Lorg/h2/util/CacheObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 218
    :cond_5
    iput v1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    :goto_3
    if-ge v4, v2, :cond_8

    .line 221
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/util/CacheObject;

    .line 222
    invoke-virtual {v1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/h2/util/CacheLRU;->remove(I)Z

    .line 223
    sget-boolean v3, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v3, :cond_7

    .line 224
    iget-object v1, v1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    if-nez v1, :cond_6

    goto :goto_4

    .line 225
    :cond_6
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 218
    iput v1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    throw v0

    :cond_8
    return-void

    .line 183
    :cond_9
    :goto_5
    sget-boolean v8, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    if-ne v3, v8, :cond_a

    const-string v8, "try to remove head"

    .line 184
    invoke-static {v8}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 189
    :cond_a
    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->canRemove()Z

    move-result v8

    if-nez v8, :cond_b

    .line 190
    invoke-direct {p0, v3}, Lorg/h2/util/CacheLRU;->removeFromLinkedList(Lorg/h2/util/CacheObject;)V

    .line 191
    invoke-direct {p0, v3}, Lorg/h2/util/CacheLRU;->addToFront(Lorg/h2/util/CacheObject;)V

    :goto_6
    move-object v3, v7

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v2, v2, -0x1

    .line 195
    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->getMemory()I

    move-result v8

    sub-int/2addr v1, v8

    .line 196
    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->isChanged()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 197
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 199
    :cond_c
    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/h2/util/CacheLRU;->remove(I)Z

    goto :goto_6
.end method

.method private removeOldIfRequired()V
    .locals 2

    .line 140
    iget v0, p0, Lorg/h2/util/CacheLRU;->memory:I

    iget v1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    if-lt v0, v1, :cond_0

    .line 141
    invoke-direct {p0}, Lorg/h2/util/CacheLRU;->removeOld()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 90
    iget-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iget-object v1, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iget-object v2, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iput-object v2, v1, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    iput-object v2, v0, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    .line 93
    iget v0, p0, Lorg/h2/util/CacheLRU;->len:I

    new-array v0, v0, [Lorg/h2/util/CacheObject;

    iput-object v0, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    .line 95
    iget v0, p0, Lorg/h2/util/CacheLRU;->len:I

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/h2/util/CacheLRU;->memory:I

    return-void
.end method

.method public find(I)Lorg/h2/util/CacheObject;
    .locals 2

    .line 289
    iget-object v0, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    iget v1, p0, Lorg/h2/util/CacheLRU;->mask:I

    and-int/2addr v1, p1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 291
    iget-object v0, v0, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public get(I)Lorg/h2/util/CacheObject;
    .locals 1

    .line 298
    invoke-virtual {p0, p1}, Lorg/h2/util/CacheLRU;->find(I)Lorg/h2/util/CacheObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 300
    iget-boolean v0, p0, Lorg/h2/util/CacheLRU;->fifo:Z

    if-nez v0, :cond_0

    .line 301
    invoke-direct {p0, p1}, Lorg/h2/util/CacheLRU;->removeFromLinkedList(Lorg/h2/util/CacheObject;)V

    .line 302
    invoke-direct {p0, p1}, Lorg/h2/util/CacheLRU;->addToFront(Lorg/h2/util/CacheObject;)V

    :cond_0
    return-object p1
.end method

.method public getAllChanged()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/util/CacheObject;",
            ">;"
        }
    .end annotation

    .line 342
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iget-object v1, v1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    .line 344
    :goto_0
    iget-object v2, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    if-eq v1, v2, :cond_1

    .line 345
    invoke-virtual {v1}, Lorg/h2/util/CacheObject;->isChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_0
    iget-object v1, v1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMaxMemory()I
    .locals 4

    .line 364
    iget v0, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getMemory()I
    .locals 4

    .line 375
    iget v0, p0, Lorg/h2/util/CacheLRU;->memory:I

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public put(Lorg/h2/util/CacheObject;)V
    .locals 3

    .line 100
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    .line 102
    invoke-virtual {p0, v0}, Lorg/h2/util/CacheLRU;->find(I)Lorg/h2/util/CacheObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to add a record twice at pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 109
    :cond_0
    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    iget v1, p0, Lorg/h2/util/CacheLRU;->mask:I

    and-int/2addr v0, v1

    .line 110
    iget-object v1, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    aget-object v1, v1, v0

    iput-object v1, p1, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    .line 111
    iget-object v1, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    aput-object p1, v1, v0

    .line 112
    iget v0, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    .line 113
    iget v0, p0, Lorg/h2/util/CacheLRU;->memory:I

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getMemory()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/util/CacheLRU;->memory:I

    .line 114
    invoke-direct {p0, p1}, Lorg/h2/util/CacheLRU;->addToFront(Lorg/h2/util/CacheObject;)V

    .line 115
    invoke-direct {p0}, Lorg/h2/util/CacheLRU;->removeOldIfRequired()V

    return-void
.end method

.method public remove(I)Z
    .locals 4

    .line 256
    iget v0, p0, Lorg/h2/util/CacheLRU;->mask:I

    and-int/2addr v0, p1

    .line 257
    iget-object v1, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 261
    :cond_0
    invoke-virtual {v1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 262
    iget-object v2, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    iget-object v3, v1, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    aput-object v3, v2, v0

    move-object v0, v1

    goto :goto_1

    .line 267
    :cond_1
    :goto_0
    iget-object v0, v1, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    if-nez v0, :cond_2

    return v2

    .line 271
    :cond_2
    invoke-virtual {v0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 272
    iget-object v2, v0, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    iput-object v2, v1, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    .line 274
    :goto_1
    iget v1, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    .line 275
    iget v1, p0, Lorg/h2/util/CacheLRU;->memory:I

    invoke-virtual {v0}, Lorg/h2/util/CacheObject;->getMemory()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/h2/util/CacheLRU;->memory:I

    .line 276
    invoke-direct {p0, v0}, Lorg/h2/util/CacheLRU;->removeFromLinkedList(Lorg/h2/util/CacheObject;)V

    .line 277
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 278
    iput-object v1, v0, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    .line 279
    invoke-virtual {p0, p1}, Lorg/h2/util/CacheLRU;->find(I)Lorg/h2/util/CacheObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_3
    return v2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public setMaxMemory(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    const-wide/16 v2, 0x4

    .line 355
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 356
    :cond_0
    iput p1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    .line 359
    invoke-direct {p0}, Lorg/h2/util/CacheLRU;->removeOldIfRequired()V

    return-void
.end method

.method public update(ILorg/h2/util/CacheObject;)Lorg/h2/util/CacheObject;
    .locals 3

    .line 120
    invoke-virtual {p0, p1}, Lorg/h2/util/CacheLRU;->find(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0, p2}, Lorg/h2/util/CacheLRU;->put(Lorg/h2/util/CacheObject;)V

    goto :goto_0

    .line 124
    :cond_0
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_1

    if-eq v0, p2, :cond_1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old!=record pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " old:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " new:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 130
    :cond_1
    iget-boolean p1, p0, Lorg/h2/util/CacheLRU;->fifo:Z

    if-nez p1, :cond_2

    .line 131
    invoke-direct {p0, p2}, Lorg/h2/util/CacheLRU;->removeFromLinkedList(Lorg/h2/util/CacheObject;)V

    .line 132
    invoke-direct {p0, p2}, Lorg/h2/util/CacheLRU;->addToFront(Lorg/h2/util/CacheObject;)V

    :cond_2
    :goto_0
    return-object v0
.end method
