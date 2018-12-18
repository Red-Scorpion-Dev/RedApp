.class public interface abstract Lorg/h2/util/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract find(I)Lorg/h2/util/CacheObject;
.end method

.method public abstract get(I)Lorg/h2/util/CacheObject;
.end method

.method public abstract getAllChanged()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/util/CacheObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxMemory()I
.end method

.method public abstract getMemory()I
.end method

.method public abstract put(Lorg/h2/util/CacheObject;)V
.end method

.method public abstract remove(I)Z
.end method

.method public abstract setMaxMemory(I)V
.end method

.method public abstract update(ILorg/h2/util/CacheObject;)Lorg/h2/util/CacheObject;
.end method
