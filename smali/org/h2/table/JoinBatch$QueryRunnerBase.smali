.class abstract Lorg/h2/table/JoinBatch$QueryRunnerBase;
.super Lorg/h2/util/LazyFuture;
.source "JoinBatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "QueryRunnerBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/h2/util/LazyFuture<",
        "Lorg/h2/index/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field protected first:Lorg/h2/result/SearchRow;

.field protected last:Lorg/h2/result/SearchRow;

.field protected final viewIndex:Lorg/h2/index/ViewIndex;


# direct methods
.method public constructor <init>(Lorg/h2/index/ViewIndex;)V
    .locals 0

    .line 859
    invoke-direct {p0}, Lorg/h2/util/LazyFuture;-><init>()V

    .line 860
    iput-object p1, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->viewIndex:Lorg/h2/index/ViewIndex;

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    const/4 v0, 0x0

    .line 864
    iput-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->last:Lorg/h2/result/SearchRow;

    iput-object v0, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->first:Lorg/h2/result/SearchRow;

    return-void
.end method

.method protected final newCursor(Lorg/h2/result/LocalResult;)Lorg/h2/index/ViewCursor;
    .locals 4

    .line 878
    new-instance v0, Lorg/h2/index/ViewCursor;

    iget-object v1, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->viewIndex:Lorg/h2/index/ViewIndex;

    iget-object v2, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->first:Lorg/h2/result/SearchRow;

    iget-object v3, p0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->last:Lorg/h2/result/SearchRow;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/h2/index/ViewCursor;-><init>(Lorg/h2/index/ViewIndex;Lorg/h2/result/LocalResult;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    .line 879
    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$QueryRunnerBase;->clear()V

    return-object v0
.end method

.method public final reset()Z
    .locals 1

    .line 869
    invoke-super {p0}, Lorg/h2/util/LazyFuture;->reset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 873
    :cond_0
    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$QueryRunnerBase;->clear()V

    const/4 v0, 0x0

    return v0
.end method
