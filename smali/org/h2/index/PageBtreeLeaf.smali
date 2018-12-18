.class public Lorg/h2/index/PageBtreeLeaf;
.super Lorg/h2/index/PageBtree;
.source "PageBtreeLeaf.java"


# static fields
.field private static final OFFSET_LENGTH:I = 0x2


# instance fields
.field private final optimizeUpdate:Z

.field private writtenData:Z


# direct methods
.method private constructor <init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/index/PageBtree;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    .line 41
    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->optimizeUpdate:Z

    iput-boolean p1, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    return-void
.end method

.method private addRow(Lorg/h2/result/SearchRow;Z)I
    .locals 8

    .line 109
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    iget-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->onlyPosition:Z

    invoke-virtual {v0, v1, p1, v2}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v0

    .line 110
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v1

    .line 111
    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    iget v4, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    sub-int/2addr v4, v3

    aget v2, v2, v4

    :goto_0
    sub-int/2addr v2, v0

    .line 112
    iget v4, p0, Lorg/h2/index/PageBtreeLeaf;->start:I

    add-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    if-ge v2, v4, :cond_8

    if-eqz p2, :cond_4

    .line 113
    iget p2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-le p2, v3, :cond_4

    .line 114
    invoke-virtual {p0, p1, v5, v3, v3}, Lorg/h2/index/PageBtreeLeaf;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result p1

    .line 115
    iget p2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    const/4 v0, 0x5

    if-ge p2, v0, :cond_1

    .line 117
    iget p1, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    div-int/lit8 p1, p1, 0x2

    return p1

    .line 122
    :cond_1
    iget p2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    div-int/lit8 p2, p2, 0x3

    if-ge p1, p2, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 p2, p2, 0x2

    if-lt p1, p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, p1

    :goto_1
    return p2

    .line 125
    :cond_4
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->readAllRows()V

    .line 126
    iput-boolean v5, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    .line 127
    iput-boolean v3, p0, Lorg/h2/index/PageBtreeLeaf;->onlyPosition:Z

    move v0, v1

    const/4 p2, 0x0

    .line 130
    :goto_2
    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-ge p2, v2, :cond_5

    .line 131
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v4, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {p0, p2}, Lorg/h2/index/PageBtreeLeaf;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v3}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v2

    sub-int/2addr v0, v2

    .line 132
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    aput v0, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 134
    :cond_5
    iget p2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-nez p2, :cond_6

    move p2, v1

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    sub-int/2addr v0, v3

    aget p2, p2, v0

    .line 135
    :goto_3
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v2, p1, v3}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v0

    .line 136
    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_8

    sub-int/2addr p2, v0

    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->start:I

    add-int/lit8 v2, v2, 0x2

    if-lt p2, v2, :cond_7

    goto :goto_4

    .line 137
    :cond_7
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 140
    :cond_8
    :goto_4
    iget-object p2, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p2}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p2

    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {p2, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 141
    iget-boolean p2, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    if-nez p2, :cond_9

    .line 142
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->readAllRows()V

    .line 144
    :cond_9
    iget-object p2, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p2}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/h2/index/PageBtreeLeaf;->changeCount:J

    .line 145
    iput-boolean v5, p0, Lorg/h2/index/PageBtreeLeaf;->written:Z

    .line 147
    iget p2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-nez p2, :cond_a

    goto :goto_5

    .line 150
    :cond_a
    invoke-virtual {p0, p1, v5, v3, v3}, Lorg/h2/index/PageBtreeLeaf;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v5

    .line 152
    :goto_5
    iget p2, p0, Lorg/h2/index/PageBtreeLeaf;->start:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/h2/index/PageBtreeLeaf;->start:I

    if-nez v5, :cond_b

    goto :goto_6

    .line 153
    :cond_b
    iget-object p2, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    add-int/lit8 v1, v5, -0x1

    aget v1, p2, v1

    :goto_6
    sub-int/2addr v1, v0

    .line 154
    iget-boolean p2, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    if-eqz p2, :cond_d

    iget-boolean p2, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    if-eqz p2, :cond_d

    .line 155
    iget p2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-lez p2, :cond_c

    .line 156
    iget-object p2, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    .line 157
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    iget v4, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    sub-int/2addr v4, v3

    aget v2, v2, v4

    sub-int v4, v2, v0

    sub-int v6, v1, v2

    add-int/2addr v6, v0

    .line 159
    invoke-static {p2, v2, p2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    :cond_c
    iget-object p2, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    iget-boolean v4, p0, Lorg/h2/index/PageBtreeLeaf;->onlyPosition:Z

    invoke-virtual {p2, v2, v1, p1, v4}, Lorg/h2/index/PageBtreeIndex;->writeRow(Lorg/h2/store/Data;ILorg/h2/result/SearchRow;Z)V

    .line 164
    :cond_d
    iget-object p2, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    invoke-static {p2, v2, v5, v1}, Lorg/h2/index/PageBtreeLeaf;->insert([IIII)[I

    move-result-object p2

    iput-object p2, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    .line 165
    iget-object p2, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    add-int/lit8 v1, v5, 0x1

    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    add-int/2addr v2, v3

    neg-int v0, v0

    invoke-static {p2, v1, v2, v0}, Lorg/h2/index/PageBtreeLeaf;->add([IIII)V

    .line 166
    iget-object p2, p0, Lorg/h2/index/PageBtreeLeaf;->rows:[Lorg/h2/result/SearchRow;

    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    invoke-static {p2, v0, v5, p1}, Lorg/h2/index/PageBtreeLeaf;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/h2/result/SearchRow;

    iput-object p1, p0, Lorg/h2/index/PageBtreeLeaf;->rows:[Lorg/h2/result/SearchRow;

    .line 167
    iget p1, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    .line 168
    iget-object p1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    const/4 p1, -0x1

    return p1
.end method

.method static create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;
    .locals 2

    .line 68
    new-instance v0, Lorg/h2/index/PageBtreeLeaf;

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/index/PageBtreeLeaf;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    .line 70
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 71
    sget-object p0, Lorg/h2/result/SearchRow;->EMPTY_ARRAY:[Lorg/h2/result/SearchRow;

    iput-object p0, v0, Lorg/h2/index/PageBtreeLeaf;->rows:[Lorg/h2/result/SearchRow;

    .line 72
    iput p2, v0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    .line 73
    invoke-direct {v0}, Lorg/h2/index/PageBtreeLeaf;->writeHead()V

    .line 74
    iget-object p0, v0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {p0}, Lorg/h2/store/Data;->length()I

    move-result p0

    iput p0, v0, Lorg/h2/index/PageBtreeLeaf;->start:I

    return-object v0
.end method

.method public static read(Lorg/h2/index/PageBtreeIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;
    .locals 1

    .line 53
    new-instance v0, Lorg/h2/index/PageBtreeLeaf;

    invoke-direct {v0, p0, p2, p1}, Lorg/h2/index/PageBtreeLeaf;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    .line 54
    invoke-direct {v0}, Lorg/h2/index/PageBtreeLeaf;->read()V

    return-object v0
.end method

.method private read()V
    .locals 4

    .line 79
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 80
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    .line 81
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readShortInt()S

    .line 82
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    iput v1, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    iput-boolean v0, p0, Lorg/h2/index/PageBtreeLeaf;->onlyPosition:Z

    .line 84
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    .line 85
    iget-object v3, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v3}, Lorg/h2/index/PageBtreeIndex;->getId()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 90
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    move-result v0

    iput v0, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    .line 91
    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    .line 92
    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    new-array v0, v0, [Lorg/h2/result/SearchRow;

    iput-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->rows:[Lorg/h2/result/SearchRow;

    .line 93
    :goto_1
    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-ge v1, v0, :cond_1

    .line 94
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    iget-object v3, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readShortInt()S

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageBtreeLeaf;->start:I

    .line 97
    iput-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->written:Z

    .line 98
    iput-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    return-void

    :cond_2
    const v1, 0x15fae

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->getPos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " expected index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

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

.method private removeRow(I)V
    .locals 6

    .line 173
    iget-boolean v0, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->readAllRows()V

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 177
    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lorg/h2/index/PageBtreeLeaf;->written:Z

    .line 179
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/h2/index/PageBtreeLeaf;->changeCount:J

    .line 180
    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-gtz v1, :cond_1

    .line 181
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_1
    if-lez p1, :cond_2

    .line 183
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v1

    .line 184
    :goto_0
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    .line 185
    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->start:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/h2/index/PageBtreeLeaf;->start:I

    .line 187
    iget-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    if-eqz v2, :cond_3

    .line 188
    iget-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    if-eqz v2, :cond_3

    .line 189
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    .line 190
    iget-object v3, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    iget v4, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    aget v3, v3, v4

    add-int v4, v3, v1

    .line 191
    iget-object v5, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    aget v5, v5, p1

    sub-int/2addr v5, v3

    invoke-static {v2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    invoke-static {v2, v3, v4, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 197
    :cond_3
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2, p1}, Lorg/h2/index/PageBtreeLeaf;->remove([III)[I

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    .line 198
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    invoke-static {v0, p1, v2, v1}, Lorg/h2/index/PageBtreeLeaf;->add([IIII)V

    .line 199
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->rows:[Lorg/h2/result/SearchRow;

    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/h2/index/PageBtreeLeaf;->remove([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/h2/result/SearchRow;

    iput-object p1, p0, Lorg/h2/index/PageBtreeLeaf;->rows:[Lorg/h2/result/SearchRow;

    return-void
.end method

.method private writeData()V
    .locals 7

    .line 286
    iget-boolean v0, p0, Lorg/h2/index/PageBtreeLeaf;->written:Z

    if-eqz v0, :cond_0

    return-void

    .line 289
    :cond_0
    iget-boolean v0, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    if-nez v0, :cond_1

    .line 290
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->readAllRows()V

    .line 292
    :cond_1
    invoke-direct {p0}, Lorg/h2/index/PageBtreeLeaf;->writeHead()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 293
    :goto_0
    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-ge v1, v2, :cond_2

    .line 294
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->writeShortInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_2
    iget-boolean v1, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    if-nez v1, :cond_5

    .line 297
    :cond_3
    :goto_1
    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-ge v0, v1, :cond_4

    .line 298
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v3, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    iget-object v4, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    aget v4, v4, v0

    iget-object v5, p0, Lorg/h2/index/PageBtreeLeaf;->rows:[Lorg/h2/result/SearchRow;

    aget-object v5, v5, v0

    iget-boolean v6, p0, Lorg/h2/index/PageBtreeLeaf;->onlyPosition:Z

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/h2/index/PageBtreeIndex;->writeRow(Lorg/h2/store/Data;ILorg/h2/result/SearchRow;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 300
    :cond_4
    iput-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    .line 302
    :cond_5
    iput-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->written:Z

    .line 303
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->memoryChange()V

    return-void
.end method

.method private writeHead()V
    .locals 3

    .line 276
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 277
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    iget-boolean v1, p0, Lorg/h2/index/PageBtreeLeaf;->onlyPosition:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 279
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeShortInt(I)V

    .line 280
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    .line 281
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 282
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    return-void
.end method


# virtual methods
.method addRowTry(Lorg/h2/result/SearchRow;)I
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, p1, v0}, Lorg/h2/index/PageBtreeLeaf;->addRow(Lorg/h2/result/SearchRow;Z)I

    move-result p1

    .line 104
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->memoryChange()V

    return p1
.end method

.method find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, p2, p3, v0, v0}, Lorg/h2/index/PageBtreeLeaf;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v0

    .line 309
    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-le v0, v1, :cond_1

    .line 310
    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageBtreeNode;

    .line 314
    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/index/PageBtreeNode;->find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V

    return-void

    .line 317
    :cond_1
    invoke-virtual {p1, p0, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void
.end method

.method freeRecursive()V
    .locals 2

    .line 255
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 256
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    return-void
.end method

.method getEntryCount()I
    .locals 1

    .line 203
    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    return v0
.end method

.method getFirstLeaf()Lorg/h2/index/PageBtreeLeaf;
    .locals 0

    return-object p0
.end method

.method getLastLeaf()Lorg/h2/index/PageBtreeLeaf;
    .locals 0

    return-object p0
.end method

.method getRowCount()I
    .locals 1

    .line 261
    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    return v0
.end method

.method last(Lorg/h2/index/PageBtreeCursor;)V
    .locals 1

    .line 322
    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p0, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void
.end method

.method protected memoryChange()V
    .locals 3

    .line 389
    invoke-static {}, Lorg/h2/index/PageBtreeIndex;->isMemoryChangeRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    add-int/lit16 v0, v0, 0xb8

    .line 393
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->rows:[Lorg/h2/result/SearchRow;

    if-eqz v1, :cond_2

    .line 394
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->getEntryCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 395
    :goto_0
    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-ge v1, v2, :cond_2

    .line 396
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->rows:[Lorg/h2/result/SearchRow;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 398
    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getMemory()I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_2
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    shr-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->memoryChange(I)V

    return-void
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 3

    .line 366
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->readAllRows()V

    .line 368
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    invoke-static {v1, p2, v2}, Lorg/h2/index/PageBtreeLeaf;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;

    move-result-object v1

    .line 369
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    const/4 v2, 0x0

    .line 370
    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 371
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->rows:[Lorg/h2/result/SearchRow;

    iput-object v2, v1, Lorg/h2/index/PageBtreeLeaf;->rows:[Lorg/h2/result/SearchRow;

    .line 372
    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    iput v2, v1, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    .line 373
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    iput-object v2, v1, Lorg/h2/index/PageBtreeLeaf;->offsets:[I

    .line 374
    iget-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->onlyPosition:Z

    iput-boolean v2, v1, Lorg/h2/index/PageBtreeLeaf;->onlyPosition:Z

    .line 375
    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    iput v2, v1, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    .line 376
    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->start:I

    iput v2, v1, Lorg/h2/index/PageBtreeLeaf;->start:I

    .line 377
    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 378
    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, p1, p2}, Lorg/h2/index/PageBtreeIndex;->setRootPageId(Lorg/h2/engine/Session;I)V

    goto :goto_0

    .line 381
    :cond_0
    iget p1, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    check-cast p1, Lorg/h2/index/PageBtreeNode;

    .line 382
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->getPos()I

    move-result v1

    invoke-virtual {p1, v1, p2}, Lorg/h2/index/PageBtreeNode;->moveChild(II)V

    .line 384
    :goto_0
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->getPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->free(I)V

    return-void
.end method

.method nextPage(Lorg/h2/index/PageBtreeCursor;)V
    .locals 2

    .line 336
    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 337
    invoke-virtual {p1, v0, v1}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageBtreeNode;

    .line 341
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->getPos()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/index/PageBtreeNode;->nextPage(Lorg/h2/index/PageBtreeCursor;I)V

    return-void
.end method

.method previousPage(Lorg/h2/index/PageBtreeCursor;)V
    .locals 2

    .line 350
    iget v0, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 351
    invoke-virtual {p1, v0, v1}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageBtreeNode;

    .line 355
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->getPos()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/index/PageBtreeNode;->previousPage(Lorg/h2/index/PageBtreeCursor;I)V

    return-void
.end method

.method remapChildren()V
    .locals 0

    return-void
.end method

.method remove(Lorg/h2/result/SearchRow;)Lorg/h2/result/SearchRow;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 231
    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/h2/index/PageBtreeLeaf;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v0

    .line 232
    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeLeaf;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v2

    .line 233
    iget-object v3, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v3, p1, v2}, Lorg/h2/index/PageBtreeIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 237
    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v2, p0, v3}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 238
    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-ne v2, v1, :cond_0

    return-object p1

    .line 242
    :cond_0
    invoke-direct {p0, v0}, Lorg/h2/index/PageBtreeLeaf;->removeRow(I)V

    .line 243
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->memoryChange()V

    .line 244
    iget-object p1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 245
    iget p1, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-ne v0, p1, :cond_1

    sub-int/2addr v0, v1

    .line 247
    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeLeaf;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    const v0, 0x16000

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeIndex;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method setRowCountStored(I)V
    .locals 0

    return-void
.end method

.method split(I)Lorg/h2/index/PageBtree;
    .locals 3

    .line 208
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v0

    .line 209
    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    iget v2, p0, Lorg/h2/index/PageBtreeLeaf;->parentPageId:I

    invoke-static {v1, v0, v2}, Lorg/h2/index/PageBtreeLeaf;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;

    move-result-object v0

    .line 210
    :goto_0
    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    if-ge p1, v1, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lorg/h2/index/PageBtreeLeaf;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/h2/index/PageBtreeLeaf;->addRow(Lorg/h2/result/SearchRow;Z)I

    .line 212
    invoke-direct {p0, p1}, Lorg/h2/index/PageBtreeLeaf;->removeRow(I)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->memoryChange()V

    .line 215
    invoke-virtual {v0}, Lorg/h2/index/PageBtreeLeaf;->memoryChange()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] b-tree leaf table:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageBtreeLeaf;->entryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    .line 271
    invoke-direct {p0}, Lorg/h2/index/PageBtreeLeaf;->writeData()V

    .line 272
    iget-object v0, p0, Lorg/h2/index/PageBtreeLeaf;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/index/PageBtreeLeaf;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    return-void
.end method
