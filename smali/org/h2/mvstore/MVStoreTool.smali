.class public Lorg/h2/mvstore/MVStoreTool;
.super Ljava/lang/Object;
.source "MVStoreTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/MVStoreTool$GenericDataType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compact(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 471
    new-instance v0, Lorg/h2/mvstore/MVStore$Builder;

    invoke-direct {v0}, Lorg/h2/mvstore/MVStore$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/mvstore/MVStore$Builder;->fileName(Ljava/lang/String;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore$Builder;->readOnly()Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore$Builder;->open()Lorg/h2/mvstore/MVStore;

    move-result-object p0

    .line 475
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 476
    new-instance v0, Lorg/h2/mvstore/MVStore$Builder;

    invoke-direct {v0}, Lorg/h2/mvstore/MVStore$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVStore$Builder;->fileName(Ljava/lang/String;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 479
    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore$Builder;->compress()Lorg/h2/mvstore/MVStore$Builder;

    .line 481
    :cond_0
    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore$Builder;->open()Lorg/h2/mvstore/MVStore;

    move-result-object p1

    .line 482
    invoke-static {p0, p1}, Lorg/h2/mvstore/MVStoreTool;->compact(Lorg/h2/mvstore/MVStore;Lorg/h2/mvstore/MVStore;)V

    .line 483
    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->close()V

    .line 484
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->close()V

    return-void
.end method

.method public static compact(Ljava/lang/String;Z)V
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tempFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 428
    invoke-static {p0, v0, p1}, Lorg/h2/mvstore/MVStoreTool;->compact(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 430
    :try_start_0
    invoke-static {v0, p0}, Lorg/h2/store/fs/FileUtils;->moveAtomicReplace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".newFile"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 433
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 434
    invoke-static {v0, p1}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 436
    invoke-static {p1, p0}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static compact(Lorg/h2/mvstore/MVStore;Lorg/h2/mvstore/MVStore;)V
    .locals 5

    .line 494
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->getMetaMap()Lorg/h2/mvstore/MVMap;

    move-result-object v0

    .line 495
    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->getMetaMap()Lorg/h2/mvstore/MVMap;

    move-result-object v1

    .line 496
    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 497
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "chunk."

    .line 498
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "map."

    .line 500
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "name."

    .line 502
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "root."

    .line 504
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 507
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 510
    :cond_4
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->getMapNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 511
    new-instance v2, Lorg/h2/mvstore/MVMap$Builder;

    invoke-direct {v2}, Lorg/h2/mvstore/MVMap$Builder;-><init>()V

    new-instance v3, Lorg/h2/mvstore/MVStoreTool$GenericDataType;

    invoke-direct {v3}, Lorg/h2/mvstore/MVStoreTool$GenericDataType;-><init>()V

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap$Builder;->keyType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object v2

    new-instance v3, Lorg/h2/mvstore/MVStoreTool$GenericDataType;

    invoke-direct {v3}, Lorg/h2/mvstore/MVStoreTool$GenericDataType;-><init>()V

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap$Builder;->valueType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object v2

    .line 515
    invoke-virtual {p0, v1, v2}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object v3

    .line 516
    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object v1

    .line 517
    invoke-virtual {v1, v3}, Lorg/h2/mvstore/MVMap;->copyFrom(Lorg/h2/mvstore/MVMap;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static compactCleanUp(Ljava/lang/String;)V
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tempFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".newFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_1
    invoke-static {v0, p0}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/Writer;Z)V
    .locals 47

    move-object/from16 v1, p0

    .line 95
    new-instance v3, Ljava/io/PrintWriter;

    const/4 v4, 0x1

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 96
    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "File %s, %d bytes, %d MB\n"

    const/4 v8, 0x3

    .line 101
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v4

    const-wide/16 v11, 0x400

    div-long/2addr v5, v11

    div-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v9, v6

    invoke-virtual {v3, v7, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 104
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 108
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v1

    const-string v9, "r"

    invoke-virtual {v1, v9}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 109
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    .line 110
    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v13, 0x1000

    .line 111
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    const-wide/16 v7, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    :goto_0
    cmp-long v21, v7, v11

    if-gez v21, :cond_1a

    .line 114
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 115
    invoke-static {v1, v7, v8, v14}, Lorg/h2/mvstore/DataUtils;->readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    .line 116
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 117
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v13, 0x48

    if-ne v15, v13, :cond_1

    .line 119
    :try_start_2
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    sget-object v4, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-direct {v13, v15, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 120
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "%0"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "x fileHeader %s%n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v10

    const/16 v16, 0x1

    aput-object v4, v15, v16

    invoke-virtual {v3, v13, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v25, v11

    const/16 v4, 0x1000

    int-to-long v10, v4

    add-long/2addr v7, v10

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    goto/16 :goto_1d

    :cond_1
    move-wide/from16 v25, v11

    const/16 v4, 0x63

    if-eq v15, v4, :cond_2

    const/16 v4, 0x1000

    int-to-long v10, v4

    add-long/2addr v7, v10

    :goto_1
    move-wide/from16 v11, v25

    const/4 v4, 0x1

    :goto_2
    const/4 v10, 0x0

    const/16 v13, 0x1000

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 129
    :try_start_3
    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    :try_start_4
    invoke-static {v14, v7, v8}, Lorg/h2/mvstore/Chunk;->readChunkHeader(Ljava/nio/ByteBuffer;J)Lorg/h2/mvstore/Chunk;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    :try_start_5
    iget v10, v4, Lorg/h2/mvstore/Chunk;->len:I

    if-gtz v10, :cond_3

    const/16 v10, 0x1000

    int-to-long v11, v10

    add-long/2addr v7, v11

    goto :goto_1

    :cond_3
    const/16 v10, 0x1000

    .line 142
    iget v11, v4, Lorg/h2/mvstore/Chunk;->len:I

    mul-int/lit16 v11, v11, 0x1000

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "%n%0"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "x chunkHeader %s%n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v12, v15

    invoke-virtual {v4}, Lorg/h2/mvstore/Chunk;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v12, v15

    invoke-virtual {v3, v10, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 145
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 146
    invoke-static {v1, v7, v8, v10}, Lorg/h2/mvstore/DataUtils;->readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    .line 147
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    move/from16 v27, v12

    int-to-long v11, v11

    add-long/2addr v7, v11

    .line 149
    iget v11, v4, Lorg/h2/mvstore/Chunk;->pageCount:I

    .line 150
    iget v4, v4, Lorg/h2/mvstore/Chunk;->pageCount:I

    int-to-long v12, v4

    move-wide/from16 v28, v7

    move-wide/from16 v6, v17

    add-long v17, v6, v12

    .line 151
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v6, v27

    const/4 v7, 0x0

    :goto_3
    if-lez v11, :cond_18

    .line 157
    :try_start_6
    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 163
    :try_start_7
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 165
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getShort()S

    .line 166
    invoke-static {v10}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 167
    invoke-static {v10}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 168
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit8 v16, v15, 0x2

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    and-int/lit8 v21, v15, 0x1

    if-eqz v21, :cond_5

    move-object/from16 v30, v14

    const/16 v21, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v30, v14

    const/16 v21, 0x0

    :goto_5
    if-eqz p2, :cond_9

    .line 172
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v31, v1

    :try_start_8
    const-string v1, "+%0"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x %s, map %x, %d entries, %d bytes, maxLen %x%n"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v32, v9

    const/4 v14, 0x6

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v24, 0x0

    aput-object v14, v9, v24

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v21, :cond_6

    const-string v27, "node"

    goto :goto_6

    :cond_6
    const-string v27, "leaf"

    :goto_6
    move/from16 v33, v15

    move-object/from16 v15, v27

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_7

    const-string v15, " compressed"

    goto :goto_7

    :cond_7
    const-string v15, ""

    :goto_7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v9, v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v9, v15

    if-eqz v21, :cond_8

    add-int/lit8 v14, v13, 0x1

    goto :goto_8

    :cond_8
    move v14, v13

    :goto_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v9, v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x4

    aput-object v14, v9, v15

    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-static {v15, v15, v8, v15}, Lorg/h2/mvstore/DataUtils;->getPagePos(IIII)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Lorg/h2/mvstore/DataUtils;->getPageMaxLength(J)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    invoke-virtual {v3, v1, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_9

    :cond_9
    move-object/from16 v31, v1

    move/from16 v32, v9

    move/from16 v33, v15

    :goto_9
    add-int/2addr v6, v8

    .line 185
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_a

    const/4 v9, 0x0

    .line 187
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 189
    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v9, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_b

    const-wide/16 v14, 0x0

    .line 192
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_a

    :cond_b
    const-wide/16 v14, 0x0

    .line 194
    :goto_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    int-to-long v14, v8

    add-long v22, v22, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v9, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v7, v8

    add-long v19, v19, v14

    add-int/lit8 v11, v11, -0x1

    if-eqz v21, :cond_d

    add-int/lit8 v1, v13, 0x1

    .line 201
    new-array v8, v1, [J

    const/4 v9, 0x0

    :goto_b
    if-gt v9, v13, :cond_c

    .line 203
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    aput-wide v14, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 205
    :cond_c
    new-array v1, v1, [J

    const/4 v9, 0x0

    :goto_c
    if-gt v9, v13, :cond_e

    .line 207
    invoke-static {v10}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    .line 208
    aput-wide v14, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 211
    :cond_e
    new-array v9, v13, [Ljava/lang/String;

    if-nez v12, :cond_16

    if-eqz p2, :cond_16

    if-eqz v16, :cond_10

    and-int/lit8 v12, v33, 0x6

    const/4 v14, 0x6

    if-eq v12, v14, :cond_f

    const/4 v12, 0x1

    goto :goto_d

    :cond_f
    const/4 v12, 0x0

    .line 217
    :goto_d
    invoke-static {v12}, Lorg/h2/mvstore/MVStoreTool;->getCompressor(Z)Lorg/h2/compress/Compressor;

    move-result-object v36

    .line 218
    invoke-static {v10}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 219
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    sub-int v39, v6, v14

    .line 220
    invoke-static/range {v39 .. v39}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v14

    .line 221
    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    add-int v42, v39, v12

    .line 223
    invoke-static/range {v42 .. v42}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    const/16 v38, 0x0

    .line 224
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v37, v14

    invoke-interface/range {v36 .. v42}, Lorg/h2/compress/Compressor;->expand([BII[BII)V

    goto :goto_e

    :cond_10
    move-object v12, v10

    :goto_e
    const/4 v14, 0x0

    :goto_f
    if-ge v14, v13, :cond_11

    .line 229
    sget-object v15, Lorg/h2/mvstore/type/StringDataType;->INSTANCE:Lorg/h2/mvstore/type/StringDataType;

    invoke-virtual {v15, v12}, Lorg/h2/mvstore/type/StringDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v15

    .line 230
    aput-object v15, v9, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    :cond_11
    if-eqz v21, :cond_14

    const/4 v12, 0x0

    :goto_10
    if-ge v12, v13, :cond_12

    .line 235
    aget-wide v14, v8, v12

    move/from16 v43, v6

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v44, v7

    const-string v7, "    %d children < %s @ chunk %x +%0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v32

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v45, v11

    const-string v11, "x%n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v46, v5

    const/4 v11, 0x4

    new-array v5, v11, [Ljava/lang/Object;

    aget-wide v21, v1, v12

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v5, v16

    aget-object v11, v9, v12

    const/16 v16, 0x1

    aput-object v11, v5, v16

    invoke-static {v14, v15}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x2

    aput-object v11, v5, v16

    invoke-static {v14, v15}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x3

    aput-object v11, v5, v14

    invoke-virtual {v3, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v12, v12, 0x1

    move/from16 v32, v7

    move/from16 v6, v43

    move/from16 v7, v44

    move/from16 v11, v45

    move-object/from16 v5, v46

    goto :goto_10

    :cond_12
    move-object/from16 v46, v5

    move/from16 v43, v6

    move/from16 v44, v7

    move/from16 v45, v11

    move/from16 v7, v32

    .line 244
    aget-wide v5, v8, v13

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    %d children >= %s @ chunk %x +%0"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x%n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aget-wide v14, v1, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, v11, v12

    array-length v1, v9

    if-lt v1, v13, :cond_13

    const/4 v1, 0x0

    :goto_11
    const/4 v9, 0x1

    goto :goto_12

    :cond_13
    aget-object v1, v9, v13

    goto :goto_11

    :goto_12
    aput-object v1, v11, v9

    invoke-static {v5, v6}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v9, 0x2

    aput-object v1, v11, v9

    invoke-static {v5, v6}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v11, v5

    invoke-virtual {v3, v8, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_16

    :cond_14
    move-object/from16 v46, v5

    move/from16 v43, v6

    move/from16 v44, v7

    move/from16 v45, v11

    move/from16 v7, v32

    .line 253
    new-array v1, v13, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v13, :cond_15

    .line 255
    sget-object v6, Lorg/h2/mvstore/type/StringDataType;->INSTANCE:Lorg/h2/mvstore/type/StringDataType;

    invoke-virtual {v6, v12}, Lorg/h2/mvstore/type/StringDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 256
    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_15
    const/4 v5, 0x0

    :goto_14
    if-ge v5, v13, :cond_17

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v9, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_16
    move-object/from16 v46, v5

    move/from16 v43, v6

    move/from16 v44, v7

    move/from16 v45, v11

    move/from16 v7, v32

    if-eqz v21, :cond_17

    if-eqz p2, :cond_17

    const/4 v5, 0x0

    :goto_15
    if-gt v5, v13, :cond_17

    .line 266
    aget-wide v11, v8, v5

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    %d children @ chunk %x +%0"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x%n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x3

    new-array v14, v9, [Ljava/lang/Object;

    aget-wide v15, v1, v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v15, 0x0

    aput-object v9, v14, v15

    invoke-static {v11, v12}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x1

    aput-object v9, v14, v15

    invoke-static {v11, v12}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v14, v11

    invoke-virtual {v3, v6, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_17
    :goto_16
    move v9, v7

    move-object/from16 v14, v30

    move-object/from16 v1, v31

    move/from16 v6, v43

    move/from16 v7, v44

    move/from16 v11, v45

    move-object/from16 v5, v46

    goto/16 :goto_3

    :catch_1
    move-object/from16 v31, v1

    move-object/from16 v46, v5

    move v1, v9

    move-object/from16 v30, v14

    const-string v5, "ERROR illegal position %d%n"

    const/4 v8, 0x1

    .line 160
    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v9, v8

    invoke-virtual {v3, v5, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_17

    :cond_18
    move-object/from16 v31, v1

    move-object/from16 v46, v5

    move v1, v9

    move-object/from16 v30, v14

    :goto_17
    const/4 v5, 0x1

    .line 276
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 277
    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 278
    invoke-virtual {v4, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v6

    const-string v9, "map %x: %d bytes, %d%%%n"

    const/4 v11, 0x3

    .line 279
    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v12, v11

    invoke-virtual {v4, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v12, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v12, v8

    invoke-virtual {v3, v9, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_18

    .line 281
    :cond_19
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v5, 0x80

    sub-int/2addr v4, v5

    .line 283
    :try_start_9
    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+%0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x chunkFooter %s%n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    sget-object v11, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-direct {v7, v9, v10, v5, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v8, v7

    invoke-virtual {v3, v6, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_19

    :catch_2
    :try_start_a
    const-string v5, "ERROR illegal footer position %d%n"

    const/4 v6, 0x1

    .line 291
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v7, v6

    invoke-virtual {v3, v5, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_19
    move v9, v1

    move-wide/from16 v11, v25

    move-wide/from16 v7, v28

    move-object/from16 v14, v30

    move-object/from16 v1, v31

    move-object/from16 v5, v46

    const/4 v4, 0x1

    const/4 v6, 0x2

    goto/16 :goto_2

    :catch_3
    move-object/from16 v31, v1

    move-object/from16 v46, v5

    move-wide v15, v7

    move v1, v9

    move-object/from16 v30, v14

    move-wide/from16 v6, v17

    const/16 v4, 0x1000

    int-to-long v8, v4

    add-long/2addr v8, v15

    move-wide/from16 v17, v6

    move-wide v7, v8

    move-wide/from16 v11, v25

    move-object/from16 v14, v30

    move-object/from16 v5, v46

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v10, 0x0

    const/16 v13, 0x1000

    move v9, v1

    move-object/from16 v1, v31

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v31, v1

    move-object/from16 v46, v5

    move v1, v9

    move-wide/from16 v25, v11

    move-wide/from16 v6, v17

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%n%0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x eof%n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "\n"

    .line 295
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-wide/16 v1, 0x1

    .line 296
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-string v6, "page size total: %d bytes, page count: %d, average page size: %d bytes\n"

    const/4 v7, 0x3

    .line 297
    new-array v8, v7, [Ljava/lang/Object;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    move-wide/from16 v9, v19

    div-long v19, v9, v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v8, v5

    invoke-virtual {v3, v6, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 299
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 300
    invoke-virtual/range {v46 .. v46}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-wide/16 v6, 0x64

    move-object/from16 v8, v46

    .line 301
    invoke-virtual {v8, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    mul-long v9, v9, v6

    div-long/2addr v9, v1

    long-to-int v6, v9

    const-string v7, "map %x: %d bytes, %d%%%n"

    const/4 v9, 0x3

    .line 302
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v8, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v12, 0x1

    aput-object v5, v10, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v10, v6

    invoke-virtual {v3, v7, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v46, v8

    goto :goto_1a

    :cond_1b
    if-eqz v31, :cond_1c

    .line 310
    :try_start_b
    invoke-virtual/range {v31 .. v31}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_1e

    :catchall_0
    move-exception v0

    goto :goto_1b

    :catch_4
    move-exception v0

    goto :goto_1c

    :catchall_1
    move-exception v0

    move-object/from16 v31, v1

    :goto_1b
    move-object v1, v0

    goto :goto_1f

    :catch_5
    move-exception v0

    move-object/from16 v31, v1

    :goto_1c
    move-object v1, v0

    move-object/from16 v7, v31

    goto :goto_1d

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/16 v31, 0x0

    goto :goto_1f

    :catch_6
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    .line 305
    :goto_1d
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v7, :cond_1c

    .line 310
    :try_start_d
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 316
    :catch_7
    :cond_1c
    :goto_1e
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v31, v7

    :goto_1f
    if-eqz v31, :cond_1d

    .line 310
    :try_start_e
    invoke-virtual/range {v31 .. v31}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 313
    :catch_8
    :cond_1d
    throw v1
.end method

.method public static dump(Ljava/lang/String;Z)V
    .locals 2

    .line 74
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0, p1}, Lorg/h2/mvstore/MVStoreTool;->dump(Ljava/lang/String;Ljava/io/Writer;Z)V

    return-void
.end method

.method private static formatTimestamp(JJ)Ljava/lang/String;
    .locals 3

    .line 399
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, p0, p1}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x13

    .line 400
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (+"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " s)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCompressor(Z)Lorg/h2/compress/Compressor;
    .locals 0

    if-eqz p0, :cond_0

    .line 320
    new-instance p0, Lorg/h2/compress/CompressLZF;

    invoke-direct {p0}, Lorg/h2/compress/CompressLZF;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/h2/compress/CompressDeflate;

    invoke-direct {p0}, Lorg/h2/compress/CompressDeflate;-><init>()V

    :goto_0
    return-object p0
.end method

.method private static getPercent(JJ)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/16 p0, 0x64

    return p0

    :cond_1
    const-wide/16 v0, 0x62

    mul-long p0, p0, v0

    const-wide/16 v0, 0x1

    .line 411
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    div-long/2addr p0, p2

    add-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2

    .line 83
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Lorg/h2/mvstore/MVStoreTool;->info(Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 27

    move-object/from16 v0, p0

    .line 330
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 331
    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 335
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v3

    .line 336
    new-instance v5, Lorg/h2/mvstore/MVStore$Builder;

    invoke-direct {v5}, Lorg/h2/mvstore/MVStore$Builder;-><init>()V

    invoke-virtual {v5, v0}, Lorg/h2/mvstore/MVStore$Builder;->fileName(Ljava/lang/String;)Lorg/h2/mvstore/MVStore$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/mvstore/MVStore$Builder;->readOnly()Lorg/h2/mvstore/MVStore$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/mvstore/MVStore$Builder;->open()Lorg/h2/mvstore/MVStore;

    move-result-object v5

    .line 340
    :try_start_0
    invoke-virtual {v5}, Lorg/h2/mvstore/MVStore;->getMetaMap()Lorg/h2/mvstore/MVMap;

    move-result-object v6

    .line 341
    invoke-virtual {v5}, Lorg/h2/mvstore/MVStore;->getStoreHeader()Ljava/util/Map;

    move-result-object v7

    const-string v8, "created"

    const-wide/16 v9, 0x0

    .line 342
    invoke-static {v7, v8, v9, v10}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v7

    .line 343
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 348
    invoke-virtual {v6}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide/from16 v17, v3

    move-wide v2, v9

    move-wide v12, v2

    move-wide v14, v12

    move-wide/from16 v19, v14

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 349
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v9, v21

    check-cast v9, Ljava/lang/String;

    const-string v10, "chunk."

    .line 350
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 351
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/h2/mvstore/Chunk;->fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;

    move-result-object v4

    .line 352
    iget v9, v4, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v9, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget v9, v4, Lorg/h2/mvstore/Chunk;->len:I

    mul-int/lit16 v9, v9, 0x1000

    int-to-long v9, v9

    add-long/2addr v12, v9

    .line 354
    iget-wide v9, v4, Lorg/h2/mvstore/Chunk;->maxLen:J

    const/16 v21, 0x0

    add-long/2addr v14, v9

    .line 355
    iget-wide v9, v4, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    const/16 v21, 0x0

    add-long/2addr v2, v9

    .line 356
    iget-wide v9, v4, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    const-wide/16 v21, 0x0

    cmp-long v23, v9, v21

    if-lez v23, :cond_1

    .line 357
    iget-wide v9, v4, Lorg/h2/mvstore/Chunk;->maxLen:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    move-object/from16 v24, v5

    move-wide/from16 v4, v19

    add-long v19, v4, v9

    goto :goto_1

    :cond_1
    move-object/from16 v24, v5

    move-wide/from16 v4, v19

    :goto_1
    move-object/from16 v5, v24

    const-wide/16 v9, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v24, v5

    move-wide/from16 v4, v19

    :try_start_1
    const-string v6, "Created: %s\n"

    const/4 v9, 0x1

    .line 361
    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v7, v8}, Lorg/h2/mvstore/MVStoreTool;->formatTimestamp(JJ)Ljava/lang/String;

    move-result-object v16

    const/4 v9, 0x0

    aput-object v16, v10, v9

    invoke-virtual {v1, v6, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v6, "Last modified: %s\n"

    const/4 v10, 0x1

    .line 362
    new-array v9, v10, [Ljava/lang/Object;

    move-wide/from16 v25, v4

    invoke-static/range {p0 .. p0}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v7, v8}, Lorg/h2/mvstore/MVStoreTool;->formatTimestamp(JJ)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v9, v4

    invoke-virtual {v1, v6, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "File length: %d\n"

    const/4 v5, 0x1

    .line 364
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {v1, v0, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "The last chunk is not listed\n"

    .line 365
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "Chunk length: %d\n"

    const/4 v5, 0x1

    .line 366
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-virtual {v1, v0, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "Chunk count: %d\n"

    .line 367
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/util/TreeMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "Used space: %d%%\n"

    const/4 v4, 0x1

    .line 368
    new-array v5, v4, [Ljava/lang/Object;

    move-wide/from16 v9, v17

    invoke-static {v12, v13, v9, v10}, Lorg/h2/mvstore/MVStoreTool;->getPercent(JJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v1, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "Chunk fill rate: %d%%\n"

    const/4 v4, 0x1

    .line 369
    new-array v5, v4, [Ljava/lang/Object;

    const/16 v4, 0x64

    const-wide/16 v9, 0x0

    cmp-long v6, v14, v9

    if-nez v6, :cond_3

    const/16 v6, 0x64

    goto :goto_2

    :cond_3
    invoke-static {v2, v3, v14, v15}, Lorg/h2/mvstore/MVStoreTool;->getPercent(JJ)I

    move-result v6

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    invoke-virtual {v1, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "Chunk fill rate excluding empty chunks: %d%%\n"

    const/4 v5, 0x1

    .line 371
    new-array v6, v5, [Ljava/lang/Object;

    const-wide/16 v9, 0x0

    cmp-long v5, v25, v9

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-wide/from16 v9, v25

    invoke-static {v2, v3, v9, v10}, Lorg/h2/mvstore/MVStoreTool;->getPercent(JJ)I

    move-result v4

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    invoke-virtual {v1, v0, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 374
    invoke-virtual {v11}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 375
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    .line 376
    iget-wide v3, v2, Lorg/h2/mvstore/Chunk;->time:J

    const/4 v5, 0x0

    add-long/2addr v3, v7

    const-string v5, "  Chunk %d: %s, %d%% used, %d blocks"

    const/4 v6, 0x4

    .line 377
    new-array v6, v6, [Ljava/lang/Object;

    iget v9, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    invoke-static {v3, v4, v7, v8}, Lorg/h2/mvstore/MVStoreTool;->formatTimestamp(JJ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v6, v4

    const/4 v3, 0x2

    iget-wide v9, v2, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    iget-wide v11, v2, Lorg/h2/mvstore/Chunk;->maxLen:J

    invoke-static {v9, v10, v11, v12}, Lorg/h2/mvstore/MVStoreTool;->getPercent(JJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x3

    iget v4, v2, Lorg/h2/mvstore/Chunk;->len:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 382
    iget-wide v3, v2, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    const-wide/16 v5, 0x0

    cmp-long v9, v3, v5

    if-nez v9, :cond_5

    const-string v3, ", unused: %s"

    const/4 v4, 0x1

    .line 383
    new-array v9, v4, [Ljava/lang/Object;

    iget-wide v10, v2, Lorg/h2/mvstore/Chunk;->unused:J

    const/4 v2, 0x0

    add-long/2addr v10, v7

    invoke-static {v10, v11, v7, v8}, Lorg/h2/mvstore/MVStoreTool;->formatTimestamp(JJ)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v1, v3, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_5

    :cond_5
    const/4 v4, 0x1

    :goto_5
    const-string v2, "\n"

    const/4 v3, 0x0

    .line 386
    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_4

    :cond_6
    const-string v0, "\n"

    const/4 v2, 0x0

    .line 388
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v24, v5

    .line 390
    :goto_6
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 393
    :goto_7
    invoke-virtual/range {v24 .. v24}, Lorg/h2/mvstore/MVStore;->close()V

    .line 395
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_1
    move-exception v0

    .line 393
    :goto_8
    invoke-virtual/range {v24 .. v24}, Lorg/h2/mvstore/MVStore;->close()V

    throw v0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    const-string v2, "-dump"

    .line 51
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 52
    aget-object v2, p0, v1

    .line 53
    new-instance v4, Ljava/io/PrintWriter;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v2, v4, v3}, Lorg/h2/mvstore/MVStoreTool;->dump(Ljava/lang/String;Ljava/io/Writer;Z)V

    goto :goto_1

    :cond_0
    const-string v2, "-info"

    .line 54
    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 55
    aget-object v2, p0, v1

    .line 56
    new-instance v4, Ljava/io/PrintWriter;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v2, v4}, Lorg/h2/mvstore/MVStoreTool;->info(Ljava/lang/String;Ljava/io/Writer;)V

    goto :goto_1

    :cond_1
    const-string v2, "-compact"

    .line 57
    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 58
    aget-object v2, p0, v1

    .line 59
    invoke-static {v2, v0}, Lorg/h2/mvstore/MVStoreTool;->compact(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const-string v2, "-compress"

    .line 60
    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 61
    aget-object v2, p0, v1

    .line 62
    invoke-static {v2, v3}, Lorg/h2/mvstore/MVStoreTool;->compact(Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method
