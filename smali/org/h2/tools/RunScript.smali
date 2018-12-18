.class public Lorg/h2/tools/RunScript;
.super Lorg/h2/util/Tool;
.source "RunScript.java"


# instance fields
.field private checkResults:Z

.field private showResults:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method public static execute(Ljava/sql/Connection;Ljava/io/Reader;)Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 159
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    .line 161
    new-instance v0, Lorg/h2/util/ScriptReader;

    invoke-direct {v0, p1}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 163
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    .line 167
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 170
    :cond_2
    invoke-interface {p0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    .line 173
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    .line 176
    :cond_3
    invoke-interface {p0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p1

    goto :goto_0
.end method

.method public static execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 303
    new-instance v0, Lorg/h2/tools/RunScript;

    invoke-direct {v0}, Lorg/h2/tools/RunScript;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/h2/tools/RunScript;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/h2/tools/RunScript;

    invoke-direct {v0}, Lorg/h2/tools/RunScript;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/RunScript;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private process(Ljava/sql/Connection;Ljava/lang/String;ZLjava/nio/charset/Charset;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 186
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    :try_start_0
    new-instance p2, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {p2, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p2, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v6, p4

    .line 190
    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/RunScript;->process(Ljava/sql/Connection;ZLjava/lang/String;Ljava/io/Reader;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-static {p2}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    invoke-static {p2}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    throw p1
.end method

.method private process(Ljava/sql/Connection;ZLjava/lang/String;Ljava/io/Reader;Ljava/nio/charset/Charset;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 199
    new-instance v1, Lorg/h2/util/ScriptReader;

    invoke-direct {v1, p4}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    .line 201
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_1

    return-void

    .line 205
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "@"

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@INCLUDE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p4, "@INCLUDE"

    .line 212
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {v2, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 213
    invoke-static {p4}, Lorg/h2/store/fs/FileUtils;->isAbsolute(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 216
    :cond_3
    invoke-direct {p0, p1, p4, p2, p5}, Lorg/h2/tools/RunScript;->process(Ljava/sql/Connection;Ljava/lang/String;ZLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 219
    :cond_4
    :try_start_0
    iget-boolean v3, p0, Lorg/h2/tools/RunScript;->showResults:Z

    if-eqz v3, :cond_5

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 220
    iget-object v2, p0, Lorg/h2/tools/RunScript;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 222
    :cond_5
    iget-boolean v2, p0, Lorg/h2/tools/RunScript;->showResults:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lorg/h2/tools/RunScript;->checkResults:Z

    if-eqz v2, :cond_6

    goto :goto_1

    .line 260
    :cond_6
    invoke-interface {v0, p4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 223
    :cond_7
    :goto_1
    invoke-interface {v0, p4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-interface {v0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v2

    .line 226
    invoke-interface {v2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v3

    invoke-interface {v3}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v3

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    :cond_8
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "\n-->"

    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_8

    add-int/lit8 v5, v5, 0x1

    .line 231
    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    const-string v7, "\r\n"

    const-string v8, "\n"

    .line 233
    invoke-static {v6, v7, v8}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, "\n-->    "

    .line 234
    invoke-static {v6, v7, v8}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r"

    const-string v8, "\r-->    "

    .line 235
    invoke-static {v6, v7, v8}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_9
    const/16 v7, 0x20

    .line 237
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const-string v2, "\n;"

    .line 240
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    iget-boolean v3, p0, Lorg/h2/tools/RunScript;->showResults:Z

    if-eqz v3, :cond_b

    .line 243
    iget-object v3, p0, Lorg/h2/tools/RunScript;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 245
    :cond_b
    iget-boolean v3, p0, Lorg/h2/tools/RunScript;->checkResults:Z

    if-eqz v3, :cond_0

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r\n"

    const-string v5, "\n"

    .line 247
    invoke-static {v3, v4, v5}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r"

    const-string v5, "\n"

    .line 248
    invoke-static {v3, v4, v5}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_0

    :cond_c
    const-string v4, " "

    const-string v5, "+"

    .line 250
    invoke-static {v3, v4, v5}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "+"

    .line 251
    invoke-static {v2, v4, v5}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    new-instance v4, Ljava/sql/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected output for:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\nGot:\n"

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\nExpected:\n"

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v4, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p4

    if-eqz p2, :cond_d

    .line 264
    iget-object v2, p0, Lorg/h2/tools/RunScript;->out:Ljava/io/PrintStream;

    invoke-virtual {p4, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_0

    .line 266
    :cond_d
    invoke-static {p4}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private static processRunscript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 278
    :try_start_0
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    .line 279
    invoke-static {p0, p1, p2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 280
    :try_start_1
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 281
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RUNSCRIPT FROM \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 282
    invoke-interface {p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 285
    invoke-static {p0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object p0, v0

    move-object p1, p0

    .line 284
    :goto_0
    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 285
    invoke-static {p0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    throw p2
.end method


# virtual methods
.method process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 322
    :try_start_0
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    .line 323
    invoke-static {p1, p2, p3}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p1

    if-nez p5, :cond_0

    .line 325
    sget-object p5, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p4, p6, p5}, Lorg/h2/tools/RunScript;->process(Ljava/sql/Connection;Ljava/lang/String;ZLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :try_start_2
    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 333
    invoke-static {p1, p4}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, ""

    const-string v2, "backup.sql"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v6, v3

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    if-eqz p1, :cond_d

    .line 98
    array-length v1, p1

    if-ge v4, v1, :cond_d

    .line 99
    aget-object v1, p1, v4

    const-string v2, "-url"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 101
    aget-object v1, p1, v4

    move-object v6, v1

    goto/16 :goto_2

    :cond_0
    const-string v2, "-user"

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 103
    aget-object v1, p1, v4

    move-object v7, v1

    goto/16 :goto_2

    :cond_1
    const-string v2, "-password"

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 105
    aget-object v1, p1, v4

    move-object v8, v1

    goto/16 :goto_2

    :cond_2
    const-string v2, "-continueOnError"

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_3
    const-string v2, "-checkResults"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    iput-boolean v5, p0, Lorg/h2/tools/RunScript;->checkResults:Z

    goto/16 :goto_2

    :cond_4
    const-string v2, "-showResults"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    iput-boolean v5, p0, Lorg/h2/tools/RunScript;->showResults:Z

    goto :goto_2

    :cond_5
    const-string v2, "-script"

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v4, v4, 0x1

    .line 113
    aget-object v1, p1, v4

    move-object v9, v1

    goto :goto_2

    :cond_6
    const-string v2, "-time"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const-string v2, "-driver"

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v4, v4, 0x1

    .line 117
    aget-object v1, p1, v4

    .line 118
    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_2

    :cond_8
    const-string v2, "-options"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v4, 0x1

    .line 122
    :goto_1
    array-length v2, p1

    if-ge v4, v2, :cond_9

    const/16 v2, 0x20

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 125
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :cond_a
    const-string v2, "-help"

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "-?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_3

    .line 130
    :cond_b
    invoke-virtual {p0, v1}, Lorg/h2/tools/RunScript;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_2
    add-int/2addr v4, v5

    goto/16 :goto_0

    .line 127
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lorg/h2/tools/RunScript;->showUsage()V

    return-void

    :cond_d
    if-eqz v6, :cond_10

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v3, :cond_e

    .line 139
    invoke-static {v6, v7, v8, v9, v3}, Lorg/h2/tools/RunScript;->processRunscript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const/4 v10, 0x0

    move-object v5, p0

    .line 141
    invoke-virtual/range {v5 .. v11}, Lorg/h2/tools/RunScript;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    :goto_4
    if-eqz v0, :cond_f

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 145
    iget-object p1, p0, Lorg/h2/tools/RunScript;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Done in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    return-void

    .line 134
    :cond_10
    invoke-virtual {p0}, Lorg/h2/tools/RunScript;->showUsage()V

    .line 135
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "URL not set"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
