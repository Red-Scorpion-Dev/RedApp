.class public interface abstract Lorg/briarproject/bramble/api/db/DbRunnable;
.super Ljava/lang/Object;
.source "DbRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            ")V^",
            "Lorg/briarproject/bramble/api/db/DbException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method
