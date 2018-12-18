.class Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;
.super Ljava/lang/Object;
.source "MVSpatialIndex.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/MVSpatialIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MVStoreCursor"
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

.field private row:Lorg/h2/result/Row;

.field private searchRow:Lorg/h2/result/SearchRow;

.field private final session:Lorg/h2/engine/Session;

.field final synthetic this$0:Lorg/h2/mvstore/db/MVSpatialIndex;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/db/MVSpatialIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/util/Iterator<",
            "Lorg/h2/mvstore/rtree/SpatialKey;",
            ">;)V"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->this$0:Lorg/h2/mvstore/db/MVSpatialIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p2, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->session:Lorg/h2/engine/Session;

    .line 341
    iput-object p3, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 5

    .line 346
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->this$0:Lorg/h2/mvstore/db/MVSpatialIndex;

    iget-object v1, v1, Lorg/h2/mvstore/db/MVSpatialIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    iget-object v2, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->session:Lorg/h2/engine/Session;

    invoke-interface {v0}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/h2/mvstore/db/MVTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 2

    .line 357
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->searchRow:Lorg/h2/result/SearchRow;

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->current:Lorg/h2/mvstore/rtree/SpatialKey;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->this$0:Lorg/h2/mvstore/db/MVSpatialIndex;

    iget-object v1, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->current:Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/db/MVSpatialIndex;->getRow(Lorg/h2/mvstore/rtree/SpatialKey;)Lorg/h2/result/SearchRow;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->searchRow:Lorg/h2/result/SearchRow;

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->searchRow:Lorg/h2/result/SearchRow;

    return-object v0
.end method

.method public next()Z
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/rtree/SpatialKey;

    iput-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->current:Lorg/h2/mvstore/rtree/SpatialKey;

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->searchRow:Lorg/h2/result/SearchRow;

    .line 369
    iput-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    .line 370
    iget-object v0, p0, Lorg/h2/mvstore/db/MVSpatialIndex$MVStoreCursor;->current:Lorg/h2/mvstore/rtree/SpatialKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public previous()Z
    .locals 1

    const-string v0, "previous"

    .line 375
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
