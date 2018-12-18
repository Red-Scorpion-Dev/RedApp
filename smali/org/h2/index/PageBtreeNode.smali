.class public Lorg/h2/index/PageBtreeNode;
.super Lorg/h2/index/PageBtree;
.source "PageBtreeNode.java"


# static fields
.field private static final CHILD_OFFSET_PAIR_LENGTH:I = 0x6

.field private static final MAX_KEY_LENGTH:I = 0xa


# instance fields
.field private childPageIds:[I

.field private final pageStoreInternalCount:Z

.field private rowCount:I

.field private rowCountStored:I


# direct methods
.method private constructor <init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/index/PageBtree;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    const/4 p2, -0x1

    .line 46
    iput p2, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    .line 48
    iput p2, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    .line 52
    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->pageStoreInternalCount:Z

    iput-boolean p1, p0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    return-void
.end method

.method private addChild(IILorg/h2/result/SearchRow;)V
    .locals 8

    .line 160
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    iget-boolean v2, p0, Lorg/h2/index/PageBtreeNode;->onlyPosition:Z

    invoke-virtual {v0, v1, p3, v2}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v0

    .line 161
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v1

    .line 162
    iget v2, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    iget v4, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    sub-int/2addr v4, v3

    aget v2, v2, v4

    :goto_0
    sub-int v4, v2, v0

    .line 163
    iget v5, p0, Lorg/h2/index/PageBtreeNode;->start:I

    add-int/lit8 v5, v5, 0x6

    const/4 v6, 0x0

    if-ge v4, v5, :cond_4

    .line 164
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->readAllRows()V

    .line 165
    iput-boolean v3, p0, Lorg/h2/index/PageBtreeNode;->onlyPosition:Z

    move v2, v1

    const/4 v0, 0x0

    .line 168
    :goto_1
    iget v4, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-ge v0, v4, :cond_1

    .line 169
    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v5, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeNode;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v7

    invoke-virtual {v4, v5, v7, v3}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v4

    sub-int/2addr v2, v4

    .line 170
    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    aput v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    :cond_1
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    iget v2, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    sub-int/2addr v2, v3

    aget v0, v0, v2

    move v2, v0

    .line 173
    :goto_2
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v4, p3, v3}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v0

    .line 174
    sget-boolean v4, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v4, :cond_4

    sub-int v4, v2, v0

    iget v5, p0, Lorg/h2/index/PageBtreeNode;->start:I

    add-int/lit8 v5, v5, 0x6

    if-lt v4, v5, :cond_3

    goto :goto_3

    .line 176
    :cond_3
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_3
    sub-int/2addr v2, v0

    .line 180
    iget v4, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-lez v4, :cond_6

    .line 181
    iget v4, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-ge p1, v4, :cond_6

    if-nez p1, :cond_5

    goto :goto_4

    .line 182
    :cond_5
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    :goto_4
    sub-int v2, v1, v0

    .line 185
    :cond_6
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->rows:[Lorg/h2/result/SearchRow;

    iget v4, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    invoke-static {v1, v4, p1, p3}, Lorg/h2/index/PageBtreeNode;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lorg/h2/result/SearchRow;

    iput-object p3, p0, Lorg/h2/index/PageBtreeNode;->rows:[Lorg/h2/result/SearchRow;

    .line 186
    iget-object p3, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    invoke-static {p3, v1, p1, v2}, Lorg/h2/index/PageBtreeNode;->insert([IIII)[I

    move-result-object p3

    iput-object p3, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    .line 187
    iget-object p3, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    add-int/2addr p1, v3

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/2addr v1, v3

    neg-int v0, v0

    invoke-static {p3, p1, v1, v0}, Lorg/h2/index/PageBtreeNode;->add([IIII)V

    .line 188
    iget-object p3, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/2addr v0, v3

    invoke-static {p3, v0, p1, p2}, Lorg/h2/index/PageBtreeNode;->insert([IIII)[I

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    .line 189
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->start:I

    add-int/lit8 p1, p1, 0x6

    iput p1, p0, Lorg/h2/index/PageBtreeNode;->start:I

    .line 190
    iget-boolean p1, p0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    if-eqz p1, :cond_7

    .line 191
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_7

    .line 192
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    .line 195
    :cond_7
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    .line 196
    iput-boolean v6, p0, Lorg/h2/index/PageBtreeNode;->written:Z

    .line 197
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/index/PageBtreeNode;->changeCount:J

    return-void
.end method

.method private addChildTry(Lorg/h2/result/SearchRow;)I
    .locals 4

    .line 129
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    const/4 v1, -0x1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    .line 133
    :cond_0
    iget-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->onlyPosition:Z

    if-eqz v0, :cond_1

    .line 138
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 p1, p1, 0xa

    goto :goto_1

    .line 140
    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    iget-boolean v3, p0, Lorg/h2/index/PageBtreeNode;->onlyPosition:Z

    invoke-virtual {v0, v2, p1, v3}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result p1

    .line 141
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    .line 142
    iget v2, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    iget v2, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    :goto_0
    sub-int p1, v0, p1

    .line 145
    :goto_1
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->start:I

    add-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_3

    .line 146
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_3
    return v1
.end method

.method private check()V
    .locals 2

    .line 413
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 414
    :goto_0
    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 415
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 417
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeNode;
    .locals 2

    .line 80
    new-instance v0, Lorg/h2/index/PageBtreeNode;

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/index/PageBtreeNode;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    .line 82
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 83
    iput p2, v0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    .line 84
    invoke-direct {v0}, Lorg/h2/index/PageBtreeNode;->writeHead()V

    .line 86
    iget-object p0, v0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {p0}, Lorg/h2/store/Data;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    iput p0, v0, Lorg/h2/index/PageBtreeNode;->start:I

    .line 87
    sget-object p0, Lorg/h2/result/SearchRow;->EMPTY_ARRAY:[Lorg/h2/result/SearchRow;

    iput-object p0, v0, Lorg/h2/index/PageBtreeNode;->rows:[Lorg/h2/result/SearchRow;

    .line 88
    iget-boolean p0, v0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 89
    iput p0, v0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    :cond_0
    return-object v0
.end method

.method public static read(Lorg/h2/index/PageBtreeIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;
    .locals 1

    .line 65
    new-instance v0, Lorg/h2/index/PageBtreeNode;

    invoke-direct {v0, p0, p2, p1}, Lorg/h2/index/PageBtreeNode;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    .line 66
    invoke-direct {v0}, Lorg/h2/index/PageBtreeNode;->read()V

    return-object v0
.end method

.method private read()V
    .locals 5

    .line 95
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 96
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    .line 97
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readShortInt()S

    .line 98
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    iput v1, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    iput-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->onlyPosition:Z

    .line 100
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    .line 101
    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v3}, Lorg/h2/index/PageBtreeIndex;->getId()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 106
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    iput v0, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    .line 107
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    move-result v0

    iput v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    .line 108
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/2addr v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    .line 109
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget v3, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v4}, Lorg/h2/store/Data;->readInt()I

    move-result v4

    aput v4, v0, v3

    .line 110
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-nez v0, :cond_1

    sget-object v0, Lorg/h2/result/SearchRow;->EMPTY_ARRAY:[Lorg/h2/result/SearchRow;

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    new-array v0, v0, [Lorg/h2/result/SearchRow;

    :goto_1
    iput-object v0, p0, Lorg/h2/index/PageBtreeNode;->rows:[Lorg/h2/result/SearchRow;

    .line 111
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    invoke-static {v0}, Lorg/h2/util/Utils;->newIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    .line 112
    :goto_2
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-ge v1, v0, :cond_2

    .line 113
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readInt()I

    move-result v3

    aput v3, v0, v1

    .line 114
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readShortInt()S

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    :cond_2
    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->check()V

    .line 117
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageBtreeNode;->start:I

    .line 118
    iput-boolean v2, p0, Lorg/h2/index/PageBtreeNode;->written:Z

    return-void

    :cond_3
    const v1, 0x15fae

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->getPos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " expected index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v3}, Lorg/h2/index/PageBtreeIndex;->getId()I

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
    .locals 3

    .line 469
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->readAllRows()V

    .line 470
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    .line 471
    iget-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageBtree;->getRowCount()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lorg/h2/index/PageBtreeNode;->updateRowCount(I)V

    :cond_0
    const/4 v0, 0x0

    .line 474
    iput-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->written:Z

    .line 475
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/index/PageBtreeNode;->changeCount:J

    .line 476
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-gez v0, :cond_1

    .line 477
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 479
    :cond_1
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-le v0, p1, :cond_3

    if-lez p1, :cond_2

    .line 480
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    .line 481
    :goto_0
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    .line 482
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    iget v2, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, p1, v2, v0}, Lorg/h2/index/PageBtreeNode;->add([IIII)V

    .line 484
    :cond_3
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->rows:[Lorg/h2/result/SearchRow;

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/h2/index/PageBtreeNode;->remove([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/result/SearchRow;

    iput-object v0, p0, Lorg/h2/index/PageBtreeNode;->rows:[Lorg/h2/result/SearchRow;

    .line 485
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/h2/index/PageBtreeNode;->remove([III)[I

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    .line 486
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lorg/h2/index/PageBtreeNode;->remove([III)[I

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    .line 487
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->start:I

    add-int/lit8 p1, p1, -0x6

    iput p1, p0, Lorg/h2/index/PageBtreeNode;->start:I

    return-void
.end method

.method private updateRowCount(I)V
    .locals 2

    .line 229
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 230
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    .line 232
    :cond_0
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    if-eq p1, v1, :cond_2

    .line 233
    iput v1, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    .line 234
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 235
    iget-boolean p1, p0, Lorg/h2/index/PageBtreeNode;->written:Z

    if-eqz p1, :cond_1

    .line 236
    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->writeHead()V

    .line 238
    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    :cond_2
    return-void
.end method

.method private writeData()V
    .locals 6

    .line 442
    iget-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->written:Z

    if-eqz v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->readAllRows()V

    .line 446
    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->writeHead()V

    .line 447
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget v2, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 448
    :goto_0
    iget v2, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-ge v1, v2, :cond_1

    .line 449
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->writeInt(I)V

    .line 450
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->writeShortInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_1
    :goto_1
    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-ge v0, v1, :cond_2

    .line 453
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    aget v3, v3, v0

    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->rows:[Lorg/h2/result/SearchRow;

    aget-object v4, v4, v0

    iget-boolean v5, p0, Lorg/h2/index/PageBtreeNode;->onlyPosition:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/h2/index/PageBtreeIndex;->writeRow(Lorg/h2/store/Data;ILorg/h2/result/SearchRow;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 455
    iput-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->written:Z

    return-void
.end method

.method private writeHead()V
    .locals 3

    .line 431
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 432
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    iget-boolean v1, p0, Lorg/h2/index/PageBtreeNode;->onlyPosition:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 434
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeShortInt(I)V

    .line 435
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    .line 436
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 437
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    .line 438
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    return-void
.end method


# virtual methods
.method addRowTry(Lorg/h2/result/SearchRow;)I
    .locals 7

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 203
    invoke-virtual {p0, p1, v0, v1, v1}, Lorg/h2/index/PageBtreeNode;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v2

    .line 204
    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v3

    .line 205
    invoke-virtual {v3, p1}, Lorg/h2/index/PageBtree;->addRowTry(Lorg/h2/result/SearchRow;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 222
    invoke-direct {p0, v1}, Lorg/h2/index/PageBtreeNode;->updateRowCount(I)V

    .line 223
    iput-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->written:Z

    .line 224
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/index/PageBtreeNode;->changeCount:J

    return v5

    :cond_0
    add-int/lit8 v0, v4, -0x1

    .line 209
    invoke-virtual {v3, v0}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    iget-object v6, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v1, p0, v6}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 211
    invoke-direct {p0, v0}, Lorg/h2/index/PageBtreeNode;->addChildTry(Lorg/h2/result/SearchRow;)I

    move-result v1

    if-eq v1, v5, :cond_1

    return v1

    .line 215
    :cond_1
    invoke-virtual {v3, v4}, Lorg/h2/index/PageBtree;->split(I)Lorg/h2/index/PageBtree;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->readAllRows()V

    .line 217
    invoke-virtual {v1}, Lorg/h2/index/PageBtree;->getPos()I

    move-result v4

    invoke-direct {p0, v2, v4, v0}, Lorg/h2/index/PageBtreeNode;->addChild(IILorg/h2/result/SearchRow;)V

    .line 218
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 219
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 220
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto :goto_0
.end method

.method find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, p2, p3, v0, v0}, Lorg/h2/index/PageBtreeNode;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v0

    .line 300
    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-le v0, v1, :cond_1

    .line 301
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageBtreeNode;

    .line 305
    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/index/PageBtreeNode;->find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V

    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    .line 309
    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/index/PageBtree;->find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V

    return-void
.end method

.method freeRecursive()V
    .locals 3

    .line 460
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 461
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    const/4 v0, 0x0

    .line 462
    :goto_0
    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 463
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, v0

    .line 464
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/index/PageBtree;->freeRecursive()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getFirstLeaf()Lorg/h2/index/PageBtreeLeaf;
    .locals 2

    .line 320
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 321
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageBtree;->getFirstLeaf()Lorg/h2/index/PageBtreeLeaf;

    move-result-object v0

    return-object v0
.end method

.method getLastLeaf()Lorg/h2/index/PageBtreeLeaf;
    .locals 2

    .line 326
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    aget v0, v0, v1

    .line 327
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageBtree;->getLastLeaf()Lorg/h2/index/PageBtreeLeaf;

    move-result-object v0

    return-object v0
.end method

.method getRowCount()I
    .locals 6

    .line 380
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 382
    :goto_0
    iget v3, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_0

    .line 383
    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v3, v3, v1

    .line 384
    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v4, v3}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v3

    .line 385
    invoke-virtual {v3}, Lorg/h2/index/PageBtree;->getRowCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 386
    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v3}, Lorg/h2/index/PageBtreeIndex;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v4}, Lorg/h2/index/PageBtreeIndex;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-virtual {v3, v0, v4, v2, v5}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    iput v2, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    .line 392
    :cond_1
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    return v0
.end method

.method init(Lorg/h2/index/PageBtree;Lorg/h2/result/SearchRow;Lorg/h2/index/PageBtree;)V
    .locals 3

    const/4 v0, 0x0

    .line 286
    iput v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    const/4 v1, 0x1

    .line 287
    new-array v1, v1, [I

    invoke-virtual {p1}, Lorg/h2/index/PageBtree;->getPos()I

    move-result v2

    aput v2, v1, v0

    iput-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    .line 288
    sget-object v1, Lorg/h2/result/SearchRow;->EMPTY_ARRAY:[Lorg/h2/result/SearchRow;

    iput-object v1, p0, Lorg/h2/index/PageBtreeNode;->rows:[Lorg/h2/result/SearchRow;

    .line 289
    sget-object v1, Lorg/h2/util/Utils;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    .line 290
    invoke-virtual {p3}, Lorg/h2/index/PageBtree;->getPos()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lorg/h2/index/PageBtreeNode;->addChild(IILorg/h2/result/SearchRow;)V

    .line 291
    iget-boolean p2, p0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    if-eqz p2, :cond_0

    .line 292
    invoke-virtual {p1}, Lorg/h2/index/PageBtree;->getRowCount()I

    move-result p1

    invoke-virtual {p3}, Lorg/h2/index/PageBtree;->getRowCount()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    .line 294
    :cond_0
    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->check()V

    return-void
.end method

.method last(Lorg/h2/index/PageBtreeCursor;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    aget v0, v0, v1

    .line 315
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/index/PageBtree;->last(Lorg/h2/index/PageBtreeCursor;)V

    return-void
.end method

.method moveChild(II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 597
    :goto_0
    iget v2, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1

    .line 598
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 599
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 600
    iput-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->written:Z

    .line 601
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/h2/index/PageBtreeNode;->changeCount:J

    .line 602
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aput p2, p1, v1

    .line 603
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    :cond_1
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 3

    .line 557
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 559
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget v2, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    invoke-static {v1, p2, v2}, Lorg/h2/index/PageBtreeNode;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeNode;

    move-result-object v1

    .line 560
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->readAllRows()V

    .line 561
    iget v2, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    iput v2, v1, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    .line 562
    iget v2, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    iput v2, v1, Lorg/h2/index/PageBtreeNode;->rowCount:I

    .line 563
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iput-object v2, v1, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    .line 564
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->rows:[Lorg/h2/result/SearchRow;

    iput-object v2, v1, Lorg/h2/index/PageBtreeNode;->rows:[Lorg/h2/result/SearchRow;

    .line 565
    iget v2, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    iput v2, v1, Lorg/h2/index/PageBtreeNode;->entryCount:I

    .line 566
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->offsets:[I

    iput-object v2, v1, Lorg/h2/index/PageBtreeNode;->offsets:[I

    .line 567
    iget-boolean v2, p0, Lorg/h2/index/PageBtreeNode;->onlyPosition:Z

    iput-boolean v2, v1, Lorg/h2/index/PageBtreeNode;->onlyPosition:Z

    .line 568
    iget v2, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    iput v2, v1, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    .line 569
    iget v2, p0, Lorg/h2/index/PageBtreeNode;->start:I

    iput v2, v1, Lorg/h2/index/PageBtreeNode;->start:I

    .line 570
    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 571
    iget v1, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    if-nez v1, :cond_0

    .line 572
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, p1, p2}, Lorg/h2/index/PageBtreeIndex;->setRootPageId(Lorg/h2/engine/Session;I)V

    goto :goto_0

    .line 574
    :cond_0
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    .line 575
    instance-of v1, p1, Lorg/h2/index/PageBtreeNode;

    if-eqz v1, :cond_2

    .line 578
    check-cast p1, Lorg/h2/index/PageBtreeNode;

    .line 579
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->getPos()I

    move-result v1

    invoke-virtual {p1, v1, p2}, Lorg/h2/index/PageBtreeNode;->moveChild(II)V

    :goto_0
    const/4 p1, 0x0

    .line 581
    :goto_1
    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge p1, v1, :cond_1

    .line 582
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, p1

    .line 583
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v1

    .line 584
    invoke-virtual {v1, p2}, Lorg/h2/index/PageBtree;->setParentPageId(I)V

    .line 585
    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 587
    :cond_1
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->getPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->free(I)V

    return-void

    .line 576
    :cond_2
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method nextPage(Lorg/h2/index/PageBtreeCursor;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 499
    :goto_0
    iget v2, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1

    .line 500
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    :cond_1
    :goto_1
    iget p2, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-le v1, p2, :cond_3

    .line 506
    iget p2, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 507
    invoke-virtual {p1, p2, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void

    .line 510
    :cond_2
    iget-object p2, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget v0, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    invoke-virtual {p2, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    check-cast p2, Lorg/h2/index/PageBtreeNode;

    .line 511
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->getPos()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/h2/index/PageBtreeNode;->nextPage(Lorg/h2/index/PageBtreeCursor;I)V

    return-void

    .line 514
    :cond_3
    iget-object p2, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v2, v1

    invoke-virtual {p2, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    .line 515
    invoke-virtual {p2}, Lorg/h2/index/PageBtree;->getFirstLeaf()Lorg/h2/index/PageBtreeLeaf;

    move-result-object p2

    .line 516
    invoke-virtual {p1, p2, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void
.end method

.method previousPage(Lorg/h2/index/PageBtreeCursor;I)V
    .locals 2

    .line 528
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    :goto_0
    if-ltz v0, :cond_1

    .line 529
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, v0

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez v0, :cond_3

    .line 535
    iget p2, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    if-nez p2, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p1, p2, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void

    .line 539
    :cond_2
    iget-object p2, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget v0, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    invoke-virtual {p2, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    check-cast p2, Lorg/h2/index/PageBtreeNode;

    .line 540
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->getPos()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/h2/index/PageBtreeNode;->previousPage(Lorg/h2/index/PageBtreeCursor;I)V

    return-void

    .line 543
    :cond_3
    iget-object p2, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v0, v1, v0

    invoke-virtual {p2, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    .line 544
    invoke-virtual {p2}, Lorg/h2/index/PageBtree;->getLastLeaf()Lorg/h2/index/PageBtreeLeaf;

    move-result-object p2

    .line 545
    iget v0, p2, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void
.end method

.method protected remapChildren()V
    .locals 3

    const/4 v0, 0x0

    .line 270
    :goto_0
    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, v0

    .line 272
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v1

    .line 273
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/index/PageBtree;->setParentPageId(I)V

    .line 274
    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method remove(Lorg/h2/result/SearchRow;)Lorg/h2/result/SearchRow;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 332
    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/h2/index/PageBtreeNode;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v2

    .line 335
    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v3

    .line 336
    invoke-virtual {v3, p1}, Lorg/h2/index/PageBtree;->remove(Lorg/h2/result/SearchRow;)Lorg/h2/result/SearchRow;

    move-result-object v4

    .line 337
    iget-object v5, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v5}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v5, p0, v6}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    const/4 v5, -0x1

    .line 338
    invoke-direct {p0, v5}, Lorg/h2/index/PageBtreeNode;->updateRowCount(I)V

    .line 339
    iput-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->written:Z

    .line 340
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/h2/index/PageBtreeNode;->changeCount:J

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    if-ne v4, p1, :cond_3

    .line 346
    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v4}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v4

    invoke-virtual {v3}, Lorg/h2/index/PageBtree;->getPos()I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/h2/store/PageStore;->free(I)V

    .line 347
    iget v3, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-ge v3, v1, :cond_1

    return-object p1

    .line 351
    :cond_1
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-ne v2, p1, :cond_2

    add-int/lit8 p1, v2, -0x1

    .line 353
    invoke-virtual {p0, p1}, Lorg/h2/index/PageBtreeNode;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v0

    .line 357
    :cond_2
    invoke-direct {p0, v2}, Lorg/h2/index/PageBtreeNode;->removeChild(I)V

    .line 358
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-object v0

    .line 362
    :cond_3
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-ne v2, p1, :cond_4

    return-object v4

    .line 365
    :cond_4
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget p1, p1, v2

    .line 366
    invoke-direct {p0, v2}, Lorg/h2/index/PageBtreeNode;->removeChild(I)V

    .line 369
    invoke-direct {p0, v2, p1, v4}, Lorg/h2/index/PageBtreeNode;->addChild(IILorg/h2/result/SearchRow;)V

    .line 371
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget p1, p1, v2

    .line 372
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 373
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aput p1, v1, v4

    .line 374
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-object v0
.end method

.method setRowCountStored(I)V
    .locals 2

    if-gez p1, :cond_0

    .line 397
    iget-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    if-eqz v0, :cond_0

    return-void

    .line 400
    :cond_0
    iput p1, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    .line 401
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    if-eq v0, p1, :cond_2

    .line 402
    iput p1, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    .line 403
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 404
    iget-boolean p1, p0, Lorg/h2/index/PageBtreeNode;->written:Z

    if-eqz p1, :cond_1

    .line 405
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/index/PageBtreeNode;->changeCount:J

    .line 406
    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->writeHead()V

    .line 408
    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    :cond_2
    return-void
.end method

.method split(I)Lorg/h2/index/PageBtree;
    .locals 6

    .line 244
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v0

    .line 245
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    iget v2, p0, Lorg/h2/index/PageBtreeNode;->parentPageId:I

    invoke-static {v1, v0, v2}, Lorg/h2/index/PageBtreeNode;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeNode;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v1, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 247
    iget-boolean v1, p0, Lorg/h2/index/PageBtreeNode;->onlyPosition:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 249
    iput-boolean v2, v0, Lorg/h2/index/PageBtreeNode;->onlyPosition:Z

    .line 251
    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, p1

    .line 252
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->readAllRows()V

    .line 253
    :goto_0
    iget v3, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    if-ge p1, v3, :cond_1

    .line 254
    iget v3, v0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    add-int/lit8 v5, p1, 0x1

    aget v4, v4, v5

    invoke-virtual {p0, p1}, Lorg/h2/index/PageBtreeNode;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lorg/h2/index/PageBtreeNode;->addChild(IILorg/h2/result/SearchRow;)V

    .line 255
    invoke-direct {p0, p1}, Lorg/h2/index/PageBtreeNode;->removeChild(I)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    sub-int/2addr p1, v2

    aget v3, v3, p1

    .line 258
    invoke-direct {p0, p1}, Lorg/h2/index/PageBtreeNode;->removeChild(I)V

    .line 259
    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aput v3, v4, p1

    .line 260
    iget-object p1, v0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    if-nez p1, :cond_2

    .line 261
    new-array p1, v2, [I

    iput-object p1, v0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    .line 263
    :cond_2
    iget-object p1, v0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 264
    invoke-virtual {v0}, Lorg/h2/index/PageBtreeNode;->remapChildren()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] b-tree node table:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->entryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    .line 425
    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->check()V

    .line 426
    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->writeData()V

    .line 427
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeNode;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    return-void
.end method
