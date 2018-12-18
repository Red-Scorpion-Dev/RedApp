.class public Lorg/h2/store/PageLog;
.super Ljava/lang/Object;
.source "PageLog.java"


# static fields
.field public static final ADD:I = 0x5

.field public static final CHECKPOINT:I = 0x8

.field public static final COMMIT:I = 0x2

.field private static final COMPRESS_UNDO:Z = true

.field public static final FREE_LOG:I = 0x9

.field public static final NOOP:I = 0x0

.field public static final PREPARE_COMMIT:I = 0x3

.field static final RECOVERY_STAGE_ALLOCATE:I = 0x1

.field static final RECOVERY_STAGE_REDO:I = 0x2

.field static final RECOVERY_STAGE_UNDO:I = 0x0

.field public static final REMOVE:I = 0x6

.field public static final ROLLBACK:I = 0x4

.field public static final TRUNCATE:I = 0x7

.field public static final UNDO:I = 0x1


# instance fields
.field private final compress:Lorg/h2/compress/CompressLZF;

.field private final compressBuffer:[B

.field private final dataBuffer:Lorg/h2/store/Data;

.field private firstDataPage:I

.field private firstSectionId:I

.field private firstTrunkPage:I

.field private freeing:Z

.field private logKey:I

.field private logPos:I

.field private logSectionId:I

.field private final logSectionPageMap:Lorg/h2/util/IntIntHashMap;

.field private pageOut:Lorg/h2/store/PageOutputStream;

.field private sessionStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/store/SessionState;",
            ">;"
        }
    .end annotation
.end field

.field private final store:Lorg/h2/store/PageStore;

.field private final trace:Lorg/h2/message/Trace;

.field private undo:Lorg/h2/util/BitField;

.field private final undoAll:Lorg/h2/util/BitField;

.field private usedLogPages:Lorg/h2/util/BitField;

.field private writeBuffer:Lorg/h2/store/Data;


# direct methods
.method constructor <init>(Lorg/h2/store/PageStore;)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    .line 141
    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageLog;->undoAll:Lorg/h2/util/BitField;

    .line 147
    new-instance v0, Lorg/h2/util/IntIntHashMap;

    invoke-direct {v0}, Lorg/h2/util/IntIntHashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageLog;->logSectionPageMap:Lorg/h2/util/IntIntHashMap;

    .line 153
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    .line 167
    iput-object p1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    .line 168
    invoke-virtual {p1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageLog;->dataBuffer:Lorg/h2/store/Data;

    .line 169
    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    .line 170
    new-instance v0, Lorg/h2/compress/CompressLZF;

    invoke-direct {v0}, Lorg/h2/compress/CompressLZF;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageLog;->compress:Lorg/h2/compress/CompressLZF;

    .line 171
    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/h2/store/PageLog;->compressBuffer:[B

    return-void
.end method

.method private flushOut()V
    .locals 1

    .line 876
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->flush()V

    return-void
.end method

.method private freeLogPages(Lorg/h2/util/IntArray;)V
    .locals 4

    .line 536
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log frees "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lorg/h2/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Lorg/h2/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 540
    :cond_0
    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v0

    const/16 v2, 0x9

    .line 541
    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeByte(B)V

    .line 542
    invoke-virtual {p1}, Lorg/h2/util/IntArray;->size()I

    move-result v2

    .line 543
    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeVarInt(I)V

    :goto_0
    if-ge v1, v2, :cond_1

    .line 545
    invoke-virtual {p1, v1}, Lorg/h2/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/h2/store/Data;->writeVarInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    :cond_1
    invoke-direct {p0, v0}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    return-void
.end method

.method private getBuffer()Lorg/h2/store/Data;
    .locals 1

    .line 880
    iget-object v0, p0, Lorg/h2/store/PageLog;->writeBuffer:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lorg/h2/store/PageLog;->writeBuffer:Lorg/h2/store/Data;

    return-object v0

    .line 883
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    return-object v0
.end method

.method private getOrAddSessionState(I)Lorg/h2/store/SessionState;
    .locals 3

    .line 823
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 824
    iget-object v1, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/store/SessionState;

    if-nez v1, :cond_0

    .line 826
    new-instance v1, Lorg/h2/store/SessionState;

    invoke-direct {v1}, Lorg/h2/store/SessionState;-><init>()V

    .line 827
    iget-object v2, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iput p1, v1, Lorg/h2/store/SessionState;->sessionId:I

    :cond_0
    return-object v1
.end method

.method private isSessionCommitted(III)Z
    .locals 1

    .line 794
    iget-object v0, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/store/SessionState;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 798
    :cond_0
    invoke-virtual {p1, p2, p3}, Lorg/h2/store/SessionState;->isCommitted(II)Z

    move-result p1

    return p1
.end method

.method public static readRow(Lorg/h2/result/RowFactory;Lorg/h2/store/DataReader;Lorg/h2/store/Data;)Lorg/h2/result/Row;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-virtual {p1}, Lorg/h2/store/DataReader;->readVarLong()J

    move-result-wide v0

    .line 462
    invoke-virtual {p1}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v2

    .line 463
    invoke-virtual {p2}, Lorg/h2/store/Data;->reset()V

    .line 464
    invoke-virtual {p2, v2}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 465
    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lorg/h2/store/DataReader;->readFully([BI)V

    .line 466
    invoke-virtual {p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result p1

    .line 467
    new-array v2, p1, [Lorg/h2/value/Value;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 469
    invoke-virtual {p2}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 471
    invoke-virtual {p0, v2, p1}, Lorg/h2/result/RowFactory;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p0

    .line 472
    invoke-virtual {p0, v0, v1}, Lorg/h2/result/Row;->setKey(J)V

    return-object p0
.end method

.method private removeUntil(II)I
    .locals 6

    .line 744
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log.removeUntil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    move v0, p1

    .line 747
    :goto_0
    iget-object v1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    .line 748
    check-cast p1, Lorg/h2/store/PageStreamTrunk;

    if-eqz p1, :cond_2

    .line 753
    invoke-virtual {p1}, Lorg/h2/store/PageStreamTrunk;->getLogKey()I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageLog;->logKey:I

    .line 754
    invoke-virtual {p1}, Lorg/h2/store/PageStreamTrunk;->getPos()I

    move-result v1

    .line 755
    invoke-virtual {p1, p2}, Lorg/h2/store/PageStreamTrunk;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 758
    :cond_0
    invoke-virtual {p1}, Lorg/h2/store/PageStreamTrunk;->getNextTrunk()I

    move-result v2

    .line 759
    new-instance v3, Lorg/h2/util/IntArray;

    invoke-direct {v3}, Lorg/h2/util/IntArray;-><init>()V

    .line 760
    invoke-virtual {p1}, Lorg/h2/store/PageStreamTrunk;->getPos()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/h2/util/IntArray;->add(I)V

    const/4 v0, 0x0

    .line 762
    :goto_1
    invoke-virtual {p1, v0}, Lorg/h2/store/PageStreamTrunk;->getPageData(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 768
    invoke-direct {p0, v3}, Lorg/h2/store/PageLog;->freeLogPages(Lorg/h2/util/IntArray;)V

    .line 769
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageOutputStream;->free(Lorg/h2/store/PageStreamTrunk;)V

    move v0, v1

    move p1, v2

    goto :goto_0

    .line 766
    :cond_1
    invoke-virtual {v3, v4}, Lorg/h2/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 750
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log.removeUntil not found: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " last "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private setLastCommitForSession(III)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lorg/h2/store/PageLog;->getOrAddSessionState(I)Lorg/h2/store/SessionState;

    move-result-object p1

    .line 810
    iput p2, p1, Lorg/h2/store/SessionState;->lastCommitLog:I

    .line 811
    iput p3, p1, Lorg/h2/store/SessionState;->lastCommitPos:I

    const/4 p2, 0x0

    .line 812
    iput-object p2, p1, Lorg/h2/store/SessionState;->inDoubtTransaction:Lorg/h2/store/PageStoreInDoubtTransaction;

    return-void
.end method

.method private setPrepareCommit(IILjava/lang/String;)V
    .locals 3

    .line 441
    invoke-direct {p0, p1}, Lorg/h2/store/PageLog;->getOrAddSessionState(I)Lorg/h2/store/SessionState;

    move-result-object v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v1, Lorg/h2/store/PageStoreInDoubtTransaction;

    iget-object v2, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-direct {v1, v2, p1, p2, p3}, Lorg/h2/store/PageStoreInDoubtTransaction;-><init>(Lorg/h2/store/PageStore;IILjava/lang/String;)V

    move-object p1, v1

    .line 449
    :goto_0
    iput-object p1, v0, Lorg/h2/store/SessionState;->inDoubtTransaction:Lorg/h2/store/PageStoreInDoubtTransaction;

    return-void
.end method

.method private write(Lorg/h2/store/Data;)V
    .locals 4

    .line 551
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {p1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/h2/store/PageOutputStream;->write([BII)V

    .line 552
    invoke-virtual {p1}, Lorg/h2/store/Data;->reset()V

    return-void
.end method


# virtual methods
.method addUndo(ILorg/h2/store/Data;)V
    .locals 5

    .line 494
    iget-object v0, p0, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/h2/store/PageLog;->freeing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log undo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 500
    :cond_1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    const-string v0, "Undo entry not written"

    .line 502
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 505
    :cond_2
    iget-object v0, p0, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->set(I)V

    .line 506
    iget-object v0, p0, Lorg/h2/store/PageLog;->undoAll:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->set(I)V

    .line 507
    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v0

    const/4 v1, 0x1

    .line 508
    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 509
    invoke-virtual {v0, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 510
    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p1

    const/4 v2, 0x0

    aget-byte p1, p1, v2

    if-nez p1, :cond_3

    .line 511
    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    goto :goto_0

    .line 513
    :cond_3
    iget-object p1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result p1

    .line 515
    iget-object v1, p0, Lorg/h2/store/PageLog;->compress:Lorg/h2/compress/CompressLZF;

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lorg/h2/store/PageLog;->compressBuffer:[B

    invoke-virtual {v1, v3, p1, v4, v2}, Lorg/h2/compress/CompressLZF;->compress([BI[BI)I

    move-result v1

    if-ge v1, p1, :cond_4

    .line 518
    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 519
    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 520
    iget-object p1, p0, Lorg/h2/store/PageLog;->compressBuffer:[B

    invoke-virtual {v0, p1, v2, v1}, Lorg/h2/store/Data;->write([BII)V

    goto :goto_0

    .line 522
    :cond_4
    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 523
    invoke-virtual {v0, p1}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 524
    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2, v2, p1}, Lorg/h2/store/Data;->write([BII)V

    .line 532
    :goto_0
    invoke-direct {p0, v0}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method checkpoint()V
    .locals 3

    .line 691
    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v0

    const/16 v1, 0x8

    .line 692
    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 693
    invoke-direct {p0, v0}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    .line 694
    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    .line 695
    iget v0, p0, Lorg/h2/store/PageLog;->logSectionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/store/PageLog;->logSectionId:I

    const/4 v0, 0x0

    .line 696
    iput v0, p0, Lorg/h2/store/PageLog;->logPos:I

    .line 697
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->flush()V

    .line 698
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->fillPage()V

    .line 699
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->getCurrentDataPageId()I

    move-result v0

    .line 700
    iget-object v1, p0, Lorg/h2/store/PageLog;->logSectionPageMap:Lorg/h2/util/IntIntHashMap;

    iget v2, p0, Lorg/h2/store/PageLog;->logSectionId:I

    invoke-virtual {v1, v2, v0}, Lorg/h2/util/IntIntHashMap;->put(II)V

    return-void
.end method

.method close()V
    .locals 2

    .line 777
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v1, "log close"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->close()V

    .line 780
    iput-object v1, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    .line 782
    :cond_0
    iput-object v1, p0, Lorg/h2/store/PageLog;->writeBuffer:Lorg/h2/store/Data;

    return-void
.end method

.method commit(I)V
    .locals 3

    .line 561
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log commit s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 564
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 568
    :cond_1
    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v0

    const/4 v1, 0x2

    .line 569
    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 570
    invoke-virtual {v0, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 571
    invoke-direct {p0, v0}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    .line 572
    iget-object p1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getFlushOnEachCommit()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 573
    invoke-virtual {p0}, Lorg/h2/store/PageLog;->flush()V

    :cond_2
    return-void
.end method

.method flush()V
    .locals 1

    .line 682
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    if-eqz v0, :cond_0

    .line 683
    invoke-direct {p0}, Lorg/h2/store/PageLog;->flushOut()V

    :cond_0
    return-void
.end method

.method free()V
    .locals 8

    .line 198
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v1, "log free"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->getCurrentDataPageId()I

    move-result v0

    .line 204
    iget-object v2, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v2}, Lorg/h2/store/PageOutputStream;->freeReserved()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 207
    :try_start_0
    iput-boolean v2, p0, Lorg/h2/store/PageLog;->freeing:Z

    const/16 v2, 0x400

    .line 210
    new-instance v3, Lorg/h2/store/PageStreamTrunk$Iterator;

    iget-object v4, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v5, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    invoke-direct {v3, v4, v5}, Lorg/h2/store/PageStreamTrunk$Iterator;-><init>(Lorg/h2/store/PageStore;I)V

    const/4 v2, 0x0

    const/16 v4, 0x400

    const/4 v5, 0x0

    .line 212
    :goto_1
    iget v6, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    if-eqz v6, :cond_6

    iget v6, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    iget-object v7, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v7}, Lorg/h2/store/PageStore;->getPageCount()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 213
    invoke-virtual {v3}, Lorg/h2/store/PageStreamTrunk$Iterator;->next()Lorg/h2/store/PageStreamTrunk;

    move-result-object v6

    if-nez v6, :cond_2

    .line 215
    invoke-virtual {v3}, Lorg/h2/store/PageStreamTrunk$Iterator;->canDelete()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v2, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    invoke-virtual {v0, v2, v1}, Lorg/h2/store/PageStore;->free(IZ)V

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v2, 0x1

    if-lt v2, v4, :cond_3

    .line 221
    invoke-virtual {v6}, Lorg/h2/store/PageStreamTrunk;->getPos()I

    move-result v2

    mul-int/lit8 v4, v4, 0x2

    move v5, v2

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_5

    .line 224
    invoke-virtual {v6}, Lorg/h2/store/PageStreamTrunk;->getPos()I

    move-result v2

    if-eq v5, v2, :cond_4

    goto :goto_2

    .line 225
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endless loop at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_2
    move v2, v7

    .line 228
    :goto_3
    invoke-virtual {v6, v0}, Lorg/h2/store/PageStreamTrunk;->free(I)I

    .line 229
    invoke-virtual {v6}, Lorg/h2/store/PageStreamTrunk;->getNextTrunk()I

    move-result v6

    iput v6, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 232
    :cond_6
    :goto_4
    iput-boolean v1, p0, Lorg/h2/store/PageLog;->freeing:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/h2/store/PageLog;->freeing:Z

    throw v0
.end method

.method getInDoubtTransactions()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/InDoubtTransaction;",
            ">;"
        }
    .end annotation

    .line 838
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 839
    iget-object v1, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/store/SessionState;

    .line 840
    iget-object v2, v2, Lorg/h2/store/SessionState;->inDoubtTransaction:Lorg/h2/store/PageStoreInDoubtTransaction;

    if-eqz v2, :cond_0

    .line 842
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getLogFirstSectionId()I
    .locals 1

    .line 708
    iget v0, p0, Lorg/h2/store/PageLog;->firstSectionId:I

    return v0
.end method

.method getLogPos()I
    .locals 1

    .line 712
    iget v0, p0, Lorg/h2/store/PageLog;->logPos:I

    return v0
.end method

.method getLogSectionId()I
    .locals 1

    .line 704
    iget v0, p0, Lorg/h2/store/PageLog;->logSectionId:I

    return v0
.end method

.method getMinPageId()I
    .locals 1

    .line 894
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->getMinPageId()I

    move-result v0

    :goto_0
    return v0
.end method

.method getSize()J
    .locals 2

    .line 834
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->getSize()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method getUndo(I)Z
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->get(I)Z

    move-result p1

    return p1
.end method

.method logAddOrRemoveRow(Lorg/h2/engine/Session;ILorg/h2/result/Row;Z)V
    .locals 7

    .line 621
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v2, "+"

    goto :goto_0

    :cond_0
    const-string v2, "-"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " row: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 625
    :cond_1
    iget v0, p0, Lorg/h2/store/PageLog;->logSectionId:I

    iget v1, p0, Lorg/h2/store/PageLog;->logPos:I

    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/Session;->addLogPos(II)V

    .line 626
    iget v0, p0, Lorg/h2/store/PageLog;->logPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/store/PageLog;->logPos:I

    .line 627
    iget-object v0, p0, Lorg/h2/store/PageLog;->dataBuffer:Lorg/h2/store/Data;

    .line 628
    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 629
    invoke-virtual {p3}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v1

    .line 630
    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 631
    invoke-virtual {p3, v0}, Lorg/h2/result/Row;->getByteCount(Lorg/h2/store/Data;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 632
    invoke-virtual {p1}, Lorg/h2/engine/Session;->isRedoLogBinaryEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 634
    invoke-virtual {p3, v2}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    .line 638
    invoke-virtual {p3, v2}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    .line 639
    invoke-virtual {v4}, Lorg/h2/value/Value;->getType()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3

    .line 640
    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {v0, v4}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    goto :goto_3

    .line 642
    :cond_3
    invoke-virtual {v0, v4}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 646
    :cond_4
    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v1

    if-eqz p4, :cond_5

    const/4 v2, 0x5

    goto :goto_4

    :cond_5
    const/4 v2, 0x6

    :goto_4
    int-to-byte v2, v2

    .line 647
    invoke-virtual {v1, v2}, Lorg/h2/store/Data;->writeByte(B)V

    .line 648
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 649
    invoke-virtual {v1, p2}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 650
    invoke-virtual {p3}, Lorg/h2/result/Row;->getKey()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lorg/h2/store/Data;->writeVarLong(J)V

    if-eqz p4, :cond_6

    .line 652
    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 653
    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 654
    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result p2

    invoke-virtual {v1, p1, v3, p2}, Lorg/h2/store/Data;->write([BII)V

    .line 656
    :cond_6
    invoke-direct {p0, v1}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    return-void
.end method

.method logTruncate(Lorg/h2/engine/Session;I)V
    .locals 3

    .line 666
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log truncate s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 669
    :cond_0
    iget v0, p0, Lorg/h2/store/PageLog;->logSectionId:I

    iget v1, p0, Lorg/h2/store/PageLog;->logPos:I

    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/Session;->addLogPos(II)V

    .line 670
    iget v0, p0, Lorg/h2/store/PageLog;->logPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/store/PageLog;->logPos:I

    .line 671
    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v0

    const/4 v1, 0x7

    .line 672
    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    .line 673
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 674
    invoke-virtual {v0, p2}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 675
    invoke-direct {p0, v0}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    return-void
.end method

.method openForReading(III)V
    .locals 0

    .line 245
    iput p1, p0, Lorg/h2/store/PageLog;->logKey:I

    .line 246
    iput p2, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    .line 247
    iput p3, p0, Lorg/h2/store/PageLog;->firstDataPage:I

    return-void
.end method

.method openForWriting(IZ)V
    .locals 8

    .line 182
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log openForWriting firstPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 183
    iput p1, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    .line 184
    iget v0, p0, Lorg/h2/store/PageLog;->logKey:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/store/PageLog;->logKey:I

    .line 185
    new-instance v0, Lorg/h2/store/PageOutputStream;

    iget-object v3, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget-object v5, p0, Lorg/h2/store/PageLog;->undoAll:Lorg/h2/util/BitField;

    iget v6, p0, Lorg/h2/store/PageLog;->logKey:I

    move-object v2, v0

    move v4, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/h2/store/PageOutputStream;-><init>(Lorg/h2/store/PageStore;ILorg/h2/util/BitField;IZ)V

    iput-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    .line 187
    iget-object p2, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {p2, v1}, Lorg/h2/store/PageOutputStream;->reserve(I)V

    .line 189
    iget-object p2, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v0, p0, Lorg/h2/store/PageLog;->logKey:I

    iget-object v1, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v1}, Lorg/h2/store/PageOutputStream;->getCurrentDataPageId()I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Lorg/h2/store/PageStore;->setLogFirstPage(III)V

    .line 191
    iget-object p1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/store/PageLog;->writeBuffer:Lorg/h2/store/Data;

    return-void
.end method

.method prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    .locals 3

    .line 584
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log prepare commit s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 587
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    .line 593
    iget-object v1, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v1}, Lorg/h2/store/PageOutputStream;->flush()V

    .line 594
    iget-object v1, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v1}, Lorg/h2/store/PageOutputStream;->fillPage()V

    .line 595
    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v1

    const/4 v2, 0x3

    .line 596
    invoke-virtual {v1, v2}, Lorg/h2/store/Data;->writeByte(B)V

    .line 597
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 598
    invoke-virtual {v1, p2}, Lorg/h2/store/Data;->writeString(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result p1

    invoke-static {v0}, Lorg/h2/store/PageStreamData;->getCapacity(I)I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 603
    invoke-direct {p0, v1}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    .line 605
    invoke-direct {p0}, Lorg/h2/store/PageLog;->flushOut()V

    .line 606
    iget-object p1, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {p1}, Lorg/h2/store/PageOutputStream;->fillPage()V

    .line 607
    iget-object p1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getFlushOnEachCommit()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 608
    invoke-virtual {p0}, Lorg/h2/store/PageLog;->flush()V

    :cond_2
    return-void

    :cond_3
    const-string p1, "transaction name (too long)"

    .line 600
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method recover(I)Z
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 260
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "log recover stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 264
    new-instance v0, Lorg/h2/store/PageInputStream;

    iget-object v2, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v4, v1, Lorg/h2/store/PageLog;->logKey:I

    iget v5, v1, Lorg/h2/store/PageLog;->firstTrunkPage:I

    iget v6, v1, Lorg/h2/store/PageLog;->firstDataPage:I

    invoke-direct {v0, v2, v4, v5, v6}, Lorg/h2/store/PageInputStream;-><init>(Lorg/h2/store/PageStore;III)V

    .line 266
    invoke-virtual {v0}, Lorg/h2/store/PageInputStream;->allocateAllPages()Lorg/h2/util/BitField;

    move-result-object v2

    iput-object v2, v1, Lorg/h2/store/PageLog;->usedLogPages:Lorg/h2/util/BitField;

    .line 267
    invoke-virtual {v0}, Lorg/h2/store/PageInputStream;->close()V

    return v3

    .line 270
    :cond_1
    new-instance v4, Lorg/h2/store/PageInputStream;

    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v5, v1, Lorg/h2/store/PageLog;->logKey:I

    iget v6, v1, Lorg/h2/store/PageLog;->firstTrunkPage:I

    iget v7, v1, Lorg/h2/store/PageLog;->firstDataPage:I

    invoke-direct {v4, v0, v5, v6, v7}, Lorg/h2/store/PageInputStream;-><init>(Lorg/h2/store/PageStore;III)V

    .line 272
    new-instance v5, Lorg/h2/store/DataReader;

    invoke-direct {v5, v4}, Lorg/h2/store/DataReader;-><init>(Ljava/io/InputStream;)V

    .line 274
    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_0
    const/4 v10, 0x2

    .line 279
    :try_start_0
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readByte()B

    move-result v11
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-gez v11, :cond_2

    move v7, v9

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v9, v0, 0x1

    if-ne v11, v3, :cond_7

    .line 286
    :try_start_1
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v11

    .line 287
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v15

    if-nez v15, :cond_3

    .line 289
    invoke-virtual {v6}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    iget-object v12, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v12}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v12

    invoke-virtual {v5, v0, v12}, Lorg/h2/store/DataReader;->readFully([BI)V

    goto :goto_1

    :cond_3
    if-ne v15, v3, :cond_4

    .line 292
    invoke-virtual {v6}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    iget-object v12, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v12}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v12

    invoke-static {v0, v7, v12, v7}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_1

    .line 294
    :cond_4
    iget-object v0, v1, Lorg/h2/store/PageLog;->compressBuffer:[B

    invoke-virtual {v5, v0, v15}, Lorg/h2/store/DataReader;->readFully([BI)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 296
    :try_start_2
    iget-object v12, v1, Lorg/h2/store/PageLog;->compress:Lorg/h2/compress/CompressLZF;

    iget-object v13, v1, Lorg/h2/store/PageLog;->compressBuffer:[B

    const/4 v14, 0x0

    invoke-virtual {v6}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x0

    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v18

    invoke-virtual/range {v12 .. v18}, Lorg/h2/compress/CompressLZF;->expand([BII[BII)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    .line 299
    :try_start_3
    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    :goto_1
    if-nez v2, :cond_1b

    .line 303
    iget-object v0, v1, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    invoke-virtual {v0, v11}, Lorg/h2/util/BitField;->get(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 304
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v12, "log undo {0}"

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v7

    invoke-virtual {v0, v12, v13}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :cond_5
    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v11, v6}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    .line 308
    iget-object v0, v1, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    invoke-virtual {v0, v11}, Lorg/h2/util/BitField;->set(I)V

    .line 309
    iget-object v0, v1, Lorg/h2/store/PageLog;->undoAll:Lorg/h2/util/BitField;

    invoke-virtual {v0, v11}, Lorg/h2/util/BitField;->set(I)V

    goto/16 :goto_3

    .line 311
    :cond_6
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 312
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v12, "log undo skip {0}"

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v7

    invoke-virtual {v0, v12, v13}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_7
    const/4 v0, 0x5

    if-ne v11, v0, :cond_b

    .line 317
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    .line 318
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v11

    .line 319
    iget-object v12, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v12}, Lorg/h2/store/PageStore;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v12

    invoke-virtual {v12}, Lorg/h2/engine/Database;->getRowFactory()Lorg/h2/result/RowFactory;

    move-result-object v12

    invoke-static {v12, v5, v6}, Lorg/h2/store/PageLog;->readRow(Lorg/h2/result/RowFactory;Lorg/h2/store/DataReader;Lorg/h2/store/Data;)Lorg/h2/result/Row;

    move-result-object v12

    if-nez v2, :cond_8

    .line 321
    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v9, v11, v12}, Lorg/h2/store/PageStore;->allocateIfIndexRoot(IILorg/h2/result/Row;)V

    goto/16 :goto_3

    :cond_8
    if-ne v2, v10, :cond_1b

    .line 323
    invoke-direct {v1, v0, v8, v9}, Lorg/h2/store/PageLog;->isSessionCommitted(III)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 324
    iget-object v13, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v13}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 325
    iget-object v13, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "log redo + table: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " s: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 328
    :cond_9
    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v11, v12, v3}, Lorg/h2/store/PageStore;->redo(ILorg/h2/result/Row;Z)V

    goto/16 :goto_3

    .line 330
    :cond_a
    iget-object v13, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v13}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 331
    iget-object v13, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "log ignore s: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " + table: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    const/4 v0, 0x6

    if-ne v11, v0, :cond_e

    .line 337
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    .line 338
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v11

    .line 339
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarLong()J

    move-result-wide v12

    if-ne v2, v10, :cond_1b

    .line 341
    invoke-direct {v1, v0, v8, v9}, Lorg/h2/store/PageLog;->isSessionCommitted(III)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 342
    iget-object v14, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v14}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 343
    iget-object v14, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log redo - table: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " s:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " key: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 346
    :cond_c
    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v11, v12, v13}, Lorg/h2/store/PageStore;->redoDelete(IJ)V

    goto/16 :goto_3

    .line 348
    :cond_d
    iget-object v3, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v3}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 349
    iget-object v3, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "log ignore s: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - table: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    const/4 v0, 0x7

    if-ne v11, v0, :cond_11

    .line 355
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    .line 356
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v3

    if-ne v2, v10, :cond_1b

    .line 358
    invoke-direct {v1, v0, v8, v9}, Lorg/h2/store/PageLog;->isSessionCommitted(III)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 359
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 360
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "log redo truncate table: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 362
    :cond_f
    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v3}, Lorg/h2/store/PageStore;->redoTruncate(I)V

    goto/16 :goto_3

    .line 364
    :cond_10
    iget-object v11, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v11}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 365
    iget-object v11, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "log ignore s: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " truncate table: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    const/4 v0, 0x3

    if-ne v11, v0, :cond_13

    .line 371
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    .line 372
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 373
    iget-object v11, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v11}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 374
    iget-object v11, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "log prepare commit "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " pos: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_12
    if-nez v2, :cond_1b

    .line 378
    invoke-virtual {v4}, Lorg/h2/store/PageInputStream;->getDataPage()I

    move-result v11

    .line 379
    invoke-direct {v1, v0, v11, v3}, Lorg/h2/store/PageLog;->setPrepareCommit(IILjava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    const/4 v0, 0x4

    if-ne v11, v0, :cond_14

    .line 382
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    .line 383
    iget-object v3, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v3}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 384
    iget-object v3, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "log rollback "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pos: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    if-ne v11, v10, :cond_16

    .line 388
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    .line 389
    iget-object v3, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v3}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 390
    iget-object v3, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "log commit "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_15
    if-nez v2, :cond_1b

    .line 393
    invoke-direct {v1, v0, v8, v9}, Lorg/h2/store/PageLog;->setLastCommitForSession(III)V

    goto :goto_3

    :cond_16
    if-nez v11, :cond_17

    goto :goto_3

    :cond_17
    const/16 v0, 0x8

    if-ne v11, v0, :cond_18

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_18
    const/16 v0, 0x9

    if-ne v11, v0, :cond_1a

    .line 400
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_1b

    .line 402
    invoke-virtual {v5}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v11

    if-ne v2, v10, :cond_19

    .line 404
    iget-object v12, v1, Lorg/h2/store/PageLog;->usedLogPages:Lorg/h2/util/BitField;

    invoke-virtual {v12, v11}, Lorg/h2/util/BitField;->get(I)Z

    move-result v12

    if-nez v12, :cond_19

    .line 405
    iget-object v12, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v12, v11, v7}, Lorg/h2/store/PageStore;->free(IZ)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 410
    :cond_1a
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 411
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v3, "log end"

    invoke-virtual {v0, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/h2/message/DbException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :cond_1b
    :goto_3
    move v0, v9

    const/4 v3, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    :catch_2
    move v7, v9

    .line 423
    :catch_3
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v3, "log recovery completed"

    invoke-virtual {v0, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto :goto_5

    :catch_4
    move-exception v0

    move v7, v9

    .line 417
    :goto_4
    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v3

    const v4, 0x15fae

    if-ne v3, v4, :cond_1d

    .line 418
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v3, "log recovery stopped"

    invoke-virtual {v0, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 425
    :goto_5
    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, v1, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    if-ne v2, v10, :cond_1c

    const/4 v0, 0x0

    .line 427
    iput-object v0, v1, Lorg/h2/store/PageLog;->usedLogPages:Lorg/h2/util/BitField;

    :cond_1c
    return v7

    .line 420
    :cond_1d
    throw v0
.end method

.method recoverEnd()V
    .locals 1

    .line 872
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    return-void
.end method

.method removeUntil(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->logSectionPageMap:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/IntIntHashMap;->get(I)I

    move-result v0

    .line 725
    iget v1, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    invoke-direct {p0, v1, v0}, Lorg/h2/store/PageLog;->removeUntil(II)I

    move-result v1

    iput v1, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    .line 726
    iget-object v1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v2, p0, Lorg/h2/store/PageLog;->logKey:I

    iget v3, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/h2/store/PageStore;->setLogFirstPage(III)V

    .line 727
    :goto_0
    iget v0, p0, Lorg/h2/store/PageLog;->firstSectionId:I

    if-ge v0, p1, :cond_2

    .line 728
    iget v0, p0, Lorg/h2/store/PageLog;->firstSectionId:I

    if-lez v0, :cond_1

    .line 730
    iget-object v0, p0, Lorg/h2/store/PageLog;->logSectionPageMap:Lorg/h2/util/IntIntHashMap;

    iget v1, p0, Lorg/h2/store/PageLog;->firstSectionId:I

    invoke-virtual {v0, v1}, Lorg/h2/util/IntIntHashMap;->remove(I)V

    .line 732
    :cond_1
    iget v0, p0, Lorg/h2/store/PageLog;->firstSectionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/store/PageLog;->firstSectionId:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method setInDoubtTransactionState(IIZ)V
    .locals 1

    .line 856
    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p2}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p2

    check-cast p2, Lorg/h2/store/PageStreamData;

    .line 857
    invoke-virtual {p2}, Lorg/h2/store/PageStreamData;->initWrite()V

    .line 858
    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    int-to-byte p3, p3

    .line 859
    invoke-virtual {v0, p3}, Lorg/h2/store/Data;->writeByte(B)V

    .line 860
    invoke-virtual {v0, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    .line 861
    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p1

    .line 862
    array-length p3, p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lorg/h2/store/PageStreamData;->write([BII)I

    .line 863
    invoke-virtual {p2}, Lorg/h2/store/PageStreamData;->getRemaining()I

    move-result p1

    new-array p1, p1, [B

    .line 864
    array-length p3, p1

    invoke-virtual {p2, p1, v0, p3}, Lorg/h2/store/PageStreamData;->write([BII)I

    .line 865
    invoke-virtual {p2}, Lorg/h2/store/PageStreamData;->write()V

    return-void
.end method
