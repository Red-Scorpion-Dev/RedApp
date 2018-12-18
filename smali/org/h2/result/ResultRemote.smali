.class public Lorg/h2/result/ResultRemote;
.super Ljava/lang/Object;
.source "ResultRemote.java"

# interfaces
.implements Lorg/h2/result/ResultInterface;


# instance fields
.field private final columns:[Lorg/h2/result/ResultColumn;

.field private currentRow:[Lorg/h2/value/Value;

.field private fetchSize:I

.field private id:I

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private final rowCount:I

.field private rowId:I

.field private rowOffset:I

.field private session:Lorg/h2/engine/SessionRemote;

.field private final trace:Lorg/h2/message/Trace;

.field private transfer:Lorg/h2/value/Transfer;


# direct methods
.method public constructor <init>(Lorg/h2/engine/SessionRemote;Lorg/h2/value/Transfer;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    .line 39
    invoke-virtual {p1}, Lorg/h2/engine/SessionRemote;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/result/ResultRemote;->trace:Lorg/h2/message/Trace;

    .line 40
    iput-object p2, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    .line 41
    iput p3, p0, Lorg/h2/result/ResultRemote;->id:I

    .line 42
    new-array p1, p4, [Lorg/h2/result/ResultColumn;

    iput-object p1, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    .line 43
    invoke-virtual {p2}, Lorg/h2/value/Transfer;->readInt()I

    move-result p1

    iput p1, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p4, :cond_0

    .line 45
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    new-instance v1, Lorg/h2/result/ResultColumn;

    invoke-direct {v1, p2}, Lorg/h2/result/ResultColumn;-><init>(Lorg/h2/value/Transfer;)V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 47
    iput p2, p0, Lorg/h2/result/ResultRemote;->rowId:I

    .line 48
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    .line 49
    iput p5, p0, Lorg/h2/result/ResultRemote;->fetchSize:I

    .line 50
    invoke-direct {p0, p1}, Lorg/h2/result/ResultRemote;->fetchRows(Z)V

    return-void
.end method

.method private fetchRows(Z)V
    .locals 7

    .line 203
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v1}, Lorg/h2/engine/SessionRemote;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    iget v1, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    iget-object v2, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    .line 207
    iget-object v1, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget v1, p0, Lorg/h2/result/ResultRemote;->fetchSize:I

    iget v2, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    iget v3, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v2, "RESULT_FETCH_ROWS"

    iget v3, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {p1, v2, v3}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    .line 211
    iget-object p1, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object p1

    iget v2, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {p1, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 213
    iget-object p1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    iget-object v2, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {p1, v2}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 216
    iget-object v3, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3}, Lorg/h2/value/Transfer;->readBoolean()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 220
    :cond_1
    iget-object v3, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    array-length v3, v3

    .line 221
    new-array v4, v3, [Lorg/h2/value/Value;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    .line 223
    iget-object v6, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v6}, Lorg/h2/value/Transfer;->readValue()Lorg/h2/value/Value;

    move-result-object v6

    .line 224
    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 226
    :cond_2
    iget-object v3, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_3
    :goto_2
    iget p1, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    iget-object v1, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    if-lt p1, v1, :cond_4

    .line 229
    invoke-direct {p0}, Lorg/h2/result/ResultRemote;->sendClose()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_4
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    .line 232
    invoke-static {p1, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 234
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private remapIfOld()V
    .locals 4

    .line 183
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    :try_start_0
    iget v0, p0, Lorg/h2/result/ResultRemote;->id:I

    iget-object v1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v1}, Lorg/h2/engine/SessionRemote;->getCurrentId()I

    move-result v1

    sget v2, Lorg/h2/engine/SysProperties;->SERVER_CACHED_OBJECTS:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v0}, Lorg/h2/engine/SessionRemote;->getNextId()I

    move-result v0

    .line 190
    iget-object v1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v2, "CHANGE_ID"

    iget v3, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    .line 191
    iget-object v1, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v1

    iget v2, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 192
    iput v0, p0, Lorg/h2/result/ResultRemote;->id:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 198
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private sendClose()V
    .locals 5

    .line 159
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 164
    :try_start_0
    iget-object v1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    :try_start_1
    iget-object v2, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v3, "RESULT_CLOSE"

    iget v4, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v2, v3, v4}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    .line 166
    iget-object v2, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v2

    iget v3, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 167
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 169
    :try_start_3
    iget-object v2, p0, Lorg/h2/result/ResultRemote;->trace:Lorg/h2/message/Trace;

    const-string v3, "close"

    invoke-virtual {v2, v1, v3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    :goto_0
    iput-object v0, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    .line 172
    iput-object v0, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    return-void

    .line 171
    :goto_1
    iput-object v0, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    .line 172
    iput-object v0, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    .line 179
    invoke-direct {p0}, Lorg/h2/result/ResultRemote;->sendClose()V

    return-void
.end method

.method public currentRow()[Lorg/h2/value/Value;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->currentRow:[Lorg/h2/value/Value;

    return-object v0
.end method

.method public getAlias(I)Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/h2/result/ResultColumn;->alias:Ljava/lang/String;

    return-object p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/h2/result/ResultColumn;->columnName:Ljava/lang/String;

    return-object p1
.end method

.method public getColumnPrecision(I)J
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-wide v0, p1, Lorg/h2/result/ResultColumn;->precision:J

    return-wide v0
.end method

.method public getColumnScale(I)I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget p1, p1, Lorg/h2/result/ResultColumn;->scale:I

    return p1
.end method

.method public getColumnType(I)I
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget p1, p1, Lorg/h2/result/ResultColumn;->columnType:I

    return p1
.end method

.method public getDisplaySize(I)I
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget p1, p1, Lorg/h2/result/ResultColumn;->displaySize:I

    return p1
.end method

.method public getFetchSize()I
    .locals 1

    .line 244
    iget v0, p0, Lorg/h2/result/ResultRemote;->fetchSize:I

    return v0
.end method

.method public getNullable(I)I
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget p1, p1, Lorg/h2/result/ResultColumn;->nullable:I

    return p1
.end method

.method public getRowCount()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    return v0
.end method

.method public getRowId()I
    .locals 1

    .line 145
    iget v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    return v0
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/h2/result/ResultColumn;->schemaName:Ljava/lang/String;

    return-object p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/h2/result/ResultColumn;->tableName:Ljava/lang/String;

    return-object p1
.end method

.method public getVisibleColumnCount()I
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    array-length v0, v0

    return v0
.end method

.method public isAutoIncrement(I)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-boolean p1, p1, Lorg/h2/result/ResultColumn;->autoIncrement:Z

    return p1
.end method

.method public needToClose()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()Z
    .locals 4

    .line 128
    iget v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    iget v1, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    if-ge v0, v1, :cond_2

    .line 129
    iget v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    .line 130
    invoke-direct {p0}, Lorg/h2/result/ResultRemote;->remapIfOld()V

    .line 131
    iget v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    iget v2, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    if-ge v0, v2, :cond_1

    .line 132
    iget v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    iget v2, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 133
    invoke-direct {p0, v1}, Lorg/h2/result/ResultRemote;->fetchRows(Z)V

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    iget v2, p0, Lorg/h2/result/ResultRemote;->rowId:I

    iget v3, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/value/Value;

    iput-object v0, p0, Lorg/h2/result/ResultRemote;->currentRow:[Lorg/h2/value/Value;

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lorg/h2/result/ResultRemote;->currentRow:[Lorg/h2/value/Value;

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 5

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lorg/h2/result/ResultRemote;->currentRow:[Lorg/h2/value/Value;

    .line 107
    iget-object v1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    if-nez v1, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v2, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v2}, Lorg/h2/engine/SessionRemote;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    iget-object v2, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v3, "RESULT_RESET"

    iget v4, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v2, v3, v4}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    .line 114
    iget-object v2, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v2

    iget v3, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v2

    .line 116
    invoke-static {v2, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    .line 118
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setFetchSize(I)V
    .locals 0

    .line 249
    iput p1, p0, Lorg/h2/result/ResultRemote;->fetchSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "columns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rows: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/result/ResultRemote;->rowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
