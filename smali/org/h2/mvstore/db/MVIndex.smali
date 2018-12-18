.class public interface abstract Lorg/h2/mvstore/db/MVIndex;
.super Ljava/lang/Object;
.source "MVIndex.java"

# interfaces
.implements Lorg/h2/index/Index;


# virtual methods
.method public abstract addBufferedRows(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addRowsToBuffer(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/h2/result/Row;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
