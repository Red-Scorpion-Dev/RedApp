.class public Lorg/h2/index/MultiVersionIndex;
.super Ljava/lang/Object;
.source "MultiVersionIndex.java"

# interfaces
.implements Lorg/h2/index/Index;


# instance fields
.field private final base:Lorg/h2/index/Index;

.field private final delta:Lorg/h2/index/TreeIndex;

.field private final firstColumn:Lorg/h2/table/Column;

.field private final sync:Ljava/lang/Object;

.field private final table:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/index/Index;Lorg/h2/table/RegularTable;)V
    .locals 8

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    .line 42
    iput-object p2, p0, Lorg/h2/index/MultiVersionIndex;->table:Lorg/h2/table/RegularTable;

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v6

    .line 44
    instance-of v1, p1, Lorg/h2/index/SpatialIndex;

    if-nez v1, :cond_0

    .line 48
    new-instance v7, Lorg/h2/index/TreeIndex;

    const/4 v3, -0x1

    const-string v4, "DELTA"

    invoke-interface {p1}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v5

    move-object v1, v7

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lorg/h2/index/TreeIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object v7, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    .line 50
    iget-object p2, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/h2/index/TreeIndex;->setMultiVersion(Z)V

    .line 51
    invoke-interface {p1}, Lorg/h2/index/Index;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    .line 52
    invoke-interface {p1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/h2/index/MultiVersionIndex;->firstColumn:Lorg/h2/table/Column;

    return-void

    :cond_0
    const p1, 0xc3b4

    const-string p2, "MVCC & spatial index"

    .line 45
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private removeIfExists(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z
    .locals 7

    .line 174
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v0, p1, p2, p2}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    .line 175
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/h2/result/Row;->getKey()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    invoke-virtual {v1}, Lorg/h2/result/Row;->getVersion()I

    move-result v2

    invoke-virtual {p2}, Lorg/h2/result/Row;->getVersion()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    if-eq v1, p2, :cond_1

    .line 178
    iget-object v3, p0, Lorg/h2/index/MultiVersionIndex;->table:Lorg/h2/table/RegularTable;

    invoke-virtual {v3, p1}, Lorg/h2/table/RegularTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v3

    invoke-interface {v3, v1, p2}, Lorg/h2/index/Index;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    invoke-virtual {v1}, Lorg/h2/result/Row;->getVersion()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Lorg/h2/result/Row;->setVersion(I)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object p2, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {p2, p1, v1}, Lorg/h2/index/TreeIndex;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1, p2}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/h2/index/MultiVersionIndex;->removeIfExists(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v1, p1, p2}, Lorg/h2/index/TreeIndex;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 65
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public canFindNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->canGetFirstOrLast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/TreeIndex;->canGetFirstOrLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScan()Z
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->canScan()Z

    move-result v0

    return v0
.end method

.method public checkRename()V
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->checkRename()V

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1}, Lorg/h2/index/Index;->close(Lorg/h2/engine/Session;)V

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public commit(ILorg/h2/result/Row;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 219
    :try_start_0
    invoke-direct {p0, v0, p2}, Lorg/h2/index/MultiVersionIndex;->removeIfExists(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z

    .line 220
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1, p2}, Lorg/h2/index/Index;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result p1

    return p1
.end method

.method public createLookupBatch(Lorg/h2/table/TableFilter;)Lorg/h2/index/IndexLookupBatch;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 8

    .line 87
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1, p2, p3}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v5

    .line 89
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v1, p1, p2, p3}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v6

    .line 90
    new-instance p2, Lorg/h2/index/MultiVersionCursor;

    iget-object v7, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/h2/index/MultiVersionCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/MultiVersionIndex;Lorg/h2/index/Cursor;Lorg/h2/index/Cursor;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 8

    .line 77
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1, p2, p3}, Lorg/h2/index/Index;->find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v5

    .line 79
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v1, p1, p2, p3}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v6

    .line 80
    new-instance p2, Lorg/h2/index/MultiVersionCursor;

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object v3

    iget-object v7, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/h2/index/MultiVersionCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/MultiVersionIndex;Lorg/h2/index/Cursor;Lorg/h2/index/Cursor;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 7

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 114
    invoke-virtual {p0, p1, p2, p2}, Lorg/h2/index/MultiVersionIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    .line 115
    :cond_0
    invoke-interface {p1}, Lorg/h2/index/Cursor;->next()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 116
    invoke-interface {p1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p2

    .line 117
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->firstColumn:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    invoke-interface {p2, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    .line 118
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p2, v0, :cond_0

    return-object p1

    :cond_1
    return-object p1

    .line 124
    :cond_2
    iget-object p2, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lorg/h2/index/Index;->findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;

    move-result-object v4

    .line 125
    iget-object p2, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {p2, p1, v0}, Lorg/h2/index/TreeIndex;->findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;

    move-result-object v5

    .line 126
    new-instance p2, Lorg/h2/index/MultiVersionCursor;

    iget-object v6, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/h2/index/MultiVersionCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/MultiVersionIndex;Lorg/h2/index/Cursor;Lorg/h2/index/Cursor;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p2}, Lorg/h2/index/MultiVersionCursor;->loadCurrent()V

    .line 130
    :cond_3
    invoke-virtual {p2}, Lorg/h2/index/MultiVersionCursor;->previous()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 131
    invoke-virtual {p2}, Lorg/h2/index/MultiVersionCursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 135
    :cond_4
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->firstColumn:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 136
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p1, v0, :cond_3

    return-object p2

    :cond_5
    :goto_0
    return-object p2
.end method

.method public findNext(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 96
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getBaseIndex()Lorg/h2/index/Index;
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result p1

    return p1
.end method

.method public getColumns()[Lorg/h2/table/Column;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 7
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

    .line 147
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/h2/index/Index;->getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D

    move-result-wide p1

    return-wide p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1, p2}, Lorg/h2/index/Index;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDatabase()Lorg/h2/engine/Database;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getDiskSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getDropSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getId()I

    move-result v0

    return v0
.end method

.method public getIndexColumns()[Lorg/h2/table/IndexColumn;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v0

    return-object v0
.end method

.method public getIndexType()Lorg/h2/index/IndexType;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getPlanSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1, p2, p3}, Lorg/h2/index/Index;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    .line 270
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    .line 353
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchema()Lorg/h2/schema/Schema;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getType()I

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isRowIdIndex()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->isRowIdIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/TreeIndex;->isRowIdIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTemporary()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->isTemporary()Z

    move-result v0

    return v0
.end method

.method public isUncommittedFromOtherSession(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v0, p1, p2, p2}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p2

    .line 165
    invoke-interface {p2}, Lorg/h2/index/Cursor;->next()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 166
    invoke-interface {p2}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object p2

    .line 167
    invoke-virtual {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result p2

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public needRebuild()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->needRebuild()Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;)V

    .line 205
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1, p2}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 193
    invoke-direct {p0, p1, p2}, Lorg/h2/index/MultiVersionIndex;->removeIfExists(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v1, p1, p2}, Lorg/h2/index/TreeIndex;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 198
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->table:Lorg/h2/table/RegularTable;

    invoke-virtual {v1, p0}, Lorg/h2/table/RegularTable;->removeIndex(Lorg/h2/index/Index;)V

    .line 287
    invoke-virtual {p0, p1}, Lorg/h2/index/MultiVersionIndex;->remove(Lorg/h2/engine/Session;)V

    .line 288
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public rename(Ljava/lang/String;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->rename(Ljava/lang/String;)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->setComment(Ljava/lang/String;)V

    return-void
.end method

.method public setSortedInsertMode(Z)V
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->setSortedInsertMode(Z)V

    .line 388
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v0, p1}, Lorg/h2/index/TreeIndex;->setSortedInsertMode(Z)V

    return-void
.end method

.method public setTemporary(Z)V
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->setTemporary(Z)V

    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v1, p1}, Lorg/h2/index/TreeIndex;->truncate(Lorg/h2/engine/Session;)V

    .line 212
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1}, Lorg/h2/index/Index;->truncate(Lorg/h2/engine/Session;)V

    .line 213
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
