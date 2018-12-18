.class public Lorg/h2/index/TreeIndex;
.super Lorg/h2/index/BaseIndex;
.source "TreeIndex.java"


# instance fields
.field private closed:Z

.field private root:Lorg/h2/index/TreeNode;

.field private rowCount:J

.field private final tableData:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    .line 34
    invoke-virtual/range {p0 .. p5}, Lorg/h2/index/TreeIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    .line 35
    iput-object p1, p0, Lorg/h2/index/TreeIndex;->tableData:Lorg/h2/table/RegularTable;

    .line 36
    iget-object p1, p0, Lorg/h2/index/TreeIndex;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isStarting()Z

    move-result p1

    if-nez p1, :cond_0

    .line 37
    invoke-static {p4}, Lorg/h2/index/TreeIndex;->checkIndexColumnTypes([Lorg/h2/table/IndexColumn;)V

    :cond_0
    return-void
.end method

.method private balance(Lorg/h2/index/TreeNode;Z)V
    .locals 8

    :goto_0
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    .line 86
    :goto_1
    iget v2, p1, Lorg/h2/index/TreeNode;->balance:I

    mul-int v2, v2, v1

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "b:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lorg/h2/index/TreeNode;->balance:I

    mul-int v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_b

    .line 88
    :pswitch_0
    iput v3, p1, Lorg/h2/index/TreeNode;->balance:I

    return-void

    :pswitch_1
    neg-int p2, v1

    .line 91
    iput p2, p1, Lorg/h2/index/TreeNode;->balance:I

    goto/16 :goto_b

    .line 94
    :pswitch_2
    invoke-static {p1, p2}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v2

    .line 95
    iget v4, v2, Lorg/h2/index/TreeNode;->balance:I

    neg-int v5, v1

    if-ne v4, v5, :cond_3

    .line 96
    invoke-direct {p0, p1, v2}, Lorg/h2/index/TreeIndex;->replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V

    if-nez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 97
    :goto_2
    invoke-static {v2, v1}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    if-nez p2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 98
    :goto_3
    invoke-static {v2, v0, p1}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    .line 99
    iput v3, p1, Lorg/h2/index/TreeNode;->balance:I

    .line 100
    iput v3, v2, Lorg/h2/index/TreeNode;->balance:I

    goto :goto_a

    :cond_3
    if-nez p2, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 102
    :goto_4
    invoke-static {v2, v4}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v4

    .line 103
    invoke-direct {p0, p1, v4}, Lorg/h2/index/TreeIndex;->replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V

    if-nez p2, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    .line 104
    :goto_5
    invoke-static {v4, p2}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    .line 105
    invoke-static {v4, p2, v2}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    if-nez p2, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    .line 106
    :goto_6
    invoke-static {v4, v6}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v6

    invoke-static {p1, p2, v6}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    if-nez p2, :cond_7

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    .line 107
    :goto_7
    invoke-static {v4, v0, p1}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    .line 108
    iget p2, v4, Lorg/h2/index/TreeNode;->balance:I

    if-ne p2, v5, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    .line 109
    :goto_8
    iput v0, p1, Lorg/h2/index/TreeNode;->balance:I

    if-ne p2, v1, :cond_9

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    .line 110
    :goto_9
    iput v5, v2, Lorg/h2/index/TreeNode;->balance:I

    .line 111
    iput v3, v4, Lorg/h2/index/TreeNode;->balance:I

    :goto_a
    return-void

    .line 117
    :goto_b
    iget-object p2, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    if-ne p1, p2, :cond_a

    return-void

    .line 120
    :cond_a
    invoke-virtual {p1}, Lorg/h2/index/TreeNode;->isFromLeft()Z

    move-result p2

    .line 121
    iget-object p1, p1, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;
    .locals 0

    if-eqz p1, :cond_0

    .line 126
    iget-object p0, p0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    :goto_0
    return-object p0
.end method

.method private find(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 2

    if-nez p1, :cond_2

    .line 308
    iget-object p1, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    :goto_0
    if-eqz p1, :cond_1

    .line 310
    iget-object v0, p1, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v0

    goto :goto_0

    .line 316
    :cond_1
    :goto_1
    new-instance v0, Lorg/h2/index/TreeCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/h2/index/TreeCursor;-><init>(Lorg/h2/index/TreeIndex;Lorg/h2/index/TreeNode;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 318
    invoke-direct {p0, p1, v0}, Lorg/h2/index/TreeIndex;->findFirstNode(Lorg/h2/result/SearchRow;Z)Lorg/h2/index/TreeNode;

    move-result-object v0

    .line 319
    new-instance v1, Lorg/h2/index/TreeCursor;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/h2/index/TreeCursor;-><init>(Lorg/h2/index/TreeIndex;Lorg/h2/index/TreeNode;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    return-object v1
.end method

.method private findFirstNode(Lorg/h2/result/SearchRow;Z)Lorg/h2/index/TreeNode;
    .locals 3

    .line 275
    iget-object v0, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_4

    .line 278
    iget-object v1, v0, Lorg/h2/index/TreeNode;->row:Lorg/h2/result/Row;

    invoke-virtual {p0, v1, p1}, Lorg/h2/index/TreeIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 280
    iget-object v1, v0, Lorg/h2/index/TreeNode;->row:Lorg/h2/result/Row;

    invoke-virtual {p0, v1, p1}, Lorg/h2/index/TreeIndex;->compareKeys(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v1

    :cond_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    return-object v0

    .line 286
    :cond_1
    iget-object v1, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 288
    iget-object v1, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto :goto_1

    .line 290
    :cond_3
    iget-object v1, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    :goto_1
    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    if-ne p1, v0, :cond_0

    .line 131
    iput-object p2, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 133
    iput-object p1, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p1, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    invoke-virtual {p1}, Lorg/h2/index/TreeNode;->isFromLeft()Z

    move-result p1

    invoke-static {v0, p1, p2}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 142
    iput-object p2, p0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto :goto_0

    .line 144
    :cond_0
    iput-object p2, p0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    :goto_0
    if-eqz p2, :cond_1

    .line 147
    iput-object p0, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 5

    .line 49
    iget-boolean p1, p0, Lorg/h2/index/TreeIndex;->closed:Z

    if-nez p1, :cond_6

    .line 52
    new-instance p1, Lorg/h2/index/TreeNode;

    invoke-direct {p1, p2}, Lorg/h2/index/TreeNode;-><init>(Lorg/h2/result/Row;)V

    .line 53
    iget-object v0, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    const/4 v1, 0x1

    move-object v2, v0

    const/4 v3, 0x1

    :goto_0
    if-nez v0, :cond_1

    const-wide/16 v0, 0x1

    if-nez v2, :cond_0

    .line 58
    iput-object p1, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    .line 59
    iget-wide p1, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    return-void

    .line 62
    :cond_0
    invoke-static {v2, v3, p1}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    .line 79
    invoke-direct {p0, v2, v3}, Lorg/h2/index/TreeIndex;->balance(Lorg/h2/index/TreeNode;Z)V

    .line 80
    iget-wide p1, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    return-void

    .line 65
    :cond_1
    iget-object v2, v0, Lorg/h2/index/TreeNode;->row:Lorg/h2/result/Row;

    .line 66
    invoke-virtual {p0, p2, v2}, Lorg/h2/index/TreeIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v3

    if-nez v3, :cond_4

    .line 68
    iget-object v3, p0, Lorg/h2/index/TreeIndex;->indexType:Lorg/h2/index/IndexType;

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    invoke-virtual {p0, p2}, Lorg/h2/index/TreeIndex;->containsNullAndAllowMultipleNull(Lorg/h2/result/SearchRow;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/index/TreeIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 73
    :cond_3
    :goto_1
    invoke-virtual {p0, p2, v2}, Lorg/h2/index/TreeIndex;->compareKeys(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v3

    :cond_4
    if-gez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 77
    :goto_2
    invoke-static {v0, v3}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    .line 50
    :cond_6
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

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lorg/h2/index/TreeIndex;->closed:Z

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 303
    invoke-direct {p0, p2, p3}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 298
    invoke-direct {p0, p2, p3}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 2

    .line 357
    iget-boolean v0, p0, Lorg/h2/index/TreeIndex;->closed:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 362
    invoke-virtual {p0, p1, v1, v1}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    .line 363
    :cond_0
    invoke-interface {p1}, Lorg/h2/index/Cursor;->next()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 364
    invoke-interface {p1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p2

    .line 365
    iget-object v1, p0, Lorg/h2/index/TreeIndex;->columnIds:[I

    aget v1, v1, v0

    invoke-interface {p2, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    .line 366
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p2, v1, :cond_0

    return-object p1

    :cond_1
    return-object p1

    .line 372
    :cond_2
    iget-object p1, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    :goto_0
    if-eqz p1, :cond_4

    .line 374
    iget-object p2, p1, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, p2

    goto :goto_0

    .line 380
    :cond_4
    :goto_1
    new-instance p2, Lorg/h2/index/TreeCursor;

    invoke-direct {p2, p0, p1, v1, v1}, Lorg/h2/index/TreeCursor;-><init>(Lorg/h2/index/TreeIndex;Lorg/h2/index/TreeNode;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    if-nez p1, :cond_5

    return-object p2

    .line 386
    :cond_5
    invoke-virtual {p2}, Lorg/h2/index/TreeCursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    .line 390
    :cond_6
    iget-object v1, p0, Lorg/h2/index/TreeIndex;->columnIds:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 391
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p1, v1, :cond_7

    return-object p2

    .line 394
    :cond_7
    invoke-virtual {p2}, Lorg/h2/index/TreeCursor;->previous()Z

    move-result p1

    if-nez p1, :cond_5

    :goto_2
    return-object p2

    .line 358
    :cond_8
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 9
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

    .line 325
    iget-object p1, p0, Lorg/h2/index/TreeIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {p1}, Lorg/h2/table/RegularTable;->getRowCountApproximation()J

    move-result-wide v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/h2/index/TreeIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

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

    .line 400
    iget-wide v0, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 405
    iget-wide v0, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    return-wide v0
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 0

    .line 331
    invoke-virtual {p0, p1}, Lorg/h2/index/TreeIndex;->truncate(Lorg/h2/engine/Session;)V

    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 8

    .line 153
    iget-boolean p1, p0, Lorg/h2/index/TreeIndex;->closed:Z

    if-nez p1, :cond_16

    const/4 p1, 0x1

    .line 156
    invoke-direct {p0, p2, p1}, Lorg/h2/index/TreeIndex;->findFirstNode(Lorg/h2/result/SearchRow;Z)Lorg/h2/index/TreeNode;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 161
    iget-object v0, p2, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    goto/16 :goto_3

    .line 163
    :cond_0
    iget-object v0, p2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p2, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto/16 :goto_3

    .line 167
    :cond_1
    iget-object v0, p2, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    .line 168
    :goto_0
    iget-object v1, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 172
    :cond_2
    iget-object v1, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    .line 174
    iget v2, v0, Lorg/h2/index/TreeNode;->balance:I

    .line 175
    iget v3, p2, Lorg/h2/index/TreeNode;->balance:I

    iput v3, v0, Lorg/h2/index/TreeNode;->balance:I

    .line 176
    iput v2, p2, Lorg/h2/index/TreeNode;->balance:I

    .line 179
    iget-object v2, v0, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    .line 180
    iget-object v3, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    .line 181
    iget-object v4, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    if-ne p2, v4, :cond_3

    .line 182
    iput-object v0, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    .line 184
    :cond_3
    iput-object v3, v0, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    if-eqz v3, :cond_5

    .line 186
    iget-object v4, v3, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-ne v4, p2, :cond_4

    .line 187
    iput-object v0, v3, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    goto :goto_1

    .line 189
    :cond_4
    iput-object v0, v3, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    :cond_5
    :goto_1
    if-ne v2, p2, :cond_7

    .line 194
    iput-object v0, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    .line 195
    iget-object v2, p2, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    if-ne v2, v0, :cond_6

    .line 196
    iput-object p2, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    .line 197
    iget-object v2, p2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    iput-object v2, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    goto :goto_2

    .line 199
    :cond_6
    iput-object p2, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    .line 200
    iget-object v2, p2, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    iput-object v2, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto :goto_2

    .line 203
    :cond_7
    iput-object v2, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    .line 204
    iput-object p2, v2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    .line 205
    iget-object v2, p2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    iput-object v2, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    .line 206
    iget-object v2, p2, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    iput-object v2, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    .line 209
    :goto_2
    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-nez v2, :cond_8

    const-string v2, "tree corrupted"

    .line 210
    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 212
    :cond_8
    iget-object v2, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    iput-object v0, v2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    .line 213
    iget-object v2, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    iput-object v0, v2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    .line 215
    iput-object v1, p2, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    if-eqz v1, :cond_9

    .line 217
    iput-object p2, v1, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    :cond_9
    const/4 v0, 0x0

    .line 219
    iput-object v0, p2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    move-object v0, v1

    .line 222
    :goto_3
    iget-wide v1, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    .line 224
    invoke-virtual {p2}, Lorg/h2/index/TreeNode;->isFromLeft()Z

    move-result v1

    .line 225
    invoke-direct {p0, p2, v0}, Lorg/h2/index/TreeIndex;->replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V

    .line 226
    iget-object p2, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    :goto_4
    if-eqz p2, :cond_14

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, -0x1

    .line 230
    :goto_5
    iget v2, p2, Lorg/h2/index/TreeNode;->balance:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lorg/h2/index/TreeNode;->balance:I

    mul-int v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_d

    :pswitch_0
    if-nez v1, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 238
    :goto_6
    invoke-static {p2, v2}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v2

    .line 239
    iget v4, v2, Lorg/h2/index/TreeNode;->balance:I

    mul-int v5, v4, v0

    if-ltz v5, :cond_e

    .line 241
    invoke-direct {p0, p2, v2}, Lorg/h2/index/TreeIndex;->replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V

    if-nez v1, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    .line 242
    :goto_7
    invoke-static {v2, v1}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    .line 243
    invoke-static {v2, v1, p2}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    if-nez v4, :cond_d

    .line 245
    iput v0, p2, Lorg/h2/index/TreeNode;->balance:I

    neg-int p1, v0

    .line 246
    iput p1, v2, Lorg/h2/index/TreeNode;->balance:I

    return-void

    .line 249
    :cond_d
    iput v3, p2, Lorg/h2/index/TreeNode;->balance:I

    .line 250
    iput v3, v2, Lorg/h2/index/TreeNode;->balance:I

    move-object p2, v2

    goto :goto_d

    .line 253
    :cond_e
    invoke-static {v2, v1}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v4

    .line 254
    invoke-direct {p0, p2, v4}, Lorg/h2/index/TreeIndex;->replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V

    .line 255
    iget v5, v4, Lorg/h2/index/TreeNode;->balance:I

    if-nez v1, :cond_f

    const/4 v6, 0x1

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    .line 256
    :goto_8
    invoke-static {v4, v6}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    if-nez v1, :cond_10

    const/4 v6, 0x1

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    .line 257
    :goto_9
    invoke-static {v4, v6, v2}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    if-nez v1, :cond_11

    const/4 v6, 0x1

    goto :goto_a

    :cond_11
    const/4 v6, 0x0

    .line 258
    :goto_a
    invoke-static {v4, v1}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    .line 259
    invoke-static {v4, v1, p2}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    if-ne v5, v0, :cond_12

    neg-int v1, v0

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    .line 260
    :goto_b
    iput v1, p2, Lorg/h2/index/TreeNode;->balance:I

    neg-int p2, v0

    if-ne v5, p2, :cond_13

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    .line 261
    :goto_c
    iput v0, v2, Lorg/h2/index/TreeNode;->balance:I

    .line 262
    iput v3, v4, Lorg/h2/index/TreeNode;->balance:I

    move-object p2, v4

    goto :goto_d

    .line 235
    :pswitch_1
    iput v0, p2, Lorg/h2/index/TreeNode;->balance:I

    return-void

    .line 232
    :pswitch_2
    iput v3, p2, Lorg/h2/index/TreeNode;->balance:I

    .line 269
    :goto_d
    invoke-virtual {p2}, Lorg/h2/index/TreeNode;->isFromLeft()Z

    move-result v1

    .line 270
    iget-object p2, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    goto/16 :goto_4

    :cond_14
    return-void

    :cond_15
    const-string p1, "not found!"

    .line 158
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 154
    :cond_16
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    const/4 p1, 0x0

    .line 336
    iput-object p1, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    const-wide/16 v0, 0x0

    .line 337
    iput-wide v0, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    return-void
.end method
