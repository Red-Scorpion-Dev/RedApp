.class public interface abstract Lorg/h2/tools/SimpleRowSource;
.super Ljava/lang/Object;
.source "SimpleRowSource.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract readRow()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
