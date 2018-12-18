.class public Lorg/h2/mvstore/db/TransactionStore$Transaction;
.super Ljava/lang/Object;
.source "TransactionStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/TransactionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field public static final STATUS_CLOSED:I = 0x0

.field public static final STATUS_COMMITTING:I = 0x3

.field public static final STATUS_OPEN:I = 0x1

.field public static final STATUS_PREPARED:I = 0x2


# instance fields
.field logId:J

.field private name:Ljava/lang/String;

.field private status:I

.field final store:Lorg/h2/mvstore/db/TransactionStore;

.field final transactionId:I


# direct methods
.method constructor <init>(Lorg/h2/mvstore/db/TransactionStore;IILjava/lang/String;J)V
    .locals 0

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    .line 661
    iput p2, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    .line 662
    iput p3, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->status:I

    .line 663
    iput-object p4, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->name:Ljava/lang/String;

    .line 664
    iput-wide p5, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    return-void
.end method


# virtual methods
.method checkNotClosed()V
    .locals 3

    .line 820
    iget v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->status:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 821
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transaction is closed"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public commit()V
    .locals 3

    .line 778
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    .line 779
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    invoke-virtual {v0, p0, v1, v2}, Lorg/h2/mvstore/db/TransactionStore;->commit(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)V

    return-void
.end method

.method public getChanges(J)Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Iterator<",
            "Lorg/h2/mvstore/db/TransactionStore$Change;",
            ">;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v2, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/h2/mvstore/db/TransactionStore;->getChanges(Lorg/h2/mvstore/db/TransactionStore$Transaction;JJ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 668
    iget v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 672
    iget v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->status:I

    return v0
.end method

.method log(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 706
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v2, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/h2/mvstore/db/TransactionStore;->log(Lorg/h2/mvstore/db/TransactionStore$Transaction;JILjava/lang/Object;Ljava/lang/Object;)V

    .line 708
    iget-wide p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    return-void
.end method

.method logUndo()V
    .locals 5

    .line 715
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    invoke-virtual {v0, p0, v1, v2}, Lorg/h2/mvstore/db/TransactionStore;->logUndo(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)V

    return-void
.end method

.method public openMap(Ljava/lang/String;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 727
    invoke-virtual {p0, p1, v0, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    return-object p1
.end method

.method public openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/h2/mvstore/type/DataType;",
            "Lorg/h2/mvstore/type/DataType;",
            ")",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 742
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    .line 743
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/mvstore/db/TransactionStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    .line 745
    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result p2

    .line 746
    new-instance p3, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-direct {p3, p0, p1, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;-><init>(Lorg/h2/mvstore/db/TransactionStore$Transaction;Lorg/h2/mvstore/MVMap;I)V

    return-object p3
.end method

.method public openMap(Lorg/h2/mvstore/MVMap;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/h2/mvstore/MVMap<",
            "TK;",
            "Lorg/h2/mvstore/db/TransactionStore$VersionedValue;",
            ">;)",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 759
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    .line 760
    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result v0

    .line 761
    new-instance v1, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-direct {v1, p0, p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;-><init>(Lorg/h2/mvstore/db/TransactionStore$Transaction;Lorg/h2/mvstore/MVMap;I)V

    return-object v1
.end method

.method public prepare()V
    .locals 1

    .line 769
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    const/4 v0, 0x2

    .line 770
    iput v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->status:I

    .line 771
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0, p0}, Lorg/h2/mvstore/db/TransactionStore;->storeTransaction(Lorg/h2/mvstore/db/TransactionStore$Transaction;)V

    return-void
.end method

.method public removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/TransactionStore;->removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V

    return-void
.end method

.method public rollback()V
    .locals 6

    .line 798
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    .line 799
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v2, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/h2/mvstore/db/TransactionStore;->rollbackTo(Lorg/h2/mvstore/db/TransactionStore$Transaction;JJ)V

    .line 800
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0, p0}, Lorg/h2/mvstore/db/TransactionStore;->endTransaction(Lorg/h2/mvstore/db/TransactionStore$Transaction;)V

    return-void
.end method

.method public rollbackToSavepoint(J)V
    .locals 6

    .line 789
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    .line 790
    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    iget-wide v2, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/h2/mvstore/db/TransactionStore;->rollbackTo(Lorg/h2/mvstore/db/TransactionStore$Transaction;JJ)V

    .line 791
    iput-wide p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 680
    invoke-virtual {p0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->checkNotClosed()V

    .line 681
    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->name:Ljava/lang/String;

    .line 682
    iget-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->store:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {p1, p0}, Lorg/h2/mvstore/db/TransactionStore;->storeTransaction(Lorg/h2/mvstore/db/TransactionStore$Transaction;)V

    return-void
.end method

.method public setSavepoint()J
    .locals 2

    .line 695
    iget-wide v0, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->logId:J

    return-wide v0
.end method

.method setStatus(I)V
    .locals 0

    .line 676
    iput p1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/mvstore/db/TransactionStore$Transaction;->transactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
