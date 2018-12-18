.class public Lorg/h2/mvstore/db/MVSpatialIndex;
.super Lorg/h2/index/BaseIndex;
.source "MVSpatialIndex.java"

# interfaces
.implements Lorg/h2/index/SpatialIndex;
.implements Lorg/h2/mvstore/db/MVIndex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;
    }
.end annotation


# instance fields
.field private dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "Lorg/h2/mvstore/rtree/SpatialKey;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private final mapName:Ljava/lang/String;

.field final mvTable:Lorg/h2/mvstore/db/MVTable;

.field private spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/rtree/MVRTreeMap<",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/mvstore/db/MVTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 6

    .line 70
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    .line 71
    array-length v0, p5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 75
    aget-object v0, p5, v0

    .line 76
    iget v2, v0, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    .line 80
    iget v1, v0, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 84
    iget v1, v0, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    .line 88
    iget-object v1, v0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getType()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    .line 93
    iput-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 94
    invoke-virtual/range {v0 .. v5}, Lorg/h2/mvstore/db/MVSpatialIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 95
    iget-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isStarting()Z

    move-result p2

    if-nez p2, :cond_0

    .line 96
    invoke-static {p5}, Lorg/h2/mvstore/db/MVSpatialIndex;->checkIndexColumnTypes([Lorg/h2/table/IndexColumn;)V

    .line 98
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "index."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVSpatialIndex;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mapName:Ljava/lang/String;

    .line 99
    new-instance p2, Lorg/h2/mvstore/db/ValueDataType;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 100
    new-instance p4, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;

    invoke-direct {p4, p2}, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;-><init>(Lorg/h2/mvstore/type/DataType;)V

    .line 101
    new-instance p2, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;

    invoke-direct {p2}, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;-><init>()V

    invoke-virtual {p2, p4}, Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;->valueType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/rtree/MVRTreeMap$Builder;

    move-result-object p2

    .line 104
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object p1

    iget-object p4, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mapName:Ljava/lang/String;

    invoke-virtual {p1, p4, p2}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/rtree/MVRTreeMap;

    iput-object p1, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    .line 105
    iget-object p1, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p1, p3}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    .line 106
    iget-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->openMap(Lorg/h2/mvstore/MVMap;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    .line 107
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    return-void

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Spatial index on non-geometry column, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p2}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "Nulls last is not supported"

    .line 85
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    const-string p1, "Nulls first is not supported"

    .line 81
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    const-string p1, "Cannot index in descending order"

    .line 77
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    const-string p1, "Can only index one column"

    .line 72
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;
    .locals 3

    .line 193
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/rtree/MVRTreeMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 194
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v1

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v1, v0, v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->wrapIterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;

    move-result-object v0

    .line 196
    new-instance v1, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;

    invoke-direct {v1, p0, p1, v0}, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVSpatialIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;)V

    return-object v1
.end method

.method private getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;
    .locals 7

    .line 214
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->columnIds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    .line 215
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v2, :cond_0

    .line 216
    new-instance v0, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v2

    new-array p1, v1, [F

    invoke-direct {v0, v2, v3, p1}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object v0

    :cond_0
    const/16 v2, 0x16

    .line 218
    invoke-virtual {v0, v2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueGeometry;

    invoke-virtual {v0}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Geometry;->getEnvelopeInternal()Lcom/vividsolutions/jts/geom/Envelope;

    move-result-object v0

    .line 220
    new-instance v2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v3

    const/4 p1, 0x4

    new-array p1, p1, [F

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMinX()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, p1, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMaxX()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, p1, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMinY()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, p1, v1

    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Envelope;->getMaxY()D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v1

    invoke-direct {v2, v3, v4, p1}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object v2
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    .line 127
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 128
    invoke-direct {p0, p2}, Lorg/h2/mvstore/db/MVSpatialIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object p2

    .line 129
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->indexType:Lorg/h2/index/IndexType;

    invoke-virtual {v0}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {v0, p2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->findContainedKeys(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->wrapIterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;

    move-result-object v0

    .line 133
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 135
    invoke-virtual {v1, p2}, Lorg/h2/mvstore/rtree/SpatialKey;->equalsIgnoringId(Lorg/h2/mvstore/rtree/SpatialKey;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    const-wide/16 v0, 0x0

    .line 141
    :try_start_0
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->indexType:Lorg/h2/index/IndexType;

    invoke-virtual {v0}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-virtual {v0, p2}, Lorg/h2/mvstore/rtree/MVRTreeMap;->findContainedKeys(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->wrapIterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;

    move-result-object v0

    .line 149
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/rtree/SpatialKey;

    .line 151
    invoke-virtual {v1, p2}, Lorg/h2/mvstore/rtree/SpatialKey;->equalsIgnoringId(Lorg/h2/mvstore/rtree/SpatialKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->isSameTransaction(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 155
    :cond_3
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 158
    invoke-virtual {v1}, Lorg/h2/mvstore/rtree/SpatialKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    const p1, 0x16013

    .line 160
    iget-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p2}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 143
    iget-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/db/MVTable;->convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addBufferedRows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public addRowsToBuffer(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/h2/result/Row;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 112
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

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 184
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findByGeometry(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 202
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    if-nez p4, :cond_0

    .line 204
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/db/MVSpatialIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1

    .line 206
    :cond_0
    iget-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->spatialMap:Lorg/h2/mvstore/rtree/MVRTreeMap;

    invoke-direct {p0, p4}, Lorg/h2/mvstore/db/MVSpatialIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/h2/mvstore/rtree/MVRTreeMap;->findIntersectingKeys(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/mvstore/rtree/MVRTreeMap$RTreeCursor;

    move-result-object p2

    .line 208
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p3

    const/4 p4, 0x0

    .line 209
    invoke-virtual {p3, p2, p4}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->wrapIterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;

    move-result-object p2

    .line 210
    new-instance p3, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;

    invoke-direct {p3, p0, p1, p2}, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVSpatialIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;)V

    return-object p3
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    if-eqz p2, :cond_0

    .line 276
    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->find(Lorg/h2/engine/Session;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Spatial Index can only be fetch in ascending order"

    .line 273
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

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

    .line 246
    iget-object p1, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/table/Table;->getRowCountApproximation()J

    move-result-wide p3

    iget-object p1, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->columns:[Lorg/h2/table/Column;

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

.method getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            ")",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "Lorg/h2/mvstore/rtree/SpatialKey;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 322
    iget-object p1, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    return-object p1

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    .line 325
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, v1, v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getInstance(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    return-object p1
.end method

.method getRow(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/result/SearchRow;
    .locals 3

    .line 232
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTable;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v0

    .line 233
    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/h2/result/SearchRow;->setKey(J)V

    return-object v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 290
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 3

    .line 297
    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLongMax()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const v1, 0x15f97

    const/4 v2, 0x0

    .line 299
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getTable()Lorg/h2/mvstore/db/MVTable;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    return-object v0
.end method

.method public bridge synthetic getTable()Lorg/h2/table/Table;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVSpatialIndex;->getTable()Lorg/h2/mvstore/db/MVTable;

    move-result-object v0

    return-object v0
.end method

.method public needRebuild()Z
    .locals 6

    const/4 v0, 0x0

    .line 282
    :try_start_0
    iget-object v1, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLongMax()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const v2, 0x15f97

    .line 284
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 2

    .line 252
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v1, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    .line 255
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V

    :cond_0
    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    .line 168
    invoke-direct {p0, p2}, Lorg/h2/mvstore/db/MVSpatialIndex;->getKey(Lorg/h2/result/SearchRow;)Lorg/h2/mvstore/rtree/SpatialKey;

    move-result-object v0

    .line 169
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 171
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    if-eqz v1, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    const p1, 0x16000

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVSpatialIndex;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 178
    iget-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/db/MVTable;->convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->clear()V

    return-void
.end method
