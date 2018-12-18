.class public interface abstract Lorg/h2/table/ColumnResolver;
.super Ljava/lang/Object;
.source "ColumnResolver.java"


# virtual methods
.method public abstract getColumns()[Lorg/h2/table/Column;
.end method

.method public abstract getRowIdColumn()Lorg/h2/table/Column;
.end method

.method public abstract getSchemaName()Ljava/lang/String;
.end method

.method public abstract getSelect()Lorg/h2/command/dml/Select;
.end method

.method public abstract getSystemColumns()[Lorg/h2/table/Column;
.end method

.method public abstract getTableAlias()Ljava/lang/String;
.end method

.method public abstract getTableFilter()Lorg/h2/table/TableFilter;
.end method

.method public abstract getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;
.end method

.method public abstract optimize(Lorg/h2/expression/ExpressionColumn;Lorg/h2/table/Column;)Lorg/h2/expression/Expression;
.end method
