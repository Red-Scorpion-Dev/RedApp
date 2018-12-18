.class Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;
.super Ljava/lang/Object;
.source "MVTableEngine.java"

# interfaces
.implements Lorg/h2/store/InDoubtTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/MVTableEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MVInDoubtTransaction"
.end annotation


# instance fields
.field private state:I

.field private final store:Lorg/h2/mvstore/MVStore;

.field private final transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;


# direct methods
.method constructor <init>(Lorg/h2/mvstore/MVStore;Lorg/h2/mvstore/db/TransactionStore$Transaction;)V
    .locals 1

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 430
    iput v0, p0, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;->state:I

    .line 433
    iput-object p1, p0, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;->store:Lorg/h2/mvstore/MVStore;

    .line 434
    iput-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 2

    .line 450
    iget v0, p0, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;->state:I

    packed-switch v0, :pswitch_data_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "ROLLBACK"

    return-object v0

    :pswitch_1
    const-string v0, "COMMIT"

    return-object v0

    :pswitch_2
    const-string v0, "IN_DOUBT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTransactionName()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setState(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 440
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->rollback()V

    .line 444
    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->commit()J

    .line 445
    iput p1, p0, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;->state:I

    return-void
.end method
