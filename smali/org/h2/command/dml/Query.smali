.class public abstract Lorg/h2/command/dml/Query;
.super Lorg/h2/command/Prepared;
.source "Query.java"


# instance fields
.field private cacheableChecked:Z

.field protected distinct:Z

.field private lastEvaluated:J

.field private lastLimit:I

.field private lastParameters:[Lorg/h2/value/Value;

.field private lastResult:Lorg/h2/result/LocalResult;

.field protected limitExpr:Lorg/h2/expression/Expression;

.field private noCache:Z

.field protected offsetExpr:Lorg/h2/expression/Expression;

.field protected randomAccessResult:Z

.field protected sampleSizeExpr:Lorg/h2/expression/Expression;


# direct methods
.method constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method

.method private closeLastResult()V
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/LocalResult;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/LocalResult;

    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    :cond_0
    return-void
.end method

.method static initOrder(Lorg/h2/engine/Session;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLjava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;IZ",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableFilter;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    .line 372
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    .line 373
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/command/dml/SelectOrderBy;

    .line 374
    iget-object v6, v5, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    if-nez v6, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 384
    instance-of v8, v6, Lorg/h2/expression/ExpressionColumn;

    if-eqz v8, :cond_9

    .line 386
    move-object v8, v6

    check-cast v8, Lorg/h2/expression/ExpressionColumn;

    .line 387
    invoke-virtual {v8}, Lorg/h2/expression/ExpressionColumn;->getOriginalTableAliasName()Ljava/lang/String;

    move-result-object v11

    .line 388
    invoke-virtual {v8}, Lorg/h2/expression/ExpressionColumn;->getOriginalColumnName()Ljava/lang/String;

    move-result-object v12

    move/from16 v13, p4

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_b

    .line 391
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/h2/expression/Expression;

    .line 392
    instance-of v9, v15, Lorg/h2/expression/ExpressionColumn;

    if-eqz v9, :cond_3

    .line 394
    check-cast v15, Lorg/h2/expression/ExpressionColumn;

    .line 395
    invoke-virtual {v15}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v12, v9}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v11, :cond_7

    .line 397
    invoke-virtual {v15}, Lorg/h2/expression/ExpressionColumn;->getOriginalTableAliasName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    if-eqz v2, :cond_6

    .line 402
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v9, :cond_6

    .line 403
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/h2/table/TableFilter;

    .line 404
    invoke-virtual/range {v16 .. v16}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v11}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 411
    :cond_2
    invoke-virtual {v3, v9, v11}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto :goto_4

    .line 414
    :cond_3
    instance-of v9, v15, Lorg/h2/expression/Alias;

    if-nez v9, :cond_4

    goto :goto_5

    :cond_4
    if-nez v11, :cond_5

    .line 416
    invoke-virtual {v15}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v12, v9}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    .line 419
    :cond_5
    invoke-virtual {v15}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v9

    .line 420
    instance-of v10, v9, Lorg/h2/expression/ExpressionColumn;

    if-eqz v10, :cond_6

    .line 421
    check-cast v9, Lorg/h2/expression/ExpressionColumn;

    .line 422
    invoke-virtual {v8}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object v10

    .line 423
    invoke-virtual {v9}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object v15

    .line 424
    invoke-virtual {v9}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object v9

    .line 425
    invoke-virtual {v3, v12, v9}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 426
    invoke-virtual {v3, v10, v15}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    :cond_6
    const/4 v9, 0x0

    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    move v7, v14

    goto :goto_7

    :cond_8
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_9
    move/from16 v13, p4

    .line 438
    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_b

    .line 440
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_b

    .line 441
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 442
    invoke-virtual {v3, v11, v8}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    move v7, v10

    :goto_7
    const/4 v9, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    :goto_8
    if-nez v9, :cond_d

    if-nez p5, :cond_c

    .line 455
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v6

    .line 457
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    const v0, 0x15fd4

    .line 452
    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_d
    :goto_9
    add-int/lit8 v6, v7, 0x1

    .line 459
    invoke-static {v6}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v6

    invoke-static {v6}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v6

    iput-object v6, v5, Lorg/h2/command/dml/SelectOrderBy;->columnIndexExpr:Lorg/h2/expression/Expression;

    .line 460
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/expression/Expression;

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v6

    .line 461
    iput-object v6, v5, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private sameResultAsLast(Lorg/h2/engine/Session;[Lorg/h2/value/Value;[Lorg/h2/value/Value;J)Z
    .locals 7

    .line 267
    iget-boolean v0, p0, Lorg/h2/command/dml/Query;->cacheableChecked:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->getMaxDataModificationId()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 269
    :goto_0
    iput-boolean v0, p0, Lorg/h2/command/dml/Query;->noCache:Z

    .line 270
    iput-boolean v1, p0, Lorg/h2/command/dml/Query;->cacheableChecked:Z

    .line 272
    :cond_1
    iget-boolean v0, p0, Lorg/h2/command/dml/Query;->noCache:Z

    if-eqz v0, :cond_2

    return v2

    .line 275
    :cond_2
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/4 v0, 0x0

    .line 276
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_5

    .line 277
    aget-object v3, p3, v0

    aget-object v4, p2, v0

    .line 278
    invoke-virtual {v3}, Lorg/h2/value/Value;->getType()I

    move-result v5

    invoke-virtual {v4}, Lorg/h2/value/Value;->getType()I

    move-result v6

    if-ne v5, v6, :cond_4

    invoke-virtual {p1, v3, v4}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v2

    .line 282
    :cond_5
    sget-object p2, Lorg/h2/expression/ExpressionVisitor;->DETERMINISTIC_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {p0, p2}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lorg/h2/expression/ExpressionVisitor;->INDEPENDENT_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {p0, p2}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    .line 286
    :cond_6
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getModificationDataId()J

    move-result-wide p1

    cmp-long p3, p1, p4

    if-lez p3, :cond_7

    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->getMaxDataModificationId()J

    move-result-wide p1

    cmp-long p3, p1, p4

    if-lez p3, :cond_7

    return v2

    :cond_7
    return v1

    :cond_8
    :goto_3
    return v2
.end method


# virtual methods
.method public abstract addGlobalCondition(Lorg/h2/expression/Parameter;II)V
.end method

.method addParameter(Lorg/h2/expression/Parameter;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lorg/h2/command/dml/Query;->parameters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 537
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Query;->parameters:Ljava/util/ArrayList;

    .line 539
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Query;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract allowGlobalConditions()Z
.end method

.method public disableCache()V
    .locals 1

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lorg/h2/command/dml/Query;->noCache:Z

    return-void
.end method

.method public abstract fireBeforeSelectTriggers()V
.end method

.method public abstract getColumnCount()I
.end method

.method public abstract getCost()D
.end method

.method public getCostAsExpression()I
    .locals 4

    .line 128
    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->getCost()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    add-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public abstract getExpressions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end method

.method public getLimit()Lorg/h2/expression/Expression;
    .locals 1

    .line 527
    iget-object v0, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public final getMaxDataModificationId()J
    .locals 2

    .line 564
    invoke-static {}, Lorg/h2/expression/ExpressionVisitor;->getMaxModificationIdVisitor()Lorg/h2/expression/ExpressionVisitor;

    move-result-object v0

    .line 565
    invoke-virtual {p0, v0}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    .line 566
    invoke-virtual {v0}, Lorg/h2/expression/ExpressionVisitor;->getMaxDataModificationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset()Lorg/h2/expression/Expression;
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public final getParameterValues()[Lorg/h2/value/Value;
    .locals 5

    .line 294
    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 296
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 298
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 299
    new-array v2, v1, [Lorg/h2/value/Value;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 301
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    invoke-virtual {v4}, Lorg/h2/expression/Parameter;->getParamValue()Lorg/h2/value/Value;

    move-result-object v4

    .line 302
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method getSampleSizeValue(Lorg/h2/engine/Session;)I
    .locals 2

    .line 553
    iget-object v0, p0, Lorg/h2/command/dml/Query;->sampleSizeExpr:Lorg/h2/expression/Expression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Query;->sampleSizeExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 557
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_1

    return v1

    .line 560
    :cond_1
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    return p1
.end method

.method public abstract getTables()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasOrder()Z
.end method

.method public abstract init()V
.end method

.method public isDistinct()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lorg/h2/command/dml/Query;->distinct:Z

    return v0
.end method

.method public abstract isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
.end method

.method public isQuery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract isUnion()Z
.end method

.method public abstract mapColumns(Lorg/h2/table/ColumnResolver;I)V
.end method

.method public abstract prepareJoinBatch()V
.end method

.method public prepareOrder(Ljava/util/ArrayList;I)Lorg/h2/result/SortOrder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;I)",
            "Lorg/h2/result/SortOrder;"
        }
    .end annotation

    .line 475
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 476
    new-array v1, v0, [I

    .line 477
    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_7

    .line 479
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/command/dml/SelectOrderBy;

    .line 482
    iget-object v6, v5, Lorg/h2/command/dml/SelectOrderBy;->columnIndexExpr:Lorg/h2/expression/Expression;

    const/4 v7, 0x0

    .line 483
    invoke-virtual {v6, v7}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v6

    .line 484
    sget-object v7, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_2

    .line 488
    :cond_0
    invoke-virtual {v6}, Lorg/h2/value/Value;->getInt()I

    move-result v6

    if-gez v6, :cond_1

    neg-int v6, v6

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_6

    if-ge v6, p2, :cond_6

    .line 498
    :goto_2
    aput v6, v1, v4

    .line 499
    iget-boolean v6, v5, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    if-eqz v7, :cond_2

    xor-int/lit8 v6, v6, 0x1

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 504
    :goto_3
    iget-boolean v6, v5, Lorg/h2/command/dml/SelectOrderBy;->nullsFirst:Z

    if-eqz v6, :cond_4

    add-int/lit8 v8, v8, 0x2

    goto :goto_4

    .line 506
    :cond_4
    iget-boolean v5, v5, Lorg/h2/command/dml/SelectOrderBy;->nullsLast:Z

    if-eqz v5, :cond_5

    add-int/lit8 v8, v8, 0x4

    .line 509
    :cond_5
    :goto_4
    aput v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const p1, 0x15fd4

    .line 495
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v8

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 511
    :cond_7
    new-instance p2, Lorg/h2/result/SortOrder;

    iget-object v0, p0, Lorg/h2/command/dml/Query;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-direct {p2, v0, v1, v2, p1}, Lorg/h2/result/SortOrder;-><init>(Lorg/h2/engine/Database;[I[ILjava/util/ArrayList;)V

    return-object p2
.end method

.method public query(I)Lorg/h2/result/LocalResult;
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, p1, v0}, Lorg/h2/command/dml/Query;->query(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;

    move-result-object p1

    return-object p1
.end method

.method query(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;
    .locals 9

    .line 320
    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->fireBeforeSelectTriggers()V

    .line 321
    iget-boolean v0, p0, Lorg/h2/command/dml/Query;->noCache:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/command/dml/Query;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getOptimizeReuseResults()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->getParameterValues()[Lorg/h2/value/Value;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lorg/h2/command/dml/Query;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getModificationDataId()J

    move-result-wide v7

    .line 326
    sget-object v1, Lorg/h2/expression/ExpressionVisitor;->DETERMINISTIC_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {p0, v1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/LocalResult;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/LocalResult;

    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/h2/command/dml/Query;->lastLimit:I

    if-ne p1, v1, :cond_1

    .line 329
    iget-object v2, p0, Lorg/h2/command/dml/Query;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/dml/Query;->lastParameters:[Lorg/h2/value/Value;

    iget-wide v5, p0, Lorg/h2/command/dml/Query;->lastEvaluated:J

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lorg/h2/command/dml/Query;->sameResultAsLast(Lorg/h2/engine/Session;[Lorg/h2/value/Value;[Lorg/h2/value/Value;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/LocalResult;

    iget-object v2, p0, Lorg/h2/command/dml/Query;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/result/LocalResult;->createShallowCopy(Lorg/h2/engine/Session;)Lorg/h2/result/LocalResult;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/LocalResult;

    .line 332
    iget-object v1, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/LocalResult;

    if-eqz v1, :cond_1

    .line 333
    iget-object p1, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/LocalResult;

    invoke-virtual {p1}, Lorg/h2/result/LocalResult;->reset()V

    .line 334
    iget-object p1, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/LocalResult;

    return-object p1

    .line 339
    :cond_1
    iput-object v0, p0, Lorg/h2/command/dml/Query;->lastParameters:[Lorg/h2/value/Value;

    .line 340
    invoke-direct {p0}, Lorg/h2/command/dml/Query;->closeLastResult()V

    .line 341
    invoke-virtual {p0, p1, p2}, Lorg/h2/command/dml/Query;->queryWithoutCache(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;

    move-result-object p2

    .line 342
    iput-object p2, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/LocalResult;

    .line 343
    iput-wide v7, p0, Lorg/h2/command/dml/Query;->lastEvaluated:J

    .line 344
    iput p1, p0, Lorg/h2/command/dml/Query;->lastLimit:I

    return-object p2

    .line 322
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/h2/command/dml/Query;->queryWithoutCache(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic query(I)Lorg/h2/result/ResultInterface;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object p1

    return-object p1
.end method

.method protected abstract queryWithoutCache(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;
.end method

.method public setDistinct(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lorg/h2/command/dml/Query;->distinct:Z

    return-void
.end method

.method public abstract setEvaluatable(Lorg/h2/table/TableFilter;Z)V
.end method

.method public abstract setForUpdate(Z)V
.end method

.method public setLimit(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setOffset(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public abstract setOrder(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;)V"
        }
    .end annotation
.end method

.method public setRandomAccessResult(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lorg/h2/command/dml/Query;->randomAccessResult:Z

    return-void
.end method

.method public setSampleSize(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lorg/h2/command/dml/Query;->sampleSizeExpr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public abstract updateAggregate(Lorg/h2/engine/Session;)V
.end method
