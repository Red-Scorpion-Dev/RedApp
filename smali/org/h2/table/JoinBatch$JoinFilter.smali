.class final Lorg/h2/table/JoinBatch$JoinFilter;
.super Ljava/lang/Object;
.source "JoinBatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JoinFilter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final filter:Lorg/h2/table/TableFilter;

.field final id:I

.field final join:Lorg/h2/table/JoinBatch$JoinFilter;

.field final lookupBatch:Lorg/h2/index/IndexLookupBatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 447
    const-class v0, Lorg/h2/table/JoinBatch;

    return-void
.end method

.method constructor <init>(Lorg/h2/index/IndexLookupBatch;Lorg/h2/table/TableFilter;Lorg/h2/table/JoinBatch$JoinFilter;)V
    .locals 0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p2, p0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    .line 455
    invoke-virtual {p2}, Lorg/h2/table/TableFilter;->getJoinFilterId()I

    move-result p2

    iput p2, p0, Lorg/h2/table/JoinBatch$JoinFilter;->id:I

    .line 456
    iput-object p3, p0, Lorg/h2/table/JoinBatch$JoinFilter;->join:Lorg/h2/table/JoinBatch$JoinFilter;

    .line 457
    iput-object p1, p0, Lorg/h2/table/JoinBatch$JoinFilter;->lookupBatch:Lorg/h2/index/IndexLookupBatch;

    return-void
.end method


# virtual methods
.method collectSearchRows()Z
    .locals 3

    .line 488
    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getIndexCursor()Lorg/h2/index/IndexCursor;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->getIndexConditions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/index/IndexCursor;->prepare(Lorg/h2/engine/Session;Ljava/util/ArrayList;)V

    .line 490
    invoke-virtual {v0}, Lorg/h2/index/IndexCursor;->isAlwaysFalse()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 493
    :cond_0
    iget-object v1, p0, Lorg/h2/table/JoinBatch$JoinFilter;->lookupBatch:Lorg/h2/index/IndexLookupBatch;

    invoke-virtual {v0}, Lorg/h2/index/IndexCursor;->getStart()Lorg/h2/result/SearchRow;

    move-result-object v2

    invoke-virtual {v0}, Lorg/h2/index/IndexCursor;->getEnd()Lorg/h2/result/SearchRow;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/h2/index/IndexLookupBatch;->addSearchRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Z

    move-result v0

    return v0
.end method

.method find()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;>;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinFilter;->lookupBatch:Lorg/h2/index/IndexLookupBatch;

    invoke-interface {v0}, Lorg/h2/index/IndexLookupBatch;->find()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method find(Lorg/h2/table/JoinBatch$JoinRow;)Lorg/h2/table/JoinBatch$JoinRow;
    .locals 9

    .line 505
    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinFilter;->lookupBatch:Lorg/h2/index/IndexLookupBatch;

    invoke-interface {v0}, Lorg/h2/index/IndexLookupBatch;->find()Ljava/util/List;

    move-result-object v0

    .line 508
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_3

    .line 510
    iget v2, p0, Lorg/h2/table/JoinBatch$JoinFilter;->id:I

    invoke-virtual {p1, v2}, Lorg/h2/table/JoinBatch$JoinRow;->row(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/h2/table/JoinBatch;->EMPTY_CURSOR:Lorg/h2/index/Cursor;

    if-ne v2, v3, :cond_0

    .line 512
    iget-object p1, p1, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 516
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/concurrent/Future;

    if-nez v4, :cond_1

    .line 518
    iget v3, p0, Lorg/h2/table/JoinBatch$JoinFilter;->id:I

    sget-object v4, Lorg/h2/table/JoinBatch;->EMPTY_CURSOR:Lorg/h2/index/Cursor;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x2

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lorg/h2/table/JoinBatch$JoinRow;->updateRow(ILjava/lang/Object;JJ)V

    goto :goto_1

    .line 520
    :cond_1
    iget v3, p0, Lorg/h2/table/JoinBatch$JoinFilter;->id:I

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lorg/h2/table/JoinBatch$JoinRow;->updateRow(ILjava/lang/Object;JJ)V

    .line 522
    :goto_1
    iget-object v2, p1, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    .line 525
    :cond_2
    iget-object p1, p1, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    goto :goto_0

    .line 529
    :cond_3
    :goto_2
    iget-object v0, p1, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    iget v1, p0, Lorg/h2/table/JoinBatch$JoinFilter;->id:I

    invoke-virtual {v0, v1}, Lorg/h2/table/JoinBatch$JoinRow;->row(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/h2/table/JoinBatch;->EMPTY_CURSOR:Lorg/h2/index/Cursor;

    if-ne v0, v1, :cond_4

    .line 530
    iget-object p1, p1, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method getNullRow()Lorg/h2/result/Row;
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Table;->getNullRow()Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method isBatchFull()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinFilter;->lookupBatch:Lorg/h2/index/IndexLookupBatch;

    invoke-interface {v0}, Lorg/h2/index/IndexLookupBatch;->isBatchFull()Z

    move-result v0

    return v0
.end method

.method isOk(Z)Z
    .locals 3

    .line 480
    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    iget-object v1, p0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {v1}, Lorg/h2/table/TableFilter;->getFilterCondition()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/table/TableFilter;->isOk(Lorg/h2/expression/Expression;)Z

    move-result v0

    .line 481
    iget-object v1, p0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    iget-object v2, p0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {v2}, Lorg/h2/table/TableFilter;->getJoinCondition()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/table/TableFilter;->isOk(Lorg/h2/expression/Expression;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isOuterJoin()Z
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->isJoinOuter()Z

    move-result v0

    return v0
.end method

.method reset(Z)V
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinFilter;->lookupBatch:Lorg/h2/index/IndexLookupBatch;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinFilter;->lookupBatch:Lorg/h2/index/IndexLookupBatch;

    invoke-interface {v0, p1}, Lorg/h2/index/IndexLookupBatch;->reset(Z)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JoinFilter->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
