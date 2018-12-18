.class public Lorg/h2/store/PageStoreInDoubtTransaction;
.super Ljava/lang/Object;
.source "PageStoreInDoubtTransaction.java"

# interfaces
.implements Lorg/h2/store/InDoubtTransaction;


# instance fields
.field private final pos:I

.field private final sessionId:I

.field private state:I

.field private final store:Lorg/h2/store/PageStore;

.field private final transactionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/store/PageStore;IILjava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->store:Lorg/h2/store/PageStore;

    .line 32
    iput p2, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->sessionId:I

    .line 33
    iput p3, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->pos:I

    .line 34
    iput-object p4, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->transactionName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->state:I

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 2

    .line 55
    iget v0, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->state:I

    packed-switch v0, :pswitch_data_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->state:I

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

    .line 69
    iget-object v0, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->transactionName:Ljava/lang/String;

    return-object v0
.end method

.method public setState(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    .line 45
    :pswitch_0
    iget-object v0, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->store:Lorg/h2/store/PageStore;

    iget v1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->sessionId:I

    iget v2, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->pos:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/store/PageStore;->setInDoubtTransactionState(IIZ)V

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v0, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->store:Lorg/h2/store/PageStore;

    iget v1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->sessionId:I

    iget v2, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->pos:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/store/PageStore;->setInDoubtTransactionState(IIZ)V

    .line 50
    :goto_0
    iput p1, p0, Lorg/h2/store/PageStoreInDoubtTransaction;->state:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
