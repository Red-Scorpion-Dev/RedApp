.class public Lorg/h2/jdbc/JdbcResultSetMetaData;
.super Lorg/h2/message/TraceObject;
.source "JdbcResultSetMetaData.java"

# interfaces
.implements Ljava/sql/ResultSetMetaData;


# instance fields
.field private final catalog:Ljava/lang/String;

.field private final columnCount:I

.field private final prep:Lorg/h2/jdbc/JdbcPreparedStatement;

.field private final result:Lorg/h2/result/ResultInterface;

.field private final rs:Lorg/h2/jdbc/JdbcResultSet;


# direct methods
.method constructor <init>(Lorg/h2/jdbc/JdbcResultSet;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/result/ResultInterface;Ljava/lang/String;Lorg/h2/message/Trace;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x5

    .line 31
    invoke-virtual {p0, p5, v0, p6}, Lorg/h2/jdbc/JdbcResultSetMetaData;->setTrace(Lorg/h2/message/Trace;II)V

    .line 32
    iput-object p4, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->catalog:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->rs:Lorg/h2/jdbc/JdbcResultSet;

    .line 34
    iput-object p2, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    .line 35
    iput-object p3, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    .line 36
    invoke-interface {p3}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result p1

    iput p1, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->columnCount:I

    return-void
.end method

.method private checkClosed()V
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->rs:Lorg/h2/jdbc/JdbcResultSet;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->rs:Lorg/h2/jdbc/JdbcResultSet;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    .line 439
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->checkClosed()Z

    :cond_1
    return-void
.end method

.method private checkColumnIndex(I)V
    .locals 1

    .line 445
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkClosed()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 446
    iget v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->columnCount:I

    if-gt p1, v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "columnIndex"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getCatalogName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getCatalogName"

    int-to-long v1, p1

    .line 179
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 180
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 181
    iget-object p1, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->catalog:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->catalog:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 183
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getColumnClassName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getColumnClassName"

    int-to-long v1, p1

    .line 371
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 372
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 373
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnType(I)I

    move-result p1

    .line 374
    invoke-static {p1}, Lorg/h2/value/DataType;->getTypeClassName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 376
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getColumnCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getColumnCount"

    .line 48
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkClosed()V

    .line 50
    iget v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->columnCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getColumnDisplaySize(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getColumnDisplaySize"

    int-to-long v1, p1

    .line 427
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 428
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 429
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getDisplaySize(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 431
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getColumnLabel(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getColumnLabel"

    int-to-long v1, p1

    .line 66
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 67
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 68
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getAlias(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getColumnName"

    int-to-long v1, p1

    .line 84
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 85
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 86
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getColumnType(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getColumnType"

    int-to-long v1, p1

    .line 103
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 104
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 105
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnType(I)I

    move-result p1

    .line 106
    invoke-static {p1}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getColumnTypeName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getColumnTypeName"

    int-to-long v1, p1

    .line 122
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 123
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 124
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnType(I)I

    move-result p1

    .line 125
    invoke-static {p1}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object p1

    iget-object p1, p1, Lorg/h2/value/DataType;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getPrecision(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getPrecision"

    int-to-long v1, p1

    .line 390
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 391
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 392
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnPrecision(I)J

    move-result-wide v0

    .line 393
    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getScale(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getScale"

    int-to-long v1, p1

    .line 409
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 410
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 411
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnScale(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 413
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getSchemaName"

    int-to-long v1, p1

    .line 141
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 142
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 143
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getSchemaName(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getTableName"

    int-to-long v1, p1

    .line 160
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 161
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 162
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getTableName(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isAutoIncrement(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isAutoIncrement"

    int-to-long v1, p1

    .line 197
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 198
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 199
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->isAutoIncrement(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 201
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isCaseSensitive(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isCaseSensitive"

    int-to-long v1, p1

    .line 216
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 217
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isCurrency(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isCurrency"

    int-to-long v1, p1

    .line 254
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 255
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isDefinitelyWritable(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isDefinitelyWritable"

    int-to-long v1, p1

    .line 352
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 353
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 356
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isNullable(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isNullable"

    int-to-long v1, p1

    .line 276
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 277
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    .line 278
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getNullable(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 280
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isReadOnly(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isReadOnly"

    int-to-long v1, p1

    .line 314
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 315
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isSearchable(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isSearchable"

    int-to-long v1, p1

    .line 235
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 236
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isSigned(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isSigned"

    int-to-long v1, p1

    .line 295
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 296
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isWritable(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isWritable"

    int-to-long v1, p1

    .line 333
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcResultSetMetaData;->debugCodeCall(Ljava/lang/String;J)V

    .line 334
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 337
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSetMetaData;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->columnCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 460
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "iface"

    .line 463
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
