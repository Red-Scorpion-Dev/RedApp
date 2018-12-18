.class public Lorg/h2/store/fs/FilePathSplit;
.super Lorg/h2/store/fs/FilePathWrapper;
.source "FilePathSplit.java"


# static fields
.field private static final PART_SUFFIX:Ljava/lang/String; = ".part"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathWrapper;-><init>()V

    return-void
.end method

.method private closeAndThrow(I[Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected file length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " got: "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/h2/store/fs/FilePathSplit;->getName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object p5, p2, p4

    .line 175
    invoke-virtual {p5}, Ljava/nio/channels/FileChannel;->close()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 177
    :cond_0
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getDefaultMaxLength()J
    .locals 3

    .line 167
    iget-object v0, p0, Lorg/h2/store/fs/FilePathSplit;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/h2/store/fs/FilePathSplit;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    return-wide v0
.end method

.method private getName(I)Ljava/lang/String;
    .locals 2

    if-lez p1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v1

    iget-object v1, v1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".part"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object p1

    iget-object p1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method private parse(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 205
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t start with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 208
    :cond_0
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3a

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 212
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v1

    .line 214
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    .line 219
    :cond_1
    sget-wide v3, Lorg/h2/engine/SysProperties;->SPLIT_FILE_SIZE_SHIFT:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    :catch_0
    :goto_0
    const/4 v0, 0x2

    .line 221
    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 3

    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v1}, Lorg/h2/store/fs/FilePath;->delete()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getBase(I)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lorg/h2/store/fs/FilePathSplit;->getName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1
.end method

.method protected getPrefix()Ljava/lang/String;
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/store/fs/FilePathSplit;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/h2/store/fs/FilePathSplit;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "split"

    return-object v0
.end method

.method public lastModified()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 70
    :goto_0
    invoke-virtual {p0, v2}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->lastModified()J

    move-result-wide v3

    .line 73
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 3

    .line 187
    check-cast p1, Lorg/h2/store/fs/FilePathSplit;

    const/4 v0, 0x0

    .line 189
    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p1, v0}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/h2/store/fs/FilePath;->moveTo(Lorg/h2/store/fs/FilePath;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public newDirectoryStream()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->newDirectoryStream()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 100
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/store/fs/FilePath;

    .line 101
    invoke-virtual {v4}, Lorg/h2/store/fs/FilePath;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".part"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    invoke-virtual {p0, v4}, Lorg/h2/store/fs/FilePathSplit;->wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic newDirectoryStream()Ljava/util/List;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->newDirectoryStream()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->newInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    .line 112
    :goto_0
    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v2}, Lorg/h2/store/fs/FilePath;->newInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 115
    new-instance v3, Ljava/io/SequenceInputStream;

    invoke-direct {v3, v0, v2}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Lorg/h2/store/fs/FileChannelOutputStream;

    const-string v1, "rw"

    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathSplit;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/h2/store/fs/FileChannelOutputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 128
    :goto_0
    invoke-virtual {p0, v2}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-virtual {v3, p1}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/nio/channels/FileChannel;

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 137
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    .line 139
    array-length v3, v2

    if-ne v3, v1, :cond_2

    .line 140
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathSplit;->getDefaultMaxLength()J

    move-result-wide v0

    cmp-long v3, v9, v0

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v9

    :goto_1
    move-wide v7, v9

    move-wide v9, v0

    goto :goto_3

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v5, v9, v3

    if-nez v5, :cond_3

    const/4 v4, 0x0

    .line 146
    aget-object v6, v2, v0

    move-object v3, p0

    move-object v5, v2

    move-wide v7, v9

    invoke-direct/range {v3 .. v8}, Lorg/h2/store/fs/FilePathSplit;->closeAndThrow(I[Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;J)V

    :cond_3
    move-wide v3, v9

    const/4 v0, 0x1

    .line 148
    :goto_2
    array-length v5, v2

    sub-int/2addr v5, v1

    if-ge v0, v5, :cond_5

    .line 149
    aget-object v6, v2, v0

    .line 150
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    add-long v11, v3, v7

    cmp-long v3, v7, v9

    if-eqz v3, :cond_4

    move-object v3, p0

    move v4, v0

    move-object v5, v2

    move-wide v7, v9

    .line 153
    invoke-direct/range {v3 .. v8}, Lorg/h2/store/fs/FilePathSplit;->closeAndThrow(I[Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;J)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move-wide v3, v11

    goto :goto_2

    .line 156
    :cond_5
    array-length v0, v2

    sub-int/2addr v0, v1

    aget-object v6, v2, v0

    .line 157
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    add-long v11, v3, v7

    cmp-long v0, v7, v9

    if-lez v0, :cond_6

    .line 160
    array-length v0, v2

    add-int/lit8 v4, v0, -0x1

    move-object v3, p0

    move-object v5, v2

    move-wide v7, v9

    invoke-direct/range {v3 .. v8}, Lorg/h2/store/fs/FilePathSplit;->closeAndThrow(I[Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;J)V

    :cond_6
    move-wide v7, v11

    .line 163
    :goto_3
    new-instance v0, Lorg/h2/store/fs/FileSplit;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, v2

    invoke-direct/range {v3 .. v10}, Lorg/h2/store/fs/FileSplit;-><init>(Lorg/h2/store/fs/FilePathSplit;Ljava/lang/String;[Ljava/nio/channels/FileChannel;JJ)V

    return-object v0
.end method

.method public setReadOnly()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v2}, Lorg/h2/store/fs/FilePath;->setReadOnly()Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public size()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 85
    :goto_0
    invoke-virtual {p0, v2}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->size()J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lorg/h2/store/fs/FilePathSplit;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1
.end method
