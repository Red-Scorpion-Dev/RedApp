.class public Lorg/h2/index/PageBtreeCursor;
.super Ljava/lang/Object;
.source "PageBtreeCursor.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private current:Lorg/h2/index/PageBtreeLeaf;

.field private currentRow:Lorg/h2/result/Row;

.field private currentSearchRow:Lorg/h2/result/SearchRow;

.field private i:I

.field private final index:Lorg/h2/index/PageBtreeIndex;

.field private final last:Lorg/h2/result/SearchRow;

.field private final session:Lorg/h2/engine/Session;


# direct methods
.method constructor <init>(Lorg/h2/engine/Session;Lorg/h2/index/PageBtreeIndex;Lorg/h2/result/SearchRow;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/h2/index/PageBtreeCursor;->session:Lorg/h2/engine/Session;

    .line 27
    iput-object p2, p0, Lorg/h2/index/PageBtreeCursor;->index:Lorg/h2/index/PageBtreeIndex;

    .line 28
    iput-object p3, p0, Lorg/h2/index/PageBtreeCursor;->last:Lorg/h2/result/SearchRow;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 4

    .line 44
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentRow:Lorg/h2/result/Row;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v1, p0, Lorg/h2/index/PageBtreeCursor;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/index/PageBtreeIndex;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentRow:Lorg/h2/result/Row;

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentRow:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    return-object v0
.end method

.method public next()Z
    .locals 5

    .line 57
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    iget v0, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    iget-object v2, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeLeaf;->getEntryCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 61
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    invoke-virtual {v0, p0}, Lorg/h2/index/PageBtreeLeaf;->nextPage(Lorg/h2/index/PageBtreeCursor;)V

    .line 62
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    if-nez v0, :cond_1

    return v1

    .line 66
    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    iget v2, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    invoke-virtual {v0, v2}, Lorg/h2/index/PageBtreeLeaf;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentRow:Lorg/h2/result/Row;

    .line 68
    iget-object v2, p0, Lorg/h2/index/PageBtreeCursor;->last:Lorg/h2/result/SearchRow;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/h2/index/PageBtreeCursor;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v3, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    iget-object v4, p0, Lorg/h2/index/PageBtreeCursor;->last:Lorg/h2/result/SearchRow;

    invoke-virtual {v2, v3, v4}, Lorg/h2/index/PageBtreeIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v2

    if-lez v2, :cond_2

    .line 69
    iput-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    return v1

    .line 72
    :cond_2
    iget v0, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    return v1
.end method

.method public previous()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 81
    :cond_0
    iget v0, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    if-gez v0, :cond_1

    .line 82
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    invoke-virtual {v0, p0}, Lorg/h2/index/PageBtreeLeaf;->previousPage(Lorg/h2/index/PageBtreeCursor;)V

    .line 83
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    if-nez v0, :cond_1

    return v1

    .line 87
    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    iget v1, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtreeLeaf;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentSearchRow:Lorg/h2/result/SearchRow;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lorg/h2/index/PageBtreeCursor;->currentRow:Lorg/h2/result/Row;

    .line 89
    iget v0, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    return v1
.end method

.method setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/h2/index/PageBtreeCursor;->current:Lorg/h2/index/PageBtreeLeaf;

    .line 39
    iput p2, p0, Lorg/h2/index/PageBtreeCursor;->i:I

    return-void
.end method
