.class final Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;
.super Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;
.source "JoinBatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewIndexLookupBatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase<",
        "Lorg/h2/table/JoinBatch$QueryRunner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/table/JoinBatch;


# direct methods
.method constructor <init>(Lorg/h2/table/JoinBatch;Lorg/h2/index/ViewIndex;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;->this$0:Lorg/h2/table/JoinBatch;

    .line 889
    invoke-direct {p0, p2}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;-><init>(Lorg/h2/index/ViewIndex;)V

    return-void
.end method


# virtual methods
.method protected collectSearchRows(Lorg/h2/table/JoinBatch$QueryRunner;)Z
    .locals 0

    .line 899
    iget-object p1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;->this$0:Lorg/h2/table/JoinBatch;

    iget-object p1, p1, Lorg/h2/table/JoinBatch;->top:Lorg/h2/table/JoinBatch$JoinFilter;

    invoke-virtual {p1}, Lorg/h2/table/JoinBatch$JoinFilter;->collectSearchRows()Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic collectSearchRows(Lorg/h2/table/JoinBatch$QueryRunnerBase;)Z
    .locals 0

    .line 887
    check-cast p1, Lorg/h2/table/JoinBatch$QueryRunner;

    invoke-virtual {p0, p1}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;->collectSearchRows(Lorg/h2/table/JoinBatch$QueryRunner;)Z

    move-result p1

    return p1
.end method

.method public isBatchFull()Z
    .locals 1

    .line 904
    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;->this$0:Lorg/h2/table/JoinBatch;

    iget-object v0, v0, Lorg/h2/table/JoinBatch;->top:Lorg/h2/table/JoinBatch$JoinFilter;

    invoke-virtual {v0}, Lorg/h2/table/JoinBatch$JoinFilter;->isBatchFull()Z

    move-result v0

    return v0
.end method

.method protected newQueryRunner()Lorg/h2/table/JoinBatch$QueryRunner;
    .locals 3

    .line 894
    new-instance v0, Lorg/h2/table/JoinBatch$QueryRunner;

    iget-object v1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;->this$0:Lorg/h2/table/JoinBatch;

    iget-object v2, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;->viewIndex:Lorg/h2/index/ViewIndex;

    invoke-direct {v0, v1, v2}, Lorg/h2/table/JoinBatch$QueryRunner;-><init>(Lorg/h2/table/JoinBatch;Lorg/h2/index/ViewIndex;)V

    return-object v0
.end method

.method protected bridge synthetic newQueryRunner()Lorg/h2/table/JoinBatch$QueryRunnerBase;
    .locals 1

    .line 887
    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;->newQueryRunner()Lorg/h2/table/JoinBatch$QueryRunner;

    move-result-object v0

    return-object v0
.end method

.method protected startQueryRunners(I)V
    .locals 4

    .line 911
    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;->this$0:Lorg/h2/table/JoinBatch;

    iget-object v0, v0, Lorg/h2/table/JoinBatch;->top:Lorg/h2/table/JoinBatch$JoinFilter;

    invoke-virtual {v0}, Lorg/h2/table/JoinBatch$JoinFilter;->find()Ljava/util/List;

    move-result-object v0

    .line 912
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 919
    invoke-virtual {p0, v1}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;->queryRunner(I)Lorg/h2/table/JoinBatch$QueryRunnerBase;

    move-result-object v2

    check-cast v2, Lorg/h2/table/JoinBatch$QueryRunner;

    .line 920
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    iput-object v3, v2, Lorg/h2/table/JoinBatch$QueryRunner;->topFutureCursor:Ljava/util/concurrent/Future;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 913
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected result size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected :"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
