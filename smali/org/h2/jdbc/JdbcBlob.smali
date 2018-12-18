.class public Lorg/h2/jdbc/JdbcBlob;
.super Lorg/h2/message/TraceObject;
.source "JdbcBlob.java"

# interfaces
.implements Ljava/sql/Blob;


# instance fields
.field private final conn:Lorg/h2/jdbc/JdbcConnection;

.field value:Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    .line 40
    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1, p3}, Lorg/h2/jdbc/JdbcBlob;->setTrace(Lorg/h2/message/Trace;II)V

    .line 41
    iput-object p1, p0, Lorg/h2/jdbc/JdbcBlob;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 42
    iput-object p2, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    return-void
.end method

.method private checkClosed()V
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 324
    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15f97

    .line 325
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public free()V
    .locals 1

    const-string v0, "free"

    .line 306
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcBlob;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    return-void
.end method

.method public getBinaryStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getBinaryStream"

    .line 154
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcBlob;->debugCodeCall(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcBlob;->checkClosed()V

    .line 156
    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcBlob;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getBinaryStream(JJ)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "LOB update"

    .line 319
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcBlob;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBytes(JI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcBlob;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBytes("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcBlob;->debugCode(Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcBlob;->checkClosed()V

    .line 91
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 92
    iget-object v1, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    .line 94
    :try_start_1
    invoke-static {v1, p1, p2}, Lorg/h2/util/IOUtils;->skipFully(Ljava/io/InputStream;J)V

    int-to-long p1, p3

    .line 95
    invoke-static {v1, v0, p1, p2}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 99
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 97
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcBlob;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "length"

    .line 53
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcBlob;->debugCodeCall(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcBlob;->checkClosed()V

    .line 55
    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/util/IOUtils;->copyAndCloseInput(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcBlob;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public position(Ljava/sql/Blob;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcBlob;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "position(blobPattern, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcBlob;->debugCode(Ljava/lang/String;)V

    :cond_0
    const-string p1, "LOB subset"

    .line 298
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcBlob;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public position([BJ)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcBlob;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcBlob;->quoteBytes([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcBlob;->debugCode(Ljava/lang/String;)V

    :cond_0
    const-string p1, "LOB search"

    .line 263
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcBlob;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBinaryStream(J)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcBlob;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBinaryStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcBlob;->debugCode(Ljava/lang/String;)V

    .line 178
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcBlob;->checkClosed()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 182
    iget-object p1, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 185
    iget-object p1, p0, Lorg/h2/jdbc/JdbcBlob;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 186
    new-instance p2, Ljava/io/PipedInputStream;

    invoke-direct {p2}, Ljava/io/PipedInputStream;-><init>()V

    .line 187
    new-instance v0, Lorg/h2/jdbc/JdbcBlob$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/jdbc/JdbcBlob$1;-><init>(Lorg/h2/jdbc/JdbcBlob;Lorg/h2/jdbc/JdbcConnection;Ljava/io/PipedInputStream;)V

    .line 193
    new-instance p1, Lorg/h2/jdbc/JdbcBlob$2;

    invoke-direct {p1, p0, p2, v0}, Lorg/h2/jdbc/JdbcBlob$2;-><init>(Lorg/h2/jdbc/JdbcBlob;Ljava/io/PipedInputStream;Lorg/h2/util/Task;)V

    .line 204
    invoke-virtual {v0}, Lorg/h2/util/Task;->execute()Lorg/h2/util/Task;

    .line 205
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p2

    :cond_1
    const-string p1, "length"

    .line 183
    iget-object p2, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {p2}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const-string v0, "pos"

    .line 180
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcBlob;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBytes(J[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcBlob;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBytes("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcBlob;->quoteBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcBlob;->debugCode(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcBlob;->checkClosed()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 124
    iget-object p1, p0, Lorg/h2/jdbc/JdbcBlob;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v0, -0x1

    invoke-virtual {p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    .line 125
    array-length p1, p3

    return p1

    :cond_1
    const-string p3, "pos"

    .line 122
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcBlob;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBytes(J[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "LOB update"

    .line 143
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcBlob;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcBlob;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "LOB update"

    .line 74
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcBlob;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
