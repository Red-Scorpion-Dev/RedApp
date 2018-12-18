.class public interface abstract Lorg/h2/result/ResultInterface;
.super Ljava/lang/Object;
.source "ResultInterface.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract currentRow()[Lorg/h2/value/Value;
.end method

.method public abstract getAlias(I)Ljava/lang/String;
.end method

.method public abstract getColumnName(I)Ljava/lang/String;
.end method

.method public abstract getColumnPrecision(I)J
.end method

.method public abstract getColumnScale(I)I
.end method

.method public abstract getColumnType(I)I
.end method

.method public abstract getDisplaySize(I)I
.end method

.method public abstract getFetchSize()I
.end method

.method public abstract getNullable(I)I
.end method

.method public abstract getRowCount()I
.end method

.method public abstract getRowId()I
.end method

.method public abstract getSchemaName(I)Ljava/lang/String;
.end method

.method public abstract getTableName(I)Ljava/lang/String;
.end method

.method public abstract getVisibleColumnCount()I
.end method

.method public abstract isAutoIncrement(I)Z
.end method

.method public abstract needToClose()Z
.end method

.method public abstract next()Z
.end method

.method public abstract reset()V
.end method

.method public abstract setFetchSize(I)V
.end method
