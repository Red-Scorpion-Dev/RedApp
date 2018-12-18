.class public Lorg/h2/mvstore/rtree/MVRTreeMap;
.super Lorg/h2/mvstore/MVMap;
.source "MVRTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;,
        Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/h2/mvstore/MVMap<",
        "Lorg/h2/mvstore/rtree/SpatialKey;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

.field private quadraticSplit:Z


# direct methods
.method public constructor <init>(ILorg/h2/mvstore/type/DataType;)V
    .locals 1

    .line 34
    new-instance v0, Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-direct {v0, p1}, Lorg/h2/mvstore/rtree/SpatialDataType;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lorg/h2/mvstore/MVMap;-><init>(Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)V

    .line 35
    invoke-virtual {p0}, Lorg/h2/mvstore/rtree/MVRTreeMap;->getKeyType()Lorg/h2/mvstore/type/DataType;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/rtree/SpatialDataType;

    iput-object p1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    return-void
.end method

.method private add(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 261
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p2

    invoke-virtual {p1, p2, p4, p5}, Lorg/h2/mvstore/Page;->insertLeaf(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 267
    :goto_0
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 268
    invoke-direct {p0, p1, v2, p4}, Lorg/h2/mvstore/rtree/MVRTreeMap;->contains(Lorg/h2/mvstore/Page;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v0, :cond_4

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 276
    :goto_2
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 277
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    .line 278
    iget-object v4, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {v4, v3, p4}, Lorg/h2/mvstore/rtree/SpatialDataType;->getAreaIncrease(Ljava/lang/Object;Ljava/lang/Object;)F

    move-result v3

    cmpg-float v4, v3, v2

    if-gez v4, :cond_3

    move v0, v1

    move v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 285
    :cond_4
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->getMemory()I

    move-result v2

    iget-object v3, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v3}, Lorg/h2/mvstore/MVStore;->getPageSplitSize()I

    move-result v3

    if-le v2, v3, :cond_5

    invoke-virtual {v1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_5

    .line 288
    invoke-direct {p0, v1, p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->split(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;

    move-result-object v2

    .line 289
    invoke-direct {p0, v1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->getBounds(Lorg/h2/mvstore/Page;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/h2/mvstore/Page;->setKey(ILjava/lang/Object;)V

    .line 290
    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    .line 291
    invoke-direct {p0, v2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->getBounds(Lorg/h2/mvstore/Page;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/h2/mvstore/Page;->insertNode(ILjava/lang/Object;Lorg/h2/mvstore/Page;)V

    .line 293
    invoke-direct/range {p0 .. p5}, Lorg/h2/mvstore/rtree/MVRTreeMap;->add(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v2, p0

    move-object v3, v1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    .line 296
    invoke-direct/range {v2 .. v7}, Lorg/h2/mvstore/rtree/MVRTreeMap;->add(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    .line 298
    iget-object p3, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p3, p2, p4}, Lorg/h2/mvstore/rtree/SpatialDataType;->increaseBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p1, v0, p2}, Lorg/h2/mvstore/Page;->setKey(ILjava/lang/Object;)V

    .line 300
    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    return-void
.end method

.method private contains(Lorg/h2/mvstore/Page;ILjava/lang/Object;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/h2/mvstore/rtree/SpatialDataType;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static create(ILorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/rtree/MVRTreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/h2/mvstore/type/DataType;",
            ")",
            "Lorg/h2/mvstore/rtree/MVRTreeMap<",
            "TV;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-direct {v0, p0, p1}, Lorg/h2/mvstore/rtree/MVRTreeMap;-><init>(ILorg/h2/mvstore/type/DataType;)V

    return-object v0
.end method

.method private getBounds(Lorg/h2/mvstore/Page;)Ljava/lang/Object;
    .locals 4

    .line 168
    iget-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/rtree/SpatialDataType;->createBoundingBox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 169
    :goto_0
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 170
    iget-object v2, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/h2/mvstore/rtree/SpatialDataType;->increaseBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static move(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/Page;I)V
    .locals 3

    .line 418
    invoke-virtual {p0, p2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    .line 419
    invoke-virtual {p0}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {p0, p2}, Lorg/h2/mvstore/Page;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    .line 421
    invoke-virtual {p1, v2, v0, v1}, Lorg/h2/mvstore/Page;->insertLeaf(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p0, p2}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v1

    .line 424
    invoke-virtual {p1, v2, v0, v1}, Lorg/h2/mvstore/Page;->insertNode(ILjava/lang/Object;Lorg/h2/mvstore/Page;)V

    .line 426
    :goto_0
    invoke-virtual {p0, p2}, Lorg/h2/mvstore/Page;->remove(I)V

    return-void
.end method

.method private newPage(ZJ)Lorg/h2/mvstore/Page;
    .locals 19

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 405
    sget-object v1, Lorg/h2/mvstore/Page;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    move-object v15, v0

    move-object v14, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 409
    new-array v1, v1, [Lorg/h2/mvstore/Page$PageReference;

    const/4 v2, 0x0

    new-instance v9, Lorg/h2/mvstore/Page$PageReference;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    aput-object v9, v1, v2

    move-object v14, v0

    move-object v15, v1

    .line 412
    :goto_0
    sget-object v13, Lorg/h2/mvstore/Page;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v10, p0

    move-wide/from16 v11, p2

    invoke-static/range {v10 .. v18}, Lorg/h2/mvstore/Page;->create(Lorg/h2/mvstore/MVMap;J[Ljava/lang/Object;[Ljava/lang/Object;[Lorg/h2/mvstore/Page$PageReference;JI)Lorg/h2/mvstore/Page;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized putOrAdd(Lorg/h2/mvstore/rtree/SpatialKey;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/rtree/SpatialKey;",
            "TV;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v10, p0

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/h2/mvstore/rtree/MVRTreeMap;->beforeWrite()V

    .line 194
    iget-wide v11, v10, Lorg/h2/mvstore/rtree/MVRTreeMap;->writeVersion:J

    .line 195
    iget-object v0, v10, Lorg/h2/mvstore/rtree/MVRTreeMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {v0, v11, v12}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v0

    if-nez p3, :cond_1

    .line 197
    invoke-virtual/range {p0 .. p1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    move-object v2, v0

    move-wide v3, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 221
    invoke-direct/range {v1 .. v6}, Lorg/h2/mvstore/rtree/MVRTreeMap;->set(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 198
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getMemory()I

    move-result v1

    iget-object v2, v10, Lorg/h2/mvstore/rtree/MVRTreeMap;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVStore;->getPageSplitSize()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    .line 202
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v7

    .line 203
    invoke-direct {v10, v0, v11, v12}, Lorg/h2/mvstore/rtree/MVRTreeMap;->split(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;

    move-result-object v14

    .line 204
    invoke-direct {v10, v0}, Lorg/h2/mvstore/rtree/MVRTreeMap;->getBounds(Lorg/h2/mvstore/Page;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    invoke-direct {v10, v14}, Lorg/h2/mvstore/rtree/MVRTreeMap;->getBounds(Lorg/h2/mvstore/Page;)Ljava/lang/Object;

    move-result-object v3

    const/4 v9, 0x2

    .line 206
    new-array v15, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v15, v13

    const/16 v19, 0x1

    aput-object v3, v15, v19

    .line 207
    new-array v5, v2, [Lorg/h2/mvstore/Page$PageReference;

    new-instance v16, Lorg/h2/mvstore/Page$PageReference;

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v17

    move-object/from16 v1, v16

    move-object v2, v0

    move-object v0, v5

    move-wide/from16 v5, v17

    invoke-direct/range {v1 .. v6}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    aput-object v16, v0, v13

    new-instance v1, Lorg/h2/mvstore/Page$PageReference;

    invoke-virtual {v14}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v2

    invoke-virtual {v14}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v17

    move-object v13, v1

    move-object v4, v15

    move-wide v15, v2

    invoke-direct/range {v13 .. v18}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    aput-object v1, v0, v19

    new-instance v1, Lorg/h2/mvstore/Page$PageReference;

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v25}, Lorg/h2/mvstore/Page$PageReference;-><init>(Lorg/h2/mvstore/Page;JJ)V

    aput-object v1, v0, v9

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-object v6, v0

    .line 212
    invoke-static/range {v1 .. v9}, Lorg/h2/mvstore/Page;->create(Lorg/h2/mvstore/MVMap;J[Ljava/lang/Object;[Ljava/lang/Object;[Lorg/h2/mvstore/Page$PageReference;JI)Lorg/h2/mvstore/Page;

    move-result-object v0

    :cond_2
    move-object/from16 v1, p0

    move-object v2, v0

    move-wide v3, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 218
    invoke-direct/range {v1 .. v6}, Lorg/h2/mvstore/rtree/MVRTreeMap;->add(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 223
    :goto_1
    invoke-virtual {v10, v0}, Lorg/h2/mvstore/rtree/MVRTreeMap;->newRoot(Lorg/h2/mvstore/Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    .line 192
    monitor-exit p0

    throw v0
.end method

.method private set(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 237
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 238
    :goto_0
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 239
    iget-object p3, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Lorg/h2/mvstore/rtree/SpatialDataType;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 240
    invoke-virtual {p1, p2, p5}, Lorg/h2/mvstore/Page;->setValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 244
    :goto_1
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 245
    invoke-direct {p0, p1, v0, p4}, Lorg/h2/mvstore/rtree/MVRTreeMap;->contains(Lorg/h2/mvstore/Page;ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v2

    .line 247
    invoke-virtual {p0, v2, p4}, Lorg/h2/mvstore/rtree/MVRTreeMap;->get(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 248
    invoke-virtual {v2, p2, p3}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v1

    move-object v4, p0

    move-object v5, v1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    .line 249
    invoke-direct/range {v4 .. v9}, Lorg/h2/mvstore/rtree/MVRTreeMap;->set(Lorg/h2/mvstore/Page;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 250
    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    return-object p2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    const/4 p2, 0x1

    .line 256
    new-array p2, p2, [Ljava/lang/Object;

    aput-object p4, p2, v1

    const-string p3, "Not found: {0}"

    invoke-static {p1, p3, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method private split(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;
    .locals 1

    .line 304
    iget-boolean v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->quadraticSplit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->splitQuadratic(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->splitLinear(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private splitLinear(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;
    .locals 6

    .line 310
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 311
    :goto_0
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 312
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_0
    iget-object v2, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {v2, v0}, Lorg/h2/mvstore/rtree/SpatialDataType;->getExtremes(Ljava/util/ArrayList;)[I

    move-result-object v0

    if-nez v0, :cond_1

    .line 316
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->splitQuadratic(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;

    move-result-object p1

    return-object p1

    .line 318
    :cond_1
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v2

    invoke-direct {p0, v2, p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->newPage(ZJ)Lorg/h2/mvstore/Page;

    move-result-object v2

    .line 319
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->newPage(ZJ)Lorg/h2/mvstore/Page;

    move-result-object p2

    .line 320
    aget p3, v0, v1

    invoke-static {p1, v2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->move(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/Page;I)V

    const/4 p3, 0x1

    .line 321
    aget v3, v0, p3

    aget v4, v0, v1

    if-le v3, v4, :cond_2

    .line 322
    aget v3, v0, p3

    sub-int/2addr v3, p3

    aput v3, v0, p3

    .line 324
    :cond_2
    aget p3, v0, p3

    invoke-static {p1, p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->move(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/Page;I)V

    .line 325
    iget-object p3, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/h2/mvstore/rtree/SpatialDataType;->createBoundingBox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 326
    iget-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p2, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/mvstore/rtree/SpatialDataType;->createBoundingBox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    :goto_1
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 328
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    .line 329
    iget-object v4, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {v4, p3, v3}, Lorg/h2/mvstore/rtree/SpatialDataType;->getAreaIncrease(Ljava/lang/Object;Ljava/lang/Object;)F

    move-result v4

    .line 330
    iget-object v5, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {v5, v0, v3}, Lorg/h2/mvstore/rtree/SpatialDataType;->getAreaIncrease(Ljava/lang/Object;Ljava/lang/Object;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 332
    iget-object v4, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {v4, p3, v3}, Lorg/h2/mvstore/rtree/SpatialDataType;->increaseBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    invoke-static {p1, v2, v1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->move(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/Page;I)V

    goto :goto_1

    .line 335
    :cond_3
    iget-object v4, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {v4, v0, v3}, Lorg/h2/mvstore/rtree/SpatialDataType;->increaseBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 336
    invoke-static {p1, p2, v1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->move(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/Page;I)V

    goto :goto_1

    .line 339
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p3

    if-lez p3, :cond_5

    .line 340
    invoke-static {p2, p1, v1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->move(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/Page;I)V

    goto :goto_2

    :cond_5
    return-object v2
.end method

.method private splitQuadratic(Lorg/h2/mvstore/Page;J)Lorg/h2/mvstore/Page;
    .locals 12

    .line 346
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->newPage(ZJ)Lorg/h2/mvstore/Page;

    move-result-object v0

    .line 347
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    invoke-direct {p0, v1, p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->newPage(ZJ)Lorg/h2/mvstore/Page;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 350
    :goto_0
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 351
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v5

    move v6, v4

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    .line 352
    :goto_1
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 356
    :cond_0
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v7

    .line 357
    iget-object v8, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {v8, v5, v7}, Lorg/h2/mvstore/rtree/SpatialDataType;->getCombinedArea(Ljava/lang/Object;Ljava/lang/Object;)F

    move-result v7

    cmpl-float v8, v7, v6

    if-lez v8, :cond_1

    move v3, v1

    move v4, v2

    move v6, v7

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v3, v4

    move v4, v6

    goto :goto_0

    .line 365
    :cond_3
    invoke-static {p1, v0, v2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->move(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/Page;I)V

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 369
    :cond_4
    invoke-static {p1, p2, v3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->move(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/Page;I)V

    .line 370
    iget-object v1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {v0, p3}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/rtree/SpatialDataType;->createBoundingBox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p2, p3}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/rtree/SpatialDataType;->createBoundingBox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 372
    :goto_3
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v3, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 375
    :goto_4
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 376
    invoke-virtual {p1, v3}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v8

    .line 377
    iget-object v9, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {v9, v1, v8}, Lorg/h2/mvstore/rtree/SpatialDataType;->getAreaIncrease(Ljava/lang/Object;Ljava/lang/Object;)F

    move-result v9

    .line 378
    iget-object v10, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {v10, v2, v8}, Lorg/h2/mvstore/rtree/SpatialDataType;->getAreaIncrease(Ljava/lang/Object;Ljava/lang/Object;)F

    move-result v8

    sub-float v10, v9, v8

    .line 379
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v11, v10, v4

    if-lez v11, :cond_5

    move v7, v3

    move v6, v8

    move v5, v9

    move v4, v10

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    cmpg-float v3, v5, v6

    if-gez v3, :cond_7

    .line 388
    iget-object v3, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p1, v7}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/h2/mvstore/rtree/SpatialDataType;->increaseBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    invoke-static {p1, v0, v7}, Lorg/h2/mvstore/rtree/MVRTreeMap;->move(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/Page;I)V

    goto :goto_3

    .line 391
    :cond_7
    iget-object v3, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p1, v7}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/h2/mvstore/rtree/SpatialDataType;->increaseBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    invoke-static {p1, p2, v7}, Lorg/h2/mvstore/rtree/MVRTreeMap;->move(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/Page;I)V

    goto :goto_3

    .line 395
    :cond_8
    :goto_5
    invoke-virtual {p2}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 396
    invoke-static {p2, p1, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->move(Lorg/h2/mvstore/Page;Lorg/h2/mvstore/Page;I)V

    goto :goto_5

    :cond_9
    return-object v0
.end method


# virtual methods
.method public add(Lorg/h2/mvstore/rtree/SpatialKey;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/rtree/SpatialKey;",
            "TV;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 189
    invoke-direct {p0, p1, p2, v0}, Lorg/h2/mvstore/rtree/MVRTreeMap;->putOrAdd(Lorg/h2/mvstore/rtree/SpatialKey;Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void
.end method

.method public addNodeKeys(Ljava/util/ArrayList;Lorg/h2/mvstore/Page;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/mvstore/rtree/SpatialKey;",
            ">;",
            "Lorg/h2/mvstore/Page;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 437
    invoke-virtual {p2}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 438
    :goto_0
    invoke-virtual {p2}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 439
    invoke-virtual {p2, v0}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {p2, v0}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->addNodeKeys(Ljava/util/ArrayList;Lorg/h2/mvstore/Page;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findContainedKeys(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;
    .locals 2

    .line 80
    new-instance v0, Lorg/h2/mvstore/rtree/MVRTreeMap$2;

    iget-object v1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->root:Lorg/h2/mvstore/Page;

    invoke-direct {v0, p0, v1, p1}, Lorg/h2/mvstore/rtree/MVRTreeMap$2;-><init>(Lorg/h2/mvstore/rtree/MVRTreeMap;Lorg/h2/mvstore/Page;Lorg/h2/mvstore/rtree/SpatialKey;)V

    return-object v0
.end method

.method public findIntersectingKeys(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;
    .locals 2

    .line 63
    new-instance v0, Lorg/h2/mvstore/rtree/MVRTreeMap$1;

    iget-object v1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->root:Lorg/h2/mvstore/Page;

    invoke-direct {v0, p0, v1, p1}, Lorg/h2/mvstore/rtree/MVRTreeMap$1;-><init>(Lorg/h2/mvstore/rtree/MVRTreeMap;Lorg/h2/mvstore/Page;Lorg/h2/mvstore/rtree/SpatialKey;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->root:Lorg/h2/mvstore/Page;

    invoke-virtual {p0, v0, p1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->get(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected get(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 104
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 105
    :goto_0
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 106
    invoke-direct {p0, p1, v1, p2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->contains(Lorg/h2/mvstore/Page;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->get(Lorg/h2/mvstore/Page;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 115
    iget-object v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lorg/h2/mvstore/rtree/SpatialDataType;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/Page;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getChildPageCount(Lorg/h2/mvstore/Page;)I
    .locals 0

    .line 455
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getRawChildPageCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "rtree"

    return-object v0
.end method

.method public isQuadraticSplit()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->quadraticSplit:Z

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->put(Lorg/h2/mvstore/rtree/SpatialKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/h2/mvstore/rtree/SpatialKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/rtree/SpatialKey;",
            "TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, p2, v0}, Lorg/h2/mvstore/rtree/MVRTreeMap;->putOrAdd(Lorg/h2/mvstore/rtree/SpatialKey;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected declared-synchronized remove(Lorg/h2/mvstore/Page;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->isLeaf()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 127
    :goto_0
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p2

    if-ge v2, p2, :cond_1

    .line 128
    iget-object p2, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p1, v2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Lorg/h2/mvstore/rtree/SpatialDataType;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/Page;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 130
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/Page;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    .line 136
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 137
    invoke-direct {p0, p1, v2, p4}, Lorg/h2/mvstore/rtree/MVRTreeMap;->contains(Lorg/h2/mvstore/Page;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 138
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/Page;->getChildPage(I)Lorg/h2/mvstore/Page;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p2, p3}, Lorg/h2/mvstore/Page;->copy(J)Lorg/h2/mvstore/Page;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v3

    .line 144
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/h2/mvstore/rtree/MVRTreeMap;->remove(Lorg/h2/mvstore/Page;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    invoke-virtual {p1, v2, v0}, Lorg/h2/mvstore/Page;->setChild(ILorg/h2/mvstore/Page;)V

    .line 146
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    move-object v0, v1

    goto :goto_4

    .line 149
    :cond_3
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide p2

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-nez v5, :cond_4

    .line 151
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/Page;->remove(I)V

    .line 152
    invoke-virtual {p1}, Lorg/h2/mvstore/Page;->getKeyCount()I

    move-result p1

    if-nez p1, :cond_5

    .line 153
    invoke-virtual {v0}, Lorg/h2/mvstore/Page;->removePage()V

    goto :goto_3

    .line 157
    :cond_4
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    .line 158
    iget-object p3, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyType:Lorg/h2/mvstore/rtree/SpatialDataType;

    invoke-virtual {p3, p4, p2}, Lorg/h2/mvstore/rtree/SpatialDataType;->isInside(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 159
    invoke-direct {p0, v0}, Lorg/h2/mvstore/rtree/MVRTreeMap;->getBounds(Lorg/h2/mvstore/Page;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/h2/mvstore/Page;->setKey(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_3
    move-object v0, v1

    goto :goto_5

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 164
    :cond_7
    :goto_5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 124
    monitor-exit p0

    throw p1
.end method

.method public setQuadraticSplit(Z)V
    .locals 0

    .line 450
    iput-boolean p1, p0, Lorg/h2/mvstore/rtree/MVRTreeMap;->quadraticSplit:Z

    return-void
.end method
