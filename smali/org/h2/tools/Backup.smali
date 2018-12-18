.class public Lorg/h2/tools/Backup;
.super Lorg/h2/util/Tool;
.source "Backup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 102
    :try_start_0
    new-instance v0, Lorg/h2/tools/Backup;

    invoke-direct {v0}, Lorg/h2/tools/Backup;-><init>()V

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/h2/tools/Backup;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 104
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/h2/tools/Backup;

    invoke-direct {v0}, Lorg/h2/tools/Backup;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/Backup;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 111
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 113
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->newDirectoryStream(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_1
    invoke-static {p2, p3, v0}, Lorg/h2/store/FileLister;->getDatabaseFiles(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    if-nez p4, :cond_2

    .line 119
    invoke-virtual {p0, p2, p3}, Lorg/h2/tools/Backup;->printNoDatabaseFilesFound(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-nez p4, :cond_4

    const-string p2, "backup"

    .line 124
    invoke-static {v0, p2}, Lorg/h2/store/FileLister;->tryUnlockDatabase(Ljava/util/List;Ljava/lang/String;)V

    .line 126
    :cond_4
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 130
    :try_start_0
    invoke-static {p1, v1}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 131
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, p3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, ""

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v6, ".h2.db"

    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, ".mv.db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 137
    :cond_6
    invoke-static {v5}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not start with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 146
    :cond_9
    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    .line 149
    :cond_a
    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    .line 152
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-static {v4}, Lorg/h2/command/dml/BackupCommand;->correctFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 158
    :try_start_2
    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    :try_start_3
    invoke-static {v4, v1}, Lorg/h2/util/IOUtils;->copyAndCloseInput(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    :catch_0
    :goto_3
    :try_start_4
    invoke-static {v4}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_4

    :catchall_1
    move-exception p4

    move-object v4, p2

    move-object p2, p4

    :goto_4
    invoke-static {v4}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    throw p2

    :catch_1
    move-object v4, p2

    goto :goto_3

    .line 166
    :goto_5
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    if-nez p4, :cond_8

    .line 168
    iget-object v4, p0, Lorg/h2/tools/Backup;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 171
    :cond_c
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 175
    invoke-static {p3}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p1

    goto :goto_7

    :catch_2
    move-exception p2

    goto :goto_6

    :catchall_3
    move-exception p1

    move-object p3, p2

    goto :goto_7

    :catch_3
    move-exception p3

    move-object v7, p3

    move-object p3, p2

    move-object p2, v7

    .line 173
    :goto_6
    :try_start_5
    invoke-static {p2, p1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 175
    :goto_7
    invoke-static {p3}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public varargs runTool([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "backup.zip"

    const-string v1, "."

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 66
    array-length v5, p1

    if-ge v2, v5, :cond_6

    .line 67
    aget-object v5, p1, v2

    const-string v6, "-dir"

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 69
    aget-object v1, p1, v2

    goto :goto_1

    :cond_0
    const-string v6, "-db"

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 71
    aget-object v3, p1, v2

    goto :goto_1

    :cond_1
    const-string v6, "-quiet"

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "-file"

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 75
    aget-object v0, p1, v2

    goto :goto_1

    :cond_3
    const-string v6, "-help"

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "-?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {p0, v5}, Lorg/h2/tools/Backup;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/2addr v2, v7

    goto :goto_0

    .line 77
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/h2/tools/Backup;->showUsage()V

    return-void

    .line 84
    :cond_6
    :try_start_0
    invoke-direct {p0, v0, v1, v3, v4}, Lorg/h2/tools/Backup;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 86
    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
