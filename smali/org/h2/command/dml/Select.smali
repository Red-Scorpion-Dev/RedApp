.class public Lorg/h2/command/dml/Select;
.super Lorg/h2/command/dml/Query;
.source "Select.java"


# instance fields
.field private checkInit:Z

.field private condition:Lorg/h2/expression/Expression;

.field private cost:D

.field private currentGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/expression/Expression;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private currentGroupRowId:I

.field private distinctColumnCount:I

.field private expressionArray:[Lorg/h2/expression/Expression;

.field private expressions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private final filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableFilter;",
            ">;"
        }
    .end annotation
.end field

.field private group:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private groupByExpression:[Z

.field private groupIndex:[I

.field private having:Lorg/h2/expression/Expression;

.field private havingIndex:I

.field private isDistinctQuery:Z

.field private isForUpdate:Z

.field private isForUpdateMvcc:Z

.field private isGroupQuery:Z

.field private isGroupSortedQuery:Z

.field private isPrepared:Z

.field private isQuickAggregateQuery:Z

.field private orderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private sort:Lorg/h2/result/SortOrder;

.field private sortUsingIndex:Z

.field private final topFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableFilter;",
            ">;"
        }
    .end annotation
.end field

.field private topTableFilter:Lorg/h2/table/TableFilter;

.field private visibleColumnCount:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/h2/command/dml/Query;-><init>(Lorg/h2/engine/Session;)V

    .line 64
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    .line 65
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    return-void
.end method

.method private addGroupSortedRow([Lorg/h2/value/Value;ILorg/h2/result/ResultTarget;)V
    .locals 5

    .line 212
    new-array v0, p2, [Lorg/h2/value/Value;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 213
    :goto_0
    iget-object v3, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 214
    iget-object v3, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    aget v3, v3, v2

    aget-object v4, p1, v2

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_2

    .line 217
    iget-object p1, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_1

    goto :goto_2

    .line 220
    :cond_1
    iget-object p1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/expression/Expression;

    .line 221
    iget-object v2, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v2}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    aput-object p1, v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    :cond_2
    invoke-direct {p0, v0}, Lorg/h2/command/dml/Select;->isHavingNullOrFalse([Lorg/h2/value/Value;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 226
    :cond_3
    invoke-direct {p0, v0, p2}, Lorg/h2/command/dml/Select;->keepOnlyDistinct([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object p1

    .line 227
    invoke-interface {p3, p1}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    return-void
.end method

.method private createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    new-instance p1, Lorg/h2/result/LocalResult;

    iget-object v0, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressionArray:[Lorg/h2/expression/Expression;

    iget v2, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    invoke-direct {p1, v0, v1, v2}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    :goto_0
    return-object p1
.end method

.method private expandColumnList(Lorg/h2/table/TableFilter;I)I
    .locals 8

    .line 729
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    .line 730
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v1

    .line 731
    invoke-virtual {v0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    .line 732
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 733
    invoke-virtual {p1, v4}, Lorg/h2/table/TableFilter;->isNaturalJoinColumn(Lorg/h2/table/Column;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 736
    :cond_0
    new-instance v5, Lorg/h2/expression/ExpressionColumn;

    iget-object v6, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v1, v4}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v4, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v4, p2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p2, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private expandColumnList()V
    .locals 8

    .line 689
    iget-object v0, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    const/4 v1, 0x0

    .line 692
    :goto_0
    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 693
    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    .line 694
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isWildcard()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 697
    :cond_0
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSchemaName()Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getTableAlias()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 700
    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 701
    iget-object v2, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/TableFilter;

    .line 702
    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/Select;->expandColumnList(Lorg/h2/table/TableFilter;I)I

    move-result v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 707
    iget-object v5, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/TableFilter;

    .line 708
    invoke-virtual {v6}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_4

    .line 709
    invoke-virtual {v6}, Lorg/h2/table/TableFilter;->getSchemaName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_4
    move-object v4, v6

    :cond_5
    if-eqz v4, :cond_6

    .line 721
    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 722
    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/Select;->expandColumnList(Lorg/h2/table/TableFilter;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const v0, 0xa476

    .line 718
    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_7
    return-void
.end method

.method private getGroupByExpressionCount()I
    .locals 5

    .line 315
    iget-object v0, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 319
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-boolean v4, v0, v1

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private getGroupSortedIndex()Lorg/h2/index/Index;
    .locals 6

    .line 254
    iget-object v0, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    .line 260
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/index/Index;

    .line 261
    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/index/IndexType;->isScan()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 264
    :cond_1
    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/index/IndexType;->isHash()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 268
    :cond_2
    iget-object v5, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-direct {p0, v5, v4}, Lorg/h2/command/dml/Select;->isGroupSortedIndex(Lorg/h2/table/TableFilter;Lorg/h2/index/Index;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    return-object v1
.end method

.method private getSortIndex()Lorg/h2/index/Index;
    .locals 14

    .line 408
    iget-object v0, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 411
    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 412
    iget-object v2, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    invoke-virtual {v2}, Lorg/h2/result/SortOrder;->getQueryColumnIndexes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_5

    aget v7, v2, v5

    if-ltz v7, :cond_4

    .line 413
    iget-object v8, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 416
    iget-object v6, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/expression/Expression;

    .line 417
    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v6

    .line 418
    invoke-virtual {v6}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 421
    :cond_1
    instance-of v7, v6, Lorg/h2/expression/ExpressionColumn;

    if-nez v7, :cond_2

    return-object v1

    .line 424
    :cond_2
    check-cast v6, Lorg/h2/expression/ExpressionColumn;

    .line 425
    invoke-virtual {v6}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v7

    iget-object v8, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    if-eq v7, v8, :cond_3

    return-object v1

    .line 428
    :cond_3
    invoke-virtual {v6}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v7, v6

    .line 414
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ORDER BY"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 430
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/h2/table/Column;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/table/Column;

    .line 431
    iget-object v2, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    invoke-virtual {v2}, Lorg/h2/result/SortOrder;->getSortTypes()[I

    move-result-object v2

    .line 432
    array-length v3, v0

    if-nez v3, :cond_6

    .line 434
    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    return-object v0

    .line 436
    :cond_6
    iget-object v3, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 438
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_e

    .line 439
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/index/Index;

    .line 440
    invoke-interface {v8}, Lorg/h2/index/Index;->getCreateSQL()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    goto :goto_6

    .line 444
    :cond_7
    invoke-interface {v8}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v9

    invoke-virtual {v9}, Lorg/h2/index/IndexType;->isHash()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_6

    .line 447
    :cond_8
    invoke-interface {v8}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v9

    .line 448
    array-length v10, v9

    array-length v11, v0

    if-ge v10, v11, :cond_9

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    .line 452
    :goto_3
    array-length v11, v0

    if-ge v10, v11, :cond_c

    .line 455
    aget-object v11, v9, v10

    .line 456
    aget-object v12, v0, v10

    .line 457
    iget-object v13, v11, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    if-eq v13, v12, :cond_a

    :goto_4
    const/4 v9, 0x0

    goto :goto_5

    .line 461
    :cond_a
    iget v11, v11, Lorg/h2/table/IndexColumn;->sortType:I

    aget v12, v2, v10

    if-eq v11, v12, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_c
    const/4 v9, 0x1

    :goto_5
    if-eqz v9, :cond_d

    return-object v8

    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 473
    :cond_e
    array-length v2, v0

    if-ne v2, v6, :cond_f

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    .line 475
    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    .line 476
    invoke-interface {v0}, Lorg/h2/index/Index;->isRowIdIndex()Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v0

    :cond_f
    return-object v1
.end method

.method private isGroupSortedIndex(Lorg/h2/table/TableFilter;Lorg/h2/index/Index;)Z
    .locals 9

    .line 278
    invoke-interface {p2}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p2

    .line 280
    array-length v0, p2

    new-array v0, v0, [Z

    .line 282
    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_4

    .line 283
    iget-object v5, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_0

    goto :goto_2

    .line 286
    :cond_0
    iget-object v5, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/expression/Expression;

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v5

    .line 287
    instance-of v6, v5, Lorg/h2/expression/ExpressionColumn;

    if-nez v6, :cond_1

    return v2

    .line 290
    :cond_1
    check-cast v5, Lorg/h2/expression/ExpressionColumn;

    const/4 v6, 0x0

    .line 291
    :goto_1
    array-length v7, p2

    if-ge v6, v7, :cond_3

    .line 292
    invoke-virtual {v5}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v7

    if-ne p1, v7, :cond_2

    .line 293
    aget-object v7, p2, v6

    invoke-virtual {v5}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/h2/table/Column;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 294
    aput-boolean v4, v0, v6

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    const/4 p1, 0x1

    .line 306
    :goto_3
    array-length p2, v0

    if-ge p1, p2, :cond_6

    add-int/lit8 p2, p1, -0x1

    .line 307
    aget-boolean p2, v0, p2

    if-nez p2, :cond_5

    aget-boolean p2, v0, p1

    if-eqz p2, :cond_5

    return v2

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    return v4
.end method

.method private isHavingNullOrFalse([Lorg/h2/value/Value;)Z
    .locals 2

    .line 241
    iget v0, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    if-ltz v0, :cond_1

    .line 242
    iget v0, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    aget-object p1, p1, v0

    .line 243
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 246
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private keepOnlyDistinct([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;
    .locals 2

    .line 231
    iget v0, p0, Lorg/h2/command/dml/Select;->distinctColumnCount:I

    if-ne p2, v0, :cond_0

    return-object p1

    .line 235
    :cond_0
    iget p2, p0, Lorg/h2/command/dml/Select;->distinctColumnCount:I

    new-array p2, p2, [Lorg/h2/value/Value;

    .line 236
    iget v0, p0, Lorg/h2/command/dml/Select;->distinctColumnCount:I

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method private preparePlan(Z)D
    .locals 5

    .line 1007
    iget-object v0, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/table/TableFilter;

    .line 1009
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1010
    iget-object v4, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v3, v4}, Lorg/h2/table/TableFilter;->setFullCondition(Lorg/h2/expression/Expression;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1013
    :cond_0
    new-instance v1, Lorg/h2/command/dml/Optimizer;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v0, v2, v3}, Lorg/h2/command/dml/Optimizer;-><init>([Lorg/h2/table/TableFilter;Lorg/h2/expression/Expression;Lorg/h2/engine/Session;)V

    .line 1014
    invoke-virtual {v1, p1}, Lorg/h2/command/dml/Optimizer;->optimize(Z)V

    .line 1015
    invoke-virtual {v1}, Lorg/h2/command/dml/Optimizer;->getTopFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    .line 1016
    invoke-virtual {v1}, Lorg/h2/command/dml/Optimizer;->getCost()D

    move-result-wide v0

    .line 1018
    iget-object v2, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-direct {p0, v2}, Lorg/h2/command/dml/Select;->setEvaluatableRecursive(Lorg/h2/table/TableFilter;)V

    if-nez p1, :cond_1

    .line 1021
    iget-object p1, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->prepare()V

    :cond_1
    return-wide v0
.end method

.method private queryDistinct(Lorg/h2/result/ResultTarget;J)V
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 487
    iget-object v2, p0, Lorg/h2/command/dml/Select;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lorg/h2/command/dml/Select;->offsetExpr:Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-lez v2, :cond_0

    int-to-long v2, v2

    add-long/2addr p2, v2

    :cond_0
    const/4 v2, 0x0

    .line 494
    invoke-virtual {p0, v2}, Lorg/h2/command/dml/Select;->setCurrentRowNumber(I)V

    .line 495
    iget-object v3, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getIndex()Lorg/h2/index/Index;

    move-result-object v3

    .line 497
    invoke-interface {v3}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    .line 498
    iget-object v5, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {p0, v5}, Lorg/h2/command/dml/Select;->getSampleSizeValue(Lorg/h2/engine/Session;)I

    move-result v5

    const/4 v6, 0x0

    move-object v8, v6

    const/4 v7, 0x0

    :cond_1
    const/4 v9, 0x1

    add-int/2addr v7, v9

    .line 500
    invoke-virtual {p0, v7}, Lorg/h2/command/dml/Select;->setCurrentRowNumber(I)V

    .line 501
    iget-object v10, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-interface {v3, v10, v8, v6}, Lorg/h2/index/Index;->findNext(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v10

    .line 502
    invoke-interface {v10}, Lorg/h2/index/Cursor;->next()Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_0

    .line 505
    :cond_2
    invoke-interface {v10}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v10

    .line 506
    invoke-interface {v10, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v10

    if-nez v8, :cond_3

    .line 508
    iget-object v8, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v8}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v8

    invoke-virtual {v8, v9}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object v8

    .line 510
    :cond_3
    invoke-interface {v8, v4, v10}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    .line 511
    new-array v9, v9, [Lorg/h2/value/Value;

    aput-object v10, v9, v2

    .line 512
    invoke-interface {p1, v9}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    .line 514
    iget-object v9, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lorg/h2/command/dml/Select;->sortUsingIndex:Z

    if-eqz v9, :cond_5

    :cond_4
    cmp-long v9, p2, v0

    if-lez v9, :cond_5

    int-to-long v9, v7

    cmp-long v11, v9, p2

    if-ltz v11, :cond_5

    goto :goto_0

    :cond_5
    if-lez v5, :cond_1

    if-lt v7, v5, :cond_1

    :goto_0
    return-void
.end method

.method private queryFlat(ILorg/h2/result/ResultTarget;J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    .line 528
    iget-object v2, p0, Lorg/h2/command/dml/Select;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz v2, :cond_0

    .line 529
    iget-object v2, p0, Lorg/h2/command/dml/Select;->offsetExpr:Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-lez v2, :cond_0

    int-to-long v2, v2

    add-long/2addr p3, v2

    :cond_0
    const/4 v2, 0x0

    .line 535
    invoke-virtual {p0, v2}, Lorg/h2/command/dml/Select;->setCurrentRowNumber(I)V

    const/4 v3, 0x0

    .line 537
    iget-boolean v4, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    if-eqz v4, :cond_1

    .line 538
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 540
    :cond_1
    iget-object v4, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {p0, v4}, Lorg/h2/command/dml/Select;->getSampleSizeValue(Lorg/h2/engine/Session;)I

    move-result v4

    const/4 v5, 0x0

    .line 541
    :cond_2
    :goto_0
    iget-object v6, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v6}, Lorg/h2/table/TableFilter;->next()Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v5, 0x1

    .line 542
    invoke-virtual {p0, v6}, Lorg/h2/command/dml/Select;->setCurrentRowNumber(I)V

    .line 543
    iget-object v7, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v7, :cond_3

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    iget-object v9, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v8, v9}, Lorg/h2/expression/Expression;->getBooleanValue(Lorg/h2/engine/Session;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 545
    :cond_3
    new-array v5, p1, [Lorg/h2/value/Value;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, p1, :cond_4

    .line 547
    iget-object v8, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/expression/Expression;

    .line 548
    iget-object v9, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v8, v9}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 550
    :cond_4
    iget-boolean v7, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    if-eqz v7, :cond_5

    .line 551
    iget-object v7, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v7, v3}, Lorg/h2/table/TableFilter;->lockRowAdd(Ljava/util/ArrayList;)V

    .line 553
    :cond_5
    invoke-interface {p2, v5}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    .line 555
    iget-object v5, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lorg/h2/command/dml/Select;->sortUsingIndex:Z

    if-eqz v5, :cond_7

    :cond_6
    cmp-long v5, p3, v0

    if-lez v5, :cond_7

    invoke-interface {p2}, Lorg/h2/result/ResultTarget;->getRowCount()I

    move-result v5

    int-to-long v7, v5

    cmp-long v5, v7, p3

    if-ltz v5, :cond_7

    goto :goto_2

    :cond_7
    if-lez v4, :cond_8

    if-lt v6, v4, :cond_8

    goto :goto_2

    :cond_8
    move v5, v6

    goto :goto_0

    .line 564
    :cond_9
    :goto_2
    iget-boolean p1, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    if-eqz p1, :cond_a

    .line 565
    iget-object p1, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {p1, v3}, Lorg/h2/table/TableFilter;->lockRows(Ljava/util/ArrayList;)V

    :cond_a
    return-void
.end method

.method private queryGroup(ILorg/h2/result/LocalResult;)V
    .locals 9

    .line 328
    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p0, v1}, Lorg/h2/command/dml/Select;->setCurrentRowNumber(I)V

    const/4 v2, 0x0

    .line 332
    iput-object v2, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    .line 333
    new-array v2, v1, [Lorg/h2/value/Value;

    invoke-static {v2}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v2

    .line 334
    iget-object v3, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {p0, v3}, Lorg/h2/command/dml/Select;->getSampleSizeValue(Lorg/h2/engine/Session;)I

    move-result v3

    const/4 v4, 0x0

    .line 335
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v5}, Lorg/h2/table/TableFilter;->next()Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v5, v4, 0x1

    .line 336
    invoke-virtual {p0, v5}, Lorg/h2/command/dml/Select;->setCurrentRowNumber(I)V

    .line 337
    iget-object v6, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v6, :cond_1

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    iget-object v8, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v7, v8}, Lorg/h2/expression/Expression;->getBooleanValue(Lorg/h2/engine/Session;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 341
    :cond_1
    iget-object v4, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-nez v4, :cond_2

    move-object v4, v2

    goto :goto_2

    .line 344
    :cond_2
    iget-object v4, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v4, v4

    new-array v4, v4, [Lorg/h2/value/Value;

    const/4 v6, 0x0

    .line 346
    :goto_1
    iget-object v7, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 347
    iget-object v7, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    aget v7, v7, v6

    .line 348
    iget-object v8, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/expression/Expression;

    .line 349
    iget-object v8, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v7, v8}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 351
    :cond_3
    invoke-static {v4}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v4

    .line 353
    :goto_2
    invoke-virtual {v0, v4}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_4

    .line 355
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 356
    invoke-virtual {v0, v4, v6}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    .line 358
    :cond_4
    iput-object v6, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    .line 359
    iget v4, p0, Lorg/h2/command/dml/Select;->currentGroupRowId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/h2/command/dml/Select;->currentGroupRowId:I

    const/4 v4, 0x0

    :goto_3
    if-ge v4, p1, :cond_7

    .line 362
    iget-object v6, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    aget-boolean v6, v6, v4

    if-nez v6, :cond_6

    .line 363
    :cond_5
    iget-object v6, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/expression/Expression;

    .line 364
    iget-object v7, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    if-lez v3, :cond_8

    if-lt v5, v3, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    goto/16 :goto_0

    .line 372
    :cond_9
    :goto_4
    iget-object v3, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-nez v3, :cond_a

    invoke-virtual {v0}, Lorg/h2/util/ValueHashMap;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 373
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    .line 375
    :cond_a
    invoke-virtual {v0}, Lorg/h2/util/ValueHashMap;->keys()Ljava/util/ArrayList;

    move-result-object v2

    .line 376
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/value/Value;

    .line 377
    check-cast v3, Lorg/h2/value/ValueArray;

    .line 378
    invoke-virtual {v0, v3}, Lorg/h2/util/ValueHashMap;->get(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    .line 379
    invoke-virtual {v3}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v3

    .line 380
    new-array v4, p1, [Lorg/h2/value/Value;

    const/4 v5, 0x0

    .line 381
    :goto_6
    iget-object v6, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-eqz v6, :cond_b

    iget-object v6, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v6, v6

    if-ge v5, v6, :cond_b

    .line 382
    iget-object v6, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    aget v6, v6, v5

    aget-object v7, v3, v5

    aput-object v7, v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-ge v3, p1, :cond_d

    .line 385
    iget-object v5, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_c

    goto :goto_8

    .line 388
    :cond_c
    iget-object v5, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/expression/Expression;

    .line 389
    iget-object v6, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v5

    aput-object v5, v4, v3

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 391
    :cond_d
    invoke-direct {p0, v4}, Lorg/h2/command/dml/Select;->isHavingNullOrFalse([Lorg/h2/value/Value;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_5

    .line 394
    :cond_e
    invoke-direct {p0, v4, p1}, Lorg/h2/command/dml/Select;->keepOnlyDistinct([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object v3

    .line 395
    invoke-virtual {p2, v3}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_5

    :cond_f
    return-void
.end method

.method private queryGroupSorted(ILorg/h2/result/ResultTarget;)V
    .locals 7

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lorg/h2/command/dml/Select;->setCurrentRowNumber(I)V

    const/4 v1, 0x0

    .line 172
    iput-object v1, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    move-object v2, v1

    const/4 v1, 0x0

    .line 174
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->next()Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, v1, 0x1

    .line 175
    invoke-virtual {p0, v3}, Lorg/h2/command/dml/Select;->setCurrentRowNumber(I)V

    .line 176
    iget-object v4, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    iget-object v6, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/expression/Expression;->getBooleanValue(Lorg/h2/engine/Session;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    :cond_1
    iget-object v1, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v1, v1

    new-array v1, v1, [Lorg/h2/value/Value;

    const/4 v4, 0x0

    .line 181
    :goto_1
    iget-object v5, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 182
    iget-object v5, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    aget v5, v5, v4

    .line 183
    iget-object v6, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/expression/Expression;

    .line 184
    iget-object v6, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 189
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    goto :goto_2

    .line 190
    :cond_3
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 191
    invoke-direct {p0, v2, p1, p2}, Lorg/h2/command/dml/Select;->addGroupSortedRow([Lorg/h2/value/Value;ILorg/h2/result/ResultTarget;)V

    .line 193
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    :goto_2
    move-object v2, v1

    .line 195
    :cond_4
    iget v1, p0, Lorg/h2/command/dml/Select;->currentGroupRowId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/command/dml/Select;->currentGroupRowId:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_7

    .line 198
    iget-object v4, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_6

    .line 199
    :cond_5
    iget-object v4, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    .line 200
    iget-object v5, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v3

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_9

    .line 206
    invoke-direct {p0, v2, p1, p2}, Lorg/h2/command/dml/Select;->addGroupSortedRow([Lorg/h2/value/Value;ILorg/h2/result/ResultTarget;)V

    :cond_9
    return-void
.end method

.method private queryQuick(ILorg/h2/result/ResultTarget;)V
    .locals 4

    .line 570
    new-array v0, p1, [Lorg/h2/value/Value;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 572
    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    .line 573
    iget-object v3, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    :cond_0
    invoke-interface {p2, v0}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    return-void
.end method

.method private setEvaluatableRecursive(Lorg/h2/table/TableFilter;)V
    .locals 3

    :goto_0
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    .line 1028
    invoke-virtual {p1, p1, v0}, Lorg/h2/table/TableFilter;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 1029
    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1, v0}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 1032
    :cond_0
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getNestedJoin()Lorg/h2/table/TableFilter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1034
    invoke-direct {p0, v1}, Lorg/h2/command/dml/Select;->setEvaluatableRecursive(Lorg/h2/table/TableFilter;)V

    .line 1036
    :cond_1
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getJoinCondition()Lorg/h2/expression/Expression;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1038
    sget-object v2, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1039
    iget-object v2, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    if-eqz v2, :cond_2

    .line 1041
    iget-object v2, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    .line 1042
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->isJoinOuter()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->isJoinOuterIndirect()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1043
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->removeJoinCondition()V

    .line 1044
    invoke-virtual {p0, v1}, Lorg/h2/command/dml/Select;->addCondition(Lorg/h2/expression/Expression;)V

    goto :goto_1

    .line 1047
    :cond_2
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->isJoinOuter()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1056
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->removeJoinCondition()V

    .line 1058
    iget-object v2, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    .line 1059
    invoke-virtual {p0, v1}, Lorg/h2/command/dml/Select;->addCondition(Lorg/h2/expression/Expression;)V

    goto :goto_1

    .line 1050
    :cond_3
    iget-object p1, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    const v0, 0x16018

    .line 1052
    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 1063
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getFilterCondition()Lorg/h2/expression/Expression;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1065
    sget-object v2, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1066
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->removeFilterCondition()V

    .line 1067
    invoke-virtual {p0, v1}, Lorg/h2/command/dml/Select;->addCondition(Lorg/h2/expression/Expression;)V

    .line 1072
    :cond_5
    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    .line 1073
    invoke-virtual {v2, p1, v0}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    goto :goto_2

    .line 1027
    :cond_6
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public addCondition(Lorg/h2/expression/Expression;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-nez v0, :cond_0

    .line 163
    iput-object p1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Lorg/h2/expression/ConditionAndOr;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    invoke-direct {v0, v1, p1, v2}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    :goto_0
    return-void
.end method

.method public addGlobalCondition(Lorg/h2/expression/Parameter;II)V
    .locals 3

    .line 1259
    invoke-virtual {p0, p1}, Lorg/h2/command/dml/Select;->addParameter(Lorg/h2/expression/Parameter;)V

    .line 1261
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/Expression;

    .line 1262
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    .line 1263
    sget-object v1, Lorg/h2/expression/ExpressionVisitor;->QUERY_COMPARABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1264
    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, p3, v0, p1}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_0

    .line 1268
    :cond_0
    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object p3, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    const/16 v0, 0x10

    invoke-direct {v1, p3, v0, p1, p1}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    .line 1270
    :goto_0
    iget-object p1, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    .line 1272
    iget-boolean p3, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    const/4 p3, 0x0

    .line 1274
    :goto_1
    iget-object v2, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v2, v2

    if-ge p3, v2, :cond_2

    .line 1275
    iget-object v2, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    aget v2, v2, p3

    if-ne v2, p2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    .line 1281
    iget p2, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    if-ltz p2, :cond_3

    .line 1282
    iget-object p2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    iget p3, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/h2/expression/Expression;

    iput-object p2, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    .line 1284
    :cond_3
    iget-object p2, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    if-nez p2, :cond_4

    .line 1285
    iput-object p1, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    goto :goto_3

    .line 1287
    :cond_4
    new-instance p2, Lorg/h2/expression/ConditionAndOr;

    iget-object p3, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    invoke-direct {p2, v1, p3, p1}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object p2, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    :cond_5
    :goto_3
    if-eqz v0, :cond_7

    .line 1292
    iget-object p2, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-nez p2, :cond_6

    .line 1293
    iput-object p1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    goto :goto_4

    .line 1295
    :cond_6
    new-instance p2, Lorg/h2/expression/ConditionAndOr;

    iget-object p3, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    invoke-direct {p2, v1, p3, p1}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object p2, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    :cond_7
    :goto_4
    return-void
.end method

.method public addTableFilter(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 111
    iget-object p2, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public allowGlobalConditions()Z
    .locals 1

    .line 1389
    iget-object v0, p0, Lorg/h2/command/dml/Select;->offsetExpr:Lorg/h2/expression/Expression;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/Select;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public fireBeforeSelectTriggers()V
    .locals 6

    .line 1000
    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1001
    iget-object v2, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/TableFilter;

    .line 1002
    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .line 1204
    iget v0, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    return v0
.end method

.method public getCost()D
    .locals 2

    .line 986
    iget-wide v0, p0, Lorg/h2/command/dml/Select;->cost:D

    return-wide v0
.end method

.method public getCurrentGroup()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lorg/h2/expression/Expression;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/h2/command/dml/Select;->currentGroup:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCurrentGroupRowId()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/h2/command/dml/Select;->currentGroupRowId:I

    return v0
.end method

.method public getExpressions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation

    .line 1213
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroupBy()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHaving()Lorg/h2/expression/Expression;
    .locals 1

    .line 1199
    iget-object v0, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getJoinBatch()Lorg/h2/table/JoinBatch;
    .locals 1

    .line 981
    invoke-virtual {p0}, Lorg/h2/command/dml/Select;->getTopTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getJoinBatch()Lorg/h2/table/JoinBatch;

    move-result-object v0

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 8

    .line 1083
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/expression/Expression;

    .line 1085
    new-instance v1, Lorg/h2/util/StatementBuilder;

    const-string v2, "SELECT"

    invoke-direct {v1, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 1086
    iget-boolean v2, p0, Lorg/h2/command/dml/Select;->distinct:Z

    if-eqz v2, :cond_0

    const-string v2, " DISTINCT"

    .line 1087
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1089
    :goto_0
    iget v4, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    if-ge v3, v4, :cond_1

    const-string v4, ","

    .line 1090
    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const/16 v4, 0xa

    .line 1091
    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 1092
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v4, v5, v2}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "\nFROM "

    .line 1094
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1095
    iget-object v3, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 1097
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    const/4 v5, 0x0

    :goto_1
    const-string v6, "\n"

    .line 1100
    invoke-virtual {v1, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    add-int/lit8 v6, v5, 0x1

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 1101
    :goto_2
    invoke-virtual {v3, v5}, Lorg/h2/table/TableFilter;->getPlanSQL(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1102
    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_6

    :cond_3
    move v5, v6

    goto :goto_1

    .line 1105
    :cond_4
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 1107
    iget-object v3, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/TableFilter;

    :goto_4
    const-string v7, "\n"

    .line 1109
    invoke-virtual {v1, v7}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    add-int/lit8 v7, v5, 0x1

    if-lez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    .line 1110
    :goto_5
    invoke-virtual {v6, v5}, Lorg/h2/table/TableFilter;->getPlanSQL(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1111
    invoke-virtual {v6}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v6

    if-nez v6, :cond_6

    move v5, v7

    goto :goto_3

    :cond_6
    move v5, v7

    goto :goto_4

    .line 1115
    :cond_7
    :goto_6
    iget-object v3, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v3, :cond_8

    const-string v3, "\nWHERE "

    .line 1116
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1119
    :cond_8
    iget-object v3, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-eqz v3, :cond_9

    const-string v3, "\nGROUP BY "

    .line 1120
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1121
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 1122
    iget-object v3, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v4, v3

    :goto_7
    if-ge v2, v4, :cond_9

    aget v5, v3, v2

    .line 1123
    aget-object v5, v0, v5

    .line 1124
    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v5

    const-string v6, ", "

    .line 1125
    invoke-virtual {v1, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1129
    :cond_9
    iget-object v2, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    const-string v2, "\nGROUP BY "

    .line 1130
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1131
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 1132
    iget-object v2, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Expression;

    const-string v4, ", "

    .line 1133
    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_8

    .line 1137
    :cond_a
    iget-object v2, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    if-eqz v2, :cond_b

    .line 1141
    iget-object v2, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    const-string v3, "\nHAVING "

    .line 1142
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_9

    .line 1144
    :cond_b
    iget v2, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    if-ltz v2, :cond_c

    .line 1145
    iget v2, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    aget-object v2, v0, v2

    const-string v3, "\nHAVING "

    .line 1146
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1149
    :cond_c
    :goto_9
    iget-object v2, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-eqz v2, :cond_d

    const-string v2, "\nORDER BY "

    .line 1150
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    iget v4, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    invoke-virtual {v3, v0, v4}, Lorg/h2/result/SortOrder;->getSQL([Lorg/h2/expression/Expression;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1153
    :cond_d
    iget-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    const-string v0, "\nORDER BY "

    .line 1154
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1155
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    .line 1156
    iget-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/command/dml/SelectOrderBy;

    const-string v3, ", "

    .line 1157
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v2}, Lorg/h2/command/dml/SelectOrderBy;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_a

    .line 1161
    :cond_e
    iget-object v0, p0, Lorg/h2/command/dml/Select;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_f

    const-string v0, "\nLIMIT "

    .line 1162
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/dml/Select;->limitExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1164
    iget-object v0, p0, Lorg/h2/command/dml/Select;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_f

    const-string v0, " OFFSET "

    .line 1165
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/dml/Select;->offsetExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1169
    :cond_f
    iget-object v0, p0, Lorg/h2/command/dml/Select;->sampleSizeExpr:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_10

    const-string v0, "\nSAMPLE_SIZE "

    .line 1170
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/dml/Select;->sampleSizeExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1173
    :cond_10
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isForUpdate:Z

    if-eqz v0, :cond_11

    const-string v0, "\nFOR UPDATE"

    .line 1174
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1176
    :cond_11
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    if-eqz v0, :cond_12

    const-string v0, "\n/* direct lookup */"

    .line 1177
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1179
    :cond_12
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isDistinctQuery:Z

    if-eqz v0, :cond_13

    const-string v0, "\n/* distinct */"

    .line 1180
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1182
    :cond_13
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->sortUsingIndex:Z

    if-eqz v0, :cond_14

    const-string v0, "\n/* index sorted */"

    .line 1183
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1185
    :cond_14
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-eqz v0, :cond_15

    .line 1186
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isGroupSortedQuery:Z

    if-eqz v0, :cond_15

    const-string v0, "\n/* group sorted */"

    .line 1187
    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1191
    :cond_15
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortOrder()Lorg/h2/result/SortOrder;
    .locals 1

    .line 1396
    iget-object v0, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    return-object v0
.end method

.method public getTables()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    .line 991
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 992
    iget-object v1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/TableFilter;

    .line 993
    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTopFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableFilter;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/h2/command/dml/Select;->topFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTopTableFilter()Lorg/h2/table/TableFilter;
    .locals 1

    .line 1208
    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method public hasOrder()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init()V
    .locals 15

    .line 745
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->checkInit:Z

    if-eqz v0, :cond_0

    .line 746
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 748
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/dml/Select;->expandColumnList()V

    .line 749
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    .line 751
    iget-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_2

    .line 752
    :cond_2
    :goto_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    .line 753
    :goto_1
    iget v4, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    if-ge v3, v4, :cond_3

    .line 754
    iget-object v4, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    .line 755
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    .line 756
    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v4

    .line 757
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 762
    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 763
    iget-object v4, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    iget-object v5, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    iget v8, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    iget-boolean v9, p0, Lorg/h2/command/dml/Select;->distinct:Z

    iget-object v10, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v4 .. v10}, Lorg/h2/command/dml/Select;->initOrder(Lorg/h2/engine/Session;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLjava/util/ArrayList;)V

    .line 766
    :cond_4
    iget-object v3, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lorg/h2/command/dml/Select;->distinctColumnCount:I

    .line 767
    iget-object v3, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    .line 768
    iget-object v3, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v3, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    .line 770
    iput-object v1, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    goto :goto_3

    .line 772
    :cond_5
    iput v4, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    .line 775
    :goto_3
    iget-object v3, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    .line 781
    iget-object v6, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    if-eqz v6, :cond_e

    .line 782
    iget-object v6, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 783
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 784
    new-array v8, v6, [I

    iput-object v8, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_c

    .line 786
    iget-object v9, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/h2/expression/Expression;

    .line 787
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v7, :cond_7

    .line 790
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 791
    invoke-virtual {v3, v12, v10}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    const/4 v11, -0x1

    :goto_6
    if-gez v11, :cond_a

    move-object v12, v10

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v7, :cond_a

    .line 799
    iget-object v13, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/h2/expression/Expression;

    .line 800
    invoke-virtual {v13}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v12, v14}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_8

    .line 804
    :cond_8
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v12

    .line 805
    invoke-virtual {v13}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_a
    move v10, v11

    :goto_8
    if-gez v10, :cond_b

    .line 812
    iget-object v10, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 813
    iget-object v11, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    aput v10, v11, v8

    .line 814
    iget-object v10, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 816
    :cond_b
    iget-object v9, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    aput v10, v9, v8

    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 819
    :cond_c
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    .line 820
    iget-object v0, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_d

    aget v6, v0, v4

    .line 821
    iget-object v7, p0, Lorg/h2/command/dml/Select;->groupByExpression:[Z

    aput-boolean v5, v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 823
    :cond_d
    iput-object v1, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    .line 826
    :cond_e
    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/TableFilter;

    .line 827
    invoke-virtual {p0, v1, v2}, Lorg/h2/command/dml/Select;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    goto :goto_b

    .line 829
    :cond_f
    iget v0, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    if-ltz v0, :cond_10

    .line 830
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    iget v1, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/Expression;

    .line 831
    new-instance v1, Lorg/h2/command/dml/SelectListColumnResolver;

    invoke-direct {v1, p0}, Lorg/h2/command/dml/SelectListColumnResolver;-><init>(Lorg/h2/command/dml/Select;)V

    .line 832
    invoke-virtual {v0, v1, v2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 834
    :cond_10
    iput-boolean v5, p0, Lorg/h2/command/dml/Select;->checkInit:Z

    return-void
.end method

.method public isCacheable()Z
    .locals 1

    .line 1379
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isForUpdate:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 5

    .line 1315
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1329
    :pswitch_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1330
    iget-object v3, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/TableFilter;

    .line 1331
    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->getMaxDataModificationId()J

    move-result-wide v3

    .line 1332
    invoke-virtual {p1, v3, v4}, Lorg/h2/expression/ExpressionVisitor;->addDataModificationId(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1337
    :pswitch_1
    iget-object v0, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->optimizeEvaluatableSubqueries:Z

    if-nez v0, :cond_3

    return v2

    .line 1317
    :pswitch_2
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isForUpdate:Z

    if-eqz v0, :cond_0

    return v2

    .line 1320
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1321
    iget-object v3, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/TableFilter;

    .line 1322
    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->isDeterministic()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1343
    :cond_2
    iget-object v0, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 1344
    iget-object v3, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/TableFilter;

    .line 1345
    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    .line 1346
    invoke-virtual {p1, v3}, Lorg/h2/expression/ExpressionVisitor;->addDependency(Lorg/h2/engine/DbObject;)V

    .line 1347
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getDependencies()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/table/Table;->addDependencies(Ljava/util/HashSet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v0, 0x1

    .line 1353
    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->incrementQueryLevel(I)Lorg/h2/expression/ExpressionVisitor;

    move-result-object p1

    .line 1355
    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_5

    .line 1356
    iget-object v4, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    .line 1357
    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    .line 1362
    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :cond_6
    if-eqz v0, :cond_7

    .line 1365
    iget-object v1, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-nez p1, :cond_7

    const/4 v0, 0x0

    :cond_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isQuickAggregateQuery()Z
    .locals 1

    .line 1253
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 1373
    sget-object v0, Lorg/h2/expression/ExpressionVisitor;->READONLY_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {p0, v0}, Lorg/h2/command/dml/Select;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    return v0
.end method

.method public isUnion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 2

    .line 1227
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    .line 1228
    invoke-virtual {v1, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    goto :goto_0

    .line 1230
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_1
    return-void
.end method

.method public prepare()V
    .locals 9

    .line 839
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isPrepared:Z

    if-eqz v0, :cond_0

    return-void

    .line 843
    :cond_0
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->checkInit:Z

    if-nez v0, :cond_1

    const-string v0, "not initialized"

    .line 844
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 846
    :cond_1
    iget-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 847
    iget-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/command/dml/Select;->prepareOrder(Ljava/util/ArrayList;I)Lorg/h2/result/SortOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    const/4 v0, 0x0

    .line 848
    iput-object v0, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 850
    :goto_0
    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 851
    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    .line 852
    iget-object v3, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 854
    :cond_3
    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_5

    .line 855
    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    .line 856
    iget-object v1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/TableFilter;

    .line 864
    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->isJoinOuter()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->isJoinOuterIndirect()Z

    move-result v3

    if-nez v3, :cond_4

    .line 865
    iget-object v3, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4, v2}, Lorg/h2/expression/Expression;->createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V

    goto :goto_1

    .line 869
    :cond_5
    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/h2/command/dml/Select;->groupIndex:[I

    if-nez v1, :cond_6

    iget v1, p0, Lorg/h2/command/dml/Select;->havingIndex:I

    if-gez v1, :cond_6

    iget-object v1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 871
    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-nez v1, :cond_6

    .line 872
    iget-object v1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/TableFilter;

    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    .line 873
    invoke-static {v1}, Lorg/h2/expression/ExpressionVisitor;->getOptimizableVisitor(Lorg/h2/table/Table;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object v1

    .line 875
    invoke-virtual {p0, v1}, Lorg/h2/command/dml/Select;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    .line 878
    :cond_6
    iget-object v1, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->isParsingView()Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/h2/command/dml/Select;->preparePlan(Z)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/h2/command/dml/Select;->cost:D

    .line 879
    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->distinct:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->optimizeDistinct:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/h2/command/dml/Select;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-nez v1, :cond_a

    .line 882
    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    .line 883
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    .line 884
    instance-of v3, v1, Lorg/h2/expression/ExpressionColumn;

    if-eqz v3, :cond_a

    .line 885
    check-cast v1, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v1}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v1

    .line 886
    invoke-virtual {v1}, Lorg/h2/table/Column;->getSelectivity()I

    move-result v3

    .line 887
    iget-object v4, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v4}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/h2/table/Table;->getIndexForColumn(Lorg/h2/table/Column;)Lorg/h2/index/Index;

    move-result-object v1

    if-eqz v1, :cond_a

    const/16 v4, 0x32

    if-eq v3, v4, :cond_a

    const/16 v4, 0x14

    if-ge v3, v4, :cond_a

    .line 893
    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v3

    aget-object v3, v3, v0

    iget v3, v3, Lorg/h2/table/IndexColumn;->sortType:I

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    .line 895
    :goto_2
    iget-object v4, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v4}, Lorg/h2/table/TableFilter;->getIndex()Lorg/h2/index/Index;

    move-result-object v4

    .line 897
    invoke-interface {v1}, Lorg/h2/index/Index;->canFindNext()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v3, :cond_a

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isScan()Z

    move-result v3

    if-nez v3, :cond_8

    if-ne v1, v4, :cond_a

    .line 901
    :cond_8
    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v3

    .line 904
    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isHash()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v3

    array-length v3, v3

    if-le v3, v2, :cond_a

    .line 906
    :cond_9
    iget-object v3, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v3, v1}, Lorg/h2/table/TableFilter;->setIndex(Lorg/h2/index/Index;)V

    .line 907
    iput-boolean v2, p0, Lorg/h2/command/dml/Select;->isDistinctQuery:Z

    .line 913
    :cond_a
    iget-object v1, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-nez v1, :cond_10

    .line 914
    invoke-direct {p0}, Lorg/h2/command/dml/Select;->getSortIndex()Lorg/h2/index/Index;

    move-result-object v1

    .line 915
    iget-object v3, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getIndex()Lorg/h2/index/Index;

    move-result-object v3

    if-eqz v1, :cond_10

    if-eqz v3, :cond_10

    .line 917
    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/index/IndexType;->isScan()Z

    move-result v4

    if-nez v4, :cond_f

    if-ne v3, v1, :cond_b

    goto :goto_5

    .line 924
    :cond_b
    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    array-length v4, v4

    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v5

    array-length v5, v5

    if-lt v4, v5, :cond_10

    .line 926
    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    .line 927
    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 929
    :goto_3
    array-length v7, v3

    if-ge v5, v7, :cond_e

    .line 930
    aget-object v7, v4, v5

    iget-object v7, v7, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    aget-object v8, v3, v5

    iget-object v8, v8, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    if-eq v7, v8, :cond_c

    goto :goto_4

    .line 934
    :cond_c
    aget-object v7, v4, v5

    iget v7, v7, Lorg/h2/table/IndexColumn;->sortType:I

    aget-object v8, v3, v5

    iget v8, v8, Lorg/h2/table/IndexColumn;->sortType:I

    if-eq v7, v8, :cond_d

    const/4 v6, 0x1

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    move v0, v6

    :goto_4
    if-eqz v0, :cond_10

    .line 939
    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v1}, Lorg/h2/table/TableFilter;->setIndex(Lorg/h2/index/Index;)V

    .line 940
    iput-boolean v2, p0, Lorg/h2/command/dml/Select;->sortUsingIndex:Z

    goto :goto_6

    .line 918
    :cond_f
    :goto_5
    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v1}, Lorg/h2/table/TableFilter;->setIndex(Lorg/h2/index/Index;)V

    .line 919
    iget-object v0, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->hasInComparisons()Z

    move-result v0

    if-nez v0, :cond_10

    .line 922
    iput-boolean v2, p0, Lorg/h2/command/dml/Select;->sortUsingIndex:Z

    .line 945
    :cond_10
    :goto_6
    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lorg/h2/command/dml/Select;->getGroupByExpressionCount()I

    move-result v0

    if-lez v0, :cond_12

    .line 947
    invoke-direct {p0}, Lorg/h2/command/dml/Select;->getGroupSortedIndex()Lorg/h2/index/Index;

    move-result-object v0

    .line 948
    iget-object v1, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getIndex()Lorg/h2/index/Index;

    move-result-object v1

    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    .line 949
    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isScan()Z

    move-result v3

    if-nez v3, :cond_11

    if-ne v1, v0, :cond_12

    .line 951
    :cond_11
    iget-object v1, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v1, v0}, Lorg/h2/table/TableFilter;->setIndex(Lorg/h2/index/Index;)V

    .line 952
    iput-boolean v2, p0, Lorg/h2/command/dml/Select;->isGroupSortedQuery:Z

    .line 955
    :cond_12
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/command/dml/Select;->expressionArray:[Lorg/h2/expression/Expression;

    .line 956
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/command/dml/Select;->expressionArray:[Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 957
    iput-boolean v2, p0, Lorg/h2/command/dml/Select;->isPrepared:Z

    return-void
.end method

.method public prepareJoinBatch()V
    .locals 4

    .line 962
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 963
    invoke-virtual {p0}, Lorg/h2/command/dml/Select;->getTopTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v1

    .line 965
    :cond_0
    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getNestedJoin()Lorg/h2/table/TableFilter;

    move-result-object v2

    if-eqz v2, :cond_1

    return-void

    .line 969
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 972
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/table/TableFilter;

    const/4 v1, 0x0

    .line 975
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 976
    aget-object v3, v0, v2

    invoke-virtual {v3, v1, v0, v2}, Lorg/h2/table/TableFilter;->prepareJoinBatch(Lorg/h2/table/JoinBatch;[Lorg/h2/table/TableFilter;I)Lorg/h2/table/JoinBatch;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 4

    .line 580
    new-instance v0, Lorg/h2/result/LocalResult;

    iget-object v1, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->expressionArray:[Lorg/h2/expression/Expression;

    iget v3, p0, Lorg/h2/command/dml/Select;->visibleColumnCount:I

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    .line 582
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->done()V

    return-object v0
.end method

.method protected queryWithoutCache(ILorg/h2/result/ResultTarget;)Lorg/h2/result/LocalResult;
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 589
    :cond_0
    iget-object v1, p0, Lorg/h2/command/dml/Select;->limitExpr:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_3

    .line 590
    iget-object v1, p0, Lorg/h2/command/dml/Select;->limitExpr:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    .line 591
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    :goto_0
    if-gez p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    if-ltz v0, :cond_3

    .line 595
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 598
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 600
    iget-object v2, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/DbSettings;->optimizeInsertFromSelect:Z

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_3

    .line 602
    :cond_5
    :goto_2
    invoke-direct {p0, v1}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v2

    .line 604
    :goto_3
    iget-object v3, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lorg/h2/command/dml/Select;->sortUsingIndex:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lorg/h2/command/dml/Select;->distinct:Z

    if-eqz v3, :cond_7

    .line 605
    :cond_6
    invoke-direct {p0, v2}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v2

    .line 606
    iget-object v3, p0, Lorg/h2/command/dml/Select;->sort:Lorg/h2/result/SortOrder;

    invoke-virtual {v2, v3}, Lorg/h2/result/LocalResult;->setSortOrder(Lorg/h2/result/SortOrder;)V

    .line 608
    :cond_7
    iget-boolean v3, p0, Lorg/h2/command/dml/Select;->distinct:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lorg/h2/command/dml/Select;->isDistinctQuery:Z

    if-nez v3, :cond_8

    .line 609
    invoke-direct {p0, v2}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v2

    .line 610
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->setDistinct()V

    .line 612
    :cond_8
    iget-boolean v3, p0, Lorg/h2/command/dml/Select;->randomAccessResult:Z

    if-eqz v3, :cond_9

    .line 613
    invoke-direct {p0, v2}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v2

    .line 615
    :cond_9
    iget-boolean v3, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lorg/h2/command/dml/Select;->isGroupSortedQuery:Z

    if-nez v3, :cond_a

    .line 616
    invoke-direct {p0, v2}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v2

    :cond_a
    if-gez p1, :cond_b

    .line 618
    iget-object v3, p0, Lorg/h2/command/dml/Select;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz v3, :cond_c

    .line 619
    :cond_b
    invoke-direct {p0, v2}, Lorg/h2/command/dml/Select;->createLocalResult(Lorg/h2/result/LocalResult;)Lorg/h2/result/LocalResult;

    move-result-object v2

    .line 621
    :cond_c
    iget-object v3, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    iget-object v4, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4}, Lorg/h2/table/TableFilter;->startQuery(Lorg/h2/engine/Session;)V

    .line 622
    iget-object v3, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->reset()V

    .line 623
    iget-boolean v3, p0, Lorg/h2/command/dml/Select;->isForUpdate:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    .line 624
    :goto_4
    iget-boolean v5, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    if-eqz v5, :cond_12

    .line 625
    iget-boolean v5, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-nez v5, :cond_11

    .line 628
    iget-boolean v5, p0, Lorg/h2/command/dml/Select;->distinct:Z

    if-nez v5, :cond_10

    .line 631
    iget-boolean v5, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    if-nez v5, :cond_f

    .line 634
    iget-object v5, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v5}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v5

    if-nez v5, :cond_e

    goto :goto_5

    :cond_e
    const-string p1, "MVCC=TRUE && FOR UPDATE && JOIN"

    .line 635
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_f
    const-string p1, "MVCC=TRUE && FOR UPDATE && AGGREGATE"

    .line 632
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_10
    const-string p1, "MVCC=TRUE && FOR UPDATE && DISTINCT"

    .line 629
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_11
    const-string p1, "MVCC=TRUE && FOR UPDATE && GROUP"

    .line 626
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 639
    :cond_12
    :goto_5
    iget-object v5, p0, Lorg/h2/command/dml/Select;->topTableFilter:Lorg/h2/table/TableFilter;

    iget-object v6, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6, v3, v3}, Lorg/h2/table/TableFilter;->lock(Lorg/h2/engine/Session;ZZ)V

    if-eqz v2, :cond_13

    move-object v3, v2

    goto :goto_6

    :cond_13
    move-object v3, p2

    :goto_6
    if-eqz p1, :cond_19

    .line 643
    :try_start_0
    iget-boolean v5, p0, Lorg/h2/command/dml/Select;->isQuickAggregateQuery:Z

    if-eqz v5, :cond_14

    .line 644
    invoke-direct {p0, v0, v3}, Lorg/h2/command/dml/Select;->queryQuick(ILorg/h2/result/ResultTarget;)V

    goto :goto_7

    .line 645
    :cond_14
    iget-boolean v5, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    if-eqz v5, :cond_16

    .line 646
    iget-boolean v5, p0, Lorg/h2/command/dml/Select;->isGroupSortedQuery:Z

    if-eqz v5, :cond_15

    .line 647
    invoke-direct {p0, v0, v3}, Lorg/h2/command/dml/Select;->queryGroupSorted(ILorg/h2/result/ResultTarget;)V

    goto :goto_7

    .line 649
    :cond_15
    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/Select;->queryGroup(ILorg/h2/result/LocalResult;)V

    goto :goto_7

    .line 651
    :cond_16
    iget-boolean v5, p0, Lorg/h2/command/dml/Select;->isDistinctQuery:Z

    if-eqz v5, :cond_17

    int-to-long v5, p1

    .line 652
    invoke-direct {p0, v3, v5, v6}, Lorg/h2/command/dml/Select;->queryDistinct(Lorg/h2/result/ResultTarget;J)V

    goto :goto_7

    :cond_17
    int-to-long v5, p1

    .line 654
    invoke-direct {p0, v0, v3, v5, v6}, Lorg/h2/command/dml/Select;->queryFlat(ILorg/h2/result/ResultTarget;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :goto_7
    invoke-virtual {p0}, Lorg/h2/command/dml/Select;->getJoinBatch()Lorg/h2/table/JoinBatch;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 659
    invoke-virtual {v0, v4}, Lorg/h2/table/JoinBatch;->reset(Z)V

    goto :goto_8

    :catchall_0
    move-exception p1

    .line 657
    invoke-virtual {p0}, Lorg/h2/command/dml/Select;->getJoinBatch()Lorg/h2/table/JoinBatch;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 659
    invoke-virtual {p2, v4}, Lorg/h2/table/JoinBatch;->reset(Z)V

    .line 661
    :cond_18
    throw p1

    .line 663
    :cond_19
    :goto_8
    iget-object v0, p0, Lorg/h2/command/dml/Select;->offsetExpr:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1a

    .line 664
    iget-object v0, p0, Lorg/h2/command/dml/Select;->offsetExpr:Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/h2/result/LocalResult;->setOffset(I)V

    :cond_1a
    if-ltz p1, :cond_1b

    .line 667
    invoke-virtual {v2, p1}, Lorg/h2/result/LocalResult;->setLimit(I)V

    :cond_1b
    if-eqz v2, :cond_1e

    .line 670
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->done()V

    if-eqz p2, :cond_1d

    .line 672
    :goto_9
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->next()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 673
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    goto :goto_9

    .line 675
    :cond_1c
    invoke-virtual {v2}, Lorg/h2/result/LocalResult;->close()V

    return-object v1

    :cond_1d
    return-object v2

    :cond_1e
    return-object v1
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 2

    .line 1237
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    .line 1238
    invoke-virtual {v1, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    goto :goto_0

    .line 1240
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    .line 1241
    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_1
    return-void
.end method

.method public setExpressions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    return-void
.end method

.method public setForUpdate(Z)V
    .locals 1

    .line 1218
    iput-boolean p1, p0, Lorg/h2/command/dml/Select;->isForUpdate:Z

    .line 1219
    iget-object v0, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->selectForUpdateMvcc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/Select;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    iput-boolean p1, p0, Lorg/h2/command/dml/Select;->isForUpdateMvcc:Z

    :cond_0
    return-void
.end method

.method public setGroupBy(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lorg/h2/command/dml/Select;->group:Ljava/util/ArrayList;

    return-void
.end method

.method public setGroupQuery()V
    .locals 1

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lorg/h2/command/dml/Select;->isGroupQuery:Z

    return-void
.end method

.method public setHaving(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 1195
    iput-object p1, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setOrder(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;)V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lorg/h2/command/dml/Select;->orderList:Ljava/util/ArrayList;

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 2

    .line 1302
    iget-object v0, p0, Lorg/h2/command/dml/Select;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    .line 1303
    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    goto :goto_0

    .line 1305
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lorg/h2/command/dml/Select;->condition:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    .line 1308
    :cond_1
    iget-object v0, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_2

    .line 1309
    iget-object v0, p0, Lorg/h2/command/dml/Select;->having:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_2
    return-void
.end method
