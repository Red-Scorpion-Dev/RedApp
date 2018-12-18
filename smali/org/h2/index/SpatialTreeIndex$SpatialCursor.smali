.class final Lorg/h2/index/SpatialTreeIndex$SpatialCursor;
.super Ljava/lang/Object;
.source "SpatialTreeIndex.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/index/SpatialTreeIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpatialCursor"
.end annotation


# instance fields
.field private current:Lorg/h2/mvstore/rtree/SpatialKey;

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/h2/mvstore/rtree/SpatialKey;",
            ">;"
        }
    .end annotation
.end field

.field private session:Lorg/h2/engine/Session;

.field private final table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lorg/h2/table/Table;Lorg/h2/engine/Session;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/h2/mvstore/rtree/SpatialKey;",
            ">;",
            "Lorg/h2/table/Table;",
            "Lorg/h2/engine/Session;",
            ")V"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;->it:Ljava/util/Iterator;

    .line 279
    iput-object p2, p0, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;->table:Lorg/h2/table/Table;

    .line 280
    iput-object p3, p0, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;->session:Lorg/h2/engine/Session;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 4

    .line 285
    iget-object v0, p0, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;->current:Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {v2}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/table/Table;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    .line 290
    invoke-virtual {p0}, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method public next()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/rtree/SpatialKey;

    iput-object v0, p0, Lorg/h2/index/SpatialTreeIndex$SpatialCursor;->current:Lorg/h2/mvstore/rtree/SpatialKey;

    const/4 v0, 0x1

    return v0
.end method

.method public previous()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
