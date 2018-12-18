.class public Lorg/h2/store/fs/FilePathZip;
.super Lorg/h2/store/fs/FilePath;
.source "FilePathZip.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/h2/store/fs/FilePath;-><init>()V

    return-void
.end method

.method private getEntryName()Ljava/lang/String;
    .locals 4

    .line 230
    iget-object v0, p0, Lorg/h2/store/fs/FilePathZip;->name:Ljava/lang/String;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 235
    :cond_0
    iget-object v2, p0, Lorg/h2/store/fs/FilePathZip;->name:Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v2, 0x5c

    const/16 v3, 0x2f

    .line 237
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private openZipFile()Ljava/util/zip/ZipFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/h2/store/fs/FilePathZip;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FilePathZip;->translateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static translateFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "zip:"

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zip:"

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x21

    .line 217
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 221
    :cond_1
    invoke-static {p0}, Lorg/h2/store/fs/FilePathDisk;->expandUserHomeDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createDirectory()V
    .locals 0

    return-void
.end method

.method public createFile()Z
    .locals 1

    const-string v0, "write"

    .line 43
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 255
    new-instance p3, Lorg/h2/store/fs/FilePathDisk;

    invoke-direct {p3}, Lorg/h2/store/fs/FilePathDisk;-><init>()V

    iget-object v0, p0, Lorg/h2/store/fs/FilePathZip;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lorg/h2/store/fs/FilePathDisk;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Lorg/h2/store/fs/FilePathDisk;->createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1

    .line 253
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File system is read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete()V
    .locals 1

    const-string v0, "write"

    .line 48
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public exists()Z
    .locals 4

    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->getEntryName()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 58
    :cond_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->openZipFile()Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 62
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return v3

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0
.end method

.method public getParent()Lorg/h2/store/fs/FilePath;
    .locals 3

    .line 76
    iget-object v0, p0, Lorg/h2/store/fs/FilePathZip;->name:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lorg/h2/store/fs/FilePathZip;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathZip;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathZip;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathZip;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathZip;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathZip;
    .locals 1

    .line 31
    new-instance v0, Lorg/h2/store/fs/FilePathZip;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathZip;-><init>()V

    .line 32
    iput-object p1, v0, Lorg/h2/store/fs/FilePathZip;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "zip"

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/h2/store/fs/FilePathZip;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FilePathZip;->translateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 8

    const/4 v0, 0x0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->getEntryName()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 98
    :cond_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->openZipFile()Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 101
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 103
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 105
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    .line 106
    :cond_2
    :try_start_3
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    if-ne v5, v7, :cond_1

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_1

    .line 115
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return v3

    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return v0
.end method

.method public lastModified()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 0

    const-string p1, "write"

    .line 210
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public newDirectoryStream()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/h2/store/fs/FilePathZip;->name:Ljava/lang/String;

    .line 151
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x21

    .line 153
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_0
    const-string v2, "/"

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 159
    :cond_1
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->openZipFile()Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->getEntryName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 164
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 165
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 166
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_4

    goto :goto_0

    :cond_4
    const/16 v7, 0x2f

    .line 173
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ltz v7, :cond_5

    .line 174
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_2

    .line 175
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/h2/store/fs/FilePathZip;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathZip;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listFiles "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic newDirectoryStream()Ljava/util/List;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathZip;->newDirectoryStream()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    new-instance v0, Lorg/h2/store/fs/FileChannelInputStream;

    const-string v1, "r"

    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathZip;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/h2/store/fs/FileChannelInputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    new-instance p1, Ljava/io/IOException;

    const-string v0, "write"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->openZipFile()Ljava/util/zip/ZipFile;

    move-result-object p1

    .line 195
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->getEntryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v1, Lorg/h2/store/fs/FileZip;

    invoke-direct {v1, p1, v0}, Lorg/h2/store/fs/FileZip;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v1

    .line 197
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V

    .line 198
    new-instance p1, Ljava/io/FileNotFoundException;

    iget-object v0, p0, Lorg/h2/store/fs/FilePathZip;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()J
    .locals 5

    const-wide/16 v0, 0x0

    .line 136
    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->openZipFile()Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->getEntryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_0

    move-wide v3, v0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return-wide v3

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-wide v0
.end method

.method public toRealPath()Lorg/h2/store/fs/FilePath;
    .locals 0

    return-object p0
.end method

.method public unwrap()Lorg/h2/store/fs/FilePath;
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/h2/store/fs/FilePathZip;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathZip;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v0

    return-object v0
.end method
