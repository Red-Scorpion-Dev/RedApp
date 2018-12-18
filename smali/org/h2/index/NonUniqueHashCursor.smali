.class public Lorg/h2/index/NonUniqueHashCursor;
.super Ljava/lang/Object;
.source "NonUniqueHashCursor.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private index:I

.field private final positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lorg/h2/engine/Session;

.field private final tableData:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/table/RegularTable;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Lorg/h2/table/RegularTable;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lorg/h2/index/NonUniqueHashCursor;->index:I

    .line 29
    iput-object p1, p0, Lorg/h2/index/NonUniqueHashCursor;->session:Lorg/h2/engine/Session;

    .line 30
    iput-object p2, p0, Lorg/h2/index/NonUniqueHashCursor;->tableData:Lorg/h2/table/RegularTable;

    .line 31
    iput-object p3, p0, Lorg/h2/index/NonUniqueHashCursor;->positions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 4

    .line 36
    iget v0, p0, Lorg/h2/index/NonUniqueHashCursor;->index:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/h2/index/NonUniqueHashCursor;->index:I

    iget-object v1, p0, Lorg/h2/index/NonUniqueHashCursor;->positions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/h2/index/NonUniqueHashCursor;->tableData:Lorg/h2/table/RegularTable;

    iget-object v1, p0, Lorg/h2/index/NonUniqueHashCursor;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/index/NonUniqueHashCursor;->positions:Ljava/util/ArrayList;

    iget v3, p0, Lorg/h2/index/NonUniqueHashCursor;->index:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/table/RegularTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/h2/index/NonUniqueHashCursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method public next()Z
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/h2/index/NonUniqueHashCursor;->positions:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/index/NonUniqueHashCursor;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/NonUniqueHashCursor;->index:I

    iget-object v2, p0, Lorg/h2/index/NonUniqueHashCursor;->positions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public previous()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/h2/index/NonUniqueHashCursor;->positions:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/index/NonUniqueHashCursor;->index:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/NonUniqueHashCursor;->index:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
