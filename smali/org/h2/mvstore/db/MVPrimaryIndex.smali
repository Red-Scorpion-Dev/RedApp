.class public Lorg/h2/mvstore/db/MVPrimaryIndex;
.super Lorg/h2/index/BaseIndex;
.source "MVPrimaryIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;
    }
.end annotation


# static fields
.field static final MAX:Lorg/h2/value/ValueLong;

.field static final MIN:Lorg/h2/value/ValueLong;

.field static final ZERO:Lorg/h2/value/ValueLong;


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

.field private lastKey:J

.field private mainIndexColumn:I

.field private final mapName:Ljava/lang/String;

.field private final mvTable:Lorg/h2/mvstore/db/MVTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 43
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    sput-object v0, Lorg/h2/mvstore/db/MVPrimaryIndex;->MIN:Lorg/h2/value/ValueLong;

    const-wide v0, 0x7fffffffffffffffL

    .line 48
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    sput-object v0, Lorg/h2/mvstore/db/MVPrimaryIndex;->MAX:Lorg/h2/value/ValueLong;

    const-wide/16 v0, 0x0

    .line 53
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    sput-object v0, Lorg/h2/mvstore/db/MVPrimaryIndex;->ZERO:Lorg/h2/value/ValueLong;

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/mvstore/db/MVTable;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 8

    .line 62
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    .line 63
    iput-object p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/h2/mvstore/db/MVTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/h2/mvstore/db/MVPrimaryIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 65
    array-length p3, p4

    new-array p3, p3, [I

    const/4 p5, 0x0

    const/4 v0, 0x0

    .line 66
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 67
    aput p5, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    new-instance p4, Lorg/h2/mvstore/db/ValueDataType;

    const/4 p5, 0x0

    invoke-direct {p4, p5, p5, p5}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 70
    new-instance v0, Lorg/h2/mvstore/db/ValueDataType;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "table."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mapName:Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p1, p5}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    .line 74
    iget-object p3, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mapName:Ljava/lang/String;

    invoke-virtual {p1, p3, p4, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    .line 75
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    .line 76
    invoke-virtual {p2}, Lorg/h2/mvstore/db/MVTable;->isPersistData()Z

    move-result p1

    if-nez p1, :cond_1

    .line 77
    iget-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iget-object p1, p1, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/MVMap;->setVolatile(Z)V

    .line 79
    :cond_1
    iget-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->lastKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    if-nez p1, :cond_2

    const-wide/16 p1, 0x0

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p1

    :goto_1
    iput-wide p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->lastKey:J

    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 5

    .line 108
    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 110
    iget-wide v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->lastKey:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->lastKey:J

    invoke-virtual {p2, v0, v1}, Lorg/h2/result/Row;->setKey(J)V

    goto :goto_0

    .line 113
    :cond_0
    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    invoke-virtual {p2, v0}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    .line 114
    invoke-virtual {p2, v0, v1}, Lorg/h2/result/Row;->setKey(J)V

    .line 117
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTable;->getContainsLargeObject()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p2}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_4

    .line 119
    invoke-virtual {p2, v0}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/h2/value/Value;->copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    invoke-virtual {p1, v3}, Lorg/h2/engine/Session;->removeAtCommitStop(Lorg/h2/value/Value;)V

    :cond_2
    if-eq v2, v3, :cond_3

    .line 125
    invoke-virtual {p2, v0, v3}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 131
    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getLatest(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    if-eqz v1, :cond_6

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PRIMARY KEY ON "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    if-ltz p2, :cond_5

    iget p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v0, v0

    if-ge p2, v0, :cond_5

    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    const/16 p2, 0x5bd1

    .line 138
    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    .line 139
    invoke-virtual {p1, p0}, Lorg/h2/message/DbException;->setSource(Ljava/lang/Object;)V

    .line 140
    throw p1

    .line 143
    :cond_6
    :try_start_0
    invoke-virtual {p2}, Lorg/h2/result/Row;->getValueList()[Lorg/h2/value/Value;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    iget-wide v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->lastKey:J

    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->lastKey:J

    return-void

    :catch_0
    move-exception p1

    .line 145
    iget-object p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/db/MVTable;->convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

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
    .locals 2

    if-nez p2, :cond_0

    .line 176
    sget-object p2, Lorg/h2/mvstore/db/MVPrimaryIndex;->MIN:Lorg/h2/value/ValueLong;

    goto :goto_0

    .line 177
    :cond_0
    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    if-gez v0, :cond_1

    .line 178
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p2

    goto :goto_0

    .line 180
    :cond_1
    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    invoke-interface {p2, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueLong;

    if-nez v0, :cond_2

    .line 182
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    if-nez p3, :cond_3

    .line 188
    sget-object p3, Lorg/h2/mvstore/db/MVPrimaryIndex;->MAX:Lorg/h2/value/ValueLong;

    goto :goto_1

    .line 189
    :cond_3
    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    if-gez v0, :cond_4

    .line 190
    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p3

    goto :goto_1

    .line 192
    :cond_4
    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    invoke-interface {p3, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueLong;

    if-nez v0, :cond_5

    .line 194
    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p3

    goto :goto_1

    :cond_5
    move-object p3, v0

    .line 199
    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    .line 200
    new-instance v1, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;

    invoke-virtual {v0, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->entryIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/value/ValueLong;)V

    return-object v1
.end method

.method find(Lorg/h2/engine/Session;Lorg/h2/value/ValueLong;Lorg/h2/value/ValueLong;)Lorg/h2/index/Cursor;
    .locals 2

    .line 350
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    .line 351
    new-instance v1, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;

    invoke-virtual {v0, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->entryIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/value/ValueLong;)V

    return-object v1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 3

    .line 261
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 262
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->firstKey()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    check-cast p2, Lorg/h2/value/Value;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->lastKey()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :goto_1
    check-cast p2, Lorg/h2/value/ValueLong;

    if-nez p2, :cond_1

    .line 264
    new-instance p2, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v0, v1}, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/value/ValueLong;)V

    return-object p2

    .line 267
    :cond_1
    invoke-virtual {v0, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/value/Value;

    .line 268
    new-instance v1, Lorg/h2/mvstore/DataUtils$MapEntry;

    invoke-direct {v1, p2, v0}, Lorg/h2/mvstore/DataUtils$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 270
    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 271
    new-instance v1, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0, p2}, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/value/ValueLong;)V

    .line 272
    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->next()Z

    return-object v1
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 0

    const/4 p1, -0x1

    return p1
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

    .line 223
    :try_start_0
    iget-object v2, v11, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLongMax()J

    move-result-wide v4

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v2 .. v10}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

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

    .line 226
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getKey(Lorg/h2/result/SearchRow;Lorg/h2/value/ValueLong;Lorg/h2/value/ValueLong;)Lorg/h2/value/ValueLong;
    .locals 0

    if-nez p1, :cond_0

    return-object p2

    .line 332
    :cond_0
    iget p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    invoke-interface {p1, p2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 335
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, p1, :cond_1

    return-object p3

    :cond_1
    const/4 p1, 0x5

    .line 338
    invoke-virtual {p2, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueLong;

    return-object p1

    .line 334
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getMainIndexColumn()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    return v0
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

    .line 367
    iget-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    return-object p1

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    .line 370
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, v1, v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getInstance(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    return-object p1
.end method

.method public getMapName()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mapName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tableScan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 2

    .line 210
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    .line 211
    invoke-static {p2, p3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/value/Value;

    .line 212
    check-cast v0, Lorg/h2/value/ValueArray;

    .line 213
    invoke-virtual {v0}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    .line 214
    invoke-virtual {p1, p2, p3}, Lorg/h2/result/Row;->setKey(J)V

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 283
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 302
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRowCountMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountMax()J
    .locals 3

    .line 294
    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLongMax()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const v1, 0x15f97

    const/4 v2, 0x0

    .line 296
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getTable()Lorg/h2/mvstore/db/MVTable;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    return-object v0
.end method

.method public bridge synthetic getTable()Lorg/h2/table/Table;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getTable()Lorg/h2/mvstore/db/MVTable;

    move-result-object v0

    return-object v0
.end method

.method public isRowIdIndex()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 2

    .line 238
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    iget-object v1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v1, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    .line 241
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V

    :cond_0
    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 4

    .line 152
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTable;->getContainsLargeObject()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p2}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 154
    invoke-virtual {p2, v0}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {p1, v2}, Lorg/h2/engine/Session;->removeAtCommit(Lorg/h2/value/Value;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 162
    :try_start_0
    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const p1, 0x16000

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getSQL()Ljava/lang/String;

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

    .line 168
    iget-object p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/db/MVTable;->convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setMainIndexColumn(I)V
    .locals 0

    .line 94
    iput p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    .line 247
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    .line 248
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTable;->getContainsLargeObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V

    .line 251
    :cond_0
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->clear()V

    return-void
.end method
