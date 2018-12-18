.class public abstract Lorg/h2/index/BaseIndex;
.super Lorg/h2/schema/SchemaObjectBase;
.source "BaseIndex.java"

# interfaces
.implements Lorg/h2/index/Index;


# instance fields
.field protected columnIds:[I

.field protected columns:[Lorg/h2/table/Column;

.field protected indexColumns:[Lorg/h2/table/IndexColumn;

.field protected indexType:Lorg/h2/index/IndexType;

.field protected isMultiVersion:Z

.field protected table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/h2/schema/SchemaObjectBase;-><init>()V

    return-void
.end method

.method protected static checkIndexColumnTypes([Lorg/h2/table/IndexColumn;)V
    .locals 5

    .line 76
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 77
    iget-object v3, v2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getType()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    const/16 v4, 0xf

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Index on BLOB or CLOB column: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method private compareValues(Lorg/h2/value/Value;Lorg/h2/value/Value;I)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, p1, p2}, Lorg/h2/table/Table;->compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_1

    neg-int p1, p1

    :cond_1
    return p1
.end method

.method private getColumnListSQL()Ljava/lang/String;
    .locals 6

    .line 386
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 387
    iget-object v1, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, ", "

    .line 388
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v4}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canFindNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScan()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public commit(ILorg/h2/result/Row;)V
    .locals 0

    return-void
.end method

.method compareKeys(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I
    .locals 5

    .line 346
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    .line 347
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 349
    iget-boolean v0, p0, Lorg/h2/index/BaseIndex;->isMultiVersion:Z

    if-eqz v0, :cond_0

    .line 350
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result p1

    .line 351
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result p2

    .line 352
    invoke-static {p2, p1}, Lorg/h2/util/MathUtils;->compareInt(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 290
    :cond_0
    iget-object v1, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 291
    iget-object v3, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    aget v3, v3, v2

    .line 292
    invoke-interface {p1, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    .line 293
    invoke-interface {p2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    if-eqz v4, :cond_3

    if-nez v3, :cond_1

    goto :goto_1

    .line 298
    :cond_1
    iget-object v5, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    aget-object v5, v5, v2

    iget v5, v5, Lorg/h2/table/IndexColumn;->sortType:I

    invoke-direct {p0, v4, v3, v5}, Lorg/h2/index/BaseIndex;->compareValues(Lorg/h2/value/Value;Lorg/h2/value/Value;I)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    return v0
.end method

.method protected containsNullAndAllowMultipleNull(Lorg/h2/result/SearchRow;)Z
    .locals 7

    .line 316
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    .line 317
    iget-boolean v1, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNull:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 319
    :cond_0
    iget-boolean v0, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNullExceptAllColumnsAreNull:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    .line 321
    invoke-interface {p1, v5}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    .line 322
    sget-object v6, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v5, v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 328
    :cond_3
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget v5, v0, v4

    .line 329
    invoke-interface {p1, v5}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    .line 330
    sget-object v6, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v5, v6, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method public createLookupBatch(Lorg/h2/table/TableFilter;)Lorg/h2/index/IndexLookupBatch;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 128
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/index/BaseIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findNext(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 144
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 3

    .line 372
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 373
    iget-object v2, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/h2/table/Column;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getColumns()[Lorg/h2/table/Column;
    .locals 1

    .line 423
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    return-object v0
.end method

.method protected final getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IJ[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Z",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p6

    const-wide/16 v4, 0x3e8

    add-long v4, p2, v4

    const-wide/16 v6, 0x64

    const/4 v12, 0x1

    if-eqz p1, :cond_7

    .line 169
    iget-object v14, v0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v14, v14

    move-wide/from16 v16, v4

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v13, v14, :cond_5

    .line 170
    iget-object v10, v0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    aget-object v10, v10, v13

    .line 171
    invoke-virtual {v10}, Lorg/h2/table/Column;->getColumnId()I

    move-result v11

    .line 172
    aget v11, p1, v11

    and-int/lit8 v8, v11, 0x1

    const-wide/16 v20, 0x2

    if-ne v8, v12, :cond_2

    .line 174
    iget-object v8, v0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v8, v8

    sub-int/2addr v8, v12

    if-ne v13, v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/h2/index/BaseIndex;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v6, 0x3

    const-wide/16 v18, 0x0

    goto :goto_1

    :cond_0
    rsub-int/lit8 v8, v15, 0x64

    .line 178
    invoke-virtual {v10}, Lorg/h2/table/Column;->getSelectivity()I

    move-result v9

    rsub-int/lit8 v9, v9, 0x64

    mul-int v8, v8, v9

    div-int/lit8 v8, v8, 0x64

    rsub-int/lit8 v8, v8, 0x64

    int-to-long v9, v8

    mul-long v9, v9, v4

    .line 180
    div-long/2addr v9, v6

    const-wide/16 v6, 0x1

    const-wide/16 v18, 0x0

    cmp-long v11, v9, v18

    if-gtz v11, :cond_1

    move-wide v9, v6

    .line 184
    :cond_1
    div-long v9, v4, v9

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long v16, v6, v20

    add-int/lit8 v13, v13, 0x1

    move v15, v8

    const-wide/16 v6, 0x64

    goto :goto_0

    :cond_2
    const-wide/16 v18, 0x0

    and-int/lit8 v1, v11, 0x6

    const/4 v6, 0x6

    if-ne v1, v6, :cond_3

    const-wide/16 v6, 0x4

    .line 186
    div-long v6, v4, v6

    add-long v6, v6, v20

    goto :goto_1

    :cond_3
    and-int/lit8 v1, v11, 0x2

    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    const-wide/16 v6, 0x3

    .line 189
    div-long v6, v4, v6

    add-long v6, v6, v20

    goto :goto_1

    :cond_4
    const-wide/16 v6, 0x3

    const/4 v1, 0x4

    and-int/lit8 v8, v11, 0x4

    if-ne v8, v1, :cond_6

    .line 192
    div-long v6, v4, v6

    goto :goto_1

    :cond_5
    const-wide/16 v18, 0x0

    :cond_6
    move-wide/from16 v6, v16

    goto :goto_1

    :cond_7
    const-wide/16 v18, 0x0

    move-wide v6, v4

    :goto_1
    if-eqz v3, :cond_8

    const-wide/16 v8, 0xa

    .line 204
    div-long/2addr v4, v8

    const-wide/16 v8, 0x64

    add-long/2addr v8, v4

    goto :goto_2

    :cond_8
    move-wide/from16 v8, v18

    :goto_2
    if-eqz v3, :cond_f

    if-nez p7, :cond_f

    .line 209
    invoke-virtual/range {p6 .. p6}, Lorg/h2/result/SortOrder;->getSortTypes()[I

    move-result-object v1

    if-nez p4, :cond_9

    const/4 v2, 0x0

    goto :goto_3

    .line 210
    :cond_9
    aget-object v2, p4, p5

    .line 211
    :goto_3
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_4
    if-ge v5, v4, :cond_e

    .line 212
    iget-object v11, v0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v11, v11

    if-lt v5, v11, :cond_a

    goto :goto_6

    .line 219
    :cond_a
    invoke-virtual {v3, v5, v2}, Lorg/h2/result/SortOrder;->getColumn(ILorg/h2/table/TableFilter;)Lorg/h2/table/Column;

    move-result-object v11

    if-nez v11, :cond_b

    :goto_5
    const/4 v1, 0x0

    goto :goto_7

    .line 224
    :cond_b
    iget-object v13, v0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    aget-object v13, v13, v5

    .line 225
    iget-object v14, v13, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v11, v14}, Lorg/h2/table/Column;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_5

    .line 229
    :cond_c
    aget v11, v1, v5

    .line 230
    iget v13, v13, Lorg/h2/table/IndexColumn;->sortType:I

    if-eq v11, v13, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_f

    rsub-int/lit8 v1, v10, 0x64

    int-to-long v8, v1

    :cond_f
    if-nez p7, :cond_14

    if-eqz p8, :cond_14

    .line 247
    invoke-virtual/range {p8 .. p8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 249
    invoke-virtual/range {p8 .. p8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Column;

    .line 250
    invoke-virtual {v2}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v4

    if-ne v3, v4, :cond_10

    .line 252
    iget-object v3, v0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_12

    aget-object v10, v3, v5

    if-ne v2, v10, :cond_11

    const/4 v2, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_12
    const/4 v2, 0x0

    :goto_9
    if-nez v2, :cond_10

    const/4 v1, 0x0

    goto :goto_a

    :cond_13
    const/4 v1, 0x1

    :goto_a
    if-eqz v1, :cond_14

    const/4 v12, 0x0

    :cond_14
    const-wide/16 v1, 0x14

    if-eqz p7, :cond_15

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    goto :goto_b

    :cond_15
    if-eqz v12, :cond_16

    add-long/2addr v6, v6

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    add-long/2addr v6, v8

    .line 280
    iget-object v1, v0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    rsub-int/lit8 v1, v1, 0x14

    int-to-long v1, v1

    add-long/2addr v6, v1

    :goto_b
    return-wide v6
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 413
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/index/BaseIndex;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/BaseIndex;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lorg/h2/index/BaseIndex;->indexType:Lorg/h2/index/IndexType;

    invoke-virtual {v1}, Lorg/h2/index/IndexType;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    iget-object v1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IF NOT EXISTS "

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ON "

    .line 403
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget-object p1, p0, Lorg/h2/index/BaseIndex;->comment:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, " COMMENT "

    .line 405
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/index/BaseIndex;->comment:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p1, 0x28

    .line 407
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/h2/index/BaseIndex;->getColumnListSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/index/BaseIndex;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/h2/index/BaseIndex;->getColumnListSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " VALUES "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 p1, 0x5bd1

    .line 103
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    .line 104
    invoke-virtual {p1, p0}, Lorg/h2/message/DbException;->setSource(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getIndexColumns()[Lorg/h2/table/IndexColumn;
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    return-object v0
.end method

.method public getIndexType()Lorg/h2/index/IndexType;
    .locals 1

    .line 428
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->indexType:Lorg/h2/index/IndexType;

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lorg/h2/index/BaseIndex;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 0

    .line 452
    invoke-virtual {p0}, Lorg/h2/index/BaseIndex;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 2

    .line 54
    invoke-virtual {p1}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p2, p3, v1}, Lorg/h2/index/BaseIndex;->initSchemaObjectBase(Lorg/h2/schema/Schema;ILjava/lang/String;I)V

    .line 55
    iput-object p5, p0, Lorg/h2/index/BaseIndex;->indexType:Lorg/h2/index/IndexType;

    .line 56
    iput-object p1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    if-eqz p4, :cond_0

    .line 58
    iput-object p4, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    .line 59
    array-length p1, p4

    new-array p1, p1, [Lorg/h2/table/Column;

    iput-object p1, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    .line 60
    iget-object p1, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length p1, p1

    .line 61
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 63
    aget-object p3, p4, p2

    iget-object p3, p3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 64
    iget-object p5, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    aput-object p3, p5, p2

    .line 65
    iget-object p5, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    invoke-virtual {p3}, Lorg/h2/table/Column;->getColumnId()I

    move-result p3

    aput p3, p5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isHidden()Z
    .locals 1

    .line 457
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isRowIdIndex()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, p0}, Lorg/h2/table/Table;->removeIndex(Lorg/h2/index/Index;)V

    .line 116
    invoke-virtual {p0, p1}, Lorg/h2/index/BaseIndex;->remove(Lorg/h2/engine/Session;)V

    .line 117
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/index/BaseIndex;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    return-void
.end method

.method setMultiVersion(Z)V
    .locals 0

    .line 447
    iput-boolean p1, p0, Lorg/h2/index/BaseIndex;->isMultiVersion:Z

    return-void
.end method

.method public setSortedInsertMode(Z)V
    .locals 0

    return-void
.end method
