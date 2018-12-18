.class public Lorg/h2/index/SpatialTreeIndex;
.super Lorg/h2/index/BaseIndex;
.source "SpatialTreeIndex.java"

# interfaces
.implements Lorg/h2/index/SpatialIndex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/index/SpatialTreeIndex$SpatialCursor;
    }
.end annotation


# static fields
.field private static final MAP_PREFIX:Ljava/lang/String; = "RTREE_"


# instance fields
.field private closed:Z

.field private needRebuild:Z

.field private final store:Lorg/h2/mvstore/MVStore;

.field private final treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/rtree/MVRTreeMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZZLorg/h2/engine/Session;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    .line 62
    invoke-virtual {p5}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v0

    if-nez v0, :cond_b

    if-nez p6, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Non persistent index called with create==false"

    .line 66
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 69
    :cond_1
    :goto_0
    array-length v0, p4

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    const/4 v0, 0x0

    .line 73
    aget-object v2, p4, v0

    iget v2, v2, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/2addr v2, v1

    if-nez v2, :cond_9

    .line 77
    aget-object v2, p4, v0

    iget v2, v2, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    .line 81
    aget-object v2, p4, v0

    iget v2, v2, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_7

    .line 85
    invoke-virtual/range {p0 .. p5}, Lorg/h2/index/SpatialTreeIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 86
    iput-boolean p7, p0, Lorg/h2/index/SpatialTreeIndex;->needRebuild:Z

    .line 87
    iput-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->table:Lorg/h2/table/Table;

    .line 88
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isStarting()Z

    move-result p1

    if-nez p1, :cond_3

    .line 89
    aget-object p1, p4, v0

    iget-object p1, p1, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getType()I

    move-result p1

    const/16 p3, 0x16

    if-ne p1, p3, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "spatial index on non-geometry column, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p4, v0

    iget-object p2, p2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p2}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    if-nez p6, :cond_4

    const/4 p1, 0x0

    .line 97
    invoke-static {p1}, Lorg/h2/mvstore/MVStore;->open(Ljava/lang/String;)Lorg/h2/mvstore/MVStore;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->store:Lorg/h2/mvstore/MVStore;

    .line 98
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->store:Lorg/h2/mvstore/MVStore;

    const-string p2, "spatialIndex"

    new-instance p3, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;

    invoke-direct {p3}, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;-><init>()V

    invoke-virtual {p1, p2, p3}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/rtree/MVRTreeMap;

    iput-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    goto :goto_2

    :cond_4
    if-ltz p2, :cond_6

    .line 105
    invoke-virtual {p8}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/mvstore/db/MVTableEngine;->init(Lorg/h2/engine/Database;)Lorg/h2/mvstore/db/MVTableEngine$Store;

    .line 106
    invoke-virtual {p8}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->store:Lorg/h2/mvstore/MVStore;

    .line 109
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->store:Lorg/h2/mvstore/MVStore;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RTREE_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/index/SpatialTreeIndex;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;

    invoke-direct {p3}, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;-><init>()V

    invoke-virtual {p1, p2, p3}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/rtree/MVRTreeMap;

    iput-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    .line 111
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 112
    iput-boolean v1, p0, Lorg/h2/index/SpatialTreeIndex;->needRebuild:Z

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string p1, "Persistent index with id<0"

    .line 102
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_7
    const-string p1, "cannot do nulls last"

    .line 82
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_8
    const-string p1, "cannot do nulls first"

    .line 78
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_9
    const-string p1, "cannot do descending"

    .line 74
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_a
    const-string p1, "can only do one column"

    .line 70
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_b
    const-string p1, "not unique"

    .line 63
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;
    .locals 3

    .line 167
    new-instance v0, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;

    iget-object v1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/index/SpatialTreeIndex;->table:Lorg/h2/table/Table;

    invoke-direct {v0, v1, v2, p1}, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;-><init>(Ljava/util/Iterator;Lorg/h2/table/Table;Lorg/h2/engine/Session;)V

    return-object v0
.end method

.method public static getCostRangeIndex([IJ[Lorg/h2/table/Column;)J
    .locals 6

    const-wide/16 v0, 0x3e8

    add-long/2addr p1, v0

    if-nez p0, :cond_0

    return-wide p1

    .line 194
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    move-wide v2, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p3, v1

    .line 195
    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    .line 196
    aget v4, p0, v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x4

    .line 198
    div-long v4, p1, v4

    add-long/2addr v4, v2

    move-wide v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0xa

    mul-long v2, v2, p0

    return-wide v2
.end method

.method private getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 135
    :cond_0
    iget-object v1, p0, Lorg/h2/index/SpatialTreeIndex;->columnIds:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    .line 136
    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, v3, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x16

    .line 139
    invoke-virtual {v1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueGeometry;

    invoke-virtual {v0}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Geometry;->getEnvelopeInternal()Lcom/vividsolutions/jts/geom/Envelope;

    move-result-object v0

    .line 141
    new-instance v1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v3

    const/4 p1, 0x4

    new-array p1, p1, [F

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMinX()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, p1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMaxX()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, p1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMinY()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, p1, v2

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMaxY()D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v2

    invoke-direct {v1, v3, v4, p1}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object v1
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    .line 125
    iget-boolean p1, p0, Lorg/h2/index/SpatialTreeIndex;->closed:Z

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-direct {p0, p2}, Lorg/h2/index/SpatialTreeIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object v0

    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->add(Lorg/h2/mvstore/rtree/SpatialKey;Ljava/lang/Object;)V

    return-void

    .line 126
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->close()V

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lorg/h2/index/SpatialTreeIndex;->closed:Z

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lorg/h2/index/SpatialTreeIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 158
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/index/SpatialTreeIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findByGeometry(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    if-nez p4, :cond_0

    .line 174
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/index/SpatialTreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1

    .line 176
    :cond_0
    new-instance p2, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;

    iget-object p3, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-direct {p0, p4}, Lorg/h2/index/SpatialTreeIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/h2/mvstore/rtree/MVRTreeMap;->findIntersectingKeys(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;

    move-result-object p3

    iget-object p4, p0, Lorg/h2/index/SpatialTreeIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-direct {p2, p3, p4, p1}, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;-><init>(Ljava/util/Iterator;Lorg/h2/table/Table;Lorg/h2/engine/Session;)V

    return-object p2
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 1

    .line 241
    iget-boolean v0, p0, Lorg/h2/index/SpatialTreeIndex;->closed:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 248
    invoke-direct {p0, p1}, Lorg/h2/index/SpatialTreeIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Spatial Index can only be fetch by ascending order"

    .line 245
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 242
    :cond_1
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)D"
        }
    .end annotation

    .line 208
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/table/Table;->getRowCountApproximation()J

    move-result-wide p3

    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->columns:[Lorg/h2/table/Column;

    invoke-static {p2, p3, p4, p1}, Lorg/h2/index/SpatialTreeIndex;->getCostRangeIndex([IJ[Lorg/h2/table/Column;)J

    move-result-wide p1

    long-to-double p1, p1

    return-wide p1
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 253
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->sizeAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 258
    iget-object v0, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/rtree/MVRTreeMap;->sizeAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public needRebuild()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lorg/h2/index/SpatialTreeIndex;->needRebuild:Z

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->store:Lorg/h2/mvstore/MVStore;

    iget-object v0, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/MVStore;->removeMap(Lorg/h2/mvstore/MVMap;)V

    :cond_0
    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    .line 148
    iget-boolean p1, p0, Lorg/h2/index/SpatialTreeIndex;->closed:Z

    if-nez p1, :cond_1

    .line 151
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-direct {p0, p2}, Lorg/h2/index/SpatialTreeIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object v0

    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "row not found"

    .line 152
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 149
    :cond_1
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    .line 221
    iget-object p1, p0, Lorg/h2/index/SpatialTreeIndex;->treeMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->clear()V

    return-void
.end method
