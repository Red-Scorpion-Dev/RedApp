.class Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;
.super Ljava/lang/Object;
.source "TransactionStore.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->entryIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private current:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private cursor:Lorg/h2/mvstore/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/Cursor<",
            "TK;",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

.field final synthetic val$from:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;Ljava/lang/Object;)V
    .locals 0

    .line 1445
    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iput-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->val$from:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->val$from:Ljava/lang/Object;

    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->currentKey:Ljava/lang/Object;

    .line 1448
    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iget-object p1, p1, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    iget-object p2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->currentKey:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/MVMap;->cursor(Ljava/lang/Object;)Lorg/h2/mvstore/Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->cursor:Lorg/h2/mvstore/Cursor;

    .line 1451
    invoke-direct {p0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->fetchNext()V

    return-void
.end method

.method private fetchNext()V
    .locals 6

    .line 1455
    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v0}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1456
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getUndoLog()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1459
    :try_start_0
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v1}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1462
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/mvstore/DataUtils;->getErrorCode(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 1464
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iget-object v1, v1, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->currentKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/MVMap;->cursor(Ljava/lang/Object;)Lorg/h2/mvstore/Cursor;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->cursor:Lorg/h2/mvstore/Cursor;

    .line 1467
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v1}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1468
    monitor-exit v0

    goto :goto_3

    .line 1470
    :cond_0
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v1}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    .line 1471
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v1}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1472
    monitor-exit v0

    goto :goto_3

    .line 1474
    :cond_1
    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v1}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1480
    :goto_1
    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->cursor:Lorg/h2/mvstore/Cursor;

    invoke-virtual {v2}, Lorg/h2/mvstore/Cursor;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    .line 1481
    iget-object v3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iget-object v4, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->this$0:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iget-wide v4, v4, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->readLogId:J

    invoke-virtual {v3, v1, v4, v5, v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getValue(Ljava/lang/Object;JLorg/h2/mvstore/db/TransactionStore$VersionedValue;)Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1482
    iget-object v3, v2, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1484
    iget-object v2, v2, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    .line 1485
    new-instance v3, Lorg/h2/mvstore/DataUtils$MapEntry;

    invoke-direct {v3, v1, v2}, Lorg/h2/mvstore/DataUtils$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->current:Ljava/util/Map$Entry;

    .line 1486
    iput-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->currentKey:Ljava/lang/Object;

    .line 1487
    monitor-exit v0

    return-void

    .line 1489
    :cond_2
    monitor-exit v0

    goto :goto_0

    .line 1476
    :cond_3
    throw v1

    .line 1489
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_3
    const/4 v0, 0x0

    .line 1491
    iput-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->current:Ljava/util/Map$Entry;

    .line 1492
    iput-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->currentKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1497
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->current:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1445
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1502
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->current:Ljava/util/Map$Entry;

    .line 1503
    invoke-direct {p0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap$2;->fetchNext()V

    return-object v0
.end method

.method public remove()V
    .locals 1

    const-string v0, "Removing is not supported"

    .line 1509
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
