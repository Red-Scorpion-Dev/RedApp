.class public interface abstract Lorg/briarproject/bramble/api/identity/IdentityManager;
.super Ljava/lang/Object;
.source "IdentityManager.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createLocalAuthor(Ljava/lang/String;)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
    .end annotation
.end method

.method public abstract getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract registerLocalAuthor(Lorg/briarproject/bramble/api/identity/LocalAuthor;)V
.end method

.method public abstract storeLocalAuthor()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
