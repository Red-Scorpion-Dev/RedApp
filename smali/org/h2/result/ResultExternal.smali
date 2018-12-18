.class public interface abstract Lorg/h2/result/ResultExternal;
.super Ljava/lang/Object;
.source "ResultExternal.java"


# virtual methods
.method public abstract addRow([Lorg/h2/value/Value;)I
.end method

.method public abstract addRows(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/value/Value;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract contains([Lorg/h2/value/Value;)Z
.end method

.method public abstract createShallowCopy()Lorg/h2/result/ResultExternal;
.end method

.method public abstract done()V
.end method

.method public abstract next()[Lorg/h2/value/Value;
.end method

.method public abstract removeRow([Lorg/h2/value/Value;)I
.end method

.method public abstract reset()V
.end method
