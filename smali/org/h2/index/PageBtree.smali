.class public abstract Lorg/h2/index/PageBtree;
.super Lorg/h2/store/Page;
.source "PageBtree.java"


# static fields
.field static final ROOT:I = 0x0

.field static final UNKNOWN_ROWCOUNT:I = -0x1


# instance fields
.field protected final data:Lorg/h2/store/Data;

.field protected entryCount:I

.field protected final index:Lorg/h2/index/PageBtreeIndex;

.field private final memoryEstimated:I

.field protected offsets:[I

.field protected onlyPosition:Z

.field protected parentPageId:I

.field protected rows:[Lorg/h2/result/SearchRow;

.field protected start:I

.field protected written:Z


# direct methods
.method constructor <init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/h2/store/Page;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    .line 79
    iput-object p3, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    .line 80
    invoke-virtual {p0, p2}, Lorg/h2/index/PageBtree;->setPos(I)V

    .line 81
    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getMemoryPerPage()I

    move-result p1

    iput p1, p0, Lorg/h2/index/PageBtree;->memoryEstimated:I

    return-void
.end method


# virtual methods
.method abstract addRowTry(Lorg/h2/result/SearchRow;)I
.end method

.method public canRemove()Z
    .locals 5

    .line 289
    iget-wide v0, p0, Lorg/h2/index/PageBtree;->changeCount:J

    iget-object v2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method find(Lorg/h2/result/SearchRow;ZZZ)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 111
    :cond_0
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    :goto_0
    if-ge v0, v1, :cond_6

    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 115
    invoke-virtual {p0, v2}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v4, v3, p1}, Lorg/h2/index/PageBtreeIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v4

    if-nez v4, :cond_3

    if-eqz p3, :cond_2

    .line 118
    iget-object v5, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v5, v5, Lorg/h2/index/PageBtreeIndex;->indexType:Lorg/h2/index/IndexType;

    invoke-virtual {v5}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    iget-object v5, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v5, p1}, Lorg/h2/index/PageBtreeIndex;->containsNullAndAllowMultipleNull(Lorg/h2/result/SearchRow;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    iget-object p2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/index/PageBtreeIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 124
    iget-object v4, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v4, v3, p1}, Lorg/h2/index/PageBtreeIndex;->compareKeys(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    if-gtz v4, :cond_5

    if-nez p2, :cond_4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_5
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_6
    return v0
.end method

.method abstract find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V
.end method

.method abstract freeRecursive()V
.end method

.method abstract getFirstLeaf()Lorg/h2/index/PageBtreeLeaf;
.end method

.method abstract getLastLeaf()Lorg/h2/index/PageBtreeLeaf;
.end method

.method public getMemory()I
    .locals 1

    .line 284
    iget v0, p0, Lorg/h2/index/PageBtree;->memoryEstimated:I

    return v0
.end method

.method getRow(I)Lorg/h2/result/SearchRow;
    .locals 5

    .line 171
    iget-object v0, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-object v2, p0, Lorg/h2/index/PageBtree;->offsets:[I

    aget v2, v2, p1

    iget-boolean v3, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/h2/index/PageBtreeIndex;->readRow(Lorg/h2/store/Data;IZZ)Lorg/h2/result/SearchRow;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->memoryChange()V

    .line 175
    iget-object v1, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    aput-object v0, v1, p1

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->hasData(Lorg/h2/result/SearchRow;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-interface {v0}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/h2/index/PageBtreeIndex;->readRow(J)Lorg/h2/result/SearchRow;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->memoryChange()V

    .line 179
    iget-object v1, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    aput-object v0, v1, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method abstract getRowCount()I
.end method

.method abstract last(Lorg/h2/index/PageBtreeCursor;)V
.end method

.method protected memoryChange()V
    .locals 0

    return-void
.end method

.method protected readAllRows()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 264
    :goto_0
    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge v1, v2, :cond_1

    .line 265
    iget-object v2, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 267
    iget-object v2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v3, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-object v4, p0, Lorg/h2/index/PageBtree;->offsets:[I

    aget v4, v4, v1

    iget-boolean v5, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    invoke-virtual {v2, v3, v4, v5, v0}, Lorg/h2/index/PageBtreeIndex;->readRow(Lorg/h2/store/Data;IZZ)Lorg/h2/result/SearchRow;

    move-result-object v2

    .line 268
    iget-object v3, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method abstract remapChildren()V
.end method

.method abstract remove(Lorg/h2/result/SearchRow;)Lorg/h2/result/SearchRow;
.end method

.method setPageId(I)V
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/index/PageBtree;->changeCount:J

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lorg/h2/index/PageBtree;->written:Z

    .line 208
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->removeFromCache(I)V

    .line 209
    invoke-virtual {p0, p1}, Lorg/h2/index/PageBtree;->setPos(I)V

    .line 210
    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 211
    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->remapChildren()V

    return-void
.end method

.method setParentPageId(I)V
    .locals 2

    .line 234
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 235
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/index/PageBtree;->changeCount:J

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lorg/h2/index/PageBtree;->written:Z

    .line 237
    iput p1, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    return-void
.end method

.method abstract setRowCountStored(I)V
.end method

.method abstract split(I)Lorg/h2/index/PageBtree;
.end method
