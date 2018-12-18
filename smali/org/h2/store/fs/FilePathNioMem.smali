.class public Lorg/h2/store/fs/FilePathNioMem;
.super Lorg/h2/store/fs/FilePath;
.source "FilePathNioMem.java"


# static fields
.field private static final MEMORY_FILES:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/h2/store/fs/FileNioMemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/h2/store/fs/FilePath;-><init>()V

    return-void
.end method

.method protected static getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    const/16 v1, 0x5c

    .line 205
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3a

    .line 206
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getMemoryFile()Lorg/h2/store/fs/FileNioMemData;
    .locals 4

    .line 183
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    .line 184
    :try_start_0
    sget-object v1, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/store/fs/FileNioMemData;

    if-nez v1, :cond_0

    .line 186
    new-instance v1, Lorg/h2/store/fs/FileNioMemData;

    iget-object v2, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->compressed()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/h2/store/fs/FileNioMemData;-><init>(Ljava/lang/String;Z)V

    .line 187
    sget-object v2, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    iget-object v3, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 190
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isRoot()Z
    .locals 3

    .line 194
    iget-object v0, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    .line 116
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->canWrite()Z

    move-result v0

    return v0
.end method

.method compressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createDirectory()V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fce

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (a file with this name already exists)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public createFile()Z
    .locals 2

    .line 65
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 67
    monitor-exit v0

    return v1

    .line 69
    :cond_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    .line 70
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delete()V
    .locals 3

    .line 86
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public exists()Z
    .locals 4

    .line 76
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->isRoot()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 79
    :cond_0
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v2, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    iget-object v3, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic getParent()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->getParent()Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/h2/store/fs/FilePathNioMem;
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathNioMem;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathNioMem;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;
    .locals 1

    .line 38
    new-instance v0, Lorg/h2/store/fs/FilePathNioMem;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathNioMem;-><init>()V

    .line 39
    invoke-static {p1}, Lorg/h2/store/fs/FilePathNioMem;->getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "nioMemFS"

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDirectory()Z
    .locals 4

    .line 127
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->isRoot()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 132
    :cond_0
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v2, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    iget-object v3, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lastModified()J
    .locals 2

    .line 150
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 4

    .line 50
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    if-nez p2, :cond_1

    .line 51
    :try_start_0
    iget-object p2, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    iget-object v1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x15fa8

    const/4 v1, 0x2

    .line 53
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (exists)"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2, v1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object p2

    .line 57
    iget-object v1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/h2/store/fs/FileNioMemData;->setName(Ljava/lang/String;)V

    .line 58
    sget-object v1, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    iget-object p1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public newDirectoryStream()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    sget-object v1, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v2, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    iget-object v3, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 99
    iget-object v4, p0, Lorg/h2/store/fs/FilePathNioMem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-virtual {p0, v3}, Lorg/h2/store/fs/FilePathNioMem;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 106
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 3

    .line 171
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    .line 172
    new-instance v1, Lorg/h2/store/fs/FileNioMem;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/h2/store/fs/FileNioMem;-><init>(Lorg/h2/store/fs/FileNioMemData;Z)V

    .line 173
    new-instance v0, Lorg/h2/store/fs/FileChannelInputStream;

    invoke-direct {v0, v1, v2}, Lorg/h2/store/fs/FileChannelInputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    .line 165
    new-instance v1, Lorg/h2/store/fs/FileNioMem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/h2/store/fs/FileNioMem;-><init>(Lorg/h2/store/fs/FileNioMemData;Z)V

    .line 166
    new-instance v0, Lorg/h2/store/fs/FileChannelOutputStream;

    invoke-direct {v0, v1, p1}, Lorg/h2/store/fs/FileChannelOutputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 3

    .line 178
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    .line 179
    new-instance v1, Lorg/h2/store/fs/FileNioMem;

    const-string v2, "r"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {v1, v0, p1}, Lorg/h2/store/fs/FileNioMem;-><init>(Lorg/h2/store/fs/FileNioMemData;Z)V

    return-object v1
.end method

.method public setReadOnly()Z
    .locals 1

    .line 111
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->setReadOnly()Z

    move-result v0

    return v0
.end method

.method public size()J
    .locals 2

    .line 45
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toRealPath()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->toRealPath()Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v0

    return-object v0
.end method

.method public toRealPath()Lorg/h2/store/fs/FilePathNioMem;
    .locals 0

    return-object p0
.end method
