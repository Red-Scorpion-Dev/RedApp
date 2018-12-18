.class public Lorg/h2/mvstore/db/MVSecondaryIndex;
.super Lorg/h2/index/BaseIndex;
.source "MVSecondaryIndex.java"

# interfaces
.implements Lorg/h2/mvstore/db/MVIndex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;
    }
.end annotation


# instance fields
.field private dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "Lorg/h2/value/Value;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private final keyColumns:I

.field private final mapName:Ljava/lang/String;

.field final mvTable:Lorg/h2/mvstore/db/MVTable;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/mvstore/db/MVTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 6

    .line 52
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    .line 53
    iput-object p2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 54
    invoke-virtual/range {v0 .. v5}, Lorg/h2/mvstore/db/MVSecondaryIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 55
    iget-object p2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isStarting()Z

    move-result p2

    if-nez p2, :cond_0

    .line 56
    invoke-static {p5}, Lorg/h2/mvstore/db/MVSecondaryIndex;->checkIndexColumnTypes([Lorg/h2/table/IndexColumn;)V

    .line 60
    :cond_0
    array-length p2, p5

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->keyColumns:I

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "index."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->mapName:Ljava/lang/String;

    .line 62
    iget p2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->keyColumns:I

    new-array p2, p2, [I

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 63
    :goto_0
    array-length p6, p5

    if-ge p4, p6, :cond_1

    .line 64
    aget-object p6, p5, p4

    iget p6, p6, Lorg/h2/table/IndexColumn;->sortType:I

    aput p6, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 66
    :cond_1
    iget p4, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->keyColumns:I

    add-int/lit8 p4, p4, -0x1

    aput p3, p2, p4

    .line 67
    new-instance p3, Lorg/h2/mvstore/db/ValueDataType;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object p4

    invoke-direct {p3, p4, p1, p2}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 69
    new-instance p1, Lorg/h2/mvstore/db/ValueDataType;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 70
    iget-object p4, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p4, p2}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p2

    .line 71
    iget-object p4, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->mapName:Ljava/lang/String;

    invoke-virtual {p2, p4, p3, p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    .line 72
    invoke-virtual {p2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    .line 73
    iget-object p1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getKeyType()Lorg/h2/mvstore/type/DataType;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/h2/mvstore/db/ValueDataType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-string p1, "Incompatible key type"

    .line 74
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private checkUnique(Lorg/h2/result/SearchRow;Lorg/h2/mvstore/db/TransactionStore$TransactionMap;Lorg/h2/value/ValueArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/result/SearchRow;",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "Lorg/h2/value/Value;",
            "Lorg/h2/value/Value;",
            ">;",
            "Lorg/h2/value/ValueArray;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p2, p3, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->keyIterator(Ljava/lang/Object;Z)Ljava/util/Iterator;

    move-result-object p3

    .line 223
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueArray;

    .line 225
    invoke-virtual {p0, v0}, Lorg/h2/mvstore/db/MVSecondaryIndex;->convertToSearchRow(Lorg/h2/value/ValueArray;)Lorg/h2/result/SearchRow;

    move-result-object v1

    .line 226
    invoke-virtual {p0, p1, v1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {p2, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {p0, v1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->containsNullAndAllowMultipleNull(Lorg/h2/result/SearchRow;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {v0}, Lorg/h2/value/ValueArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private convertToKey(Lorg/h2/result/SearchRow;)Lorg/h2/value/ValueArray;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 316
    :cond_0
    iget v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->keyColumns:I

    new-array v0, v0, [Lorg/h2/value/Value;

    const/4 v1, 0x0

    .line 317
    :goto_0
    iget-object v2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->columns:[Lorg/h2/table/Column;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 318
    iget-object v2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->columns:[Lorg/h2/table/Column;

    aget-object v2, v2, v1

    .line 319
    invoke-virtual {v2}, Lorg/h2/table/Column;->getColumnId()I

    move-result v3

    .line 320
    invoke-interface {p1, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 322
    invoke-virtual {v2}, Lorg/h2/table/Column;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_2
    iget v1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->keyColumns:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    aput-object p1, v0, v1

    .line 326
    invoke-static {v0}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p1

    return-object p1
.end method

.method private find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;ZLorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 9

    .line 258
    invoke-direct {p0, p2}, Lorg/h2/mvstore/db/MVSecondaryIndex;->convertToKey(Lorg/h2/result/SearchRow;)Lorg/h2/value/ValueArray;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v2

    iget v3, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->keyColumns:I

    sub-int/2addr v3, v1

    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v4

    aput-object v4, v2, v3

    .line 262
    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v2

    if-eqz p3, :cond_8

    if-eqz v0, :cond_8

    const/4 p3, 0x1

    :cond_1
    :goto_0
    int-to-long v3, p3

    .line 269
    invoke-virtual {v2, v0, v3, v4}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->relativeKey(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/value/ValueArray;

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 272
    :goto_1
    iget v6, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->keyColumns:I

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_4

    .line 273
    iget-object v6, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->columnIds:[I

    aget v6, v6, v5

    .line 274
    invoke-interface {p2, v6}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 278
    :cond_2
    invoke-virtual {v3}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v7

    aget-object v7, v7, v5

    .line 279
    iget-object v8, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {v8, v7, v6}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result v6

    if-lez v6, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    add-int/2addr p3, p3

    move-object v0, v3

    goto :goto_0

    :cond_5
    if-le p3, v1, :cond_6

    .line 291
    div-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 294
    :cond_6
    invoke-virtual {v2, v3}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    .line 295
    invoke-virtual {v2, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueArray;

    if-nez v0, :cond_1

    goto :goto_3

    :cond_7
    move-object v0, v3

    :goto_3
    if-nez v0, :cond_8

    .line 305
    new-instance p2, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p0, p1, p3, p4}, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVSecondaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/result/SearchRow;)V

    return-object p2

    .line 309
    :cond_8
    new-instance p2, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;

    invoke-virtual {v2, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3, p4}, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVSecondaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/result/SearchRow;)V

    return-object p2
.end method

.method private openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/h2/mvstore/MVMap<",
            "Lorg/h2/value/Value;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation

    .line 158
    iget v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->keyColumns:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 159
    :goto_0
    iget-object v3, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 160
    iget-object v3, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    aget-object v3, v3, v2

    iget v3, v3, Lorg/h2/table/IndexColumn;->sortType:I

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_0
    iget v2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->keyColumns:I

    add-int/lit8 v2, v2, -0x1

    aput v1, v0, v2

    .line 163
    new-instance v1, Lorg/h2/mvstore/db/ValueDataType;

    iget-object v2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->database:Lorg/h2/engine/Database;

    invoke-direct {v1, v2, v3, v0}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 165
    new-instance v0, Lorg/h2/mvstore/db/ValueDataType;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 166
    new-instance v2, Lorg/h2/mvstore/MVMap$Builder;

    invoke-direct {v2}, Lorg/h2/mvstore/MVMap$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVMap$Builder;->keyType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/h2/mvstore/MVMap$Builder;->valueType(Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap$Builder;

    move-result-object v0

    .line 168
    iget-object v2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getKeyType()Lorg/h2/mvstore/type/DataType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/db/ValueDataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const-string p1, "Incompatible key type"

    .line 171
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 7

    .line 183
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 184
    invoke-direct {p0, p2}, Lorg/h2/mvstore/db/MVSecondaryIndex;->convertToKey(Lorg/h2/result/SearchRow;)Lorg/h2/value/ValueArray;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->indexType:Lorg/h2/index/IndexType;

    invoke-virtual {v1}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0, p2}, Lorg/h2/mvstore/db/MVSecondaryIndex;->convertToKey(Lorg/h2/result/SearchRow;)Lorg/h2/value/ValueArray;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v3

    iget v4, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->keyColumns:I

    sub-int/2addr v4, v2

    const-wide/high16 v5, -0x8000000000000000L

    invoke-static {v5, v6}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v5

    aput-object v5, v3, v4

    .line 190
    invoke-direct {p0, p2, p1, v1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->checkUnique(Lorg/h2/result/SearchRow;Lorg/h2/mvstore/db/TransactionStore$TransactionMap;Lorg/h2/value/ValueArray;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 193
    :goto_0
    :try_start_0
    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {p1, v0, v3}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->indexType:Lorg/h2/index/IndexType;

    invoke-virtual {v0}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->keyIterator(Ljava/lang/Object;Z)Ljava/util/Iterator;

    move-result-object v0

    .line 199
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/ValueArray;

    .line 201
    invoke-virtual {p0, v1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->convertToSearchRow(Lorg/h2/value/ValueArray;)Lorg/h2/result/SearchRow;

    move-result-object v2

    .line 202
    invoke-virtual {p0, p2, v2}, Lorg/h2/mvstore/db/MVSecondaryIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 205
    :cond_1
    invoke-virtual {p0, v2}, Lorg/h2/mvstore/db/MVSecondaryIndex;->containsNullAndAllowMultipleNull(Lorg/h2/result/SearchRow;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->isSameTransaction(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 212
    :cond_3
    invoke-virtual {p1, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 214
    invoke-virtual {v1}, Lorg/h2/value/ValueArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    const p1, 0x16013

    .line 216
    iget-object p2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p2}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_2
    return-void

    :catch_0
    move-exception p1

    .line 195
    iget-object p2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/db/MVTable;->convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addBufferedRows(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-static {p1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v1

    .line 107
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    const/4 v3, 0x0

    .line 108
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 109
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/h2/mvstore/db/MVSecondaryIndex;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v4

    const/4 v5, 0x0

    .line 110
    invoke-virtual {v4, v5}, Lorg/h2/mvstore/MVMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v4

    .line 111
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    new-instance v5, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;

    invoke-direct {v5, p0, v1}, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;-><init>(Lorg/h2/mvstore/db/MVSecondaryIndex;Lorg/h2/value/CompareMode;)V

    .line 113
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/value/Value;

    iput-object v6, v5, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->value:Lorg/h2/value/Value;

    .line 114
    iput-object v4, v5, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->next:Ljava/util/Iterator;

    .line 115
    iput v3, v5, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->sourceId:I

    .line 116
    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;

    .line 122
    iget-object v1, p1, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->value:Lorg/h2/value/Value;

    .line 124
    iget-object v3, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->indexType:Lorg/h2/index/IndexType;

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    move-object v3, v1

    check-cast v3, Lorg/h2/value/ValueArray;

    invoke-virtual {v3}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, [Lorg/h2/value/Value;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/h2/value/Value;

    .line 128
    iget v4, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->keyColumns:I

    add-int/lit8 v4, v4, -0x1

    const-wide/high16 v5, -0x8000000000000000L

    invoke-static {v5, v6}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v5

    aput-object v5, v3, v4

    .line 129
    invoke-static {v3}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v3

    .line 130
    move-object v4, v1

    check-cast v4, Lorg/h2/value/ValueArray;

    invoke-virtual {p0, v4}, Lorg/h2/mvstore/db/MVSecondaryIndex;->convertToSearchRow(Lorg/h2/value/ValueArray;)Lorg/h2/result/SearchRow;

    move-result-object v4

    .line 131
    iget-object v5, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-direct {p0, v4, v5, v3}, Lorg/h2/mvstore/db/MVSecondaryIndex;->checkUnique(Lorg/h2/result/SearchRow;Lorg/h2/mvstore/db/TransactionStore$TransactionMap;Lorg/h2/value/ValueArray;)V

    .line 134
    :cond_2
    iget-object v3, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {v3, v1, v4}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->putCommitted(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p1, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->next:Ljava/util/Iterator;

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 138
    invoke-virtual {v2, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-direct {p0, v0}, Lorg/h2/mvstore/db/MVSecondaryIndex;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/MVStore;->removeMap(Lorg/h2/mvstore/MVMap;)V

    goto :goto_2

    :cond_3
    return-void

    .line 143
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    .line 144
    invoke-virtual {v2, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 145
    iput-object v1, p1, Lorg/h2/mvstore/db/MVSecondaryIndex$1Source;->value:Lorg/h2/value/Value;

    .line 146
    invoke-virtual {v2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    invoke-direct {p0, v1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVStore;->removeMap(Lorg/h2/mvstore/MVMap;)V

    goto :goto_3

    .line 153
    :cond_5
    throw p1
.end method

.method public addRowsToBuffer(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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

    .line 80
    invoke-direct {p0, p2}, Lorg/h2/mvstore/db/MVSecondaryIndex;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object p2

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/Row;

    .line 82
    invoke-direct {p0, v0}, Lorg/h2/mvstore/db/MVSecondaryIndex;->convertToKey(Lorg/h2/result/SearchRow;)Lorg/h2/value/ValueArray;

    move-result-object v0

    .line 83
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {p2, v0, v1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public canFindNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

.method convertToSearchRow(Lorg/h2/value/ValueArray;)Lorg/h2/result/SearchRow;
    .locals 5

    .line 336
    invoke-virtual {p1}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p1

    .line 337
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTable;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v0

    .line 338
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/h2/result/SearchRow;->setKey(J)V

    .line 339
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getColumns()[Lorg/h2/table/Column;

    move-result-object v1

    const/4 v2, 0x0

    .line 340
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 341
    aget-object v3, v1, v2

    .line 342
    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v3

    .line 343
    aget-object v4, p1, v2

    .line 344
    invoke-interface {v0, v3, v4}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/h2/mvstore/db/MVSecondaryIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;ZLorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 5

    .line 388
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 389
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lorg/h2/value/Value;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 392
    new-instance p2, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0, v2}, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVSecondaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/result/SearchRow;)V

    return-object p2

    .line 395
    :cond_1
    move-object v3, v1

    check-cast v3, Lorg/h2/value/ValueArray;

    invoke-virtual {v3}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v3, v4, :cond_2

    .line 400
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 401
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v0, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2, v2}, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVSecondaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/result/SearchRow;)V

    .line 403
    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVSecondaryIndex$MVStoreCursor;->next()Z

    return-object v0

    :cond_2
    if-eqz p2, :cond_3

    .line 398
    invoke-virtual {v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    check-cast v1, Lorg/h2/value/Value;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2
.end method

.method public findNext(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    const/4 v0, 0x1

    .line 444
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/h2/mvstore/db/MVSecondaryIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;ZLorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 12
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

    const-wide/16 v0, 0xa

    move-object v11, p0

    .line 359
    :try_start_0
    iget-object v2, v11, Lorg/h2/mvstore/db/MVSecondaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLongMax()J

    move-result-wide v4

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v2 .. v10}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long v2, v2, v0

    long-to-double v0, v2

    return-wide v0

    :catch_0
    move-exception v0

    const v1, 0x15f97

    const/4 v2, 0x0

    .line 362
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
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
            "Lorg/h2/value/Value;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 460
    iget-object p1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    return-object p1

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    .line 463
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, v1, v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getInstance(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 418
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 419
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 3

    .line 425
    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLongMax()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const v1, 0x15f97

    const/4 v2, 0x0

    .line 427
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getTable()Lorg/h2/mvstore/db/MVTable;
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    return-object v0
.end method

.method public bridge synthetic getTable()Lorg/h2/table/Table;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getTable()Lorg/h2/mvstore/db/MVTable;

    move-result-object v0

    return-object v0
.end method

.method public needRebuild()Z
    .locals 6

    const/4 v0, 0x0

    .line 410
    :try_start_0
    iget-object v1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

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

    .line 412
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 2

    .line 368
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    iget-object v1, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v1, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    .line 371
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V

    :cond_0
    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    .line 239
    invoke-direct {p0, p2}, Lorg/h2/mvstore/db/MVSecondaryIndex;->convertToKey(Lorg/h2/result/SearchRow;)Lorg/h2/value/ValueArray;

    move-result-object v0

    .line 240
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 242
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x16000

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getSQL()Ljava/lang/String;

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

    .line 248
    iget-object p2, p0, Lorg/h2/mvstore/db/MVSecondaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/db/MVTable;->convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVSecondaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->clear()V

    return-void
.end method
