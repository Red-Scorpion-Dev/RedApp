.class Lorg/h2/table/JoinBatch$QueryRunnerUnion;
.super Lorg/h2/table/JoinBatch$QueryRunnerBase;
.source "JoinBatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryRunnerUnion"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private batchUnion:Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;

.field topFutureCursors:[Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1053
    const-class v0, Lorg/h2/table/JoinBatch;

    return-void
.end method

.method public constructor <init>(Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;)V
    .locals 1

    .line 1059
    iget-object v0, p1, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->viewIndex:Lorg/h2/index/ViewIndex;

    invoke-direct {p0, v0}, Lorg/h2/table/JoinBatch$QueryRunnerBase;-><init>(Lorg/h2/index/ViewIndex;)V

    .line 1060
    iput-object p1, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->batchUnion:Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;

    .line 1061
    iget-object p1, p1, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->filters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/util/concurrent/Future;

    iput-object p1, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->topFutureCursors:[Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 3

    .line 1066
    invoke-super {p0}, Lorg/h2/table/JoinBatch$QueryRunnerBase;->clear()V

    const/4 v0, 0x0

    .line 1067
    :goto_0
    iget-object v1, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->topFutureCursors:[Ljava/util/concurrent/Future;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1068
    iget-object v1, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->topFutureCursors:[Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1053
    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->run()Lorg/h2/index/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected run()Lorg/h2/index/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->viewIndex:Lorg/h2/index/ViewIndex;

    iget-object v1, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->viewIndex:Lorg/h2/index/ViewIndex;

    invoke-virtual {v1}, Lorg/h2/index/ViewIndex;->getSession()Lorg/h2/engine/Session;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->first:Lorg/h2/result/SearchRow;

    iget-object v3, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->last:Lorg/h2/result/SearchRow;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/h2/index/ViewIndex;->setupQueryParameters(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    .line 1075
    iget-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->batchUnion:Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;

    iget-object v0, v0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->joinBatches:Ljava/util/ArrayList;

    .line 1076
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1078
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/JoinBatch;

    iget-object v6, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->topFutureCursors:[Ljava/util/concurrent/Future;

    aget-object v6, v6, v3

    iput-object v6, v5, Lorg/h2/table/JoinBatch;->viewTopFutureCursor:Ljava/util/concurrent/Future;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1082
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->viewIndex:Lorg/h2/index/ViewIndex;

    invoke-virtual {v1}, Lorg/h2/index/ViewIndex;->getQuery()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/LocalResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    .line 1085
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/JoinBatch;

    iput-object v4, v5, Lorg/h2/table/JoinBatch;->viewTopFutureCursor:Ljava/util/concurrent/Future;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1088
    :cond_1
    invoke-virtual {p0, v1}, Lorg/h2/table/JoinBatch$QueryRunnerUnion;->newCursor(Lorg/h2/result/LocalResult;)Lorg/h2/index/ViewCursor;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1084
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_2

    .line 1085
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/JoinBatch;

    iput-object v4, v5, Lorg/h2/table/JoinBatch;->viewTopFutureCursor:Ljava/util/concurrent/Future;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1084
    :cond_2
    throw v1
.end method
