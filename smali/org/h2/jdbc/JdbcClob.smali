.class public Lorg/h2/jdbc/JdbcClob;
.super Lorg/h2/message/TraceObject;
.source "JdbcClob.java"

# interfaces
.implements Ljava/sql/NClob;


# instance fields
.field private final conn:Lorg/h2/jdbc/JdbcConnection;

.field value:Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1, p3}, Lorg/h2/jdbc/JdbcClob;->setTrace(Lorg/h2/message/Trace;II)V

    .line 43
    iput-object p1, p0, Lorg/h2/jdbc/JdbcClob;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 44
    iput-object p2, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    return-void
.end method

.method private checkClosed()V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/h2/jdbc/JdbcClob;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    .line 277
    iget-object v0, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15f97

    .line 278
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public free()V
    .locals 1

    const-string v0, "free"

    .line 263
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcClob;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    return-void
.end method

.method public getAsciiStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getAsciiStream"

    .line 85
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcClob;->debugCodeCall(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcClob;->checkClosed()V

    .line 87
    iget-object v0, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lorg/h2/util/IOUtils;->getInputStreamFromString(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcClob;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getCharacterStream"

    .line 110
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcClob;->debugCodeCall(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcClob;->checkClosed()V

    .line 112
    iget-object v0, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcClob;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getCharacterStream(JJ)Ljava/io/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "LOB subset"

    .line 272
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcClob;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSubString(JI)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcClob;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcClob;->debugCode(Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcClob;->checkClosed()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    if-ltz p3, :cond_1

    .line 190
    new-instance v2, Ljava/io/StringWriter;

    const/16 v3, 0x1000

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 192
    iget-object v3, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    invoke-virtual {v3}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    sub-long/2addr p1, v0

    .line 194
    :try_start_1
    invoke-static {v3, p1, p2}, Lorg/h2/util/IOUtils;->skipFully(Ljava/io/Reader;J)V

    int-to-long p1, p3

    .line 195
    invoke-static {v3, v2, p1, p2}, Lorg/h2/util/IOUtils;->copyAndCloseInput(Ljava/io/Reader;Ljava/io/Writer;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 199
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 197
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    throw p1

    :cond_1
    const-string p1, "length"

    .line 188
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p3, "pos"

    .line 185
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 201
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcClob;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

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

    .line 55
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcClob;->debugCodeCall(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcClob;->checkClosed()V

    .line 57
    iget-object v0, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/IOUtils;->copyAndCloseInput(Ljava/io/Reader;Ljava/io/Writer;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcClob;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public position(Ljava/lang/String;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "LOB search"

    .line 247
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcClob;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public position(Ljava/sql/Clob;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "LOB search"

    .line 255
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcClob;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setAsciiStream(J)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "LOB update"

    .line 99
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcClob;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setCharacterStream(J)Ljava/io/Writer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcClob;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCharacterStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcClob;->debugCodeCall(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcClob;->checkClosed()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 138
    iget-object p1, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 141
    iget-object p1, p0, Lorg/h2/jdbc/JdbcClob;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 145
    new-instance p2, Ljava/io/PipedInputStream;

    invoke-direct {p2}, Ljava/io/PipedInputStream;-><init>()V

    .line 146
    new-instance v0, Lorg/h2/jdbc/JdbcClob$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/jdbc/JdbcClob$1;-><init>(Lorg/h2/jdbc/JdbcClob;Lorg/h2/jdbc/JdbcConnection;Ljava/io/PipedInputStream;)V

    .line 152
    new-instance p1, Lorg/h2/jdbc/JdbcClob$2;

    invoke-direct {p1, p0, p2, v0}, Lorg/h2/jdbc/JdbcClob$2;-><init>(Lorg/h2/jdbc/JdbcClob;Ljava/io/PipedInputStream;Lorg/h2/util/Task;)V

    .line 163
    invoke-virtual {v0}, Lorg/h2/util/Task;->execute()Lorg/h2/util/Task;

    .line 164
    invoke-static {p1}, Lorg/h2/util/IOUtils;->getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "length"

    .line 139
    iget-object p2, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    invoke-virtual {p2}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const-string v0, "pos"

    .line 136
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcClob;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setString(JLjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcClob;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcClob;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcClob;->debugCode(Ljava/lang/String;)V

    .line 220
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcClob;->checkClosed()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    .line 226
    iget-object p1, p0, Lorg/h2/jdbc/JdbcClob;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance p2, Ljava/io/StringReader;

    invoke-direct {p2, p3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    invoke-virtual {p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    .line 227
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_1
    const-string p1, "str"

    .line 224
    invoke-static {p1, p3}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p3, "pos"

    .line 222
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 229
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcClob;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setString(JLjava/lang/String;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "LOB update"

    .line 239
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcClob;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcClob;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

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
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcClob;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
