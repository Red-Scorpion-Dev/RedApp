.class public interface abstract Lorg/h2/index/Index;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Lorg/h2/schema/SchemaObject;


# virtual methods
.method public abstract add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
.end method

.method public abstract canFindNext()Z
.end method

.method public abstract canGetFirstOrLast()Z
.end method

.method public abstract canScan()Z
.end method

.method public abstract close(Lorg/h2/engine/Session;)V
.end method

.method public abstract commit(ILorg/h2/result/Row;)V
.end method

.method public abstract compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I
.end method

.method public abstract createLookupBatch(Lorg/h2/table/TableFilter;)Lorg/h2/index/IndexLookupBatch;
.end method

.method public abstract find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
.end method

.method public abstract find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
.end method

.method public abstract findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
.end method

.method public abstract findNext(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
.end method

.method public abstract getColumnIndex(Lorg/h2/table/Column;)I
.end method

.method public abstract getColumns()[Lorg/h2/table/Column;
.end method

.method public abstract getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)D"
        }
    .end annotation
.end method

.method public abstract getDiskSpaceUsed()J
.end method

.method public abstract getIndexColumns()[Lorg/h2/table/IndexColumn;
.end method

.method public abstract getIndexType()Lorg/h2/index/IndexType;
.end method

.method public abstract getPlanSQL()Ljava/lang/String;
.end method

.method public abstract getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
.end method

.method public abstract getRowCount(Lorg/h2/engine/Session;)J
.end method

.method public abstract getRowCountApproximation()J
.end method

.method public abstract getTable()Lorg/h2/table/Table;
.end method

.method public abstract isRowIdIndex()Z
.end method

.method public abstract needRebuild()Z
.end method

.method public abstract remove(Lorg/h2/engine/Session;)V
.end method

.method public abstract remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
.end method

.method public abstract setSortedInsertMode(Z)V
.end method

.method public abstract truncate(Lorg/h2/engine/Session;)V
.end method
