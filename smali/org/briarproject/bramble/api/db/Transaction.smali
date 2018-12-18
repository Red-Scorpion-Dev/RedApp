.class public Lorg/briarproject/bramble/api/db/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# instance fields
.field private committed:Z

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final readOnly:Z

.field private final txn:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->events:Ljava/util/List;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->committed:Z

    .line 24
    iput-object p1, p0, Lorg/briarproject/bramble/api/db/Transaction;->txn:Ljava/lang/Object;

    .line 25
    iput-boolean p2, p0, Lorg/briarproject/bramble/api/db/Transaction;->readOnly:Z

    return-void
.end method


# virtual methods
.method public attach(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->events:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->events:Ljava/util/List;

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/event/Event;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->events:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->events:Ljava/util/List;

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->committed:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->readOnly:Z

    return v0
.end method

.method public setCommitted()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->committed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->committed:Z

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public unbox()Ljava/lang/Object;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/briarproject/bramble/api/db/Transaction;->txn:Ljava/lang/Object;

    return-object v0
.end method
