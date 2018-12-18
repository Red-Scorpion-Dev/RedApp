.class public interface abstract Lorg/briarproject/bramble/api/system/AndroidExecutor;
.super Ljava/lang/Object;
.source "AndroidExecutor.java"


# virtual methods
.method public abstract runOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract runOnBackgroundThread(Ljava/lang/Runnable;)V
.end method

.method public abstract runOnUiThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method
