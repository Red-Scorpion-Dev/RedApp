.class public Lorg/h2/result/RowList;
.super Ljava/lang/Object;
.source "RowList.java"


# instance fields
.field private file:Lorg/h2/store/FileStore;

.field private index:I

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation
.end field

.field private listIndex:I

.field private lobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private final maxMemory:I

.field private memory:I

.field private readUncached:Z

.field private rowBuff:Lorg/h2/store/Data;

.field private final session:Lorg/h2/engine/Session;

.field private size:I

.field private written:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/RowList;->list:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lorg/h2/result/RowList;->session:Lorg/h2/engine/Session;

    .line 42
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMaxOperationMemory()I

    move-result p1

    iput p1, p0, Lorg/h2/result/RowList;->maxMemory:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lorg/h2/result/RowList;->maxMemory:I

    :goto_0
    return-void
.end method

.method private flushBuffer(Lorg/h2/store/Data;)V
    .locals 3

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p1, v0}, Lorg/h2/store/Data;->checkCapacity(I)V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, v0}, Lorg/h2/store/Data;->writeByte(B)V

    .line 120
    invoke-virtual {p1}, Lorg/h2/store/Data;->fillAligned()V

    .line 121
    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/h2/store/Data;->setInt(II)V

    .line 122
    iget-object v1, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result p1

    invoke-virtual {v1, v2, v0, p1}, Lorg/h2/store/FileStore;->write([BII)V

    return-void
.end method

.method private static initBuffer(Lorg/h2/store/Data;)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lorg/h2/store/Data;->reset()V

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lorg/h2/store/Data;->writeInt(I)V

    return-void
.end method

.method private readRow(Lorg/h2/store/Data;)Lorg/h2/result/Row;
    .locals 12

    .line 165
    invoke-virtual {p1}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 168
    :cond_0
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    .line 169
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v2

    .line 170
    invoke-virtual {p1}, Lorg/h2/store/Data;->readLong()J

    move-result-wide v3

    .line 171
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v5

    .line 172
    iget-boolean v6, p0, Lorg/h2/result/RowList;->readUncached:Z

    if-eqz v6, :cond_1

    const-wide/16 v3, 0x0

    .line 175
    :cond_1
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 176
    :goto_0
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v6

    .line 177
    new-array v9, v2, [Lorg/h2/value/Value;

    :goto_1
    if-ge v7, v2, :cond_5

    .line 180
    invoke-virtual {p1}, Lorg/h2/store/Data;->readByte()B

    move-result v10

    if-nez v10, :cond_3

    move-object v10, v1

    goto :goto_2

    .line 183
    :cond_3
    invoke-virtual {p1}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v10

    .line 184
    invoke-virtual {v10}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 187
    invoke-virtual {v10}, Lorg/h2/value/Value;->getTableId()I

    move-result v11

    if-nez v11, :cond_4

    .line 188
    iget-object v11, p0, Lorg/h2/result/RowList;->session:Lorg/h2/engine/Session;

    invoke-virtual {v11, v10}, Lorg/h2/engine/Session;->removeAtCommit(Lorg/h2/value/Value;)V

    .line 192
    :cond_4
    :goto_2
    aput-object v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 194
    :cond_5
    iget-object p1, p0, Lorg/h2/result/RowList;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v9, v0}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    .line 195
    invoke-virtual {p1, v3, v4}, Lorg/h2/result/Row;->setKey(J)V

    .line 196
    invoke-virtual {p1, v5}, Lorg/h2/result/Row;->setVersion(I)V

    .line 197
    invoke-virtual {p1, v8}, Lorg/h2/result/Row;->setDeleted(Z)V

    .line 198
    invoke-virtual {p1, v6}, Lorg/h2/result/Row;->setSessionId(I)V

    return-object p1
.end method

.method private writeAllRows()V
    .locals 6

    .line 87
    iget-object v0, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    const/16 v1, 0x1000

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/h2/result/RowList;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lorg/h2/engine/Database;->createTempFile()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    .line 90
    invoke-virtual {v0, v3, v4, v2}, Lorg/h2/engine/Database;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    .line 91
    iget-object v3, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v3, v2}, Lorg/h2/store/FileStore;->setCheckedWriting(Z)V

    .line 92
    iget-object v3, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    const-wide/16 v4, 0x30

    invoke-virtual {v3, v4, v5}, Lorg/h2/store/FileStore;->seek(J)V

    .line 93
    invoke-static {v0, v1}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/RowList;->rowBuff:Lorg/h2/store/Data;

    .line 94
    iget-object v0, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0, v4, v5}, Lorg/h2/store/FileStore;->seek(J)V

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/h2/result/RowList;->rowBuff:Lorg/h2/store/Data;

    .line 97
    invoke-static {v0}, Lorg/h2/result/RowList;->initBuffer(Lorg/h2/store/Data;)V

    .line 98
    iget-object v3, p0, Lorg/h2/result/RowList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    if-lez v4, :cond_1

    .line 99
    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v5

    if-le v5, v1, :cond_1

    .line 100
    invoke-direct {p0, v0}, Lorg/h2/result/RowList;->flushBuffer(Lorg/h2/store/Data;)V

    .line 101
    invoke-static {v0}, Lorg/h2/result/RowList;->initBuffer(Lorg/h2/store/Data;)V

    .line 103
    :cond_1
    iget-object v5, p0, Lorg/h2/result/RowList;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/result/Row;

    .line 104
    invoke-direct {p0, v0, v5}, Lorg/h2/result/RowList;->writeRow(Lorg/h2/store/Data;Lorg/h2/result/Row;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0, v0}, Lorg/h2/result/RowList;->flushBuffer(Lorg/h2/store/Data;)V

    .line 107
    iget-object v0, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->autoDelete()V

    .line 108
    iget-object v0, p0, Lorg/h2/result/RowList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iput v2, p0, Lorg/h2/result/RowList;->memory:I

    return-void
.end method

.method private writeRow(Lorg/h2/store/Data;Lorg/h2/result/Row;)V
    .locals 7

    const/16 v0, 0x21

    .line 50
    invoke-virtual {p1, v0}, Lorg/h2/store/Data;->checkCapacity(I)V

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0}, Lorg/h2/store/Data;->writeByte(B)V

    .line 52
    invoke-virtual {p2}, Lorg/h2/result/Row;->getMemory()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/h2/store/Data;->writeInt(I)V

    .line 53
    invoke-virtual {p2}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v1

    .line 54
    invoke-virtual {p1, v1}, Lorg/h2/store/Data;->writeInt(I)V

    .line 55
    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/h2/store/Data;->writeLong(J)V

    .line 56
    invoke-virtual {p2}, Lorg/h2/result/Row;->getVersion()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 57
    invoke-virtual {p2}, Lorg/h2/result/Row;->isDeleted()Z

    move-result v2

    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 58
    invoke-virtual {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->writeInt(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 60
    invoke-virtual {p2, v3}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    .line 61
    invoke-virtual {p1, v0}, Lorg/h2/store/Data;->checkCapacity(I)V

    if-nez v4, :cond_0

    .line 63
    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->writeByte(B)V

    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {p1, v0}, Lorg/h2/store/Data;->writeByte(B)V

    .line 66
    invoke-virtual {v4}, Lorg/h2/value/Value;->getType()I

    move-result v5

    const/16 v6, 0x10

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lorg/h2/value/Value;->getType()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_3

    .line 69
    :cond_1
    invoke-virtual {v4}, Lorg/h2/value/Value;->getSmall()[B

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lorg/h2/value/Value;->getTableId()I

    move-result v5

    if-nez v5, :cond_3

    .line 70
    iget-object v5, p0, Lorg/h2/result/RowList;->lobs:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 71
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/result/RowList;->lobs:Ljava/util/ArrayList;

    .line 76
    :cond_2
    invoke-virtual {v4}, Lorg/h2/value/Value;->copyToTemp()Lorg/h2/value/Value;

    move-result-object v4

    .line 77
    iget-object v5, p0, Lorg/h2/result/RowList;->lobs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_3
    invoke-virtual {p1, v4}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;)I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 81
    invoke-virtual {p1, v4}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lorg/h2/result/Row;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/h2/result/RowList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget v0, p0, Lorg/h2/result/RowList;->memory:I

    invoke-virtual {p1}, Lorg/h2/result/Row;->getMemory()I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/result/RowList;->memory:I

    .line 133
    iget p1, p0, Lorg/h2/result/RowList;->maxMemory:I

    if-lez p1, :cond_0

    iget p1, p0, Lorg/h2/result/RowList;->memory:I

    iget v0, p0, Lorg/h2/result/RowList;->maxMemory:I

    if-le p1, v0, :cond_0

    .line 134
    invoke-direct {p0}, Lorg/h2/result/RowList;->writeAllRows()V

    .line 136
    :cond_0
    iget p1, p0, Lorg/h2/result/RowList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/result/RowList;->size:I

    return-void
.end method

.method public close()V
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->autoDelete()V

    .line 260
    iget-object v0, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->closeAndDeleteSilently()V

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    .line 262
    iput-object v0, p0, Lorg/h2/result/RowList;->rowBuff:Lorg/h2/store/Data;

    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 161
    iget v0, p0, Lorg/h2/result/RowList;->index:I

    iget v1, p0, Lorg/h2/result/RowList;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateCache()V
    .locals 1

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lorg/h2/result/RowList;->readUncached:Z

    return-void
.end method

.method public next()Lorg/h2/result/Row;
    .locals 5

    .line 209
    iget-object v0, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/h2/result/RowList;->list:Ljava/util/ArrayList;

    iget v1, p0, Lorg/h2/result/RowList;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/result/RowList;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/Row;

    goto :goto_2

    .line 212
    :cond_0
    iget v0, p0, Lorg/h2/result/RowList;->listIndex:I

    iget-object v1, p0, Lorg/h2/result/RowList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 213
    iget-object v0, p0, Lorg/h2/result/RowList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lorg/h2/result/RowList;->listIndex:I

    .line 215
    iget-object v1, p0, Lorg/h2/result/RowList;->rowBuff:Lorg/h2/store/Data;

    .line 216
    invoke-virtual {v1}, Lorg/h2/store/Data;->reset()V

    .line 218
    iget-object v2, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v0, v4}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 219
    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    .line 220
    invoke-virtual {v1, v0}, Lorg/h2/store/Data;->checkCapacity(I)V

    sub-int/2addr v0, v4

    if-lez v0, :cond_1

    .line 222
    iget-object v2, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3, v4, v0}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 225
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lorg/h2/result/RowList;->readRow(Lorg/h2/store/Data;)Lorg/h2/result/Row;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 229
    :cond_2
    iget-object v2, p0, Lorg/h2/result/RowList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_3
    :goto_1
    iget v0, p0, Lorg/h2/result/RowList;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/result/RowList;->index:I

    .line 233
    iget-object v0, p0, Lorg/h2/result/RowList;->list:Ljava/util/ArrayList;

    iget v1, p0, Lorg/h2/result/RowList;->listIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/result/RowList;->listIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/Row;

    :goto_2
    return-object v0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lorg/h2/result/RowList;->index:I

    .line 144
    iget-object v1, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    if-eqz v1, :cond_1

    .line 145
    iput v0, p0, Lorg/h2/result/RowList;->listIndex:I

    .line 146
    iget-boolean v0, p0, Lorg/h2/result/RowList;->written:Z

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lorg/h2/result/RowList;->writeAllRows()V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lorg/h2/result/RowList;->written:Z

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/h2/result/RowList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    iget-object v0, p0, Lorg/h2/result/RowList;->file:Lorg/h2/store/FileStore;

    const-wide/16 v1, 0x30

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/FileStore;->seek(J)V

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 244
    iget v0, p0, Lorg/h2/result/RowList;->size:I

    return v0
.end method
