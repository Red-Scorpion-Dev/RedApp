.class interface abstract Lorg/briarproject/bramble/sync/ThrowingRunnable;
.super Ljava/lang/Object;
.source "ThrowingRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract run()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
