.class public Lorg/h2/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "closeSilently"

    const/4 v1, 0x0

    .line 44
    invoke-static {v0, v1, p0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/io/InputStream;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "closeSilently"

    const/4 v1, 0x0

    .line 227
    invoke-static {v0, v1, p0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/io/Reader;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/io/Writer;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 259
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 148
    invoke-static {p0, p1, v0, v1}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1000

    .line 164
    :try_start_0
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 165
    new-array v3, v2, [B

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    cmp-long v8, p2, v4

    if-lez v8, :cond_2

    const/4 v8, 0x0

    .line 167
    invoke-virtual {p0, v3, v8, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p1, v3, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    int-to-long v8, v2

    add-long/2addr v6, v8

    sub-long/2addr p2, v8

    .line 176
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v2, v8

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v6

    :catch_0
    move-exception p0

    .line 180
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    :try_start_0
    invoke-static {p0, p1}, Lorg/h2/util/IOUtils;->copyAndCloseInput(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 110
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {p1}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-wide v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 113
    :try_start_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :goto_0
    invoke-static {p1}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static copyAndCloseInput(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    :try_start_0
    invoke-static {p0, p1}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {p0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :goto_0
    invoke-static {p0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    throw p1
.end method

.method public static copyAndCloseInput(Ljava/io/Reader;Ljava/io/Writer;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1000

    .line 197
    :try_start_0
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 198
    new-array v3, v2, [C

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    cmp-long v8, p2, v4

    if-lez v8, :cond_2

    const/4 v8, 0x0

    .line 200
    invoke-virtual {p0, v3, v8, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p1, v3, v8, v2}, Ljava/io/Writer;->write([CII)V

    :cond_1
    int-to-long v8, v2

    sub-long/2addr p2, v8

    .line 208
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v2, v8

    int-to-long v8, v2

    add-long/2addr v6, v8

    goto :goto_0

    .line 215
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-wide v6

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 213
    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :goto_2
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw p1
.end method

.method public static copyFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x0

    .line 463
    invoke-static {p1, v0}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p1

    .line 464
    invoke-static {p0, p1}, Lorg/h2/util/IOUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method

.method public static getAsciiReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 420
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 423
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getBufferedReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 407
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getInputStreamFromString(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 452
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static getReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 395
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static readBytesAndClose(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    const/16 v0, 0x1000

    .line 280
    :try_start_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 281
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    int-to-long v2, p1

    .line 282
    invoke-static {p0, v1, v2, v3}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    .line 283
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 285
    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public static readFully(Ljava/io/InputStream;[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 327
    :try_start_0
    array-length v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-lez p2, :cond_1

    .line 329
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :catch_0
    move-exception p0

    .line 338
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static readFully(Ljava/io/Reader;[CI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 355
    :try_start_0
    array-length v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-lez p2, :cond_1

    .line 357
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/Reader;->read([CII)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :catch_0
    move-exception p0

    .line 366
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static readStringAndClose(Ljava/io/Reader;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    const/16 v0, 0x1000

    .line 305
    :try_start_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 306
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1, v0}, Ljava/io/StringWriter;-><init>(I)V

    int-to-long v2, p1

    .line 307
    invoke-static {p0, v1, v2, v3}, Lorg/h2/util/IOUtils;->copyAndCloseInput(Ljava/io/Reader;Ljava/io/Writer;J)J

    .line 308
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw p1
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 64
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sub-long/2addr p1, v2

    goto :goto_0

    .line 66
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 71
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method public static skipFully(Ljava/io/Reader;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 87
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sub-long/2addr p1, v2

    goto :goto_0

    .line 89
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 94
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 435
    sget-boolean v0, Lorg/h2/engine/SysProperties;->TRACE_IO:Z

    if-eqz v0, :cond_0

    .line 436
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOUtils."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
