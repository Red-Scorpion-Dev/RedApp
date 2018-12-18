.class public Lorg/h2/index/ViewIndex;
.super Lorg/h2/index/BaseIndex;
.source "ViewIndex.java"

# interfaces
.implements Lorg/h2/index/SpatialIndex;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_AGE_NANOS:J


# instance fields
.field private final createSession:Lorg/h2/engine/Session;

.field private final evaluatedAt:J

.field private final indexMasks:[I

.field private final originalParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private query:Lorg/h2/command/dml/Query;

.field private final querySQL:Ljava/lang/String;

.field private recursive:Z

.field private final view:Lorg/h2/table/TableView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lorg/h2/index/ViewIndex;->MAX_AGE_NANOS:J

    return-void
.end method

.method public constructor <init>(Lorg/h2/table/TableView;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/table/TableView;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;Z)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/h2/index/ViewIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 67
    iput-object p1, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    .line 68
    iput-object p2, p0, Lorg/h2/index/ViewIndex;->querySQL:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    .line 70
    iput-boolean p4, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    .line 71
    new-array p1, v0, [Lorg/h2/table/Column;

    iput-object p1, p0, Lorg/h2/index/ViewIndex;->columns:[Lorg/h2/table/Column;

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lorg/h2/index/ViewIndex;->createSession:Lorg/h2/engine/Session;

    .line 73
    iput-object p1, p0, Lorg/h2/index/ViewIndex;->indexMasks:[I

    const-wide/high16 p1, -0x8000000000000000L

    .line 76
    iput-wide p1, p0, Lorg/h2/index/ViewIndex;->evaluatedAt:J

    return-void
.end method

.method public constructor <init>(Lorg/h2/table/TableView;Lorg/h2/index/ViewIndex;Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)V
    .locals 7

    .line 92
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    const/4 v0, 0x0

    .line 93
    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/h2/index/ViewIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 94
    iput-object p1, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    .line 95
    iget-object v1, p2, Lorg/h2/index/ViewIndex;->querySQL:Ljava/lang/String;

    iput-object v1, p0, Lorg/h2/index/ViewIndex;->querySQL:Ljava/lang/String;

    .line 96
    iget-object v1, p2, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    .line 97
    iget-boolean p2, p2, Lorg/h2/index/ViewIndex;->recursive:Z

    iput-boolean p2, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    .line 98
    iput-object p4, p0, Lorg/h2/index/ViewIndex;->indexMasks:[I

    .line 99
    iput-object p3, p0, Lorg/h2/index/ViewIndex;->createSession:Lorg/h2/engine/Session;

    .line 100
    new-array p2, v0, [Lorg/h2/table/Column;

    iput-object p2, p0, Lorg/h2/index/ViewIndex;->columns:[Lorg/h2/table/Column;

    .line 101
    iget-boolean p2, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    if-nez p2, :cond_0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    .line 102
    invoke-direct/range {v0 .. v5}, Lorg/h2/index/ViewIndex;->getQuery(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)Lorg/h2/command/dml/Query;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    .line 108
    :cond_0
    iget-boolean p2, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/h2/table/TableView;->getTopQuery()Lorg/h2/command/dml/Query;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    goto :goto_1

    :cond_2
    :goto_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_1
    iput-wide p1, p0, Lorg/h2/index/ViewIndex;->evaluatedAt:J

    return-void
.end method

.method private find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    .line 284
    iget-boolean v0, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0, p2, p3}, Lorg/h2/index/ViewIndex;->findRecursive(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1

    .line 287
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/index/ViewIndex;->setupQueryParameters(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    .line 288
    iget-object p1, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object p1

    .line 289
    new-instance p4, Lorg/h2/index/ViewCursor;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/h2/index/ViewCursor;-><init>(Lorg/h2/index/ViewIndex;Lorg/h2/result/LocalResult;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    return-object p4
.end method

.method private findRecursive(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 5

    .line 183
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    invoke-virtual {v0}, Lorg/h2/table/TableView;->getRecursiveResult()Lorg/h2/result/LocalResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->reset()V

    .line 186
    new-instance v1, Lorg/h2/index/ViewCursor;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/h2/index/ViewCursor;-><init>(Lorg/h2/index/ViewIndex;Lorg/h2/result/LocalResult;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    return-object v1

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Lorg/h2/command/Parser;

    iget-object v2, p0, Lorg/h2/index/ViewIndex;->createSession:Lorg/h2/engine/Session;

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    .line 190
    invoke-virtual {v0, v1}, Lorg/h2/command/Parser;->setRightsChecked(Z)V

    .line 191
    iget-object v2, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lorg/h2/command/Parser;->setSuppliedParameterList(Ljava/util/ArrayList;)V

    .line 192
    iget-object v2, p0, Lorg/h2/index/ViewIndex;->querySQL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/command/Parser;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v0

    check-cast v0, Lorg/h2/command/dml/Query;

    iput-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    .line 194
    :cond_1
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->isUnion()Z

    move-result v0

    const v2, 0xa411

    if-eqz v0, :cond_6

    .line 198
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    check-cast v0, Lorg/h2/command/dml/SelectUnion;

    .line 199
    invoke-virtual {v0}, Lorg/h2/command/dml/SelectUnion;->getUnionType()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 203
    invoke-virtual {v0}, Lorg/h2/command/dml/SelectUnion;->getLeft()Lorg/h2/command/dml/Query;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->disableCache()V

    const/4 v3, 0x0

    .line 206
    invoke-virtual {v1, v3}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object v1

    .line 207
    invoke-virtual {v0}, Lorg/h2/command/dml/SelectUnion;->getEmptyResult()Lorg/h2/result/LocalResult;

    move-result-object v4

    const v2, 0x7fffffff

    .line 210
    invoke-virtual {v4, v2}, Lorg/h2/result/LocalResult;->setMaxMemoryRows(I)V

    .line 211
    :goto_0
    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v0}, Lorg/h2/command/dml/SelectUnion;->getRight()Lorg/h2/command/dml/Query;

    move-result-object v0

    .line 215
    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->reset()V

    .line 216
    iget-object v2, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    invoke-virtual {v2, v1}, Lorg/h2/table/TableView;->setRecursiveResult(Lorg/h2/result/LocalResult;)V

    .line 218
    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->disableCache()V

    .line 220
    :goto_1
    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->getRowCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 230
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/table/TableView;->setRecursiveResult(Lorg/h2/result/LocalResult;)V

    .line 231
    invoke-virtual {v4}, Lorg/h2/result/LocalResult;->done()V

    .line 232
    new-instance v0, Lorg/h2/index/ViewCursor;

    invoke-direct {v0, p0, v4, p1, p2}, Lorg/h2/index/ViewCursor;-><init>(Lorg/h2/index/ViewIndex;Lorg/h2/result/LocalResult;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    return-object v0

    .line 224
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_2

    .line 227
    :cond_4
    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->reset()V

    .line 228
    iget-object v2, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    invoke-virtual {v2, v1}, Lorg/h2/table/TableView;->setRecursiveResult(Lorg/h2/result/LocalResult;)V

    goto :goto_1

    :cond_5
    const-string p1, "recursive queries without UNION ALL"

    .line 200
    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_6
    const-string p1, "recursive queries without UNION ALL"

    .line 195
    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private getQuery(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)Lorg/h2/command/dml/Query;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p2

    .line 309
    iget-object v1, v0, Lorg/h2/index/ViewIndex;->querySQL:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lorg/h2/index/ViewIndex;->prepareSubQuery(Ljava/lang/String;Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)Lorg/h2/command/dml/Query;

    move-result-object v1

    if-nez v7, :cond_0

    return-object v1

    .line 313
    :cond_0
    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->allowGlobalConditions()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 316
    :cond_1
    iget-object v2, v0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    iget-object v3, v0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/h2/table/TableView;->getParameterOffset(Ljava/util/ArrayList;)I

    move-result v2

    .line 317
    new-instance v3, Lorg/h2/util/IntArray;

    invoke-direct {v3}, Lorg/h2/util/IntArray;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 319
    :goto_0
    array-length v8, v7

    const/4 v9, 0x1

    if-ge v5, v8, :cond_4

    .line 320
    aget v8, v7, v5

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 325
    invoke-virtual {v3, v5}, Lorg/h2/util/IntArray;->add(I)V

    .line 326
    invoke-static {v8}, Ljava/lang/Integer;->bitCount(I)I

    move-result v8

    if-le v8, v9, :cond_3

    .line 328
    invoke-virtual {v3, v5}, Lorg/h2/util/IntArray;->add(I)V

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 331
    :cond_4
    invoke-virtual {v3}, Lorg/h2/util/IntArray;->size()I

    move-result v5

    .line 332
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v10, 0x0

    :cond_5
    :goto_2
    if-ge v10, v5, :cond_9

    .line 334
    invoke-virtual {v3, v10}, Lorg/h2/util/IntArray;->get(I)I

    move-result v11

    .line 335
    iget-object v12, v0, Lorg/h2/index/ViewIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v12, v11}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    aget v12, v7, v11

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_6

    .line 338
    new-instance v13, Lorg/h2/expression/Parameter;

    add-int v14, v2, v10

    invoke-direct {v13, v14}, Lorg/h2/expression/Parameter;-><init>(I)V

    const/16 v14, 0x10

    .line 339
    invoke-virtual {v1, v13, v11, v14}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    add-int/lit8 v10, v10, 0x1

    :cond_6
    and-int/lit8 v13, v12, 0x2

    if-eqz v13, :cond_7

    .line 343
    new-instance v13, Lorg/h2/expression/Parameter;

    add-int v14, v2, v10

    invoke-direct {v13, v14}, Lorg/h2/expression/Parameter;-><init>(I)V

    .line 344
    invoke-virtual {v1, v13, v11, v9}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    add-int/lit8 v10, v10, 0x1

    :cond_7
    and-int/lit8 v13, v12, 0x4

    if-eqz v13, :cond_8

    .line 348
    new-instance v13, Lorg/h2/expression/Parameter;

    add-int v14, v2, v10

    invoke-direct {v13, v14}, Lorg/h2/expression/Parameter;-><init>(I)V

    const/4 v14, 0x3

    .line 349
    invoke-virtual {v1, v13, v11, v14}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    add-int/lit8 v10, v10, 0x1

    :cond_8
    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_5

    .line 353
    new-instance v12, Lorg/h2/expression/Parameter;

    add-int v13, v2, v10

    invoke-direct {v12, v13}, Lorg/h2/expression/Parameter;-><init>(I)V

    const/16 v13, 0xb

    .line 354
    invoke-virtual {v1, v12, v11, v13}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 358
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/h2/table/Column;

    iput-object v2, v0, Lorg/h2/index/ViewIndex;->columns:[Lorg/h2/table/Column;

    .line 359
    iget-object v2, v0, Lorg/h2/index/ViewIndex;->columns:[Lorg/h2/table/Column;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 362
    new-array v2, v6, [Lorg/h2/table/IndexColumn;

    iput-object v2, v0, Lorg/h2/index/ViewIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    .line 363
    new-array v2, v6, [I

    iput-object v2, v0, Lorg/h2/index/ViewIndex;->columnIds:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x2

    if-ge v2, v5, :cond_e

    move v5, v3

    const/4 v3, 0x0

    .line 365
    :goto_4
    array-length v6, v7

    if-ge v3, v6, :cond_d

    .line 366
    aget v6, v7, v3

    if-nez v6, :cond_a

    goto :goto_5

    :cond_a
    if-nez v2, :cond_b

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_c

    goto :goto_5

    :cond_b
    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_c

    goto :goto_5

    .line 381
    :cond_c
    new-instance v6, Lorg/h2/table/IndexColumn;

    invoke-direct {v6}, Lorg/h2/table/IndexColumn;-><init>()V

    .line 382
    iget-object v8, v0, Lorg/h2/index/ViewIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v8, v3}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v8

    iput-object v8, v6, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 383
    iget-object v8, v0, Lorg/h2/index/ViewIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    aput-object v6, v8, v5

    .line 384
    iget-object v8, v0, Lorg/h2/index/ViewIndex;->columnIds:[I

    iget-object v6, v6, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v6}, Lorg/h2/table/Column;->getColumnId()I

    move-result v6

    aput v6, v8, v5

    add-int/lit8 v5, v5, 0x1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_3

    .line 389
    :cond_e
    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 390
    invoke-static/range {v1 .. v6}, Lorg/h2/index/ViewIndex;->prepareSubQuery(Ljava/lang/String;Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)Lorg/h2/command/dml/Query;

    move-result-object v1

    return-object v1
.end method

.method private static prepareSubQuery(Ljava/lang/String;Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)Lorg/h2/command/dml/Query;
    .locals 0

    .line 172
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/h2/engine/Session;->pushSubQueryInfo([I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)V

    const/4 p2, 0x1

    .line 174
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;Z)Lorg/h2/command/Prepared;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {p1}, Lorg/h2/engine/Session;->popSubQueryInfo()V

    .line 178
    check-cast p0, Lorg/h2/command/dml/Query;

    return-object p0

    :catchall_0
    move-exception p0

    .line 176
    invoke-virtual {p1}, Lorg/h2/engine/Session;->popSubQueryInfo()V

    throw p0
.end method

.method private static setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;I",
            "Lorg/h2/value/Value;",
            ")V"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/expression/Parameter;

    .line 300
    invoke-virtual {p0, p2}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "VIEW"

    .line 142
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "VIEW"

    .line 406
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public createLookupBatch(Lorg/h2/table/TableFilter;)Lorg/h2/index/IndexLookupBatch;
    .locals 0

    .line 113
    iget-boolean p1, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 117
    :cond_0
    invoke-static {p0}, Lorg/h2/table/JoinBatch;->createViewIndexLookupBatch(Lorg/h2/index/ViewIndex;)Lorg/h2/index/IndexLookupBatch;

    move-result-object p1

    return-object p1
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/h2/index/ViewIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findByGeometry(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 165
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/h2/index/ViewIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    const-string p1, "VIEW"

    .line 421
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

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

    .line 154
    iget-boolean p1, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    if-eqz p1, :cond_0

    const-wide p1, 0x408f400000000000L    # 1000.0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {p1}, Lorg/h2/command/dml/Query;->getCost()D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getQuery()Lorg/h2/command/dml/Query;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    return-object v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSession()Lorg/h2/engine/Session;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->createSession:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public isExpired()Z
    .locals 5

    .line 126
    iget-boolean v0, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    invoke-virtual {v0}, Lorg/h2/table/TableView;->getTopQuery()Lorg/h2/command/dml/Query;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/index/ViewIndex;->evaluatedAt:J

    sub-long/2addr v0, v2

    sget-wide v2, Lorg/h2/index/ViewIndex;->MAX_AGE_NANOS:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecursive()Z
    .locals 1

    .line 444
    iget-boolean v0, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    return v0
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "VIEW"

    .line 396
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "VIEW"

    .line 147
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setRecursive(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    return-void
.end method

.method public setupQueryParameters(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V
    .locals 6

    .line 245
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 248
    iget-object v4, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    .line 249
    invoke-virtual {v4}, Lorg/h2/expression/Parameter;->getIndex()I

    move-result v5

    .line 250
    invoke-virtual {v4, p1}, Lorg/h2/expression/Parameter;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v4

    .line 251
    invoke-static {v0, v5, v4}, Lorg/h2/index/ViewIndex;->setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 256
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result p1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 258
    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result p1

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 260
    invoke-interface {p4}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 264
    :goto_1
    iget-object v1, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    iget-object v3, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lorg/h2/table/TableView;->getParameterOffset(Ljava/util/ArrayList;)I

    move-result v1

    :goto_2
    if-ge v2, p1, :cond_8

    .line 266
    iget-object v3, p0, Lorg/h2/index/ViewIndex;->indexMasks:[I

    aget v3, v3, v2

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_4

    add-int/lit8 v4, v1, 0x1

    .line 268
    invoke-interface {p2, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lorg/h2/index/ViewIndex;->setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V

    move v1, v4

    :cond_4
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_5

    add-int/lit8 v4, v1, 0x1

    .line 271
    invoke-interface {p2, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lorg/h2/index/ViewIndex;->setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V

    move v1, v4

    :cond_5
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v1, 0x1

    .line 274
    invoke-interface {p3, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lorg/h2/index/ViewIndex;->setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V

    move v1, v4

    :cond_6
    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    .line 277
    invoke-interface {p4, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lorg/h2/index/ViewIndex;->setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V

    move v1, v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "VIEW"

    .line 401
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
