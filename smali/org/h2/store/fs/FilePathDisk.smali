.class public Lorg/h2/store/fs/FilePathDisk;
.super Lorg/h2/store/fs/FilePath;
.source "FilePathDisk.java"


# static fields
.field private static final CLASSPATH_PREFIX:Ljava/lang/String; = "classpath:"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/h2/store/fs/FilePath;-><init>()V

    return-void
.end method

.method private static canWriteInternal(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 231
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_0

    return v0

    .line 244
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 251
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p0

    :catchall_0
    move-exception p0

    .line 254
    throw p0

    :catch_1
    return v0

    :catch_2
    return v0
.end method

.method public static expandUserHomeDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "~"

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "~/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    sget-object v0, Lorg/h2/engine/SysProperties;->USER_HOME:Ljava/lang/String;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static freeMemoryAndFinalize()V
    .locals 7

    const-string v0, "freeMemoryAndFinalize"

    const/4 v1, 0x0

    .line 331
    invoke-static {v0, v1, v1}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 335
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 336
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    .line 337
    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    cmp-long v6, v4, v1

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-wide v1, v4

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected static translateFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 58
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "file:"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file:"

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 62
    :cond_0
    invoke-static {p0}, Lorg/h2/store/fs/FilePathDisk;->expandUserHomeDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static wait(I)V
    .locals 2

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    .line 122
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    const/16 v0, 0x100

    mul-int p0, p0, p0

    .line 126
    :try_start_0
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long v0, p0

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public canWrite()Z
    .locals 2

    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/h2/store/fs/FilePathDisk;->canWriteInternal(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public createDirectory()V
    .locals 4

    .line 261
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 262
    :goto_0
    sget v2, Lorg/h2/engine/SysProperties;->MAX_FILE_RETRY:I

    const v3, 0x15fce

    if-ge v1, v2, :cond_3

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (a file with this name already exists)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 269
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 272
    :cond_2
    invoke-static {v1}, Lorg/h2/store/fs/FilePathDisk;->wait(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_3
    iget-object v0, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public createFile()Z
    .locals 4

    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 136
    :goto_0
    sget v3, Lorg/h2/engine/SysProperties;->MAX_FILE_RETRY:I

    if-ge v2, v3, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 141
    :catch_0
    invoke-static {v2}, Lorg/h2/store/fs/FilePathDisk;->wait(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 374
    new-instance p3, Ljava/io/File;

    const-string v0, "java.io.tmpdir"

    const-string v2, "."

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_0
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    .line 378
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    .line 380
    :goto_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {v3}, Lorg/h2/store/fs/FilePathDisk;->getNextTempFileNamePart(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 388
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :catch_0
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/store/fs/FilePathDisk;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 383
    invoke-static {v0}, Lorg/h2/store/fs/FilePathDisk;->getNextTempFileNamePart(Z)Ljava/lang/String;

    goto :goto_1
.end method

.method public delete()V
    .locals 5

    .line 154
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 155
    :goto_0
    sget v2, Lorg/h2/engine/SysProperties;->MAX_FILE_RETRY:I

    if-ge v1, v2, :cond_2

    const-string v2, "delete"

    .line 156
    iget-object v3, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    invoke-static {v1}, Lorg/h2/store/fs/FilePathDisk;->wait(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v0, 0x15fa9

    .line 163
    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public exists()Z
    .locals 2

    .line 149
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getParent()Lorg/h2/store/fs/FilePath;
    .locals 2

    .line 210
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathDisk;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathDisk;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;
    .locals 1

    .line 40
    new-instance v0, Lorg/h2/store/fs/FilePathDisk;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathDisk;-><init>()V

    .line 41
    invoke-static {p1}, Lorg/h2/store/fs/FilePathDisk;->translateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "file"

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 2

    .line 221
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 216
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .line 226
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 9

    .line 83
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x2

    const v4, 0x15fa8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    if-eqz p2, :cond_2

    .line 97
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 101
    :cond_1
    new-array p2, v3, [Ljava/lang/String;

    iget-object v0, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    aput-object v0, p2, v6

    iget-object p1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    aput-object p1, p2, v5

    invoke-static {v4, p2}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 104
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x0

    .line 108
    :goto_0
    sget v2, Lorg/h2/engine/SysProperties;->MAX_FILE_RETRY:I

    if-ge p2, v2, :cond_4

    const-string v2, "rename"

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 114
    :cond_3
    invoke-static {p2}, Lorg/h2/store/fs/FilePathDisk;->wait(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 116
    :cond_4
    new-array p2, v3, [Ljava/lang/String;

    iget-object v0, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    aput-object v0, p2, v6

    iget-object p1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    aput-object p1, p2, v5

    invoke-static {v4, p2}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 105
    :cond_5
    new-array p2, v3, [Ljava/lang/String;

    iget-object v0, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    aput-object v0, p2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (exists)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-static {v4, p2}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 89
    :cond_6
    new-array p2, v3, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (not found)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v6

    iget-object p1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    aput-object p1, p2, v5

    invoke-static {v4, p2}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public newDirectoryStream()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 174
    sget-object v3, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v3, 0x0

    .line 177
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/h2/store/fs/FilePathDisk;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 183
    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    .line 301
    iget-object v0, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    const-string v1, "classpath:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    const-string v1, "classpath:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    .line 308
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    return-object v1

    .line 312
    :cond_2
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_3
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 321
    :cond_4
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v1, "openFileInputStream"

    .line 322
    iget-object v2, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    .line 285
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const-string p1, "openFileOutputStream"

    .line 286
    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 289
    :catch_0
    invoke-static {}, Lorg/h2/store/fs/FilePathDisk;->freeMemoryAndFinalize()V

    .line 290
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    :try_start_0
    new-instance v0, Lorg/h2/store/fs/FileDisk;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/h2/store/fs/FileDisk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open"

    .line 350
    iget-object v2, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 352
    invoke-static {}, Lorg/h2/store/fs/FilePathDisk;->freeMemoryAndFinalize()V

    .line 354
    :try_start_1
    new-instance v1, Lorg/h2/store/fs/FileDisk;

    iget-object v2, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lorg/h2/store/fs/FileDisk;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    .line 356
    :catch_1
    throw v0
.end method

.method public setReadOnly()Z
    .locals 2

    .line 194
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    move-result v0

    return v0
.end method

.method public size()J
    .locals 2

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toRealPath()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathDisk;->toRealPath()Lorg/h2/store/fs/FilePathDisk;

    move-result-object v0

    return-object v0
.end method

.method public toRealPath()Lorg/h2/store/fs/FilePathDisk;
    .locals 2

    .line 201
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathDisk;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 204
    iget-object v1, p0, Lorg/h2/store/fs/FilePathDisk;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
