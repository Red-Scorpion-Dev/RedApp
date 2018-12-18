.class public Lorg/h2/index/PageDataNode;
.super Lorg/h2/index/PageData;
.source "PageDataNode.java"


# instance fields
.field private childPageIds:[I

.field private length:I

.field private rowCount:I

.field private rowCountStored:I


# direct methods
.method private constructor <init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/index/PageData;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    .line 44
    iput p1, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    return-void
.end method

.method private addChild(IIJ)V
    .locals 3

    .line 114
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lorg/h2/index/PageDataNode;->written:Z

    .line 116
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/index/PageDataNode;->changeCount:J

    .line 117
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2, p2}, Lorg/h2/index/PageDataNode;->insert([IIII)[I

    move-result-object p2

    iput-object p2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    .line 118
    iget-object p2, p0, Lorg/h2/index/PageDataNode;->keys:[J

    iget v0, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    invoke-static {p2, v0, p1, p3, p4}, Lorg/h2/index/PageDataNode;->insert([JIIJ)[J

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageDataNode;->keys:[J

    .line 119
    iget p1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    .line 120
    iget p1, p0, Lorg/h2/index/PageDataNode;->length:I

    invoke-static {p3, p4}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    add-int/2addr p1, p2

    iput p1, p0, Lorg/h2/index/PageDataNode;->length:I

    return-void
.end method

.method private check()V
    .locals 2

    .line 334
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 335
    :goto_0
    iget v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 336
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 338
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataNode;
    .locals 2

    .line 64
    new-instance v0, Lorg/h2/index/PageDataNode;

    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/index/PageDataNode;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    .line 66
    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 67
    iput p2, v0, Lorg/h2/index/PageDataNode;->parentPageId:I

    .line 68
    invoke-direct {v0}, Lorg/h2/index/PageDataNode;->writeHead()V

    .line 70
    iget-object p0, v0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {p0}, Lorg/h2/store/Data;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    iput p0, v0, Lorg/h2/index/PageDataNode;->length:I

    return-object v0
.end method

.method public static read(Lorg/h2/index/PageDataIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;
    .locals 1

    .line 83
    new-instance v0, Lorg/h2/index/PageDataNode;

    invoke-direct {v0, p0, p2, p1}, Lorg/h2/index/PageDataNode;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    .line 84
    invoke-direct {v0}, Lorg/h2/index/PageDataNode;->read()V

    return-object v0
.end method

.method private read()V
    .locals 5

    .line 89
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 90
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    .line 91
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    .line 92
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataNode;->parentPageId:I

    .line 93
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    .line 94
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    iput v0, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    .line 100
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    .line 101
    iget v0, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    .line 102
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget v2, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readInt()I

    move-result v3

    aput v3, v0, v2

    .line 103
    iget v0, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    invoke-static {v0}, Lorg/h2/util/Utils;->newLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageDataNode;->keys:[J

    const/4 v0, 0x0

    .line 104
    :goto_0
    iget v2, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    if-ge v0, v2, :cond_0

    .line 105
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 106
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->keys:[J

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataNode;->length:I

    .line 109
    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->check()V

    .line 110
    iput-boolean v1, p0, Lorg/h2/index/PageDataNode;->written:Z

    return-void

    :cond_1
    const v1, 0x15fae

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " expected index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v3}, Lorg/h2/index/PageDataIndex;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "got:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private removeChild(I)V
    .locals 5

    .line 384
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lorg/h2/index/PageDataNode;->written:Z

    .line 386
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/index/PageDataNode;->changeCount:J

    .line 387
    iget v0, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    if-ge p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 388
    :goto_0
    iget v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    .line 389
    iget v1, p0, Lorg/h2/index/PageDataNode;->length:I

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->keys:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/h2/index/PageDataNode;->length:I

    .line 390
    iget v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    if-gez v1, :cond_1

    .line 391
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 393
    :cond_1
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->keys:[J

    iget v2, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0}, Lorg/h2/index/PageDataNode;->remove([JII)[J

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageDataNode;->keys:[J

    .line 394
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lorg/h2/index/PageDataNode;->remove([III)[I

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    return-void
.end method

.method private updateRowCount(I)V
    .locals 2

    .line 149
    iget v0, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 150
    iget v0, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    .line 152
    :cond_0
    iget p1, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    if-eq p1, v1, :cond_2

    .line 153
    iput v1, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    .line 154
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 155
    iget-boolean p1, p0, Lorg/h2/index/PageDataNode;->written:Z

    if-eqz p1, :cond_1

    .line 156
    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->writeHead()V

    .line 158
    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    :cond_2
    return-void
.end method

.method private writeData()V
    .locals 5

    .line 366
    iget-boolean v0, p0, Lorg/h2/index/PageDataNode;->written:Z

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->check()V

    .line 370
    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->writeHead()V

    .line 371
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget v2, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    const/4 v0, 0x0

    .line 372
    :goto_0
    iget v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    if-ge v0, v1, :cond_1

    .line 373
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 374
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->keys:[J

    aget-wide v3, v2, v0

    invoke-virtual {v1, v3, v4}, Lorg/h2/store/Data;->writeVarLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_1
    iget v0, p0, Lorg/h2/index/PageDataNode;->length:I

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageDataNode;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_2
    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lorg/h2/index/PageDataNode;->written:Z

    return-void
.end method

.method private writeHead()V
    .locals 2

    .line 351
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 352
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 353
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    .line 354
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 356
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataNode;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    .line 360
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 361
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    .line 362
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    return-void
.end method


# virtual methods
.method addRowTry(Lorg/h2/result/Row;)I
    .locals 7

    .line 125
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 126
    invoke-virtual {p1}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 128
    :goto_0
    invoke-virtual {p1}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/index/PageDataNode;->find(J)I

    move-result v1

    .line 129
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v3, v3, v1

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v2

    .line 130
    invoke-virtual {v2, p1}, Lorg/h2/index/PageData;->addRowTry(Lorg/h2/result/Row;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 p1, 0x1

    .line 144
    invoke-direct {p0, p1}, Lorg/h2/index/PageDataNode;->updateRowCount(I)V

    return v4

    .line 134
    :cond_0
    iget v4, p0, Lorg/h2/index/PageDataNode;->length:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v5}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 135
    iget p1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_1
    if-nez v3, :cond_2

    .line 137
    invoke-virtual {p1}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Lorg/h2/index/PageData;->getKey(I)J

    move-result-wide v4

    .line 138
    :goto_1
    invoke-virtual {v2, v3}, Lorg/h2/index/PageData;->split(I)Lorg/h2/index/PageData;

    move-result-object v3

    .line 139
    iget-object v6, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v6}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 140
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 141
    invoke-virtual {v3}, Lorg/h2/index/PageData;->getPos()I

    move-result v2

    invoke-direct {p0, v1, v2, v4, v5}, Lorg/h2/index/PageDataNode;->addChild(IIJ)V

    .line 142
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto :goto_0
.end method

.method public bridge synthetic canRemove()Z
    .locals 1

    .line 35
    invoke-super {p0}, Lorg/h2/index/PageData;->canRemove()Z

    move-result v0

    return v0
.end method

.method find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;
    .locals 7

    .line 164
    invoke-virtual {p0, p2, p3}, Lorg/h2/index/PageDataNode;->find(J)I

    move-result v0

    .line 165
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v0, v1, v0

    .line 166
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/h2/index/PageData;->find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;

    move-result-object v0

    return-object v0
.end method

.method freeRecursive()V
    .locals 4

    .line 268
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 269
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    const/4 v0, 0x0

    .line 270
    :goto_0
    iget v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v1, v1, v0

    .line 272
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/index/PageData;->freeRecursive()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getDiskSpaceUsed()J
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    .line 305
    :goto_0
    iget v4, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_1

    .line 306
    iget-object v4, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v4, v4, v1

    .line 307
    iget-object v5, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v4

    .line 308
    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v5

    invoke-virtual {v4}, Lorg/h2/index/PageData;->getPos()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 311
    invoke-virtual {v4}, Lorg/h2/index/PageData;->getDiskSpaceUsed()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 312
    iget-object v4, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v4}, Lorg/h2/index/PageDataIndex;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v6}, Lorg/h2/index/PageDataIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v6}, Lorg/h2/index/PageDataIndex;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    shr-long v6, v2, v6

    long-to-int v6, v6

    const v7, 0x7fffffff

    invoke-virtual {v4, v0, v5, v6, v7}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page is its own child: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    return-wide v2
.end method

.method getFirstLeaf()Lorg/h2/index/PageDataLeaf;
    .locals 3

    .line 238
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 239
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageData;->getFirstLeaf()Lorg/h2/index/PageDataLeaf;

    move-result-object v0

    return-object v0
.end method

.method getLastKey()J
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget v2, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    aget v1, v1, v2

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageData;->getLastKey()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMemory()I
    .locals 1

    .line 35
    invoke-super {p0}, Lorg/h2/index/PageData;->getMemory()I

    move-result v0

    return v0
.end method

.method getNextPage(J)Lorg/h2/index/PageDataLeaf;
    .locals 3

    .line 224
    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageDataNode;->find(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 225
    iget v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    if-le v0, v1, :cond_1

    .line 226
    iget v0, p0, Lorg/h2/index/PageDataNode;->parentPageId:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    iget v1, p0, Lorg/h2/index/PageDataNode;->parentPageId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageDataNode;

    .line 230
    invoke-virtual {v0, p1, p2}, Lorg/h2/index/PageDataNode;->getNextPage(J)Lorg/h2/index/PageDataLeaf;

    move-result-object p1

    return-object p1

    .line 232
    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    iget-object p2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget p2, p2, v0

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Lorg/h2/index/PageData;->getFirstLeaf()Lorg/h2/index/PageDataLeaf;

    move-result-object p1

    return-object p1
.end method

.method getRowCount()I
    .locals 6

    .line 285
    iget v0, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 287
    :goto_0
    iget v3, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_1

    .line 288
    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v3, v3, v1

    .line 289
    iget-object v4, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v3

    .line 290
    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v4

    invoke-virtual {v3}, Lorg/h2/index/PageData;->getPos()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 293
    invoke-virtual {v3}, Lorg/h2/index/PageData;->getRowCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 294
    iget-object v3, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v3}, Lorg/h2/index/PageDataIndex;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v5}, Lorg/h2/index/PageDataIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v5}, Lorg/h2/index/PageDataIndex;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-virtual {v3, v0, v4, v2, v5}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page is its own child: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 297
    :cond_1
    iput v2, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    .line 299
    :cond_2
    iget v0, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    return v0
.end method

.method getRowWithKey(J)Lorg/h2/result/Row;
    .locals 3

    .line 278
    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageDataNode;->find(J)I

    move-result v0

    .line 279
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v0, v2, v0

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p1, p2}, Lorg/h2/index/PageData;->getRowWithKey(J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method init(Lorg/h2/index/PageData;JLorg/h2/index/PageData;)V
    .locals 3

    const/4 v0, 0x1

    .line 205
    iput v0, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    const/4 v1, 0x2

    .line 206
    new-array v1, v1, [I

    invoke-virtual {p1}, Lorg/h2/index/PageData;->getPos()I

    move-result p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p4}, Lorg/h2/index/PageData;->getPos()I

    move-result p1

    aput p1, v1, v0

    iput-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    .line 207
    new-array p1, v0, [J

    aput-wide p2, p1, v2

    iput-object p1, p0, Lorg/h2/index/PageDataNode;->keys:[J

    .line 208
    iget p1, p0, Lorg/h2/index/PageDataNode;->length:I

    invoke-static {p2, p3}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    add-int/2addr p1, p2

    iput p1, p0, Lorg/h2/index/PageDataNode;->length:I

    .line 209
    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->check()V

    return-void
.end method

.method moveChild(II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 446
    :goto_0
    iget v2, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1

    .line 447
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 448
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 449
    iput-boolean v0, p0, Lorg/h2/index/PageDataNode;->written:Z

    .line 450
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/h2/index/PageDataNode;->changeCount:J

    .line 451
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aput p2, p1, v1

    .line 452
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    :cond_1
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 4

    .line 405
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 408
    :goto_0
    iget v3, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_0

    .line 409
    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v3, v3, v2

    .line 410
    invoke-virtual {v0, v3}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    :cond_0
    iget v2, p0, Lorg/h2/index/PageDataNode;->parentPageId:I

    if-eqz v2, :cond_1

    .line 413
    iget v2, p0, Lorg/h2/index/PageDataNode;->parentPageId:I

    invoke-virtual {v0, v2}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    .line 415
    :cond_1
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 416
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    iget v3, p0, Lorg/h2/index/PageDataNode;->parentPageId:I

    invoke-static {v2, p2, v3}, Lorg/h2/index/PageDataNode;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataNode;

    move-result-object v2

    .line 417
    iget v3, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    iput v3, v2, Lorg/h2/index/PageDataNode;->rowCountStored:I

    .line 418
    iget v3, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    iput v3, v2, Lorg/h2/index/PageDataNode;->rowCount:I

    .line 419
    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iput-object v3, v2, Lorg/h2/index/PageDataNode;->childPageIds:[I

    .line 420
    iget-object v3, p0, Lorg/h2/index/PageDataNode;->keys:[J

    iput-object v3, v2, Lorg/h2/index/PageDataNode;->keys:[J

    .line 421
    iget v3, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    iput v3, v2, Lorg/h2/index/PageDataNode;->entryCount:I

    .line 422
    iget v3, p0, Lorg/h2/index/PageDataNode;->length:I

    iput v3, v2, Lorg/h2/index/PageDataNode;->length:I

    .line 423
    invoke-virtual {v0, v2}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 424
    iget v2, p0, Lorg/h2/index/PageDataNode;->parentPageId:I

    if-nez v2, :cond_2

    .line 425
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2, p1, p2}, Lorg/h2/index/PageDataIndex;->setRootPageId(Lorg/h2/engine/Session;I)V

    goto :goto_1

    .line 427
    :cond_2
    iget p1, p0, Lorg/h2/index/PageDataNode;->parentPageId:I

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    check-cast p1, Lorg/h2/index/PageDataNode;

    .line 428
    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v2

    invoke-virtual {p1, v2, p2}, Lorg/h2/index/PageDataNode;->moveChild(II)V

    .line 430
    :goto_1
    iget p1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 p1, p1, 0x1

    if-ge v1, p1, :cond_3

    .line 431
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget p1, p1, v1

    .line 432
    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    check-cast p1, Lorg/h2/index/PageData;

    .line 433
    invoke-virtual {p1, p2}, Lorg/h2/index/PageData;->setParentPageId(I)V

    .line 434
    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    :cond_3
    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->free(I)V

    return-void
.end method

.method protected remapChildren(I)V
    .locals 3

    const/4 v0, 0x0

    .line 189
    :goto_0
    iget v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v1, v1, v0

    .line 191
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2, v1, p1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/index/PageData;->setParentPageId(I)V

    .line 193
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method remove(J)Z
    .locals 4

    .line 244
    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageDataNode;->find(J)I

    move-result v0

    .line 247
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v2, v2, v0

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v1

    .line 248
    invoke-virtual {v1, p1, p2}, Lorg/h2/index/PageData;->remove(J)Z

    move-result p1

    .line 249
    iget-object p2, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p2

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {p2, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    const/4 p2, -0x1

    .line 250
    invoke-direct {p0, p2}, Lorg/h2/index/PageDataNode;->updateRowCount(I)V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 256
    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {v1}, Lorg/h2/index/PageData;->getPos()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/h2/store/PageStore;->free(I)V

    .line 257
    iget p1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    return v1

    .line 261
    :cond_1
    invoke-direct {p0, v0}, Lorg/h2/index/PageDataNode;->removeChild(I)V

    .line 262
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return p2
.end method

.method setRowCountStored(I)V
    .locals 2

    .line 321
    iput p1, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    .line 322
    iget v0, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    if-eq v0, p1, :cond_1

    .line 323
    iput p1, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    .line 324
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 325
    iget-boolean p1, p0, Lorg/h2/index/PageDataNode;->written:Z

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/index/PageDataNode;->changeCount:J

    .line 327
    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->writeHead()V

    .line 329
    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    :cond_1
    return-void
.end method

.method split(I)Lorg/h2/index/PageData;
    .locals 7

    .line 172
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v0

    .line 173
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    iget v2, p0, Lorg/h2/index/PageDataNode;->parentPageId:I

    invoke-static {v1, v0, v2}, Lorg/h2/index/PageDataNode;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataNode;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v1, v1, p1

    .line 175
    :goto_0
    iget v2, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    if-ge p1, v2, :cond_0

    .line 176
    iget v2, v0, Lorg/h2/index/PageDataNode;->entryCount:I

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/h2/index/PageDataNode;->keys:[J

    aget-wide v5, v4, p1

    invoke-direct {v0, v2, v3, v5, v6}, Lorg/h2/index/PageDataNode;->addChild(IIJ)V

    .line 177
    invoke-direct {p0, p1}, Lorg/h2/index/PageDataNode;->removeChild(I)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    add-int/lit8 p1, p1, -0x1

    aget v2, v2, p1

    .line 180
    invoke-direct {p0, p1}, Lorg/h2/index/PageDataNode;->removeChild(I)V

    .line 181
    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aput v2, v3, p1

    .line 182
    iget-object p1, v0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 183
    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/index/PageDataNode;->remapChildren(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] data node table:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageDataNode;->entryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    .line 346
    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->writeData()V

    .line 347
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/index/PageDataNode;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    return-void
.end method
