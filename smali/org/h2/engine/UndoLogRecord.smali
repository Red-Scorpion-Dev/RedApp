.class public Lorg/h2/engine/UndoLogRecord;
.super Ljava/lang/Object;
.source "UndoLogRecord.java"


# static fields
.field public static final DELETE:S = 0x1s

.field public static final INSERT:S = 0x0s

.field private static final IN_MEMORY:I = 0x0

.field private static final IN_MEMORY_INVALID:I = 0x2

.field private static final STORED:I = 0x1


# instance fields
.field private filePos:I

.field private operation:S

.field private row:Lorg/h2/result/Row;

.field private state:S

.field private table:Lorg/h2/table/Table;


# direct methods
.method constructor <init>(Lorg/h2/table/Table;SLorg/h2/result/Row;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    .line 47
    iput-object p3, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    .line 48
    iput-short p2, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    const/4 p1, 0x0

    .line 49
    iput-short p1, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    return-void
.end method

.method private load(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V
    .locals 7

    .line 214
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    .line 215
    invoke-virtual {p1}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 216
    :goto_0
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/h2/engine/UndoLog;->getTable(I)Lorg/h2/table/Table;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    .line 217
    invoke-virtual {p1}, Lorg/h2/store/Data;->readLong()J

    move-result-wide v3

    .line 218
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result p2

    .line 219
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    .line 220
    new-array v5, v0, [Lorg/h2/value/Value;

    :goto_1
    if-ge v1, v0, :cond_1

    .line 222
    invoke-virtual {p1}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {p0}, Lorg/h2/engine/UndoLogRecord;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/Table;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v5, v0}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    .line 225
    iget-object p1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {p1, v3, v4}, Lorg/h2/result/Row;->setKey(J)V

    .line 226
    iget-object p1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {p1, v2}, Lorg/h2/result/Row;->setDeleted(Z)V

    .line 227
    iget-object p1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {p1, p2}, Lorg/h2/result/Row;->setSessionId(I)V

    const/4 p1, 0x2

    .line 228
    iput-short p1, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    return-void
.end method

.method static loadFromBuffer(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)Lorg/h2/engine/UndoLogRecord;
    .locals 3

    .line 179
    new-instance v0, Lorg/h2/engine/UndoLogRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/h2/engine/UndoLogRecord;-><init>(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    .line 180
    invoke-virtual {p0}, Lorg/h2/store/Data;->length()I

    move-result v1

    .line 181
    invoke-virtual {p0}, Lorg/h2/store/Data;->readInt()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    .line 182
    invoke-direct {v0, p0, p1}, Lorg/h2/engine/UndoLogRecord;->load(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V

    add-int/2addr v1, v2

    .line 183
    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->setPos(I)V

    return-object v0
.end method


# virtual methods
.method append(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V
    .locals 4

    .line 137
    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1, v1}, Lorg/h2/store/Data;->writeInt(I)V

    .line 139
    iget-short v2, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 140
    iget-object v2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {v2}, Lorg/h2/result/Row;->isDeleted()Z

    move-result v2

    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->writeByte(B)V

    .line 141
    iget-object v2, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    invoke-virtual {p2, v2}, Lorg/h2/engine/UndoLog;->getTableId(Lorg/h2/table/Table;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 142
    iget-object p2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/h2/store/Data;->writeLong(J)V

    .line 143
    iget-object p2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 144
    iget-object p2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {p2}, Lorg/h2/result/Row;->getColumnCount()I

    move-result p2

    .line 145
    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->writeInt(I)V

    :goto_0
    if-ge v1, p2, :cond_0

    .line 147
    iget-object v2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {v2, v1}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    .line 148
    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 149
    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Lorg/h2/store/Data;->fillAligned()V

    .line 152
    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/h2/store/Data;->setInt(II)V

    return-void
.end method

.method canStore()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getUniqueIndex()Lorg/h2/index/Index;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method commit()V
    .locals 3

    .line 254
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    iget-short v1, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    iget-object v2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {v0, v1, v2}, Lorg/h2/table/Table;->commit(SLorg/h2/result/Row;)V

    return-void
.end method

.method public getFilePos()J
    .locals 2

    .line 246
    iget v0, p0, Lorg/h2/engine/UndoLogRecord;->filePos:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRow()Lorg/h2/result/Row;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method invalidatePos()V
    .locals 1

    .line 272
    iget-short v0, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 273
    iput-short v0, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    :cond_0
    return-void
.end method

.method isStored()Z
    .locals 2

    .line 58
    iget-short v0, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method load(Lorg/h2/store/Data;Lorg/h2/store/FileStore;Lorg/h2/engine/UndoLog;)V
    .locals 3

    .line 196
    iget v0, p0, Lorg/h2/engine/UndoLogRecord;->filePos:I

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Lorg/h2/engine/UndoLog;->seek(J)V

    .line 197
    invoke-virtual {p1}, Lorg/h2/store/Data;->reset()V

    .line 198
    invoke-virtual {p1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 199
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    .line 200
    invoke-virtual {p1, v0}, Lorg/h2/store/Data;->checkCapacity(I)V

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 202
    invoke-virtual {p1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2, v1, v0}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 204
    :cond_0
    iget-short p2, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    .line 205
    invoke-direct {p0, p1, p3}, Lorg/h2/engine/UndoLogRecord;->load(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V

    .line 206
    sget-boolean p1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz p1, :cond_1

    .line 207
    iget-short p1, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    if-eq p1, p2, :cond_1

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "operation="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p3, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " op="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method save(Lorg/h2/store/Data;Lorg/h2/store/FileStore;Lorg/h2/engine/UndoLog;)V
    .locals 4

    .line 163
    invoke-virtual {p1}, Lorg/h2/store/Data;->reset()V

    .line 164
    invoke-virtual {p0, p1, p3}, Lorg/h2/engine/UndoLogRecord;->append(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V

    .line 165
    invoke-virtual {p2}, Lorg/h2/store/FileStore;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    div-long/2addr v0, v2

    long-to-int p3, v0

    iput p3, p0, Lorg/h2/engine/UndoLogRecord;->filePos:I

    .line 166
    invoke-virtual {p1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, p1}, Lorg/h2/store/FileStore;->write([BII)V

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    const/4 p1, 0x1

    .line 168
    iput-short p1, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    return-void
.end method

.method undo(Lorg/h2/engine/Session;)V
    .locals 6

    .line 82
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 83
    iget-short v1, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "op="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v0, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_0

    .line 110
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {v0, p1, v1}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 111
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {v0, p1, v3, v1, v2}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    .line 114
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {v0}, Lorg/h2/result/Row;->commit()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLockMode()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p1

    const/16 v1, 0x5bd1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    throw v0

    .line 85
    :pswitch_1
    iget-short v1, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    .line 86
    iput-short v5, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    .line 88
    :cond_1
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLockMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {v0}, Lorg/h2/result/Row;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 95
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {v0, v5}, Lorg/h2/result/Row;->setDeleted(Z)V

    .line 96
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {v0, p1, v1}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 97
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {v0, p1, v1, v3, v2}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 99
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLockMode()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result p1

    const v1, 0x16000

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 104
    :cond_3
    throw v0

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
