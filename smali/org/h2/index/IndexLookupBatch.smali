.class public interface abstract Lorg/h2/index/IndexLookupBatch;
.super Ljava/lang/Object;
.source "IndexLookupBatch.java"


# virtual methods
.method public abstract addSearchRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Z
.end method

.method public abstract find()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPlanSQL()Ljava/lang/String;
.end method

.method public abstract isBatchFull()Z
.end method

.method public abstract reset(Z)V
.end method
