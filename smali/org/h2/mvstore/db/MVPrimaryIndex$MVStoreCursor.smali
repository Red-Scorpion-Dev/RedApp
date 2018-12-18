.class Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;
.super Ljava/lang/Object;
.source "MVPrimaryIndex.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/MVPrimaryIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MVStoreCursor"
.end annotation


# instance fields
.field private current:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lorg/h2/value/Value;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lorg/h2/value/Value;",
            "Lorg/h2/value/Value;",
            ">;>;"
        }
    .end annotation
.end field

.field private final last:Lorg/h2/value/ValueLong;

.field private row:Lorg/h2/result/Row;

.field private final session:Lorg/h2/engine/Session;

.field final synthetic this$0:Lorg/h2/mvstore/db/MVPrimaryIndex;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/value/ValueLong;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lorg/h2/value/Value;",
            "Lorg/h2/value/Value;",
            ">;>;",
            "Lorg/h2/value/ValueLong;",
            ")V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->this$0:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->session:Lorg/h2/engine/Session;

    .line 386
    iput-object p3, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->it:Ljava/util/Iterator;

    .line 387
    iput-object p4, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->last:Lorg/h2/value/ValueLong;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 3

    .line 392
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->current:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueArray;

    .line 395
    iget-object v1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    .line 396
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    iget-object v1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->current:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/h2/result/Row;->setKey(J)V

    .line 399
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    .line 404
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method public next()Z
    .locals 6

    .line 409
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->current:Ljava/util/Map$Entry;

    .line 410
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->current:Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->last:Lorg/h2/value/ValueLong;

    invoke-virtual {v0}, Lorg/h2/value/ValueLong;->getLong()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 411
    iput-object v1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->current:Ljava/util/Map$Entry;

    .line 413
    :cond_1
    iput-object v1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->row:Lorg/h2/result/Row;

    .line 414
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->current:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public previous()Z
    .locals 1

    const-string v0, "previous"

    .line 419
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
