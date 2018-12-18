.class public Lorg/h2/index/PageDataLeaf;
.super Lorg/h2/index/PageData;
.source "PageDataLeaf.java"


# instance fields
.field private columnCount:I

.field private firstOverflowPageId:I

.field private memoryData:I

.field private offsets:[I

.field private final optimizeUpdate:Z

.field private overflowRowSize:I

.field private rowRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation
.end field

.field private rows:[Lorg/h2/result/Row;

.field private start:I

.field private writtenData:Z


# direct methods
.method private constructor <init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/index/PageData;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    .line 78
    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->optimizeUpdate:Z

    iput-boolean p1, p0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    return-void
.end method

.method static create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;
    .locals 2

    .line 90
    new-instance v0, Lorg/h2/index/PageDataLeaf;

    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/index/PageDataLeaf;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    .line 92
    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 93
    sget-object p1, Lorg/h2/result/Row;->EMPTY_ARRAY:[Lorg/h2/result/Row;

    iput-object p1, v0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    .line 94
    iput p2, v0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    .line 95
    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->getTable()Lorg/h2/table/Table;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object p0

    array-length p0, p0

    iput p0, v0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    .line 96
    invoke-direct {v0}, Lorg/h2/index/PageDataLeaf;->writeHead()V

    .line 97
    iget-object p0, v0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {p0}, Lorg/h2/store/Data;->length()I

    move-result p0

    iput p0, v0, Lorg/h2/index/PageDataLeaf;->start:I

    return-object v0
.end method

.method private findInsertionPoint(J)I
    .locals 4

    .line 155
    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageDataLeaf;->find(J)I

    move-result v0

    .line 156
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/index/PageDataIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method private freeOverflow()V
    .locals 2

    .line 441
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-eqz v0, :cond_1

    .line 442
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 444
    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageDataIndex;->getPageOverflow(I)Lorg/h2/index/PageDataOverflow;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lorg/h2/index/PageDataOverflow;->free()V

    .line 446
    invoke-virtual {v0}, Lorg/h2/index/PageDataOverflow;->getNextOverflow()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method private getRowLength(Lorg/h2/result/Row;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 148
    :goto_0
    iget v2, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    if-ge v0, v2, :cond_0

    .line 149
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, v0}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private memoryChange(ZLorg/h2/result/Row;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {p2}, Lorg/h2/result/Row;->getMemory()I

    move-result p2

    add-int/lit8 p2, p2, 0x14

    .line 601
    :goto_0
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->memoryData:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    neg-int p2, p2

    :goto_1
    add-int/2addr v0, p2

    iput v0, p0, Lorg/h2/index/PageDataLeaf;->memoryData:I

    .line 602
    iget-object p1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    iget p2, p0, Lorg/h2/index/PageDataLeaf;->memoryData:I

    add-int/lit16 p2, p2, 0xf0

    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    add-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lorg/h2/index/PageDataIndex;->memoryChange(I)V

    return-void
.end method

.method public static read(Lorg/h2/index/PageDataIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;
    .locals 1

    .line 110
    new-instance v0, Lorg/h2/index/PageDataLeaf;

    invoke-direct {v0, p0, p2, p1}, Lorg/h2/index/PageDataLeaf;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    .line 111
    invoke-direct {v0}, Lorg/h2/index/PageDataLeaf;->read()V

    return-object v0
.end method

.method private read()V
    .locals 5

    .line 116
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 117
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    .line 118
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readShortInt()S

    .line 119
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    iput v1, p0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    .line 120
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    .line 121
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 126
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    iput v1, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    .line 127
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readShortInt()S

    move-result v1

    iput v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    .line 128
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 129
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    .line 130
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    new-array v1, v1, [Lorg/h2/result/Row;

    iput-object v1, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 132
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    if-eq v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entries: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    :cond_1
    const/4 v0, 0x0

    .line 137
    :goto_0
    iget v2, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    if-ge v0, v2, :cond_2

    .line 138
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 139
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readShortInt()S

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 142
    iput-boolean v1, p0, Lorg/h2/index/PageDataLeaf;->written:Z

    .line 143
    iput-boolean v1, p0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    return-void

    :cond_3
    const v2, 0x15fae

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageDataLeaf;->getPos()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " expected table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v4}, Lorg/h2/index/PageDataIndex;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " got:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readAllRows()V
    .locals 2

    const/4 v0, 0x0

    .line 480
    :goto_0
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    if-ge v0, v1, :cond_0

    .line 481
    invoke-virtual {p0, v0}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readRow(Lorg/h2/store/Data;II)Lorg/h2/result/Row;
    .locals 2

    .line 620
    new-array v0, p3, [Lorg/h2/value/Value;

    .line 621
    monitor-enter p1

    .line 622
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->setPos(I)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 624
    invoke-virtual {p1}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 626
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    iget-object p1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, v0, p2}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 626
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method private removeRow(I)V
    .locals 7

    .line 275
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lorg/h2/index/PageDataLeaf;->written:Z

    .line 277
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/h2/index/PageDataLeaf;->changeCount:J

    .line 278
    iget-boolean v1, p0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    if-nez v1, :cond_0

    .line 279
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->readAllRows()V

    .line 281
    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 283
    invoke-direct {p0, v0, v1}, Lorg/h2/index/PageDataLeaf;->memoryChange(ZLorg/h2/result/Row;)V

    .line 285
    :cond_1
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    .line 286
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    if-gez v1, :cond_2

    .line 287
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 289
    :cond_2
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-eqz v1, :cond_3

    .line 290
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->start:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 291
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->freeOverflow()V

    .line 292
    iput v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 293
    iput v0, p0, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    const/4 v1, 0x0

    .line 294
    iput-object v1, p0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    .line 296
    :cond_3
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    aget-wide v2, v1, p1

    invoke-static {v2, v3}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_4

    .line 297
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v2

    .line 298
    :goto_0
    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aget v3, v3, p1

    sub-int/2addr v2, v3

    .line 299
    iget-boolean v3, p0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    if-eqz v3, :cond_5

    .line 300
    iget-boolean v3, p0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    if-eqz v3, :cond_6

    .line 301
    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    .line 302
    iget-object v4, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iget v5, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    aget v4, v4, v5

    add-int v5, v4, v2

    .line 303
    iget-object v6, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aget v6, v6, p1

    sub-int/2addr v6, v4

    invoke-static {v3, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    invoke-static {v3, v4, v5, v0}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_1

    .line 308
    :cond_5
    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iget v4, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    aget v3, v3, v4

    .line 309
    iget-object v4, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v4}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v4

    add-int v5, v3, v2

    invoke-static {v4, v3, v5, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 311
    :cond_6
    :goto_1
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->start:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 312
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/h2/index/PageDataLeaf;->remove([III)[I

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 313
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    invoke-static {v0, p1, v1, v2}, Lorg/h2/index/PageDataLeaf;->add([IIII)V

    .line 314
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/h2/index/PageDataLeaf;->remove([JII)[J

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    .line 315
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/h2/index/PageDataLeaf;->remove([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/h2/result/Row;

    iput-object p1, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    return-void
.end method

.method private writeData()V
    .locals 7

    .line 507
    iget-boolean v0, p0, Lorg/h2/index/PageDataLeaf;->written:Z

    if-eqz v0, :cond_0

    return-void

    .line 510
    :cond_0
    iget-boolean v0, p0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    if-nez v0, :cond_1

    .line 511
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->readAllRows()V

    .line 513
    :cond_1
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->writeHead()V

    .line 514
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    .line 516
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->checkCapacity(I)V

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 518
    :goto_0
    iget v2, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    if-ge v1, v2, :cond_3

    .line 519
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    aget-wide v4, v3, v1

    invoke-virtual {v2, v4, v5}, Lorg/h2/store/Data;->writeVarLong(J)V

    .line 520
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->writeShortInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    :cond_3
    iget-boolean v1, p0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    if-nez v1, :cond_7

    :cond_4
    const/4 v1, 0x0

    .line 523
    :goto_1
    iget v3, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    if-ge v1, v3, :cond_6

    .line 524
    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget-object v4, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/h2/store/Data;->setPos(I)V

    .line 525
    invoke-virtual {p0, v1}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object v3

    const/4 v4, 0x0

    .line 526
    :goto_2
    iget v5, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    if-ge v4, v5, :cond_5

    .line 527
    iget-object v5, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v3, v4}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    :cond_6
    iput-boolean v2, p0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    .line 532
    :cond_7
    iput-boolean v2, p0, Lorg/h2/index/PageDataLeaf;->written:Z

    return-void
.end method

.method private writeHead()V
    .locals 2

    .line 486
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 488
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-nez v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 493
    :goto_0
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/h2/store/Data;->writeByte(B)V

    .line 494
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    .line 495
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 497
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 500
    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    .line 501
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 502
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 503
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    return-void
.end method


# virtual methods
.method addRowTry(Lorg/h2/result/Row;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 164
    iget-object v2, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    iget-object v3, v0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v2, v0, v3}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 165
    invoke-direct/range {p0 .. p1}, Lorg/h2/index/PageDataLeaf;->getRowLength(Lorg/h2/result/Row;)I

    move-result v2

    .line 166
    iget-object v3, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v3}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v3

    .line 167
    iget v4, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iget v6, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    sub-int/2addr v6, v5

    aget v4, v4, v6

    .line 168
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result v6

    const/4 v7, 0x2

    add-int/2addr v6, v7

    .line 169
    iget v8, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    const/4 v9, 0x3

    if-lez v8, :cond_8

    sub-int/2addr v4, v2

    iget v8, v0, Lorg/h2/index/PageDataLeaf;->start:I

    add-int/2addr v8, v6

    if-ge v4, v8, :cond_8

    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/h2/index/PageDataLeaf;->findInsertionPoint(J)I

    move-result v1

    .line 171
    iget v2, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    if-le v2, v5, :cond_7

    .line 172
    iget v2, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 174
    iget v1, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    div-int/2addr v1, v7

    return v1

    .line 176
    :cond_1
    iget-object v2, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->isSortedInsertMode()Z

    move-result v2

    if-eqz v2, :cond_4

    if-ge v1, v7, :cond_2

    goto :goto_1

    .line 177
    :cond_2
    iget v2, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    sub-int/2addr v2, v5

    if-le v1, v2, :cond_3

    iget v1, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    add-int/lit8 v5, v1, -0x1

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    return v5

    .line 182
    :cond_4
    iget v2, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    div-int/2addr v2, v9

    if-ge v1, v2, :cond_5

    goto :goto_2

    :cond_5
    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    return v2

    :cond_7
    return v1

    .line 187
    :cond_8
    iget-object v4, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v4}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v4

    iget-object v7, v0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v4, v0, v7}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 189
    iget v4, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    const/4 v7, 0x0

    if-nez v4, :cond_9

    const/4 v4, 0x0

    goto :goto_3

    .line 192
    :cond_9
    iget-boolean v4, v0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    if-nez v4, :cond_a

    .line 193
    invoke-direct/range {p0 .. p0}, Lorg/h2/index/PageDataLeaf;->readAllRows()V

    .line 195
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Lorg/h2/index/PageDataLeaf;->findInsertionPoint(J)I

    move-result v4

    .line 197
    :goto_3
    iput-boolean v7, v0, Lorg/h2/index/PageDataLeaf;->written:Z

    .line 198
    iget-object v8, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v8}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v10

    iput-wide v10, v0, Lorg/h2/index/PageDataLeaf;->changeCount:J

    if-nez v4, :cond_b

    move v8, v3

    goto :goto_4

    .line 199
    :cond_b
    iget-object v8, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    add-int/lit8 v10, v4, -0x1

    aget v8, v8, v10

    :goto_4
    sub-int/2addr v8, v2

    .line 201
    iget v10, v0, Lorg/h2/index/PageDataLeaf;->start:I

    add-int/2addr v10, v6

    iput v10, v0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 202
    iget-object v6, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iget v10, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    invoke-static {v6, v10, v4, v8}, Lorg/h2/index/PageDataLeaf;->insert([IIII)[I

    move-result-object v6

    iput-object v6, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 203
    iget-object v6, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    add-int/lit8 v10, v4, 0x1

    iget v11, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    add-int/2addr v11, v5

    neg-int v12, v2

    invoke-static {v6, v10, v11, v12}, Lorg/h2/index/PageDataLeaf;->add([IIII)V

    .line 204
    iget-object v6, v0, Lorg/h2/index/PageDataLeaf;->keys:[J

    iget v10, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    invoke-virtual/range {p1 .. p1}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v11

    invoke-static {v6, v10, v4, v11, v12}, Lorg/h2/index/PageDataLeaf;->insert([JIIJ)[J

    move-result-object v6

    iput-object v6, v0, Lorg/h2/index/PageDataLeaf;->keys:[J

    .line 205
    iget-object v6, v0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    iget v10, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    invoke-static {v6, v10, v4, v1}, Lorg/h2/index/PageDataLeaf;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/h2/result/Row;

    iput-object v6, v0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    .line 206
    iget v6, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    add-int/2addr v6, v5

    iput v6, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    .line 207
    iget-object v6, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v6}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 208
    iget-boolean v6, v0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    if-eqz v6, :cond_c

    .line 209
    iget-boolean v6, v0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    if-eqz v6, :cond_c

    iget v6, v0, Lorg/h2/index/PageDataLeaf;->start:I

    if-lt v8, v6, :cond_c

    .line 210
    iget-object v6, v0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v6}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v6

    .line 211
    iget-object v10, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iget v11, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    sub-int/2addr v11, v5

    aget v10, v10, v11

    add-int/2addr v10, v2

    .line 212
    iget-object v11, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aget v11, v11, v4

    sub-int v12, v10, v2

    sub-int v13, v11, v10

    add-int/2addr v13, v2

    .line 213
    invoke-static {v6, v10, v6, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget-object v6, v0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v6, v11}, Lorg/h2/store/Data;->setPos(I)V

    const/4 v6, 0x0

    .line 216
    :goto_5
    iget v10, v0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    if-ge v6, v10, :cond_c

    .line 217
    iget-object v10, v0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v1, v6}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 221
    :cond_c
    iget v6, v0, Lorg/h2/index/PageDataLeaf;->start:I

    const/4 v10, 0x0

    if-ge v8, v6, :cond_10

    .line 222
    iput-boolean v7, v0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    .line 223
    iget v6, v0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    if-le v6, v5, :cond_d

    .line 224
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 227
    :cond_d
    iget v6, v0, Lorg/h2/index/PageDataLeaf;->start:I

    add-int/lit8 v6, v6, 0x4

    iput v6, v0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 228
    iget v6, v0, Lorg/h2/index/PageDataLeaf;->start:I

    sub-int v6, v3, v6

    sub-int v6, v2, v6

    .line 230
    iget v8, v0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 231
    iget-object v11, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aput v8, v11, v4

    .line 232
    invoke-virtual/range {p0 .. p0}, Lorg/h2/index/PageDataLeaf;->getPos()I

    move-result v4

    .line 234
    iget-object v8, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v8}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v8

    .line 235
    iput v8, v0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    add-int/2addr v2, v3

    .line 236
    iput v2, v0, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    .line 237
    invoke-direct/range {p0 .. p0}, Lorg/h2/index/PageDataLeaf;->writeData()V

    .line 239
    iget-object v2, v0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    aget-object v2, v2, v7

    .line 240
    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v11, v0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    .line 241
    iget-object v2, v0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    aput-object v10, v2, v7

    .line 242
    iget-object v2, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v2

    .line 243
    iget-object v11, v0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v11}, Lorg/h2/store/Data;->length()I

    move-result v11

    invoke-virtual {v2, v11}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 244
    iget-object v11, v0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v11}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v11

    iget-object v12, v0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v12}, Lorg/h2/store/Data;->length()I

    move-result v12

    invoke-virtual {v2, v11, v7, v12}, Lorg/h2/store/Data;->write([BII)V

    .line 245
    iget-object v11, v0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget-object v12, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v12}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/h2/store/Data;->truncate(I)V

    move v14, v4

    move v4, v3

    :goto_6
    add-int/lit8 v11, v3, -0x9

    if-gt v6, v11, :cond_e

    const/16 v11, 0x13

    move/from16 v20, v6

    const/16 v13, 0x13

    const/16 v19, 0x0

    goto :goto_7

    :cond_e
    add-int/lit8 v11, v3, -0xb

    .line 255
    iget-object v12, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v12}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v12

    move/from16 v20, v11

    move/from16 v19, v12

    const/4 v13, 0x3

    .line 257
    :goto_7
    iget-object v11, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v11}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v11

    move v12, v8

    move/from16 v15, v19

    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v20

    invoke-static/range {v11 .. v18}, Lorg/h2/index/PageDataOverflow;->create(Lorg/h2/store/PageStore;IIIILorg/h2/store/Data;II)Lorg/h2/index/PageDataOverflow;

    move-result-object v11

    .line 259
    iget-object v12, v0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v12}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    add-int v4, v4, v20

    sub-int v6, v6, v20

    if-gtz v6, :cond_f

    goto :goto_8

    :cond_f
    move v14, v8

    move/from16 v8, v19

    goto :goto_6

    .line 266
    :cond_10
    :goto_8
    iget-object v2, v0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_11

    .line 267
    invoke-direct {v0, v5, v1}, Lorg/h2/index/PageDataLeaf;->memoryChange(ZLorg/h2/result/Row;)V

    goto :goto_9

    .line 269
    :cond_11
    invoke-direct {v0, v5, v10}, Lorg/h2/index/PageDataLeaf;->memoryChange(ZLorg/h2/result/Row;)V

    :goto_9
    const/4 v1, -0x1

    return v1
.end method

.method public bridge synthetic canRemove()Z
    .locals 1

    .line 36
    invoke-super {p0}, Lorg/h2/index/PageData;->canRemove()Z

    move-result v0

    return v0
.end method

.method find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;
    .locals 7

    .line 320
    invoke-virtual {p0, p2, p3}, Lorg/h2/index/PageDataLeaf;->find(J)I

    move-result v3

    .line 321
    new-instance p2, Lorg/h2/index/PageDataCursor;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/h2/index/PageDataCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/PageDataLeaf;IJZ)V

    return-object p2
.end method

.method freeRecursive()V
    .locals 2

    .line 435
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 436
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/index/PageDataLeaf;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    .line 437
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->freeOverflow()V

    return-void
.end method

.method getDiskSpaceUsed()J
    .locals 2

    .line 469
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getEntryCount()I
    .locals 1

    .line 367
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    return v0
.end method

.method getFirstLeaf()Lorg/h2/index/PageDataLeaf;
    .locals 0

    return-object p0
.end method

.method getLastKey()J
    .locals 2

    .line 387
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 390
    :cond_0
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMemory()I
    .locals 1

    .line 36
    invoke-super {p0}, Lorg/h2/index/PageData;->getMemory()I

    move-result v0

    return v0
.end method

.method getNextPage()Lorg/h2/index/PageDataLeaf;
    .locals 4

    .line 394
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageDataNode;

    .line 398
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Lorg/h2/index/PageDataNode;->getNextPage(J)Lorg/h2/index/PageDataLeaf;

    move-result-object v0

    return-object v0
.end method

.method getRowAt(I)Lorg/h2/result/Row;
    .locals 5

    .line 331
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    .line 333
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aget v1, v1, p1

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    invoke-direct {p0, v0, v1, v2}, Lorg/h2/index/PageDataLeaf;->readRow(Lorg/h2/store/Data;II)Lorg/h2/result/Row;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/Row;

    if-eqz v0, :cond_1

    return-object v0

    .line 342
    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v1

    .line 344
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v2

    .line 345
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aget v0, v0, p1

    .line 346
    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v0, v4}, Lorg/h2/store/Data;->write([BII)V

    .line 347
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 349
    :cond_2
    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v3, v0}, Lorg/h2/index/PageDataIndex;->getPageOverflow(I)Lorg/h2/index/PageDataOverflow;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v1}, Lorg/h2/index/PageDataOverflow;->readInto(Lorg/h2/store/Data;)I

    move-result v0

    if-nez v0, :cond_2

    .line 352
    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    const/4 v0, 0x0

    .line 353
    iget v2, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    invoke-direct {p0, v1, v0, v2}, Lorg/h2/index/PageDataLeaf;->readRow(Lorg/h2/store/Data;II)Lorg/h2/result/Row;

    move-result-object v0

    .line 355
    :goto_0
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    aget-wide v2, v1, p1

    invoke-virtual {v0, v2, v3}, Lorg/h2/result/Row;->setKey(J)V

    .line 356
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-eqz v1, :cond_3

    .line 357
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    goto :goto_1

    .line 359
    :cond_3
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    aput-object v0, v1, p1

    const/4 p1, 0x1

    .line 360
    invoke-direct {p0, p1, v0}, Lorg/h2/index/PageDataLeaf;->memoryChange(ZLorg/h2/result/Row;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method getRowCount()I
    .locals 1

    .line 459
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    return v0
.end method

.method getRowWithKey(J)Lorg/h2/result/Row;
    .locals 0

    .line 453
    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageDataLeaf;->find(J)I

    move-result p1

    .line 454
    invoke-virtual {p0, p1}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public isStream()Z
    .locals 1

    .line 608
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 5

    .line 546
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    .line 549
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    if-eqz v1, :cond_0

    .line 550
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    .line 552
    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 553
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    invoke-static {v1, p2, v2}, Lorg/h2/index/PageDataLeaf;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;

    move-result-object v1

    .line 554
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->readAllRows()V

    .line 555
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    iput-object v2, v1, Lorg/h2/index/PageDataLeaf;->keys:[J

    .line 556
    iget v2, p0, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    iput v2, v1, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    .line 557
    iget v2, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    iput v2, v1, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 558
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    iput-object v2, v1, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    .line 559
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    iput-object v2, v1, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    .line 560
    iget v2, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-eqz v2, :cond_1

    .line 561
    iget-object v2, v1, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object v4

    aput-object v4, v2, v3

    .line 563
    :cond_1
    iget v2, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    iput v2, v1, Lorg/h2/index/PageDataLeaf;->entryCount:I

    .line 564
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iput-object v2, v1, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 565
    iget v2, p0, Lorg/h2/index/PageDataLeaf;->start:I

    iput v2, v1, Lorg/h2/index/PageDataLeaf;->start:I

    .line 566
    invoke-virtual {p0}, Lorg/h2/index/PageDataLeaf;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/index/PageDataLeaf;->remapChildren(I)V

    .line 567
    invoke-direct {v1}, Lorg/h2/index/PageDataLeaf;->writeData()V

    .line 568
    iget-object v2, v1, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v3}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->truncate(I)V

    .line 569
    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 570
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    if-nez v1, :cond_2

    .line 571
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1, p1, p2}, Lorg/h2/index/PageDataIndex;->setRootPageId(Lorg/h2/engine/Session;I)V

    goto :goto_0

    .line 573
    :cond_2
    iget p1, p0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    check-cast p1, Lorg/h2/index/PageDataNode;

    .line 574
    invoke-virtual {p0}, Lorg/h2/index/PageDataLeaf;->getPos()I

    move-result v1

    invoke-virtual {p1, v1, p2}, Lorg/h2/index/PageDataNode;->moveChild(II)V

    .line 576
    :goto_0
    invoke-virtual {p0}, Lorg/h2/index/PageDataLeaf;->getPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->free(I)V

    return-void
.end method

.method protected remapChildren(I)V
    .locals 1

    .line 408
    iget p1, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-nez p1, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    invoke-virtual {p1, v0}, Lorg/h2/index/PageDataIndex;->getPageOverflow(I)Lorg/h2/index/PageDataOverflow;

    move-result-object p1

    .line 412
    invoke-virtual {p0}, Lorg/h2/index/PageDataLeaf;->getPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/h2/index/PageDataOverflow;->setParentPageId(I)V

    .line 413
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-void
.end method

.method remove(J)Z
    .locals 5

    .line 418
    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageDataLeaf;->find(J)I

    move-result v0

    .line 419
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, p2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 424
    iget p1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 425
    invoke-virtual {p0}, Lorg/h2/index/PageDataLeaf;->freeRecursive()V

    return p2

    .line 428
    :cond_1
    invoke-direct {p0, v0}, Lorg/h2/index/PageDataLeaf;->removeRow(I)V

    .line 429
    iget-object p1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const v1, 0x16000

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v3}, Lorg/h2/index/PageDataIndex;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    if-nez p1, :cond_3

    const-wide/16 p1, -0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    aget-wide v3, p1, v0

    move-wide p1, v3

    :goto_1
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method setOverflow(II)V
    .locals 1

    .line 586
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-eq p1, v0, :cond_0

    .line 587
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "move "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 589
    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 590
    iput p2, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 591
    iget-boolean p1, p0, Lorg/h2/index/PageDataLeaf;->written:Z

    if-eqz p1, :cond_1

    .line 592
    iget-object p1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/index/PageDataLeaf;->changeCount:J

    .line 593
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->writeHead()V

    .line 594
    iget-object p1, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget p2, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 596
    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-void
.end method

.method setRowCountStored(I)V
    .locals 0

    return-void
.end method

.method split(I)Lorg/h2/index/PageData;
    .locals 4

    .line 372
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v0

    .line 373
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    invoke-static {v1, v0, v2}, Lorg/h2/index/PageDataLeaf;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;

    move-result-object v0

    .line 374
    :goto_0
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    if-ge p1, v1, :cond_1

    .line 375
    invoke-virtual {p0, p1}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/index/PageDataLeaf;->addRowTry(Lorg/h2/result/Row;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "split "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 379
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/index/PageDataLeaf;->removeRow(I)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageDataLeaf;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] data leaf table:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->entryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->parentPageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " overflow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " keys:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->keys:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " offsets:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    .line 474
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->writeData()V

    .line 475
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/index/PageDataLeaf;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    .line 476
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->truncate(I)V

    return-void
.end method
