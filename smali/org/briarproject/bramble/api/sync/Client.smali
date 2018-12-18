.class public interface abstract Lorg/briarproject/bramble/api/sync/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createLocalState(Lorg/briarproject/bramble/api/db/Transaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
